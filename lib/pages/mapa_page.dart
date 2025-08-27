import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:live_track/helpers/global_data_helper.dart';
import 'package:live_track/helpers/responsive_ui.dart';

class MapaPage extends StatefulWidget {
  List<LatLng> points;
  MapaPage({super.key, required this.points});

  @override
  State<StatefulWidget> createState() {
    return Local();
  }
}

class Local extends ResponsiveUI<MapaPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _loadMarkers();
    // checkCorrectApis();
  }

  void _loadMarkers() {
    for (int i = 0; i < widget.points.length; i++) {
      _markers.add(
        Marker(
          markerId: MarkerId('punto_$i'),
          position: widget.points[i],
          infoWindow: InfoWindow(title: 'Punto ${i + 1}'),
        ),
      );
    }
    setState(() {});
  }

  void checkCorrectApis() async {
    final apiKey = 'AIzaSyDuWJjod23Q9XCCKUx3clO7gIjTTLZdLxI';

    // Esta URL es para Static Maps (NO la necesitas)
    final staticMapUrl =
        'https://maps.googleapis.com/maps/api/staticmap?center=0,0&zoom=1&size=1x1&key=$apiKey';

    // Mejor prueba con una URL genérica
    final testUrl =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=0,0&key=$apiKey';

    try {
      final response = await http.get(Uri.parse(testUrl));
      print('🔍 Status: ${response.statusCode}');

      if (response.statusCode == 403) {
        print('❌ FALTA: Maps SDK for iOS o facturación');
        print('💡 Ve a: Google Cloud Console > Bibliotecas');
        print('💡 Busca: "Maps SDK for iOS" y HABILÍTALA');
      } else {
        print('✅ APIs configuradas correctamente');
      }
    } catch (e) {
      print('❌ Error: $e');
    }
  }

  void checkEnabledApis() async {
    final apisToCheck = [
      'https://maps.googleapis.com/maps/api/staticmap?center=0,0&zoom=1&size=1x1&key=AIzaSyDuWJjod23Q9XCCKUx3clO7gIjTTLZdLxI',
      'https://maps.googleapis.com/maps/api/geocode/json?address=test&key=AIzaSyDuWJjod23Q9XCCKUx3clO7gIjTTLZdLxI',
    ];

    for (final url in apisToCheck) {
      try {
        final response = await http.get(Uri.parse(url));
        print(
          '🔍 API Test: ${response.statusCode} - ${response.body.contains('error') ? 'ERROR' : 'OK'}',
        );
      } catch (e) {
        print('❌ Error testing API: $e');
      }
    }
  }

  @override
  Widget desktopView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mapa",
          style: context.textTheme.titleMedium?.copyWith(color: black1),
        ),
      ),
      body: GoogleMap(
        padding: marginMobile,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: widget.points.first,
          zoom: widget.points.length > 1 ? 6 : 12,
        ),
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        // onCameraIdle: () => print('Cámara inactiva'),
        // onCameraMove: (position) => print('Cámara moviéndose'),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

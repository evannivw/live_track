import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as gt;
import 'package:live_track/blocs/auth_bloc/auth_bloc.dart';
import 'package:live_track/blocs/auth_bloc/auth_event.dart';
import 'package:live_track/blocs/auth_bloc/auth_repository_local.dart';
import 'package:live_track/blocs/auth_bloc/auth_state.dart';
import 'package:live_track/blocs/controller_cubit/controller_cubit.dart';
import 'package:live_track/blocs/controller_cubit/controller_state.dart';
import 'package:live_track/config/text_style.dart';
import 'package:live_track/enum/auth_type.dart';
import 'package:live_track/helpers/global_data_helper.dart';
import 'package:live_track/pages/auth_page.dart';
import 'package:live_track/pages/categories_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) =>
                  AuthBloc(AuthRepositoryLocal())
                    ..add(const AuthEvent.restoreRequested()),
        ),
        BlocProvider(
          create:
              (BuildContext context) =>
                  ControllerCubit(ControllerState.empty()),
        ),

        // BlocProvider<BookCubit>(create: (context) => bookCubit),
        // BlocProvider<AuthBloc>(create: (context) => AuthBloc(AuthState())),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              switch (state.authType) {
                case AuthType.loading:
                  return;
                case AuthType.authenticated:
                  gt.Get.offAll(
                    () => CategoriesPage(),
                    transition: gt.Transition.fadeIn,
                  );
                  break;
                case AuthType.logOut:
                  gt.Get.offAll(
                    () => AuthPage(),
                    transition: gt.Transition.fadeIn,
                  );
                  break;
                case AuthType.error:
                  break;
              }
            },
          ),
          // BlocListener<AuthBloc, AuthState>(
          //   listener: (ctx, state) {
          //     if (state.authType == AuthType.phoneError) {
          //       // SnackbarHelper().showErrorMessage(
          //       //     "Telefono incorrecto, verifica que tenga extension de país",
          //       //     context);
          //     } else if (state.authType == AuthType.pinError) {
          //       // SnackbarHelper().showErrorMessage(
          //       //     "Pin incorrecto, debe de tener 4 digitos", context);
          //     } else if (state.authType == AuthType.loggedIn) {
          //       _userIsLogin(state);
          //     } else if (state.authType == AuthType.logOut) {
          //       gt.Get.offAll(
          //         () => SplashPage(),
          //         transition: gt.Transition.fade,
          //         popGesture: false,
          //         duration: const Duration(milliseconds: 300),
          //       );
          //       // gt.Get.to(const WelcomeFirstScreen(),
          //       //     transition: gt.Transition.fade,
          //       //     popGesture: false,
          //       //     duration: const Duration(milliseconds: 300));
          //     }
          //   },
          // ),
        ],
        child: gt.GetMaterialApp(
          title: companyTitle,
          theme: AppTheme.getTheme(),
          color: Colors.white,
          home: AuthPage(),
          locale: Locale("es"),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(1)),
              child: child ?? Container(),
            );
          },
          // navigatorObservers: <NavigatorObserver>[observer],
        ),
      ),
    );
  }
}

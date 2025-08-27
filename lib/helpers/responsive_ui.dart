import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/text_style.dart';
import 'global_data_helper.dart';

abstract class AbstractCustomWidget {
  Widget desktopView(BuildContext context);
  Widget mobileView(BuildContext context);
  Widget background();
}

enum VistaView { desktop, mobile }

class ResponsiveUI<T extends StatefulWidget> extends State<T>
    implements AbstractCustomWidget {
  PageController pageController = PageController();
  bool get isMobileView => vista == VistaView.mobile;
  bool get isDesktopView => vista == VistaView.desktop;
  VistaView vista = VistaView.desktop;
  double minHeight = 400.0;
  double maxHeight = 1200.0;
  double minWidth = 300;
  double maxWidth = 800;
  double borderRadius = 12;
  double currentWidth = double.infinity;
  double currentHeight = double.infinity;
  bool enableBackground = true;
  EdgeInsets marginDesktop = const EdgeInsets.all(20);
  EdgeInsets paddingDesktop = const EdgeInsets.all(24);
  EdgeInsets paddingMobile = const EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 16,
  );
  EdgeInsets marginMobile = const EdgeInsets.all(16);
  EdgeInsets smallMarginMobile = const EdgeInsets.all(8);
  bool get is_extended => isExtended;
  bool animationFinish = false;
  bool enableAnimation = false;
  int startDelayAnimation = 500;
  Duration animationDuration = const Duration(milliseconds: 300);
  Curve animationCurve = Curves.decelerate;
  BoxConstraints constrainsDesktop = const BoxConstraints(
    maxHeight: 700,
    minHeight: 400,
    maxWidth: 1000,
    minWidth: 500,
  );
  Alignment alignment = Alignment.center;
  BoxShadow shadow = BoxShadow(
    color: black1.withOpacity(0.15),
    blurRadius: 8,
    spreadRadius: 5,
  );
  BoxShadow softShadow = BoxShadow(
    color: black1.withOpacity(0.1),
    blurRadius: 8,
    spreadRadius: 3,
  );

  Color get currentBackgroundColor => AppTheme.isLightTheme ? green1 : green1;
  bool isExtended = false;

  Color get baseColor =>
      AppTheme.isLightTheme == false
          ? const Color(0xff211F32)
          : Theme.of(context).appBarTheme.backgroundColor ?? Colors.white;

  @override
  void initState() {
    super.initState();
    constrainsDesktop = BoxConstraints(
      maxHeight: maxHeight,
      minHeight: minHeight,
      maxWidth: maxWidth,
      minWidth: minWidth,
    );
    if (enableAnimation) {
      _loadAnimation();
    } else {
      animationFinish = true;
    }
  }

  void _loadAnimation() async {
    //this is a wait animation for any smooth transition
    await Future.delayed(Duration(milliseconds: startDelayAnimation));
    setState(() {
      animationFinish = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // differents views based on the width of the screen
    if (!enableBackground) {
      return LayoutBuilder(
        builder: (ctx, constrain) {
          if (constrain.maxWidth > 715) {
            this.vista = VistaView.desktop;
            return desktopView(context);
          } else {
            this.vista = VistaView.mobile;
            return mobileView(context);
          }
        },
      );
    }
    return Material(
      color: white,
      child: Stack(
        alignment: alignment,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: currentBackgroundColor,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: maxWidth,
              maxHeight: maxHeight,
            ),
            child: LayoutBuilder(
              builder: (ctx, constrain) {
                if (constrain.maxWidth > 715) {
                  if (constrain.maxWidth < 850) {
                    isExtended = false;
                  } else {
                    isExtended = true;
                  }
                  this.vista = VistaView.desktop;
                  return desktopView(context);
                } else {
                  this.vista = VistaView.mobile;
                  return mobileView(context);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget desktopView(BuildContext context) {
    return Container(color: Colors.black);
  }

  @override
  Widget mobileView(BuildContext context) {
    return desktopView(context);
  }

  @override
  Widget background() => Container(color: gray1);

  Widget titleCard(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text(text)],
    );
  }

  Widget text(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text(text)],
    );
  }

  Widget textField({
    Function(String)? onChanged,
    String label = "Title",
    String hintText = "",
    Widget? icon,
    bool enable = true,
    int maxLength = 50,
    Color color = white,
    Color borderColor = white,
    Color titleColor = gray2,
    Color hintTextColor = gray2,
    TextInputType inputType = TextInputType.text,
    double width = 250,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: titleColor, fontSize: 14),
        ),
        spacer(4),
        IgnorePointer(
          ignoring: !enable,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            height: 44,
            width: width,
            padding: const EdgeInsets.only(left: 8, right: 8),
            alignment: Alignment.center,
            child:
                icon != null
                    ? Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        icon,
                        Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: TextField(
                            onChanged: onChanged,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(color: black1),
                            keyboardType: inputType,
                            decoration: InputDecoration.collapsed(
                              hintText: hintText,
                              hintStyle: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: hintTextColor),
                            ),
                          ),
                        ),
                      ],
                    )
                    : TextField(
                      onChanged: onChanged,
                      obscureText: inputType == TextInputType.visiblePassword,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: black1),
                      keyboardType: inputType,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: hintTextColor),
                      ),
                    ),
          ),
        ),
      ],
    );
  }

  Widget textFormField({
    Function(String)? onChanged,
    String label = "Title",
    String hintText = "",
    Widget? icon,
    bool enable = true,
    int maxLength = 50,
    Color color = white,
    Color borderColor = white,
    Color titleColor = gray2,
    Color hintTextColor = gray2,
    TextInputType inputType = TextInputType.text,
    double width = 250,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: titleColor, fontSize: 14),
        ),
        spacer(4),
        IgnorePointer(
          ignoring: !enable,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            height: 44,
            width: width,
            padding: const EdgeInsets.only(left: 8, right: 8),
            alignment: Alignment.center,
            child:
                icon != null
                    ? Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        icon,
                        Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: TextFormField(
                            validator: validator,
                            onChanged: onChanged,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(color: black1),
                            keyboardType: inputType,
                            decoration: InputDecoration.collapsed(
                              hintText: hintText,
                              hintStyle: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: hintTextColor),
                            ),
                          ),
                        ),
                      ],
                    )
                    : TextFormField(
                      onChanged: onChanged,
                      validator: validator,
                      obscureText: inputType == TextInputType.visiblePassword,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: black1),
                      keyboardType: inputType,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: hintTextColor),
                      ),
                    ),
          ),
        ),
      ],
    );
  }

  Widget dropDown({
    Function(String)? onChanged,
    String title = "Title",
    Widget? icon,
    double width = double.infinity,
    List<String> list = const [],
    String value = "",
    Color color = gray1,
  }) {
    if (list.isNotEmpty && list.contains(value) == false && value.isNotEmpty) {
      list.add(value);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: gray2, fontSize: 14),
        ),
        spacer(4),
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 44,
          width: width,
          padding: const EdgeInsets.only(left: 0, right: 8),
          alignment: Alignment.center,
          child: SizedBox(
            width: width,
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton<String>(
                  value:
                      list.isEmpty
                          ? null
                          : list.contains(value) == false
                          ? list.first
                          : value,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  underline: null,
                  items:
                      list.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        );
                      }).toList(),
                  onChanged: (String? newValue) {
                    onChanged?.call(newValue ?? "");
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget passTextField({Function(String)? onChanged, String title = "Title"}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(color: gray2)),
        spacer(4),
        Container(
          color: gray1,
          height: 44,
          padding: const EdgeInsets.only(left: 16, right: 16),
          alignment: Alignment.center,
          child: TextField(
            obscureText: true,
            onChanged: onChanged,
            decoration: const InputDecoration.collapsed(hintText: ""),
          ),
        ),
      ],
    );
  }

  Widget button({
    String label = "Go!",
    Function()? onTap,
    Widget? child,
    double width = double.infinity,
    double height = 44,
    Color color = black2,
    Color fontColor = white,
    Color foregroundColor = white,
    bool useShadow = false,
    EdgeInsets padding = const EdgeInsets.all(0),
    bool useShape = true,
    double borderRadius = 5,
    bool loading = false,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: loading ? null : onTap,
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: padding,
          foregroundColor: foregroundColor,
          shape:
              useShape == false
                  ? null
                  : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
        ),
        child:
            loading
                ? SizedBox(
                  width: 20,
                  height: 20,
                  child: const CircularProgressIndicator(color: Colors.white),
                )
                : child ??
                    Text(
                      label,
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: fontColor,
                        fontSize: 16,
                      ),
                    ),
      ),
    );
  }

  Widget buttonWithBorder({
    String label = "Go!",
    Function()? onTap,
    Widget? child,
    bool loading = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: blue1),
        ),
        alignment: Alignment.center,
        child:
            loading
                ? SizedBox(
                  width: 20,
                  height: 20,
                  child: const CircularProgressIndicator(color: Colors.white),
                )
                : child ??
                    Text(label, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget card({
    Widget? child,
    BoxConstraints? constraints,
    Color color = Colors.white,
    EdgeInsets padding = const EdgeInsets.all(16),
  }) {
    return ConstrainedBox(
      constraints: constraints ?? constrainsDesktop,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child ?? Container(),
      ),
    );
  }

  Widget spacer([double space = 16]) {
    return SizedBox(height: space, width: space);
  }

  Widget hspacer([double space = 16]) {
    return SizedBox(width: space);
  }

  Widget vspacer([double space = 16]) {
    return SizedBox(height: space);
  }

  Widget expandedSpacer() {
    return Expanded(child: Container());
  }
}

import 'package:flutter/material.dart';
import 'package:munich_ways/common/logger_setup.dart';

class MapAppBar extends StatelessWidget {
  final List<Widget> actions;

  const MapAppBar({
    Key key,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      left: 10,
      child: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: SizedBox(
                height: 38,
                child: Image(image: AssetImage('images/logo_long.png'))),
          ),
        ),
        backgroundColor: Colors.white,
        shape: RoundedAppBarShape(),
        actions: actions,
      ),
    );
  }
}

class RoundedAppBarShape extends ShapeBorder {
  RoundedAppBarShape();

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) => null;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    log.d(rect.height);
    return Path()
      ..addRRect(
          RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 10)))
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}

import 'package:flutter/material.dart';
import 'package:jag_qujeho_tave/custom_shape.dart';
import 'dart:math';

class ReceivedMessageScreen extends StatelessWidget {
  final String message;

  const ReceivedMessageScreen({required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: CustomPaint(
                painter: CustomShape(Colors.white),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
          ],
        ));
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 20, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}
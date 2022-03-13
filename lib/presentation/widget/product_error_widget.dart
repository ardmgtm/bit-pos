import 'package:flutter/material.dart';

class ProductErrorWidget extends StatelessWidget {
  final String msg;
  final Widget? icon;

  const ProductErrorWidget({
    Key? key,
    this.icon,
    required this.msg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconTheme(
                data: const IconThemeData(
                  color: Colors.grey,
                  size: 40,
                ),
                child: icon ?? const Icon(Icons.error)),
            const SizedBox(height: 8),
            Text(
              msg,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

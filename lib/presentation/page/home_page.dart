import 'package:bit_pos/presentation/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bit POS'),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(
                    icon: const Icon(Icons.inventory_2_outlined),
                    labelText: 'Product Management',
                    onTap: () {
                      Navigator.pushNamed(
                          context, BitPosRoutes.productManagement);
                    },
                  ),
                  const SizedBox(width: 16),
                  MenuItem(
                    icon: const Icon(Icons.store_outlined),
                    labelText: 'Point of Sale System',
                    onTap: () {
                      Navigator.pushNamed(context, BitPosRoutes.pointOfSale);
                    },
                  ),
                  const SizedBox(width: 16),
                  MenuItem(
                    icon: const Icon(Icons.receipt_long_outlined),
                    labelText: 'Transaction History',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String labelText;
  final Icon icon;
  final Function()? onTap;

  const MenuItem({
    Key? key,
    required this.labelText,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconTheme(
                data: const IconThemeData(
                  color: Colors.white,
                  size: 32,
                ),
                child: icon,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              labelText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

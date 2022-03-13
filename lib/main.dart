import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/bloc/product/product_bloc.dart';
import 'injection.dart';
import 'presentation/core/no_scroll_glow.dart';
import 'presentation/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()
        ..add(
          const ProductEvent.getProducts(),
        ),
      child: MaterialApp(
        title: 'Bit Point of Sale',
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.deepPurple,
                secondary: Colors.orange,
              ),
        ),
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: NoScrollGlow(),
            child: child ?? Container(),
          );
        },
        initialRoute: BitPosRoutes.home,
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (BuildContext context) => BitPosRoutes.makeRoute(
            context: context,
            routeName: settings.name!,
            arguments: settings.arguments,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/presentations/landing.dart';
import 'package:todo_app/providers/supply_providers.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: supplyProviders(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Landing(),
        },
      ),
    );
  }
}

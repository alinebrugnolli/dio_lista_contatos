import 'package:dio_lista_contatos/controller/contatos_controller.dart';
import 'package:dio_lista_contatos/pages/lista_contatos_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContatosController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lista De Contatos',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.purpleAccent),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.purpleAccent),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true,
        ),
        home: const ListaContatosPage(),
      ),
    );
  }
}

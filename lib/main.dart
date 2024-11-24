import 'package:flutter/material.dart'; 
import 'package:integrador/Pages/Register_User.dart';
import 'package:integrador/Pages/home_admin.dart';
import 'package:integrador/Pages/home_page.dart';
import 'package:integrador/Pages/home_user.dart';
import 'package:integrador/Pages/QRScanPage.dart';
import 'pages/user_view.dart';
import 'pages/admin_view.dart';
import 'package:integrador/pages/eventos_screen.dart';
import 'package:integrador/pages/splash_screen.dart';  // Importa el archivo SplashScreen


// 1. Aquí configuramos el main para que muestre el SplashScreen primero.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Cambié la ruta inicial para que sea el Splash
      routes: {
        '/splash': (context) => SplashScreen(), // Ruta para el Splash
        '/': (context) => HomePage(),
        '/user': (context) => UserView(),
        '/admin': (context) => AdminView(),
        '/register': (context) => RegisterView(),
        '/userDashboard': (context) => UserDashboardView(),
        '/homeAdmin': (context) => HomeAdminView(),
        '/qrscan': (context) => QRScanPage(),
        '/events': (context) => EventosScreen(), // Nueva ruta para la pantalla de eventos
      },
    );
  }
}

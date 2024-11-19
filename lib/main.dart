import 'package:doramiaw/screens/login.dart';
import 'package:flutter/material.dart'; 
import 'package:doramiaw/screens/menu.dart'; 
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() { 
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget { 
   const MyApp({super.key});

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) { 
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
      title: 'Doramiaw',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(
            0xFF1B4778, // Warna utama dari kode ARGB
            <int, Color>{
              50: Color(0xFFE3EAF4),
              100: Color(0xFFBCCCE4),
              200: Color(0xFF90ABD2),
              300: Color(0xFF638AC0),
              400: Color(0xFF426FAF),
              500: Color(0xFF1B4778), // Warna utama
              600: Color(0xFF173F6E),
              700: Color(0xFF133664),
              800: Color(0xFF0F2E59),
              900: Color(0xFF0A1F45),
            },
          ),
        ).copyWith(
          secondary: const Color.fromARGB(255, 27, 71, 120), // Warna aksen tetap
        ),
      ),
      home: const LoginPage()
    ) 
    );
  } 
}

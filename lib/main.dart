import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/base/widgets/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar(),
        routes: {
          "all_tickets": (context) => const AllTickets(),
          "all_hotels": (context) => const AllHotels()
        }
      ),
    );
  }
}


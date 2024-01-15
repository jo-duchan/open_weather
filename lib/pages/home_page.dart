import 'package:flutter/material.dart';
import 'package:open_weather/providers/weather/weather_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:open_weather/repositories/weather_repository.dart';
import 'package:open_weather/services/weather_api_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}

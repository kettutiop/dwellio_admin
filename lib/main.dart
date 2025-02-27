import 'package:dwellio_admin/features/home/home_screen.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://supabase.com/dashboard/project/iqqiiqqgheornwgmlgqm',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlxcWlpcXFnaGVvcm53Z21sZ3FtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI4NTY4OTUsImV4cCI6MjA0ODQzMjg5NX0.WU6CDf0IgNSlOYGC2GMvqwuwWXs_tFkM8yXoyG-tS9I',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const HomeScreen(),
    );
  }
}

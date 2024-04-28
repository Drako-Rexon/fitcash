import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final String _baseUrl = dotenv.env['BASE_URL'] ?? '';
}

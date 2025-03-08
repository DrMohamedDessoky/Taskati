import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:taskati/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

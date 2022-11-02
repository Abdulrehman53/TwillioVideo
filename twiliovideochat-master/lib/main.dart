import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:twiliovideochat/room/selection_page.dart';
import 'package:twiliovideochat/shared/services/backend_service.dart';
import 'debug.dart';

void main() {
  Debug.enabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(TwilioProgrammableVideoExample());
}

class TwilioProgrammableVideoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<BackendService>(
      create: (_) => FirebaseFunctionsService.instance,
      child: MaterialApp(
        title: 'Twilio Programmable Video',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.blue,
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        home: SelectionPage(),
      ),
    );
  }
}

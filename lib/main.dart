import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motip_application/Screens/Welcome/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'managers/theme/theme_manager.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return Consumer<ThemeNotifier>(
        builder: (context, theme, _) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Motip',
              theme: theme.getTheme(),
              home: const WelcomeScreen(),
            ));
  }
}

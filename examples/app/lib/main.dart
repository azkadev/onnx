import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:general_lib_flutter/general_lib_flutter_core.dart';
import 'package:play/play.dart';
import 'package:simulate/simulate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Play.ensureInitialized();
  await initSimulate();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(
    const AppMain(),
  );
}

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralLibFlutterAppMain(
      lightTheme: lightTheme,
      darkTheme: darkTheme,
      builder: (themeMode, lightTheme, darkTheme) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) {
                Widget child = ValueListenableBuilder<ThemeMode>(
                  valueListenable: themeMode,
                  builder: (_, mode, __) {
                    return MaterialApp(
                      title: 'Flutter Demo',
                      debugShowCheckedModeBanner: false,
                      themeMode: mode,
                      theme: lightTheme,
                      darkTheme: darkTheme,
                      home: App(
                        themeModeNotifier: themeMode,
                      ),
                    );
                  },
                );
 

                return child;
              },
            ));
      },
    );
  }

  static Color get lightPrimaryColor => Colors.white;
  static Color get darkPrimaryColor => const Color.fromARGB(255, 64, 64, 64);
  static Color get secondaryColor => Colors.white;
  static Color get accentColor => Colors.white;

  ThemeData lightTheme() => ThemeData(
        primaryColor: ThemeData.light().scaffoldBackgroundColor,
        shadowColor: const Color.fromARGB(110, 0, 0, 0),
        dialogBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
          labelSmall: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        indicatorColor: Colors.black,
        colorScheme: const ColorScheme.light().copyWith(
          primary: lightPrimaryColor,
          secondary: secondaryColor,
        ),
      );

  ThemeData darkTheme() => ThemeData(
        primaryColor: ThemeData.dark().scaffoldBackgroundColor,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
          labelSmall: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        indicatorColor: Colors.white,
        dialogBackgroundColor: darkPrimaryColor,
        shadowColor: const Color.fromARGB(255, 24, 4, 83),
        colorScheme: const ColorScheme.dark().copyWith(
          primary: darkPrimaryColor,
        ),
      );
}

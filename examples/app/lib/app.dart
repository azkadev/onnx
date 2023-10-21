import 'package:app/app_data/app_data.dart';
import 'package:app/page/sign.dart';
import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class App extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeModeNotifier;
  const App({super.key, required this.themeModeNotifier});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((Duration duration) async {
      await task();
    });
  }

  Future<void> task() async {
    Future(() async {
      AppData appData = AppData(themeModeNotifier: widget.themeModeNotifier);
      await context.navigator().pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            SignPageApp signPageApp = SignPageApp(appData: appData);

            // if (signPageApp.isDebug) {
            //   return AppDebug(
            //     themeMode: widget.themeModeNotifier,
            //     child: signPage,
            //   );
            // } else {
            return signPageApp;
            // }
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

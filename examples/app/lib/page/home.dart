// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, empty_catches

import 'package:app/page/settings.dart';
import 'package:app/widget/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:flutter_hicons/flutter_hicons.dart';

class HomePageApp extends AppStatefulWidget {
  const HomePageApp({super.key, required super.appData});

  @override
  State<HomePageApp> createState() => _HomePageAppState();
}

class BottomBarData {
  final IconData iconData;
  final String title;
  BottomBarData({
    required this.iconData,
    required this.title,
  });
}

class _HomePageAppState extends State<HomePageApp> {
  final GlobalKey bottomBarKey = GlobalKey();

  final GlobalKey globalKey = GlobalKey();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<BottomBarData> get bottomBarDatas => [
        BottomBarData(
          iconData: Hicons.home_4_light_outline,
          title: "Home",
        ),
        BottomBarData(
          iconData: Hicons.wallet_light_outline,
          title: "Wallet",
        ),
        BottomBarData(
          iconData: Hicons.voice_shape_1_light_outline,
          title: "Shop",
        ),
        BottomBarData(
          iconData: Hicons.profile_1_light_outline,
          title: "Profile",
        ),
      ];
  PageController pageController = PageController();

  Size getRedBoxSize(BuildContext context) {
    final box = context.findRenderObject() as RenderBox;
    return box.size;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        // redboxSize = getRedBoxSize(globalKey.currentContext!);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size(
          context.width,
          450,
        ), // here the desired height
        child: Container(
          key: globalKey,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: context.theme.dialogBackgroundColor.withOpacity(0.85),
            boxShadow: [
              BoxShadow(
                color: context.theme.shadowColor.withAlpha(110),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.mediaQueryData.padding.top,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () async {},
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      minWidth: 0,
                      onPressed: () async {
                        // SystemChrome.setSystemUIOverlayStyle(
                        //   const SystemUiOverlayStyle(
                        //     statusBarColor: Colors.transparent,
                        //     statusBarIconBrightness: Brightness.dark,
                        //     statusBarBrightness: Brightness.dark,
                        //   ),
                        // );

                        // return ;
                        if (scaffoldKey.currentState!.isDrawerOpen) {
                          scaffoldKey.currentState!.closeDrawer();
                        } else {
                          scaffoldKey.currentState!.openDrawer();
                        }
                      },
                      child: const Icon(Icons.menu),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "APP_TEMPLATE",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        width: context.width / 2,
        child: ListView(
          children: [
            ListTile(
              onTap: () async {
                switch (widget.appData.themeModeNotifier.value) {
                  case ThemeMode.dark:
                    setState(() {
                      widget.appData.themeModeNotifier.value = ThemeMode.light;
                    });
                    break;
                  case ThemeMode.light:
                    setState(
                      () {
                        widget.appData.themeModeNotifier.value = ThemeMode.dark;
                      },
                    );
                    break;
                  default:
                    setState(
                      () {
                        widget.appData.themeModeNotifier.value = ThemeMode.light;
                      },
                    );
                    break;
                }
              },
              leading: Icon(
                () {
                  if (widget.appData.themeModeNotifier.value == ThemeMode.light) {
                    return Icons.light_mode;
                  }
                  if (widget.appData.themeModeNotifier.value == ThemeMode.dark) {
                    return Icons.dark_mode;
                  }
                  return Icons.auto_mode_sharp;
                }(),
              ),
              title: const Text(
                'Theme Mode',
                style: TextStyle(),
              ),
            ),
            ListTile(
              onTap: () async {
                await context.navigator().push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    SettingsPageApp settingsPageApp = SettingsPageApp(
                      appData: widget.appData,
                    );
                    return settingsPageApp;
                  },
                ));

                setState(() {});
              },
              leading: const Icon(
                Hicons.setting_light_outline,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: bottomBarDatas.length,
        onPageChanged: (value) {
          setState(() {
            pageController.animateToPage(value, duration: const Duration(milliseconds: 100), curve: Curves.ease);
          });
        },
        itemBuilder: (context, index) {
          return HomeBody(
            key: Key("${index}"),
            getRedBoxSize: () {
              try {
                return getRedBoxSize(globalKey.currentContext!);
              } catch (e) {
                return null;
              }
            },
            appData: widget.appData,
          );
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: () {
        try {
          if ((pageController.page ?? 0).toInt() == 0) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.5,
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          55.0,
                        ),
                      ),
                      color: context.theme.dialogBackgroundColor,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: MaterialButton(

                      hoverColor: context.theme.dialogBackgroundColor.withOpacity(0.55),
                      minWidth: 0,
                      onPressed: () {},
                      child: Icon(
                        Hicons.pen_light_outline,
                        color: context.theme.indicatorColor,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.5,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          55.0,
                        ),
                      ),
                      color: context.theme.dialogBackgroundColor,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: MaterialButton(

                      hoverColor: context.theme.dialogBackgroundColor.withOpacity(0.55),
                      minWidth: 0,
                      onPressed: () {},
                      child: Icon(
                        Hicons.camera_1_light_outline,
                        color: context.theme.indicatorColor,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        } catch (e) {}
        return null;
      }(),
      bottomNavigationBar: Container(
        key: bottomBarKey,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(40),
          //   topRight: Radius.circular(40),
          // ),
          color: context.theme.dialogBackgroundColor.withOpacity(0.85),
          boxShadow: [
            BoxShadow(
              color: context.theme.shadowColor.withAlpha(150),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var i = 0; i < bottomBarDatas.length; i++) ...[
              Expanded(
                child: button(
                  title: bottomBarDatas[i].title,
                  iconData: bottomBarDatas[i].iconData,
                  is_active: () {
                    try {
                      return i == pageController.page?.round();
                    } catch (e) {}
                    return false;
                  }(),
                  onPressed: () async {
                    await pageController.animateToPage(i, duration: const Duration(milliseconds: 1), curve: Curves.ease);

                    setState(() {});
                  },
                ),
              )
            ]
          ],
        ),
      ),
    );
  }

  Widget button({required void Function() onPressed, required IconData iconData, required String title, required bool is_active}) {
    return MaterialButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: (is_active) ? Colors.blue : null,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: (is_active) ? Colors.blue : null,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeBody extends AppStatefulWidget {
  final Size? Function() getRedBoxSize;
  const HomeBody({
    super.key,
    required this.getRedBoxSize,
    required super.appData,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print("init state");
    }
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print("Dispose");
    }
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Icon(Hicons.information_square_light_outline),
    // );

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox.fromSize(
            size: widget.getRedBoxSize(),
          ),
        ],
      ),
    );
  }
}

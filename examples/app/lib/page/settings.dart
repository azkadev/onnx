// ignore_for_file: avoid_print, unused_local_variable

import 'package:app/widget/app.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hicons/flutter_hicons.dart';

import 'package:general_lib_flutter/general_lib_flutter.dart';
// import 'package:meesagee_app/page/qr.dart';
// import 'package:meesagee_app/page/settings/settings.dart';
// import 'package:meesagee_app/page/sign.dart';
// import 'package:meesagee_app/widget/app_debug.dart';

// import 'package:meesagee_app/widget/widget.dart';

class SettingsPageApp extends AppStatefulWidget {
  const SettingsPageApp({
    super.key,
    required super.appData,
  });

  @override
  State<SettingsPageApp> createState() =>
      _SettingsPageAppState();
}

class _SettingsPageAppState extends State<SettingsPageApp> {
  final GlobalKey bottomBarKey = GlobalKey();

  final GlobalKey globalKey = GlobalKey();

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
    // print(widget.getRedBoxSize()!.height);
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: () {
        return PreferredSize(
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
                          context.navigator().pop();
                        },
                        child: const Icon(Icons.arrow_back_ios_sharp),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "APP TEMPLATE",
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
        );
      }(),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: context.height,
          minWidth: context.width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox.fromSize(
              size: () {
                try {
                  return getRedBoxSize(globalKey.currentContext!);
                } catch (e) {
                  return null;
                }
              }(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: InkWell(
                        onTap: () async {},
                        child: const Icon(Icons.qr_code),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: PopupMenuButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      clipBehavior: Clip.antiAlias,
                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(
                            child: Text("Add Account"),
                          ),
                          PopupMenuItem(
                            child: Text("Logout"),
                            onTap: () async {
                              // context.navigator().pushReplacement(
                              //   MaterialPageRoute(
                              //     builder: (context) {
                              //       SignPage signPage = SignPage(appData: widget.appData);

                              //       if (widget.appData.is_debug) {
                              //         return AppDebug(
                              //           themeMode: widget.appData.themeModeNotifier,
                              //           child: signPage,
                              //         );
                              //       }
                              //       return signPage;
                              //     },
                              //   ),
                              // );
                            },
                          ),
                        ];
                      },
                      child: const RotatedBox(
                        quarterTurns: 1,
                        child: Icon(Icons.more_horiz_sharp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(25),
            //     child: ProfilePicture(
            //       pathImage: "assets/icons/ai.png",
            //       width: 150,
            //       height: 150,
            //       borderRadius: const BorderRadius.all(Radius.circular(50)),
            //       onPressed: () async {},
            //     ),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: context.theme.dialogBackgroundColor.withOpacity(0.85),
                boxShadow: [
                  BoxShadow(
                    color: context.theme.shadowColor,

                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Account",
                      ),
                    ),
                  ),
                  buttonSetting(
                    iconData: Hicons.profile_1_light_outline,
                    title: "Airin",
                    subtitle: "Nick Name",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.user_tag_light_outline,
                    title: "@",
                    subtitle: "Username",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.call_light_outline,
                    title: "xxxxxx",
                    subtitle: "Phone Number",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.location_cross_light_outline,
                    title: "Bio",
                    subtitle: "Bio",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: context.theme.dialogBackgroundColor.withOpacity(0.85),
                boxShadow: [
                  BoxShadow(
                    color: context.theme.shadowColor,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Settings",
                      ),
                    ),
                  ),
                  buttonSetting(
                    iconData: Hicons.message_12_light_outline,
                    title: "Chat Settings",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.security_safe_light_outline,
                    title: "Privacy And Security",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.notification_4_light_outline,
                    title: "Notifications And Sound",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.activity_3_light_outline,
                    title: "Data And Storage",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.shield_cross_light_outline,
                    title: "Devices",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.location_cross_light_outline,
                    title: "Language",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: context.theme.dialogBackgroundColor.withOpacity(0.85),
                boxShadow: [
                  BoxShadow(
                    color: context.theme.shadowColor,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buttonSetting(
                    iconData: Hicons.verified_light_outline,
                    title: "App_TEMPLATE Premium",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: context.theme.dialogBackgroundColor.withOpacity(0.85),
                boxShadow: [
                  BoxShadow(
                    color: context.theme.shadowColor,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buttonSetting(
                    iconData: Hicons.faq_circle_bold,
                    title: "Ask Question",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.faq_circle_bold,
                    title: "App Faq",
                    onPressed: () {},
                  ),
                  buttonSetting(
                    iconData: Hicons.security_safe_light_outline,
                    title: "Privacy Policy",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonSetting(
      {required IconData iconData,
      required String title,
      String? subtitle,
      void Function()? onPressed}) {
    return MaterialButton(
      onPressed: onPressed,
      child: ListTile(
        leading: Icon(iconData),
        title: Text(title),
        subtitle: (subtitle != null) ? Text(subtitle) : null,
      ),
    );
  }
}

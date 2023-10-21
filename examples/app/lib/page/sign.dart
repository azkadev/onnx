// ignore_for_file: non_constant_identifier_names

import 'package:app/app_data/app_sign.dart';

import 'package:app/page/home.dart';
import 'package:app/widget/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';
import 'package:general_lib_flutter/general_lib_flutter_core.dart';

import 'package:rive/rive.dart';

class SignPageApp extends AppStatefulWidget {
  const SignPageApp({super.key, required super.appData});

  @override
  State<SignPageApp> createState() => _SignPageAppState();
}

class _SignPageAppState extends State<SignPageApp> {
  int activeIndex = 0;
  bool is_current_page = true;

  final ValueNotifier<bool> theme_notifier = ValueNotifier(false);
  // SignPageType signPageType = SignPageType.sign_in;
  final ValueNotifier<SignPageType> signPageTypeValueNotifier = ValueNotifier(SignPageType.sign_in);

  task() {
    focus_node_username.addListener(() {
      _onEmailFocusChange(focus_node_username);
    });
    focus_node_password.addListener(() {
      _onPasswordFocusChange(focus_node_password);
    });
    focus_node_password_new.addListener(() {
      _onPasswordFocusChange(focus_node_password_new);
    });
    focus_node_phone_number.addListener(() {
      _onEmailFocusChange(focus_node_phone_number);
    });

    RiveFile.asset("assets/rive/teddy_login_screen.riv").then((file) async {
      final artboard = file.mainArtboard;

      final controller = StateMachineController.fromArtboard(
        artboard,
        'Login Machine',
        onStateChange: _onStateChange,
      );

      print(controller);
      if (controller != null) {
        artboard.addController(controller);
        _check = controller.findInput<bool>('isChecking');
        _look = controller.findInput<double>("numLook");
        _handsUp = controller.findInput<bool>('isHandsUp');
        _success = controller.findInput<bool>("trigSuccess") as SMITrigger;
        _fail = controller.findInput<bool>("trigFail") as SMITrigger;

        // _like = controller.findInput<bool>('Like') as SMIBool;
        // _like?.value = false;
      }
      // artboard;
      setState(() {
        _riveArtboard = artboard;
      });
    });
  }

  bool status = false;
  String animation = "Unlike";
  SMIInput<bool>? _check;
  SMIInput<bool>? _handsUp;
  SMIInput<double>? _look;
  SMITrigger? _success;
  SMITrigger? _fail;
  String stateChangeMessage = '';
  Artboard? _riveArtboard;

  final FocusNode focus_node_username = FocusNode();
  final FocusNode focus_node_phone_number = FocusNode();
  final FocusNode focus_node_password = FocusNode();
  final FocusNode focus_node_password_new = FocusNode();

  bool formStatus = false;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      task();
    });
  }

  @override
  void dispose() {
    focus_node_username.dispose();
    focus_node_phone_number.dispose();
    focus_node_password.dispose();
    focus_node_password_new.dispose();

    super.dispose();
  }

  void _onPasswordFocusChange(FocusNode focusNode) {
    _handsUp!.value = focusNode.hasFocus;
  }

  void _onEmailFocusChange(FocusNode focusNode) {
    _check!.value = focusNode.hasFocus;
  }

  void _onStateChange(String stateMachineName, String stateName) => setState(
        () => stateChangeMessage = 'State Changed in $stateMachineName to $stateName',
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ValueListenableBuilder<SignPageType>(
          valueListenable: signPageTypeValueNotifier,
          builder: (_, SignPageType signPageType, __) {
            if (signPageType == SignPageType.sign_up) {
              return signUpBody();
            }
            if (signPageType == SignPageType.reset_password) {
              return resetPasswordBody();
            }
            return signInBody();
          },
        ),
      ),
    );
  }

  Widget signInBody() {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: context.height,
          minWidth: context.width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Builder(
              builder: (context) {
                if (_riveArtboard != null) {
                  return SizedBox(
                    height: context.height / 2.5,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Rive(
                        fit: BoxFit.fill,
                        artboard: _riveArtboard!,
                      ),
                    ),
                  );
                }
                return SizedBox(
                  height: context.height / 2.5,
                );
              },
            ),
            textFormField(
              labelText: "Username",
              hintText: "general",
              iconData: Hicons.user_tag_2_bold,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_username,
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                _look!.value = value.length.toDouble() * 2;
              },
              textInputAction: TextInputAction.next,
            ),
            textFormField(
              labelText: "Password",
              hintText: "password 1213 ./;",
              iconData: Icons.key,
              valueState: theme_notifier,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_password,
              keyboardType: TextInputType.visiblePassword,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      signPageTypeValueNotifier.value = SignPageType.reset_password;
                    });
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: context.theme.indicatorColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: context.width,
              decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(20))),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                onPressed: () async {
                  if (focus_node_username.hasFocus) focus_node_username.unfocus();
                  if (focus_node_password.hasFocus) focus_node_password.unfocus();

                  if (_formKey.currentState!.validate() == false) {
                    _fail!.fire();
                  } else {
                    _success!.fire();
                    setState(() {
                      formStatus = true;
                    });

                    context.navigator().pushReplacement(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        HomePageApp homePageApp = HomePageApp(appData: widget.appData);

                        return homePageApp;
                      },
                    ));
                    //
                  }
                },
                height: 45,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: context.theme.indicatorColor, fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      signPageTypeValueNotifier.value = SignPageType.sign_up;
                    });
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget signUpBody() {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: context.height,
          minWidth: context.width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Builder(
              builder: (context) {
                if (_riveArtboard != null) {
                  return SizedBox(
                    height: context.height / 2.5,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Rive(
                        fit: BoxFit.fill,
                        artboard: _riveArtboard!,
                      ),
                    ),
                  );
                }
                return SizedBox(
                  height: context.height / 2.5,
                );
              },
            ),
            textFormField(
              labelText: "Username",
              hintText: "general",
              onTap: () {},
              iconData: Hicons.user_tag_2_bold,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_username,
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                _look!.value = value.length.toDouble() * 2;
              },
              textInputAction: TextInputAction.next,
            ),
            textFormField(
              labelText: "Phone Number",
              hintText: "+658362894910",
              iconData: Hicons.call_light_outline,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_phone_number,
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                _look!.value = value.length.toDouble() * 2;
              },
              textInputAction: TextInputAction.next,
            ),
            textFormField(
              labelText: "Password",
              hintText: "password 1213 ./;",
              iconData: Icons.key,
              valueState: theme_notifier,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_password,
              keyboardType: TextInputType.visiblePassword,
            ),
            textFormField(
              labelText: "Password",
              hintText: "password 1213 ./;",
              iconData: Icons.key,
              valueState: theme_notifier,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_password_new,
              keyboardType: TextInputType.visiblePassword,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      signPageTypeValueNotifier.value = SignPageType.reset_password;
                    });
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: context.theme.indicatorColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: context.width,
              decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(20))),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                onPressed: () async {
                  await context.navigator().pushReplacement(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      HomePageApp homePageApp = HomePageApp(appData: widget.appData);

                      return homePageApp;
                    },
                  ));
                },
                height: 45,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: TextStyle(color: context.theme.indicatorColor, fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      signPageTypeValueNotifier.value = SignPageType.sign_in;
                    });
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget resetPasswordBody() {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: context.height,
          minWidth: context.width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Builder(
              builder: (context) {
                if (_riveArtboard != null) {
                  return SizedBox(
                    height: context.height / 2.5,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Rive(
                        fit: BoxFit.fill,
                        artboard: _riveArtboard!,
                      ),
                    ),
                  );
                }
                return SizedBox(
                  height: context.height / 2.5,
                );
              },
            ),
            textFormField(
              labelText: "Username",
              hintText: "general",
              onTap: () {},
              iconData: Hicons.user_tag_2_bold,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_username,
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                _look!.value = value.length.toDouble() * 2;
              },
              textInputAction: TextInputAction.next,
            ),
            textFormField(
              labelText: "Phone Number",
              hintText: "+658362894910",
              iconData: Hicons.call_light_outline,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focus_node_phone_number,
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                _look!.value = value.length.toDouble() * 2;
              },
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: context.width,
              decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(20))),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                onPressed: () async {
                  await context.navigator().pushReplacement(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      HomePageApp homePageApp = HomePageApp(appData: widget.appData);

                      return homePageApp;
                    },
                  ));
                },
                height: 45,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: TextStyle(color: context.theme.indicatorColor, fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      signPageTypeValueNotifier.value = SignPageType.sign_in;
                    });
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget textFormField({
    EdgeInsetsGeometry? padding,
    TextEditingController? controller,
    required String labelText,
    required String hintText,
    required IconData iconData,
    String? Function(String? value)? validator,
    FocusNode? focusNode,
    TextInputType? keyboardType,
    void Function(String value)? onChanged,
    TextInputAction? textInputAction,
    AutovalidateMode? autovalidateMode,
    void Function()? onTap,
    // bool is_secret_data = false,
    ValueNotifier<bool>? valueState,
  }) {
    Widget child = Padding(
      padding: padding ??
          const EdgeInsets.all(
            10,
          ),
      child: TextFormField(
        onTap: onTap,
        autovalidateMode: autovalidateMode,
        focusNode: focusNode,
        keyboardType: keyboardType,
        onChanged: onChanged,
        textInputAction: textInputAction,
        controller: controller,
        cursorColor: context.theme.indicatorColor,
        validator: validator,
        obscureText: () {
          if (valueState != null) {
            return valueState.value;
          }
          return false;
        }(),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0.0),
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
          ),
          labelStyle: TextStyle(
            color: context.theme.indicatorColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Icon(
            iconData,
            color: context.theme.indicatorColor,
            size: 18,
          ),
          suffixIcon: (valueState != null)
              ? InkWell(
                  onTap: () {
                    setState(() {
                      valueState.value = (!valueState.value);
                    });
                  },
                  child: Icon(
                    Icons.remove_red_eye_outlined,
                    color: context.theme.indicatorColor,
                    size: 18,
                  ),
                )
              : null,
          focusColor: context.theme.indicatorColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          floatingLabelStyle: TextStyle(
            color: context.theme.indicatorColor,
            fontSize: 18.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: context.theme.indicatorColor,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
    // if (is_secret_data) {
    if (valueState != null) {
      return ValueListenableBuilder<bool>(
        valueListenable: valueState,
        builder: (_, mode, __) {
          return child;
        },
      );
    }
    // }
    return child;
  }
}

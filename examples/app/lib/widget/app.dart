import 'package:app/app_data/app_data.dart';
import 'package:flutter/material.dart';

abstract class AppStatefulWidget extends StatefulWidget {
  final AppData appData;
  const AppStatefulWidget({
    super.key,
    required this.appData,
  });
}

abstract class AppStatelessWidget extends StatelessWidget {
  final AppData appData;
  const AppStatelessWidget({
    super.key,
    required this.appData,
  });
}

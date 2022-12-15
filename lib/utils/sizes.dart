import 'package:flutter/material.dart';

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1204;
bool isBigTablet(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1034;
bool isTablet(BuildContext context) => MediaQuery.of(context).size.width >= 654;
bool isPhone(BuildContext context) => MediaQuery.of(context).size.width < 654;

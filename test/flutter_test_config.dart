import 'dart:async';
import 'package:golden_toolkit/golden_toolkit.dart';

Future testExecutable(FutureOr Function() testMain) async {
  await loadAppFonts();
  await testMain();
}
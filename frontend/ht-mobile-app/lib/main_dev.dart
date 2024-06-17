import 'package:ht/app_runner.dart';
import 'package:ht/config/app_config.dart';
import 'package:ht/config/env/env.dart';

void main() {
  AppConfig(env: Env.dev());
  AppRunner.instance.runApplication();
}

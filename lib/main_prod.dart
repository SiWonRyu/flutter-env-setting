import 'package:env_setting/core/env.dart';
import 'main_delegate.dart';

void main() {
  Environments.setEnvironments(Environment.PROD);
  mainDelegate();
}

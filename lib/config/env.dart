import 'package:envied/envied.dart';

part 'env.g.dart';

/// 运行命令 project flutter pub run build_runner build
@Envied(path:'.env')
abstract class Env{
  @EnviedField(varName: 'EASY_IM_HOST')
  static const host = _Env.host;
}
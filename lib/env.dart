import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', allowOptionalFields: true)
abstract class Env {

}

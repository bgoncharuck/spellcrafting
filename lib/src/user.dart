import 'flow.dart';
import 'power_source.dart';

abstract class User extends Nothing {}

abstract class LivingBeing extends User {
  PhysicalLife get life;
}

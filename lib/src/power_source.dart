import 'flow.dart';

abstract class PowerSource extends Nothing {}

abstract class FinitePowerSource extends PowerSource {}

abstract class InfinitePowerSource extends PowerSource {}

class PhysicalLife implements FinitePowerSource {
  const PhysicalLife({required this.days});
  final int days;
  static const int maxPossibleDays = -1 >>> 1;

  factory PhysicalLife.full() => const PhysicalLife(days: maxPossibleDays);
}

abstract class Ma extends InfinitePowerSource {}

abstract class Deity extends FinitePowerSource {}

abstract class Element extends InfinitePowerSource {}

class Life implements Element {}

abstract class Echo extends FinitePowerSource {
  List<FinitePowerSource> get followers;
  List<PowerSource> get supporters;
}

class CombinedPowerSource implements PowerSource {
  CombinedPowerSource(this.sources);
  final List<PowerSource> sources;
}

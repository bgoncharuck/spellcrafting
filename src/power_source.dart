abstract class PowerSource {}

abstract class FinitePowerSource extends PowerSource {}

abstract class InfinitePowerSource extends PowerSource {}

class PhysicalLife implements FinitePowerSource {
  PhysicalLife({required this.days});

  final int days;
}

abstract class Ma extends InfinitePowerSource {}

abstract class Deity extends FinitePowerSource {}

abstract class Element extends InfinitePowerSource {}

abstract class Echo extends FinitePowerSource {
  List<FinitePowerSource> get followers;
  List<PowerSource> get supporters;
}

class CombinedPowerSource implements PowerSource {
  CombinedPowerSource(this.sources);
  final List<PowerSource> sources;
}

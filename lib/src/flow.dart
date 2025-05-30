abstract class Nothing {}

class TheNothing implements Nothing {
  const TheNothing();
}

abstract class Flow extends Nothing {
  Nothing get from;
  Nothing get to;
}

class FlowBridge implements Flow {
  @override
  final Nothing from;

  @override
  final Nothing to;

  FlowBridge(this.from, this.to);
}

abstract class Action extends Nothing {
  void act();
}

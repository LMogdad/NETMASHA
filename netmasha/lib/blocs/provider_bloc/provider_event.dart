abstract class ProviderEvent {
  final int index;
  ProviderEvent(this.index);
}

class GoNextEvent extends ProviderEvent {
  GoNextEvent(super.index);
}

abstract class ProviderState {}

class CurrentProviderState extends ProviderState {
  final int index;
  CurrentProviderState(
      {required this.index});
}

class EndProviderState extends ProviderState {}

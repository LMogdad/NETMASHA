abstract class NavBarState {
  final int selected;
  NavBarState({required this.selected});
}

class GetIndex extends NavBarState {
  GetIndex({required super.selected});
}

abstract class NavBarEvent {
  final int selected;

  NavBarEvent({required this.selected});
}

class ChangePageEvent extends NavBarEvent{
  ChangePageEvent({required super.selected});

}
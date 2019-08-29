import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FragmentEvent extends Equatable {
  FragmentEvent([List props = const []]) : super(props);
}

@immutable
class FragmentNavigateEvent extends FragmentEvent {
  final String param;

  FragmentNavigateEvent(this.routeName, this.param) : super(<dynamic>[routeName, param]);
  final String routeName;
}

@immutable
class FragmentBackEvent extends FragmentEvent {
  FragmentBackEvent() : super(<dynamic>[]);
}

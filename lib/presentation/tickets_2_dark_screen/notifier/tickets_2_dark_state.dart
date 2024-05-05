// ignore_for_file: must_be_immutable

part of 'tickets_2_dark_notifier.dart';

/// Represents the state of Tickets2Dark in the application.
class Tickets2DarkState extends Equatable {
  Tickets2DarkState({this.tickets2DarkModelObj});

  Tickets2DarkModel? tickets2DarkModelObj;

  @override
  List<Object?> get props => [
        tickets2DarkModelObj,
      ];

  Tickets2DarkState copyWith({Tickets2DarkModel? tickets2DarkModelObj}) {
    return Tickets2DarkState(
      tickets2DarkModelObj: tickets2DarkModelObj ?? this.tickets2DarkModelObj,
    );
  }
}

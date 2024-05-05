// ignore_for_file: must_be_immutable

part of 'tickets_3_dark_notifier.dart';

/// Represents the state of Tickets3Dark in the application.
class Tickets3DarkState extends Equatable {
  Tickets3DarkState({this.tickets3DarkModelObj});

  Tickets3DarkModel? tickets3DarkModelObj;

  @override
  List<Object?> get props => [
        tickets3DarkModelObj,
      ];

  Tickets3DarkState copyWith({Tickets3DarkModel? tickets3DarkModelObj}) {
    return Tickets3DarkState(
      tickets3DarkModelObj: tickets3DarkModelObj ?? this.tickets3DarkModelObj,
    );
  }
}

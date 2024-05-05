// ignore_for_file: must_be_immutable

part of 'tickets_dark_notifier.dart';

/// Represents the state of TicketsDark in the application.
class TicketsDarkState extends Equatable {
  TicketsDarkState({this.ticketsDarkModelObj});

  TicketsDarkModel? ticketsDarkModelObj;

  @override
  List<Object?> get props => [
        ticketsDarkModelObj,
      ];

  TicketsDarkState copyWith({TicketsDarkModel? ticketsDarkModelObj}) {
    return TicketsDarkState(
      ticketsDarkModelObj: ticketsDarkModelObj ?? this.ticketsDarkModelObj,
    );
  }
}

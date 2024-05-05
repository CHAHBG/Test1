// ignore_for_file: must_be_immutable

part of 'tickets_notifier.dart';

/// Represents the state of TicketsDark in the application.
class TicketsState extends Equatable {
  TicketsState({this.ticketsModelObj});

  TicketsDarkModel? ticketsModelObj;

  @override
  List<Object?> get props => [
        ticketsModelObj,
      ];

  TicketsState copyWith({TicketsDarkModel? ticketsModelObj}) {
    return TicketsState(
      ticketsModelObj: ticketsModelObj ?? this.ticketsModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'tickets_details_notifier.dart';

/// Represents the state of TicketsDetails in the application.
class TicketsDetailsState extends Equatable {
  TicketsDetailsState({this.ticketsDetailsModelObj});

  TicketsDetailsModel? ticketsDetailsModelObj;

  @override
  List<Object?> get props => [
        ticketsDetailsModelObj,
      ];

  TicketsDetailsState copyWith({TicketsDetailsModel? ticketsDetailsModelObj}) {
    return TicketsDetailsState(
      ticketsDetailsModelObj:
          ticketsDetailsModelObj ?? this.ticketsDetailsModelObj,
    );
  }
}

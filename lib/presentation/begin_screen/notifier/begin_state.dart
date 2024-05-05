// ignore_for_file: must_be_immutable

part of 'begin_notifier.dart';

/// Represents the state of Begin in the application.
class BeginState extends Equatable {
  BeginState({this.beginModelObj});

  BeginModel? beginModelObj;

  @override
  List<Object?> get props => [
        beginModelObj,
      ];

  BeginState copyWith({BeginModel? beginModelObj}) {
    return BeginState(
      beginModelObj: beginModelObj ?? this.beginModelObj,
    );
  }
}

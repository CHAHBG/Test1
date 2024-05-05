// ignore_for_file: must_be_immutable

part of 'frame_five_notifier.dart';

/// Represents the state of FrameFive in the application.
class FrameFiveState extends Equatable {
  FrameFiveState({this.frameFiveModelObj});

  FrameFiveModel? frameFiveModelObj;

  @override
  List<Object?> get props => [
        frameFiveModelObj,
      ];

  FrameFiveState copyWith({FrameFiveModel? frameFiveModelObj}) {
    return FrameFiveState(
      frameFiveModelObj: frameFiveModelObj ?? this.frameFiveModelObj,
    );
  }
}

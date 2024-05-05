// ignore_for_file: must_be_immutable

part of 'frame_notifier.dart';

/// Represents the state of Frame in the application.
class FrameState extends Equatable {
  FrameState({
    this.colobanevalueController,
    this.pNRvalueController,
    this.frameModelObj,
  });

  TextEditingController? colobanevalueController;

  TextEditingController? pNRvalueController;

  FrameModel? frameModelObj;

  @override
  List<Object?> get props => [
        colobanevalueController,
        pNRvalueController,
        frameModelObj,
      ];

  FrameState copyWith({
    TextEditingController? colobanevalueController,
    TextEditingController? pNRvalueController,
    FrameModel? frameModelObj,
  }) {
    return FrameState(
      colobanevalueController:
          colobanevalueController ?? this.colobanevalueController,
      pNRvalueController: pNRvalueController ?? this.pNRvalueController,
      frameModelObj: frameModelObj ?? this.frameModelObj,
    );
  }
}

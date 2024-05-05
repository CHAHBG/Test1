import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/frame_five_screen/models/frame_five_model.dart';
part 'frame_five_state.dart';

final frameFiveNotifier =
    StateNotifierProvider<FrameFiveNotifier, FrameFiveState>((ref) =>
        FrameFiveNotifier(FrameFiveState(frameFiveModelObj: FrameFiveModel())));

/// A notifier that manages the state of a FrameFive according to the event that is dispatched to it.
class FrameFiveNotifier extends StateNotifier<FrameFiveState> {
  FrameFiveNotifier(FrameFiveState state) : super(state);
}

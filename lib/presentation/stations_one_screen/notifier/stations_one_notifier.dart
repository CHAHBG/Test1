import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/stations_one_screen/models/stations_one_model.dart';
part 'stations_one_state.dart';

final stationsOneNotifier =
    StateNotifierProvider<StationsOneNotifier, StationsOneState>((ref) =>
        StationsOneNotifier(StationsOneState(
            searchController: TextEditingController(),
            stationsOneModelObj: StationsOneModel())));

/// A notifier that manages the state of a StationsOne according to the event that is dispatched to it.
class StationsOneNotifier extends StateNotifier<StationsOneState> {
  StationsOneNotifier(StationsOneState state) : super(state);
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/stations_screen/models/stations_model.dart';
part 'stations_state.dart';

final stationsNotifier = StateNotifierProvider<StationsNotifier, StationsState>(
    (ref) => StationsNotifier(StationsState(
        searchController: TextEditingController(),
        stationsModelObj: StationsModel())));

/// A notifier that manages the state of a Stations according to the event that is dispatched to it.
class StationsNotifier extends StateNotifier<StationsState> {
  StationsNotifier(StationsState state) : super(state);
}

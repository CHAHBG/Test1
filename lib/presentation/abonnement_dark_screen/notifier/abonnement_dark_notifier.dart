import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/abonnement_dark_screen/models/abonnement_dark_model.dart';
part 'abonnement_dark_state.dart';

final abonnementDarkNotifier =
    StateNotifierProvider<AbonnementDarkNotifier, AbonnementDarkState>((ref) =>
        AbonnementDarkNotifier(AbonnementDarkState(
            searchController: TextEditingController(),
            abonnementDarkModelObj: AbonnementDarkModel())));

/// A notifier that manages the state of a AbonnementDark according to the event that is dispatched to it.
class AbonnementDarkNotifier extends StateNotifier<AbonnementDarkState> {
  AbonnementDarkNotifier(AbonnementDarkState state) : super(state);
}

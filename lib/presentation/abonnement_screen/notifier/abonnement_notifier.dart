import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/abonnement_screen/models/abonnement_model.dart';
part 'abonnement_state.dart';

final abonnementNotifier =
    StateNotifierProvider<AbonnementNotifier, AbonnementState>((ref) =>
        AbonnementNotifier(AbonnementState(
            searchController: TextEditingController(),
            abonnementModelObj: AbonnementModel())));

/// A notifier that manages the state of a Abonnement according to the event that is dispatched to it.
class AbonnementNotifier extends StateNotifier<AbonnementState> {
  AbonnementNotifier(AbonnementState state) : super(state);
}

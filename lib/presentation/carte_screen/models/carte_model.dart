// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [carte_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CarteModel extends Equatable {
  CarteModel();

  CarteModel copyWith() {
    return CarteModel();
  }

  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'r_gl_m_nt_voyageur_dark_notifier.dart';

/// Represents the state of RGlMNtVoyageurDark in the application.
class RGlMNtVoyageurDarkState extends Equatable {
  RGlMNtVoyageurDarkState({this.rGlMNtVoyageurDarkModelObj});

  RGlMNtVoyageurDarkModel? rGlMNtVoyageurDarkModelObj;

  @override
  List<Object?> get props => [
        rGlMNtVoyageurDarkModelObj,
      ];

  RGlMNtVoyageurDarkState copyWith(
      {RGlMNtVoyageurDarkModel? rGlMNtVoyageurDarkModelObj}) {
    return RGlMNtVoyageurDarkState(
      rGlMNtVoyageurDarkModelObj:
          rGlMNtVoyageurDarkModelObj ?? this.rGlMNtVoyageurDarkModelObj,
    );
  }
}

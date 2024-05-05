// ignore_for_file: must_be_immutable

part of 'carte_dark_notifier.dart';

/// Represents the state of CarteDark in the application.
class CarteDarkState extends Equatable {
  CarteDarkState({this.carteDarkModelObj});

  CarteDarkModel? carteDarkModelObj;

  @override
  List<Object?> get props => [
        carteDarkModelObj,
      ];

  CarteDarkState copyWith({CarteDarkModel? carteDarkModelObj}) {
    return CarteDarkState(
      carteDarkModelObj: carteDarkModelObj ?? this.carteDarkModelObj,
    );
  }
}

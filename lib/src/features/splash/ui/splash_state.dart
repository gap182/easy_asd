import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.data() = _Data;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.error([String? message]) = _Error;
}

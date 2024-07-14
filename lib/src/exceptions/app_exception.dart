// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';

@immutable
class AppException implements Exception {
  final String code;
  final String message;

  const AppException(this.code, this.message);

  @override
  String toString() => message;

  @override
  bool operator ==(covariant AppException other) {
    if (identical(this, other)) return true;

    return other.code == code && other.message == message;
  }

  @override
  int get hashCode => code.hashCode ^ message.hashCode;
}

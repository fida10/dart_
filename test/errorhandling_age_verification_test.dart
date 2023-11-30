import 'package:errorhandling_age_verification/errorhandling_age_verification.dart';
import 'package:test/test.dart';

void main() {
  group('Age Verification Tests', () {
    test('Age is valid and above threshold', () {
      expect(() => verifyAge(25), returnsNormally);
    });

    test('Age below threshold throws AgeVerificationException', () {
      expect(() => verifyAge(16), throwsA(isA<AgeVerificationException>()));
    });

    test('Negative age throws InvalidAgeException', () {
      expect(() => verifyAge(-5), throwsA(isA<InvalidAgeException>()));
    });

    test('Unrealistically high age throws InvalidAgeException', () {
      expect(() => verifyAge(200), throwsA(isA<InvalidAgeException>()));
    });
  });
}

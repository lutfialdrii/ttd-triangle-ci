import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

void main() {
  group(
    "Detect the triangle",
    () {
      test(
        "Should throw Error when there is side less than 1",
        () {
          expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
          expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
          expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
        },
      );

      test(
        'Should throw Error when side a+b <= c',
        () {
          expect(() => detectTriangle(1, 2, 4), throwsA(isA<Exception>()));
          expect(() => detectTriangle(1, 3, 5), throwsA(isA<Exception>()));
        },
      );

      test(
        'Should return "Segitiga Sama Sisi" when all sides are equal',
        () {
          expect(detectTriangle(1, 1, 1), "Segitiga Sama Sisi");
          expect(detectTriangle(2, 2, 1), isNot("Segitiga Sama Sisi"));
        },
      );

      test(
        'Should return "Segitiga Sama Kaki" when only two sides are equal',
        () {
          expect(detectTriangle(2, 2, 3), "Segitiga Sama Kaki");
          expect(detectTriangle(2, 1, 2), "Segitiga Sama Kaki");
          expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
          expect(detectTriangle(3, 2, 3), "Segitiga Sama Kaki");
        },
      );

      test(
        'Should return "Segitiga Sembarang" when all sides are not equals ',
        () {
          expect(detectTriangle(2, 3, 4), "Segitiga Sembarang");
        },
      );
    },
  );
}

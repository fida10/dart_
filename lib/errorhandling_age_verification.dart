/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_age_verification_base.dart';

/*
Practice Question 2: Age Verification

Task:

Create a function named verifyAge that takes an integer representing a person's age.

If the age is below a certain threshold (e.g., 18 years), 
throw a custom exception named AgeVerificationException.

The function should also handle cases where the age is 
clearly unrealistic (e.g., negative numbers or unreasonably high numbers like 150), 
throwing an appropriate custom exception.
 */

void verifyAge(int personAge) {
  if(personAge > 150 || personAge < 0){
    throw InvalidAgeException("Negative ages or ages above 150 are invalid! Age: $personAge");
  }
  
  if (personAge < 18) {
    throw AgeVerificationException(
        "The persons age is below 18! Age: $personAge");
  }
}

class AgeVerificationException implements Exception {
  AgeVerificationException(this.message);
  String message;
}

class InvalidAgeException implements Exception {
  InvalidAgeException(this.message);
  String message;
}

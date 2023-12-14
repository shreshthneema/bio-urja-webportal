
// extension StringExtension on String {
//   bool get isValidEmail => Regexes.emailRegex.hasMatch(this);

//   //* An extension for validating String is a name.
//   bool get isValidName => Regexes.nameRegex.hasMatch(this);

//   //* An extension for validating String is a contact.
//   bool get isValidContact => Regexes.contactRegex.hasMatch(this);

//   //* An extension for validating String is a contact.
//   bool get isValidErp => Regexes.erpRegex.hasMatch(this);

//   //* An extension for validating String is a Zipcode.
//   bool get isValidZipCode => Regexes.zipCodeRegex.hasMatch(this);

//   //* An extension for validating String is a credit card number.
//   bool get isValidCreditCardNumber =>
//       Regexes.creditCardNumberRegex.hasMatch(this);

//   //* An extension for validating String is a credit card CVV.
//   bool get isValidCreditCardCVV => Regexes.creditCardCVVRegex.hasMatch(this);

//   //* An extension for validating String is a credit card expiry.
//   bool get isValidCreditCardExpiry =>
//       Regexes.creditCardExpiryRegex.hasMatch(this);

//   //* An extension for validating String is a valid OTP digit
//   bool get isValidOtpDigit => Regexes.otpDigitRegex.hasMatch(this);

//   //* An extension for converting String to Capital case.
//   String get capitalize => this[0].toUpperCase() + substring(1).toLowerCase();

//   //* An extension for replacing underscores in a String with spaces.
//   String get removeUnderScore => replaceAll('_', ' ');

//   String get breakString {
//     final pattern = RegExp('([a-z])([A-Z])');
//     return replaceAllMapped(pattern, (match) => '${match[1]} ${match[2]}');
//   }
// }

// extension ShowString on dynamic {
//   String get showString => this != null ? toString() : 'Not Found';
// }

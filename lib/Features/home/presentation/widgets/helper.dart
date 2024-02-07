
// bool isArabic(String text) {
//   // Arabic Unicode ranges
//   RegExp arabicRegex = RegExp(
//       r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]');
//   return arabicRegex.hasMatch(text);
// }

bool isEnglish(String text) {
  // English Unicode ranges
  RegExp englishRegex = RegExp(r'[A-Za-z]');
  return englishRegex.hasMatch(text);
}

bool isMixed(String text) {
  return !isArabic(text) && !isEnglish(text);
}

bool isArabic(String text) {
  // Regular expression to match Arabic characters
  RegExp arabicRegex = RegExp(r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]');

  // Check if the text contains Arabic characters
  return arabicRegex.hasMatch(text);
}

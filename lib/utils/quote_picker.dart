import 'dart:math';

class QuotePicker {
  static final List<String> quotes = [
    'Coding like Poetry should be short and concise',
    'It\'s not a bug: it\'s an undocumented feature',
    'First, solve the problem. Then write the code',
    'Fix the cause, not the symptom',
    'Software development is a journey. Every bug fixed is a lesson learned',
    'Quality is not an act, it is a habit',
    'It’s harder to read code than to write it',
  ];

  static String getRandomQuote() {
    final random = Random();
    return quotes[random.nextInt(quotes.length)];
  }
}

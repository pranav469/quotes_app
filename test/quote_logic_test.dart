import 'package:flutter_test/flutter_test.dart';
import 'package:quotes/utils/quote_picker.dart';

void main() {
  test('Should return a valid quote from the list', () {
    final quote = QuotePicker.getRandomQuote();
    expect(QuotePicker.quotes.contains(quote), true);
  });
}

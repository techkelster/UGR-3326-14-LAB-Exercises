import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> quotes = [
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "In the middle of difficulty lies opportunity. - Albert Einstein",
    "Believe you can and you're halfway there. -Theodore Roosevelt",
  ];
  return quotes[Random().nextInt(quotes.length)];
}

void main() async {
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}

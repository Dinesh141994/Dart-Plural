import 'package:Dart_Plural/Dart_Plural.dart' as Dart_Plural;
import 'package:intl/intl.dart' as intl;
main(List<String> arguments) {
  print(showCartMessage(0));
  print(showCartMessage(1));
  print(showCartMessage(2));
}
String showCartMessage(int quantity) {
  return intl.Intl.plural(
    quantity,
    zero: 'EMPTY CART',
    one: '$quantity ITEM',
    other: '$quantity ITEMS',
    name: "ITEM",
    args: [quantity],
    examples: const {'quantity': 2},
    desc: "How many notifications are there.",
  );
}

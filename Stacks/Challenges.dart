void main() {
  List<String> stack = ['Saja', 'Duha', 'Rua', 'Sara', 'Doaa'];

  // Challenge 1: Reverse a List
  print("Challenge 1: Reversed List");
  stackReverse(stack);

  // Challenge 2: Balanced Parentheses
  String text1 = "Hi, I'm Saja and I love playing football (and)";
  print("Challenge 2: Balanced Parentheses");
  print("Test 1: $text1");
  print(
    IsBalanced(text1)
        ? "The parentheses are balanced."
        : "The parentheses are not balanced.",
  );
}

void stackReverse(List<String> stack) {
  for (var j = stack.length - 1; j >= 0; j--) {
    print(stack[j]);
  }
}

bool IsBalanced(String text) {
  List<String> stack = [];

  for (int i = 0; i < text.length; i++) {
    if (text[i] == '(') {
      stack.add('(');
    } else if (text[i] == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

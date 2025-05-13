import 'Linked list.dart';

void main() {
  //Challenge 1: Print in Reverse
  LinkedList list = LinkedList();
  list.append('Saja');
  list.append('Duha');
  list.append('Rua');
  list.append('Sara');
  list.append('Doaa');

  print("Challenge 1: Print in Reverse");
  printInReverse(list);

  // Challenge 2: Find the Middle Node
  print("\nChallenge 2: Find the Middle Node");
  findMiddleNode(list);

  //Challenge 3: Reverse a Linked List
  print("\nChallenge 3: Reverse a Linked List");
  LinkedList reversedList = reverseLinkedList(list);
  reversedList.display();

  //Challenge 4: Remove All Occurrences
  print("\nChallenge 4: Remove All Occurrences");
  removeAllOccurrences(list, 'Saja');
  list.display();
}

void printInReverse(LinkedList list) {
  Node? current = list.head;
  List<String> stack = [];

  while (current != null) {
    stack.add(current.data);
    current = current.next;
  }

  for (int i = stack.length - 1; i >= 0; i--) {
    print(stack[i]);
  }
}

void findMiddleNode(LinkedList list) {
  Node? slow = list.head;
  Node? fast = list.head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  if (slow != null) {
    print("Middle node: ${slow.data}");
  } else {
    print("List is empty");
  }
}

LinkedList reverseLinkedList(LinkedList list) {
  Node? previous = null;
  Node? current = list.head;
  Node? next;

  while (current != null) {
    next = current.next;
    current.next = previous;
    previous = current;
    current = next;
  }

  list.head = previous;
  return list;
}

void removeAllOccurrences(LinkedList list, String value) {
  while (list.head != null && list.head!.data == value) {
    list.head = list.head!.next;
  }

  Node? current = list.head;

  while (current != null && current.next != null) {
    if (current.next!.data == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }
}

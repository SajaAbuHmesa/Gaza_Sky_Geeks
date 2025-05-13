class Node {
  var data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void append(var data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

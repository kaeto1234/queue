import 'dart:collection';

void dequeue(Queue<int> queue) {
  if (queue.isEmpty) {
    print("Queue underflow (Kosong)");
  } else {
    int data = queue.removeFirst();
    print("$data dihapus dari Queue");
  }
}

void printQueue(Queue<int> queue) {
  if (queue.isEmpty) {
    print("Queue kosong");
    return;
  }
  print("Isi Queue:");
  for (var item in queue) {
    print(item);
  }
}
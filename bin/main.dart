import 'dart:io';
import 'dart:collection';

import '../lib/queue1.dart';
import '../lib/queue2.dart';
import '../lib/queue3.dart';

void main() {
  while (true) {
    print("===== Pilih Program =====\n");
    print("1.percobaan pertaman");
    print(
        "2. Percobaan ini hampir sama dengan sebelumnya, namun dengan style yang berbeda. ");
    print(
        "3. Pada studi kasus nomor 1, implementasikan konsep Queue dengan menggunakan package/library yang sudah tersedia pada dart (Queue Dart Collection)!");
    print("4. keluar");

    stdout.write("Masukkan pilihan (1-4): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {
      Queue1 q = Queue1();
      q.QueueOperation(100);
      q.enqueue(10);
      q.enqueue(20);
      q.enqueue(30);
      q.dequeue();
      q.printQueue();
    } else if (pilihan == 2) {
      Queue2 q = Queue2();
      q.QueueOperation(1000);
      q.enqueue(10);
      q.enqueue(20);
      q.enqueue(30);
      q.enqueue(40);
      print('${q.dequeue()} dequeued from queue\n');
      print('Front item is ${q.frontElement()}');
      print('Rear item is ${q.rearElement()}');
    } else if (pilihan == 3) {
      Queue<int> queue = Queue<int>(); // Membuat queue kosong bertipe int

      // Enqueue (masukkan data ke belakang)
      queue.addLast(10);
      print("10 dimasukkan ke dalam Queue");
      queue.addLast(20);
      print("20 dimasukkan ke dalam Queue");
      queue.addLast(30);
      print("30 dimasukkan ke dalam Queue");
      queue.addLast(40);
      print("40 dimasukkan ke dalam Queue");

      printQueue(queue);

      // Dequeue (menghapus data dari depan)
      dequeue(queue);
      dequeue(queue);

      printQueue(queue);

      // Enqueue lagi
      queue.addLast(50);
      print("50 dimasukkan ke dalam Queue");
      queue.addLast(60);
      print("60 dimasukkan ke dalam Queue");

      printQueue(queue);
    } else if (pilihan == 4) {
      print("Keluar dari program...");
      break;
    } else {
      print("Pilihan tidak valid!");
    }
  }
}

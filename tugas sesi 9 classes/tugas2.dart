class Task {
  String judul;
  String assignee;
  String deadline;
  String status = 'To Do';

  Task(this.judul, this.assignee, this.deadline);

  void mulaiKerjakan() {
    status = 'In Progress';
  }

  void selesaikan() {
    status = 'Done';
  }

  void tampilkanTask() {
    print('Task: $judul | Assignee: $assignee | Deadline: $deadline | Status: $status');
  }
}

void main() {
  var t1 = Task('Desain UI', 'mardiana', '13 Nov 2026');
  var t2 = Task('Coding Backend', 'yeyen', '15 Nov 2026');
  var t3 = Task('Testing Aplikasi', 'diki', '19 Nov 2026');

  t1.mulaiKerjakan();
  t2.mulaiKerjakan();
  t2.selesaikan();

  t1.tampilkanTask();
  t2.tampilkanTask();
  t3.tampilkanTask();
}
import 'employee.dart';

void main(List<String> args) {
  Employee e1 = Employee(id: 01, name: 'joshua', department: 'IT');
  Employee e2 = Employee(id: 02, name: 'Hana', department: 'Digital Marketing');
  Employee e3 = Employee(id: 03, name: 'Taka', department: 'HRD');

  e1.show();
  print(e1.id);
  e2.show();
  e3.show();
}

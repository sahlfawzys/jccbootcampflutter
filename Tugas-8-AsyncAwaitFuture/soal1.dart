void main(List<String> args) async {
  var h = Human();

  print("Luffy");
  print('zoro');
  print('killer');
  print(h.name);
  await h.getData();
  print(h.name);
}

class Human {
  String name = 'nama character one piece';

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'name 3: hilmy';
    print('get data [done]');
  }
}

void main() {
  // var list = [1, 2, 3];

  final list = List<String?>.filled(5, null);

  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;

  list[1] = "Ahmad Khoirul Falah";
  list[2] = "2241720184";

  assert(list[0] == null);
  assert(list[3] == null);
  assert(list[4] == null);
  
  // assert(list[1] == 1);
  // print(list[1]);

  print(list);
}

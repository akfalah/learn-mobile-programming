void main() {
  /* Langkah 1 */
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  
  /* Langkah 3 */
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('2241720184');
  names1.add('Ahmad Khoirul Falah');
  names2.addAll({'2241720184', 'Ahmad Khoirul Falah'});
  
  print(names1);
  print(names2);
}
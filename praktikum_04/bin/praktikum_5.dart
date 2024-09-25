void main() {
  /* Langkah 1 */
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  
  /* Langkah 3 */
  var record2 = (1, 2);
  var tukarRecord = tukar(record2);
  print(tukarRecord);

  /* Langkah 4 */
  (String, int) mahasiswa;
  mahasiswa = ('Ahmad Khoirul Falah', 2241720184);
  print(mahasiswa);

  /* Langkah 5 */
  var mahasiswa2 = ('first', a: "Ahmad Khoirul Falah", b: 2241720184, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

/* Langkah 3 */
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
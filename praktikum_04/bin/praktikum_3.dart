void main() {
  /* Langkah 1 */
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  /* Langkah 3 */
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts.addAll({
    'nim': '2241720184',
    'nama': 'Ahmad Khoirul Falah'
  });

  nobleGases.addAll({
    22: '2241720184',
    3: 'Ahmad Khoirul Falah'
  });

  mhs1.addAll({
    'nim': '2241720184',
    'nama': 'Ahmad Khoirul Falah'
  });

  mhs2.addAll({
    22: '2241720184',
    3: 'Ahmad Khoirul Falah'
  });

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
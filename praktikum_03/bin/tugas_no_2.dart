void main() {
  for (int i = 0; i <= 201; i++) {
    bool isPrime = true;

    if (i <= 1) {
      isPrime = false;
    } else {
      for (int j = 2; j <= i / 2; j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      print('$i Ahmad Khoirul Falah - 2241720184');
    } else {
      print(i);
    }
  }
}

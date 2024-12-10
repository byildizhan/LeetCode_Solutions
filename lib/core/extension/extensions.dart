extension RomanEnumExtension on String {
  int romanToIntExtension() {
    switch (this) {
      case 'I':
        return 1;
      case 'V':
        return 5;
      case 'X':
        return 10;
      case 'L':
        return 50;
      case 'C':
        return 100;
      case 'D':
        return 500;
      case 'M':
        return 1000;
      case 'IV':
        return 4;
      case 'IX':
        return 9;
      case 'XL':
        return 40;
      case 'XC':
        return 90;
      case 'CD':
        return 400;
      case 'CM':
        return 900;
      default:
        throw ArgumentError('Geçersiz Roma rakamı: $this');
    }
  }
}

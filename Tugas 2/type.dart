void main() {
  // String variables dengan berbagai cara deklarasi
  const String variable1 = "MAQDIS";
  const String variable2 = 'Academy';
  const String variable3 = 'is';
  const String variable4 = 'awesome';
  
  // Menggabungkan string dengan interpolation (best practice)
  final String result = '$variable1 $variable2 $variable3 $variable4';
  
  // Output hasil
  print(result);
}
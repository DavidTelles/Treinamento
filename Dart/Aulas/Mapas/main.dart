void main() {
  // Maps

  // List<String> lista = ["David", "Telles"];
  // print(lista);

  // Chave, Valor
  Map<String, String> map = {"Key":"value"};
  print(map['Key']);

  map.putIfAbsent("name", () => "David");
  print(map);

  map["age"] = "16";
  print(map);

  map.remove("Key");
  print(map);

  map["name"] = "Clara";
  map["age"] = "14";
  print(map);

  map.update("name", (value) => "Luis");
  map.update("age", (value) => "16");
  print(map);

  map.forEach((key, value) => print("Ah chave é ${key}, e o valor é ${value}"));

  map.keys.forEach(print);

  map.values.forEach(print);
}
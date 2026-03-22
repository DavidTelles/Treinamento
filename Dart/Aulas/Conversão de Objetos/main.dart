import 'dart:convert';

void main() {
  // Conversão de Objetos

  String json = '''
    {
      "user": "david@email.com",
      "userName": "David",
      "password": 1234,
      "permission": [
        "owner", "admin"
      ]
    }
''';

  print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson["permission"][1]);

  Map map = {
    "name": "David",
    "pass": 123,
    "permission": ["owner", "admin"]
  };

  var result = jsonEncode(map);
  print(result);

}
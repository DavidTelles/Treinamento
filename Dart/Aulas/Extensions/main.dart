void main() {
// Extensions

  String name = "david";
  // print(Utils().toFirstChairToUpperCase(String, name));
  print(name.toFirstChairToUpperCase());
  print(EnumTest.enumValue.toValue());
  print(EnumTest.enumNovo.toValue());

}

enum EnumTest {

  enumValue, enumNovo;

}

extension ExtensionsEnum on Enum {

  String toValue() {

    Map map = {
      EnumTest.enumValue: "xpto",
      EnumTest.enumNovo: "novo Valor"
    };
    return map[this];

  }

}

extension ExtensionsString on String {

  String toFirstChairToUpperCase() {
    return (this[0].toUpperCase() + this.substring(1));
  }

}

class Utils {

  toFirstChairToUpperCase(String, value) {
    return (value[0].toUpperCase() + value.substring(1));
  }

}
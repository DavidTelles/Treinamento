import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyForm(),
  ));
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() {
    return _MyFormState();
  }
}

class _MyFormState extends State<MyForm> {
  bool _senhaVisivel = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController? _controllerEmail = TextEditingController();
  final TextEditingController? _controllerSenha = TextEditingController();

  void dispose() {
    _controllerEmail?.dispose();
    _controllerSenha?.dispose();
    super.dispose();
  }

  void _showInfos() {
    String _email = _controllerEmail!.text;
    String _senha = _controllerSenha!.text;

    print("Email: $_email");
    print("Senha: $_senha");
  }

  void _snackBarSenhaIconrreta() {
    final _errMsg = SnackBar(
      backgroundColor: Colors.red,
      content: const Text('Senha incorreta!'),
    );

    ScaffoldMessenger.of(context).showSnackBar(_errMsg);
  }

  void _snackBarNoEmail() {
    final _errMsg = SnackBar(
      backgroundColor: Colors.yellowAccent,
      content: const Text('Email não existe!'),
    );

    ScaffoldMessenger.of(context).showSnackBar(_errMsg);
  }

  void _snackBarEmail() {
    final _err = SnackBar(
      backgroundColor: Colors.redAccent,
      content: const Text('Porfavor Insira um Email.'),
    );

    ScaffoldMessenger.of(context).showSnackBar(_err);
  }

  void _snackBarSenha() {
    final _err = SnackBar(
      backgroundColor: Colors.redAccent,
      content: const Text('Porfavor Insira uma Senha.'),
    );

    ScaffoldMessenger.of(context).showSnackBar(_err);
  }

  void _snackBarAcess() {
    final _msg = SnackBar(
      backgroundColor: Colors.green,
      content: const Text('Login efetuado com sucesso!',
          style: TextStyle(color: Colors.black)),
    );

    ScaffoldMessenger.of(context).showSnackBar(_msg);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(size: 70),
            const SizedBox(
              height: 60,
              width: 50,
            ),
            TextFormField(
              controller: _controllerEmail,
              decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.blue, width: 3))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  _snackBarEmail();
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _controllerSenha,
              obscureText: !_senhaVisivel,
              decoration: InputDecoration(
                hintText: 'Senha',
                suffixIcon: IconButton(
                    icon: Icon(_senhaVisivel
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _senhaVisivel = !_senhaVisivel;
                      });
                    }),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue, width: 3.5)),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  _snackBarSenha();
                }
                return null;
              },
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String _email = _controllerEmail!.text;
                  String _senha = _controllerSenha!.text;

                  _showInfos();

                  if (_email == "exemplo@exemplo.com" && _senha == "1234") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                    _snackBarAcess();
                  } else if (_email == "exemplo@exemplo.com" &&
                      _senha != "1234") {
                    _snackBarSenhaIconrreta();
                  } else {
                    _snackBarNoEmail();
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                fixedSize: Size(190, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

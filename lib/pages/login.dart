import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false, redimensionar o conteúdo quando o teclado for aberto
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget> [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(FontAwesomeIcons.pepperHot, color: Color(0XFF7540EE)),
                  SizedBox(width: 10),
                  Text('Delivery App', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Color(0XFF7540EE)),),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('Welcome', style: TextStyle(color: Color(0XFF25265E), fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('Informe seus dados de acesso para entrar no aplicativo', style: TextStyle(color: Color(0XFF787993), fontStyle: FontStyle.italic)),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF787993),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFFDFDFE4)
                        ),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF787993),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF787993),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0XFFDFDFE4)
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF787993),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ]
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    child: const Text('Entrar', style: TextStyle(color: Color(0XFF7540EE), fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0XFF7540EE).withOpacity(0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const Text('Forgot Password?', style: TextStyle(color: Color(0XFF7540EE), fontStyle: FontStyle.italic))
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('Still without account?', style: TextStyle(color: Color(0XFF787993), fontStyle: FontStyle.italic)),
                    SizedBox(width: 5),
                    Text('Create one', style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic))
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

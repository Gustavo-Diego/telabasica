import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
    @override
    _TelaLoginState createState() => _TelaLoginState();
  }
  
  class _TelaLoginState extends State<TelaLogin> {

    TextStyle style = TextStyle(fontFamily:'Montserrat', fontSize: 20); // definindo uma fonte para toda a tela

    @override
    Widget build(BuildContext context) {

      final emailField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "E-mail",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
        ),
      );

      final senhaField = TextField(
        obscureText: true,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Senha",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
        ),
      );

      final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: RaisedButton(
          color: Color(0xff01A0C7),
          child: Text(
            "Login", textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: (){},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32)
          ),
        ),
      );

      return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                      child: Image.asset(
                        "https://www.google.com/url?sa=i&url=http%3A%2F%2Fw2psolution.com.br%2Fclientes%2Fitavendas%2Fbackend%2Flogin&psig=AOvVaw2uNOwUr1LaRnnvDWJo9I1X&ust=1582139625492000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPD8sMfn2-cCFQAAAAAdAAAAABAJ",
                        fit: BoxFit.contain,
                      )
                  ),
                  SizedBox(height: 40),emailField,
                  SizedBox(height: 20),senhaField,
                  SizedBox(height: 30),buttonLogin,
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
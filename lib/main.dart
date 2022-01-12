import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:telabasica/services/api.dart';
import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tela basica',
      home: Tela(),
    );
  }
}

class Tela extends StatefulWidget {
  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {

  var users = new List<User>();

  _getUsers(){
    API.getUsers().then((response){
      setState(() {
        Iterable lista = json.decode(response.body);
        users = lista.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  _TelaState(){
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dados de uma API online"),
      ),
      body: dadosOnline(),
    );
  }

  dadosOnline() {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpleno.news%2Fentretenimento%2Fcultura-e-lazer%2Fimagem-de-esquilo-cheirando-flor-faz-sucesso-na-internet.html&psig=AOvVaw3PCBPdoEQi33jLrw4CvLuW&ust=1582316131053000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPjs8Yz54OcCFQAAAAAdAAAAABAD"
            ),
          ),
          title: Text(
            users[index].name,
            style: TextStyle(fontSize: 25, color: Colors.deepOrange),
          ),
          subtitle: Text(
            users[index].email,
          ),
          onTap: (){
            Navigator.push(context,  //pushReplacement é usado para matar a pagina q esta e colocar a proxima no lugar 
              MaterialPageRoute(
                builder: (context) => PaginaUser(users[index])
              )
            );
          },
        );
      },
    );
  }
}

class PaginaUser extends StatelessWidget {

  final User user;

  PaginaUser(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name)
      ),
      body: userDetales(),
    );
  }
      
  userDetales() {
    return Container(
      padding: new EdgeInsets.all(35),
      child: ListTile(
        title: Text(
          user.email,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Text(user.username),
        leading: Icon(Icons.email, color: Colors.blue),
      ),
    );
  }
}


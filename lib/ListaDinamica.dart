    import 'package:flutter/material.dart';
    
    ListaDinamica() {

      final itens = List<String>.generate(1000, (i)=> "item $i"); // gerador de dados para lista

      return ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('${itens[index]}'),
          );
        },
      );
  }
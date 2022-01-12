    import 'package:flutter/material.dart';

          Lista() {
            return ListView(
              children: <Widget>[

                ListTile(
                  leading: Icon(Icons.add_location), // icone no inicio
                  title: Text("titulo"),
                  subtitle: Text("subtexto"),
                  trailing: Icon(Icons.add_shopping_cart), // icone no final
                  selected: true, // deixa o widget marcado
                  enabled: true, // deixa o widget abilitado
                  onTap: (){ // chama a função ao clicar

                  },
                ),

                ListTile(
                  leading: Icon(Icons.add_location),
                  title: Text("titulo"),
                  subtitle: Text("subtexto"),
                  trailing: Icon(Icons.add_shopping_cart),
                  selected: false,
                  enabled: true,
                  onLongPress: (){ // chama a funç]ao e faz um efeito ao clicar

                  },
                ),

                ListTile(
                  leading: Icon(Icons.add_location),
                  title: Text("titulo"),
                  subtitle: Text("subtexto"),
                  trailing: Icon(Icons.add_shopping_cart),
                  selected: false,
                  enabled: false,
                ),

              ],
            );
          } 
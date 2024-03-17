import 'package:flutter/material.dart';
import 'package:project_2_character_editor/components/character_editor.dart';

class HomePage extends StatelessWidget {
  // Questo costruttore permette di passare una chiave al widget HomePage.
  // Le chiavi in Flutter sono utili per accedere a riferimenti a specifici widget in tutto l'albero dei widget.
  // HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Crea il tuo personaggio",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      // ListTile è un widget che contiene fino a 3 righe
      // di testo e icone opzionali a sinistra (leading) e a destra (trailing).
      body: const Column(
        children: [
          CharacterStatEditor(label: "Forza", initialValue: 2),
          CharacterStatEditor(label: "Difesa", initialValue: 10),
          CharacterStatEditor(label: "Agilità", initialValue: 7),
        ],
      ),
    );
  }
}

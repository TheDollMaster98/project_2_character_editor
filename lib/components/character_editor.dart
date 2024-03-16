import 'package:flutter/material.dart';

class CharacterStatEditor extends StatefulWidget {
  final String label;
  final int initialValue;

  // Questo costruttore permette di passare un'etichetta e un valore iniziale al widget CharacterStatEditor.
  const CharacterStatEditor({required this.label, required this.initialValue});

  @override
  State<StatefulWidget> createState() => CharacterStatEditorState();
}

class CharacterStatEditorState extends State<CharacterStatEditor> {
  late int value;

  void incrementValue() {
    setState(() {
      value >= 100 ? value = 100 : value++;
    });
    print("Increased Button Pressed");
  }

  void decrementValue() {
    setState(() {
      value <= 0 ? value = 0 : value--;
    });
    print("Decreased Button Pressed");
  }

  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ListTile è un widget che può essere utilizzato per presentare
    // fino a tre righe di testo e icone all'inizio (leading) e alla fine (trailing).
    // È comunemente usato per liste, drawer e altri luoghi che richiedono un layout simile a una lista.
    return ListTile(
      leading:
          Text(value.toString(), // Leading widget, mostra il valore attuale.
              style: TextStyle(
                fontSize: 30,
                color: Colors.purple[600],
              )),
      title: Text(
        // Titolo, mostra l'etichetta passata al widget CharacterStatEditor.
        widget.label,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      // Trailing è un widget visualizzato dopo il titolo. In questo caso, contiene una Row con due pulsanti.
      trailing: Row(
        // MainAxisSize.min fa in modo che la Row occupi solo lo spazio necessario per i suoi figli.
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: incrementValue,
            child: const Icon(
              Icons.add,
              size: 16,
              color: Colors.green,
            ),
          ),
          ElevatedButton(
            onPressed:
                decrementValue, // Assicurati di chiamare il metodo giusto qui!
            child: const Icon(
              Icons.remove,
              size: 16,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

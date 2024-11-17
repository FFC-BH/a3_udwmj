import 'package:flutter/material.dart';


class DatePickerExample extends StatefulWidget {
  @override
  _DatePickerExampleState createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de DatePicker'),
      ),
      body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Primeira linha com texto
          Text(
            'Esta é a primeira linha com texto',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16), // Espaçamento entre linhas

          // Segunda linha com dois TextFields e um botão para abrir calendário
         
          Row(
            children: [
            TextField(
          controller: _dateController,
          readOnly: true, // Evita que o teclado seja exibido
          decoration: InputDecoration(
            labelText: "Selecione uma data",
            suffixIcon: Icon(Icons.calendar_today),
          ),
          onTap: () => _selectDate(context),
        ),
            
            ],
          ),
         
          SizedBox(height: 16), // Espaçamento entre linhas

          // Terceira linha com um TextField
          TextField(
            decoration: InputDecoration(
              labelText: 'Campo adicional',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    ),
    );
  }
}

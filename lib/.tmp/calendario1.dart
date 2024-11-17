import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        /* 
          Row(
            children: [
              // Primeiro TextField
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Campo 1',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(width: 8), // Espaçamento entre campos
              // Botão que abre o calendário
             /*
              Expanded(
                child: GestureDetector(
                  onTap: () => _selectDate(context),
                  child: AbsorbPointer(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: _selectedDate == null
                            ? 'Selecione uma data'
                            : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
            */
            ],
          ),
        */  
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
    );
  }
}

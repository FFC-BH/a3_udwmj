import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('Exemplo de Colunas e Linhas')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text('Texto fixo:'),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Insira texto',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: DatePickerField(),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Outro texto',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DatePickerField extends StatefulWidget {
  @override
  _DatePickerFieldState createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: true,
      decoration: InputDecoration(
        labelText: 'Escolha a data',
        border: OutlineInputBorder(),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          setState(() {
            _controller.text = pickedDate.toLocal().toString().split(' ')[0];
          });
        }
      },
    );
  }
}

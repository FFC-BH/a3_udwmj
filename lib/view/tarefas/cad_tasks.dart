import 'package:a3_udwmj/controller/db_sqlite.dart';
import 'package:a3_udwmj/controller/node_js.dart';
import 'package:flutter/material.dart';

late final categoria;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Criar nova Tarefa'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController dateController1 = TextEditingController();
  final TextEditingController dateController2 = TextEditingController();

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        controller.text =
            '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
   
    final titulo, descricao, dt_inicio, dt_fim;

    db_sqlite sqfliteInst = db_sqlite();
   
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        TextField(
          controller: titulo = TextEditingController(),
          maxLines: 1,
          decoration: const InputDecoration(
            labelText: 'Título',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: descricao = TextEditingController(),
          maxLines: 4,
          decoration: const InputDecoration(
            labelText: 'Descrição',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: dt_inicio = dateController1,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Data Início*',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context, dateController1),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: dt_fim = dateController2,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Data Fim*',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context, dateController2),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        
        Padding(
          padding: EdgeInsets.all(0.0),
          child: DropdownField(),
        ),


        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment(0.0, 0.0),
            child: MaterialButton(
              onPressed: () {
                  print("TESTE");
                  if (titulo.text != "") {
                                  
                                  print("Cadastro task: titulo: ");
                                  print(titulo.text);
                                 // sqfliteInst.insertUser(nome.text, email1.text);
                                
                                  cadTask(titulo.text, descricao.text, dt_inicio.text, dt_fim.text, "time", categoria);
                                
                                /*  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                    //        const ()),
                                  ); */
                                }

              },
              color: Color(0xff2f34c5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Cadastrar",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xffffffff),
              height: 50,
              minWidth: 100,
            ),
          ),
        ),
        const SizedBox(height: 20),
        
        Padding(
          padding: EdgeInsets.all(0),
          child: Align(
            alignment: Alignment(0, 0.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xff100202),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Cancelar",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xffffffff),
              height: 50,
              minWidth: 100,
            ),
          ),
        ),
      ],
    );
  }
}

class DropdownField extends StatefulWidget {
  const DropdownField({Key? key}) : super(key: key);

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  String? selectedOption;

  // Lista de opções
  final List<String> options = [
    'Tarefa',
    'Evento',    
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'Categoria',
        border: OutlineInputBorder(),
      ),
      value: selectedOption,
      isExpanded: true,
      items: options.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedOption = newValue;
          categoria = newValue;
        });
      },
    );
  }
}
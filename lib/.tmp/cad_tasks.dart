import 'package:a3_udwmj/controller/db_sqlite.dart';
//import 'package:a3_udwmj/controller/node_js.dart';
import 'package:a3_udwmj/view/tarefas/dashbord.dart';
import 'package:a3_udwmj/view/usuarios/login.dart';
import 'package:flutter/material.dart';

class CadTask extends StatelessWidget {
  const CadTask({super.key});

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
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final TextEditingController dtInicio = TextEditingController();
  final TextEditingController dtFim = TextEditingController();
  final TextEditingController titulo = TextEditingController();
  final TextEditingController descricao  = TextEditingController();//, dtInicio, dtFim;
/*
  @override
  void dispose() {
    // Libera os recursos do controlador
    titulo.dispose();
    super.dispose();
  }
*/
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
   
    db_sqlite sqfliteInst = db_sqlite();   
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        TextField(
          controller: titulo,
          maxLines: 1,
          decoration: const InputDecoration(
            labelText: 'Título',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: descricao,
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
                controller: dtInicio, //dtInicio = dateController1,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Data Início*',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context, dtInicio),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: dtFim,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Data Fim*',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context, dtFim),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        
        const Padding(
          padding: EdgeInsets.all(0.0),
          child: DropdownField(),
        ),


        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
            alignment: const Alignment(0.0, 0.0),
            child: MaterialButton(
              onPressed: () async {
                //  print("getTasks: ");
                // print(await getTasks());
                 
                  
                 // if (titulo.text != "") {
                                  
                                  print("Cadastro task:  ");
                                  print('user_Pub.userOn: ');
                                  print(user_Pub.userOn);

                                  print('titulo.text: ');
                                  print(titulo.text);

                                  print('descricao.text');                                  
                                  print(descricao.text);

                                  print('dts: dtInicio.text');                                  
                                  print(dtInicio.text);

                                  print('dts: dtInicio.hashCode');                                  
                                  print(dtInicio.hashCode);

                                  print('dts: dtFim.text');
                                  print(dtFim.text);

                                  print('dts: dtFim.hashCode');
                                  print(dtFim.hashCode);                                  
                                 
                                  print(_DropdownFieldState.categoria.toString());
                                  sqfliteInst.insertTask(user_Pub.userOn, titulo.text, descricao.text, dtInicio.text, dtFim.text, _DropdownFieldState.categoria.toString(), "status");
                                //, dtFim.text: $dtFim.text, categoria: $categoria ");
                                 // cadTask(titulo.text, descricao.text, dtInicio.text, dtFim.text, "time", categoria);
                                
                                 Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()),
                                    );
                        //        }

              },
              color: const Color(0xff2f34c5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(16),
              textColor: const Color(0xffffffff),
              height: 50,
              minWidth: 100,
              child: Text(
                "Cadastrar",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        
        Padding(
          padding: const EdgeInsets.all(0),
          child: Align(
            alignment: const Alignment(0, 0.0),
            child: MaterialButton(
              onPressed: () {

                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()),
                                    );

              },
              color: const Color(0xff100202),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(16),
              textColor: const Color(0xffffffff),
              height: 50,
              minWidth: 100,
              child: Text(
                "Cancelar",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DropdownField extends StatefulWidget {
  const DropdownField({super.key});

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  static String? categoria;

  // Lista de opções
  final List<String> options = [
    'Tarefa',
    'Evento',    
  ];

  

  @override
  Widget build(BuildContext context) {
   
    print('_DropdownFieldState.categoria');
  print(categoria);

    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'Categoria',
        border: OutlineInputBorder(),
      ),
      value: categoria,
      isExpanded: true,
      items: options.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          categoria = newValue;         
        });
      },
    );
  }
}

import 'package:a3_udwmj/controller/db_sqlite.dart';
import 'package:a3_udwmj/view/tarefas/dashbord.dart';
import 'package:a3_udwmj/view/usuarios/login.dart';
import 'package:flutter/material.dart';

class idTask_Pub {
  static int idTsk = 0;
}

//static int idTask_Pub = 0;

class Task extends StatelessWidget {
  //const Task({super.key});

  final String itemm;

  int idTask;

  Task({Key? key, required this.itemm, required this.idTask}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    idTask_Pub.idTsk = idTask;

    //db_sqlite sqfliteInst = db_sqlite();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Editar Tarefa'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: MyTask(),
        ),
      ),
    );
  }
}

class MyTask extends StatefulWidget {
  const MyTask({super.key});

  @override
  State<MyTask> createState() => _MyFormState();
}

class _MyFormState extends State<MyTask> {
  final TextEditingController dtInicio = TextEditingController();
  final TextEditingController dtFim = TextEditingController();
  final TextEditingController titulo = TextEditingController();
  final TextEditingController descricao =
      TextEditingController(); //, dtInicio, dtFim;

  void initState() {
    super.initState();
    loadTask();
  }

  Future<void> loadTask() async {
    Map<String, Object?> dados = await getTask(idTask_Pub.idTsk);
    setState(() {
      titulo.text = dados['titulo']!.toString();
      descricao.text = dados['descricao']!.toString();
      dtFim.text = dados['data_final']!.toString();
    });
  }

  Future<Map<String, Object?>> getTask(int id) async {
    db_sqlite sqfliteInst = db_sqlite();
    return await sqfliteInst.getTaskByIdTask(idTask_Pub.idTsk);
  }

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
                if (titulo.text != "" &&
                    (_DropdownFieldState.categoria != null)) {
                  sqfliteInst.updateTask(
                      idTask_Pub.idTsk,
                      user_Pub.userOn,
                      titulo.text,
                      descricao.text,
                      dtInicio.text,
                      dtFim.text,
                      _DropdownFieldState.categoria.toString(),
                      "status");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                }
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
                "Salvar",
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
                  MaterialPageRoute(builder: (context) => Dashboard()),
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

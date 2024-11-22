import 'package:a3_udwmj/controller/db_sqlite.dart';
import 'package:a3_udwmj/view/tarefas/dashbord.dart';
import 'package:a3_udwmj/view/tarefas/edit_task.dart';
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
          title: Text('Dashboard'),
          leading: Padding(
            padding: const EdgeInsets.all(8.0), // Adiciona margem à imagem
            child: Image.asset(
              'assets/Taskify.png',
              fit: BoxFit.contain,
            ),
        ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(0.0),
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
  final TextEditingController descricao = TextEditingController(); //, dtInicio, dtFim;

  void initState() {
    super.initState();
    loadTask();
  }

  Future<void> loadTask() async {
    Map<String, Object?> dados = await getTask(idTask_Pub.idTsk);
    setState(() {
      titulo.text = dados['titulo']!.toString();
      descricao.text = dados['descricao']!.toString();
      dtInicio.text = dados['data_inicial']!.toString();
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

    return Scaffold(
      
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextButton(
                       onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
                      child: const Text(
                        "Voltar",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
            ),
           
            const SizedBox(width: 20),

            Positioned(
            bottom: 0, // Distância da parte inferior
            right: 0, // Distância da parte direita
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EditTask()),
                                    );
              },
              child: Icon(Icons.edit),
            ),
          ),

          Positioned(
            bottom: 0, // Distância da parte inferior
            right: 0, // Distância da parte direita
            child: FloatingActionButton(
              onPressed: () {
                
                sqfliteInst.deleteTask(idTask_Pub.idTsk);
                
                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()),
                                    );
              },
              child: Icon(Icons.delete_forever),
            ),
          ),


          ],
        ),
        

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
        Container(                  
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  padding: const EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(211, 14, 44, 133),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [                      
                      Expanded(
                        flex: 1,
                        child: IconButton( 

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Dashboard.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),
                             
                          onPressed: () {},
                          color: Color.fromARGB(255, 45, 57, 127),
                          iconSize: 24,                          
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Calendario.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),         

                          onPressed: () {},
                          color: Color.fromARGB(255, 101, 110, 163),
                          iconSize: 24,
                          
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Settings.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),       

                          onPressed: () {},
                          color: Color(0xff212435),
                          iconSize: 24,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Perfil.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),
                          
                          onPressed: () {},                                  


                         
                          color: Color(0xff212435),
                          iconSize: 24,
                        ),
                      ),
                    ],
                  ),
                
                ),
        
      ],
    )
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

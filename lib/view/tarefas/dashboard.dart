
import 'package:flutter/material.dart';



class Tasks extends StatelessWidget {
  const Tasks({super.key});

  /*
  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
*/


  

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

   // if (picked != null) {
  //    setState(() {
   //     _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
   //   });
  //  }
  }

  @override
  Widget build(BuildContext context) {
   
   final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

   TextEditingController _dateController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Criar Nova Tarefa',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Título',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Descrição',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
             
             
             
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                'Data início*',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
                 Text(
                'Data fim*',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
                ],
              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _dateController,
          readOnly: true, // Evita que o teclado seja exibido
          decoration: InputDecoration(
            labelText: "Selecione uma data",
            suffixIcon: Icon(Icons.calendar_today),
          ),
          onTap: () => _selectDate(context),
        ),
      ),



                 Text(
                'Data fim*',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
                ],
              ),
            


               SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Descrição',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
             
            
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Fecha o modal sem salvar
                    },
                    child: Text('Cancelar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String title = _titleController.text.trim();
                      String description = _descriptionController.text.trim();
                      if (title.isNotEmpty) {
                        // Aqui você pode salvar a tarefa (ex.: enviar para o banco de dados ou uma lista)
                        print('Tarefa salva: $title - $description');
                        Navigator.pop(context);
                      } else {
                        // Mostra um alerta se o título estiver vazio
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('O título é obrigatório!')),
                        );
                      }
                    },
                    child: Text('Criar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
         /*
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
   
        */       
                

    );         
           
         
  }
}

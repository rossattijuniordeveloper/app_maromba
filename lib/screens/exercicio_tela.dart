import 'package:app_maromba/models/exercicio_modelo.dart';
import 'package:app_maromba/models/sentimento_modelo.dart';
import 'package:flutter/material.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo(
      id: 'Ex001',
      nome: 'Puxada Alta Pronada',
      treino: 'Treino A',
      comoFazer:
          'Segura com as duas mãos na barra,mantenha a columa reta, e puxa');

  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(
        id: 'SE001', sentindo: 'Não Senti nada hoje.', data: '2023-10-10'),
    SentimentoModelo(
        id: 'SE002', sentindo: 'já Senti alguma Ativação.', data: '2023-10-14'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            // const Icon(Icons.sports_gymnastics_outlined),
            // const SizedBox(
            //   width: 8,
            // ),
            Text(exercicioModelo.nome),
            Text(exercicioModelo.treino),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0A6D92),
        elevation: 0,
        toolbarHeight: 72,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(32),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
//          print('FAB foi clicado!');
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Enviar Foto!'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Tirar Foto!'),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 8,
              ),
              const Text(
                'Como fazer ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              // const Text(
              //     'Segura com as duas mãos na barra,mantenha a columa reta, e puxa'),
              Text(exercicioModelo.comoFazer),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              const Text(
                'como estou me sentindo?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listaSentimentos.length, (index) {
                  SentimentoModelo sentimentoAgora = listaSentimentos[index];
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(sentimentoAgora.sentindo),
                    subtitle: Text(sentimentoAgora.data),
                    leading: const Icon(Icons.double_arrow),
                    trailing: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  );
                }),
              ),
              // Text(
              //   '${listaSentimentos[0].sentindo}',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

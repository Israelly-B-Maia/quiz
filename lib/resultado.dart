import 'package:flutter/material.dart';
import 'package:quiz/paginainicial.dart';

class ResultadoScreen extends StatelessWidget {
  final int correctAnswers;

  const ResultadoScreen({required this.correctAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB1B7E9),
      appBar: AppBar(
        title: const Text(
          'QUIZ',
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xFFE3A8D7),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/imagens/globe-24.gif',
                width: 200, 
              ),
              const SizedBox(height: 20),
              const Text(
                'RESULTADO',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'VOCÊ ACERTOU $correctAnswers DE 10',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InicialPage(),
                    ),
                  );
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF91DF9E), Color(0xFFD1E2A1)],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Center(
                    child: Text(
                      'JOGAR NOVAMENTE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

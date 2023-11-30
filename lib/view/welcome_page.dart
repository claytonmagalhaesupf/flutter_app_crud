import 'package:flutter/material.dart';
import 'package:meuapp/view/courses_page.dart';
import 'package:meuapp/view/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.asset("logotipo_firma.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Bem vindo! Escolha uma das opções abaixo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 15,
            ),
            
            SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute( 
                        builder: (context) => const CoursesPage(),
                      ),
                    );
                
                },
                child: const Text("Inscrever-se em um curso"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute( 
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  
                },
                child: const Text("Oferecer um curso"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

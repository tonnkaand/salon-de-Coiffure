import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff656450), // Début du dégradé
              Color(0xff454438), // Fin du dégradé
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Nouveauté',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18, // Ajustement de la taille du texte
                    color: Color(0xfff57000),
                    fontFamily: 'RobotoRoman-Medium',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 13),
                const Text(
                  'Services',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 28, // Ajustement de la taille du texte
                    color: Colors.white,
                    fontFamily: 'RobotoRoman-Black',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                    Image.asset(
                      'assets/image_4311.png',
                      width: 350,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                      
                          const Text(
                            'Coupe hair Style',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 22,
                              color: Colors.white,
                              fontFamily: 'RobotoRoman-Black',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Venez faire vos coupes avec dégradé de malade à bas prix',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'RobotoRoman-Regular',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Action à effectuer lors du clic sur le bouton de détails
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xfff57000), // Couleur du bouton
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'RobotoRoman-Black',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            child: const Text('Détails'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Service',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: Color(0xfff57000),
                    fontFamily: 'RobotoRoman-Medium',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 13),
                const Text(
                  'Réduction',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 28,
                    color: Colors.white,
                    fontFamily: 'RobotoRoman-Black',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Coupe hair Style',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 22,
                              color: Colors.white,
                              fontFamily: 'RobotoRoman-Black',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Venez faire vos coupes avec dégradé de malade à bas prix',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'RobotoRoman-Regular',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Action à effectuer lors du clic sur le bouton de détails
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xfff57000), // Couleur du bouton
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'RobotoRoman-Black',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            child: const Text('Détails'),
                          ),
                        ],
                      ),
                    ),
                       ],
                ),
                    const SizedBox(width: 16),
                    Row(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/Home.png'), // Image avec dimensions spécifiques
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/Barbershop.png'), // Image avec dimensions spécifiques
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/apple.png'), // Image avec dimensions spécifiques
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/Star.png'), // Image avec dimensions spécifiques
                          ),
                        ),
                      ],
                    ),
               
                const SizedBox(height: 30),
                Center(
                  child: Image.asset('assets/image1_4291.png'), // Ajoutez l'image de pied de page
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test/inscription.dart';

class CodiaPage extends StatefulWidget {
  const CodiaPage({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: SizedBox(
        width: 360,
        height: 800,
        child: Stack(
          children: [
            Positioned(
              left: 120,
              width: 120.427,
              top: 72,
              height: 79.454,
              child: Image.asset("assets/image_20830.png"),
            ),
            const Positioned(
              left: 115,
              top: 244,
              child: Text(
                'Connection',
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 24, color: Color(0xffffffff), fontFamily: 'RobotoRoman-SemiBold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 66,
              top: 349,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 224,
                    height: 77,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xffffffff), width: 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 13, top: 4, right: 0, bottom: 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  height: 48,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 0, top: 9, right: 0, bottom: 9),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        const Row(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          mainAxisSize: MainAxisSize.min,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              'Ex: patricknegoue@gmail.com',
                                                              textAlign: TextAlign.left,
                                                              style: TextStyle(decoration: TextDecoration.none, fontSize: 13, color: Color(0xfff5f5f5), fontFamily: 'Roboto-Regular', fontWeight: FontWeight.normal),
                                                              maxLines: 9999,
                                                              overflow: TextOverflow.ellipsis,
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          decoration: const BoxDecoration(
                                                            color: Color(0xff454437),
                                                          ),
                                                          child: const Padding(
                                                            padding: EdgeInsets.only(left: 4, top: 0, right: 4, bottom: 0),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              mainAxisSize: MainAxisSize.min,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Text(
                                                                  'Email',
                                                                  textAlign: TextAlign.left,
                                                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: Color(0xfff5f5f5), fontFamily: 'Roboto-Regular', fontWeight: FontWeight.normal),
                                                                  maxLines: 9999,
                                                                  overflow: TextOverflow.ellipsis,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 21),
                  SizedBox(
                    width: 224,
                    height: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xfffafafa), width: 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 16, top: 4, right: 0, bottom: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 48,
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 0, top: 4, right: 0, bottom: 4),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'Mot de passe',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: Color(0xffffffff), fontFamily: 'Roboto-Regular', fontWeight: FontWeight.normal),
                                                          maxLines: 9999,
                                                          overflow: TextOverflow.ellipsis,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             
            Positioned(
              left: 115,
              top: 595,
               child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Inscription()),
                    );
                  },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xfff57000),
                  borderRadius: BorderRadius.circular(20),
                ),
                
                child: const Padding(
                  padding: EdgeInsets.only(left: 21, top: 10, right: 21, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                   
                    
                    children: [
                      Text(
                        'Connection',
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: Color(0xffffffff), fontFamily: 'RobotoRoman-Black', fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

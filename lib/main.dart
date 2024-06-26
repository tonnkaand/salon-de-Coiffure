import 'dart:math';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test/inscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var page = Platform.isMacOS ? const MacOSPage() : const CodiaPage();
    return MaterialApp(
      title: 'CodiaDemoFlutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: page,
    );
  }
}

class MacOSPage extends StatefulWidget {
  const MacOSPage({super.key});

  @override
  State<StatefulWidget> createState() => _MacOSPageState();
}

class _MacOSPageState extends State<MacOSPage> {
  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        MediaQueryData mediaQueryData = MediaQuery.of(context);
        Size codiaPageSize = const Size(360, 800);
        Size windowSize = mediaQueryData.size;
        double widthScale = windowSize.width / codiaPageSize.width;
        double heightScale = windowSize.height / codiaPageSize.height;
        double scale = [1.0, widthScale, heightScale].reduce(max);

        return Scrollbar(
          controller: _verticalScrollController,
          thumbVisibility: true,
          notificationPredicate: (ScrollNotification notification) => notification.depth == 1,
          child: Scrollbar(
            controller: _horizontalScrollController,
            thumbVisibility: true,
            child: Transform.scale(
              scale: scale,
              alignment: Alignment.topLeft,
              child: OverflowBox(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  controller: _horizontalScrollController,
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: codiaPageSize.width,
                    height: codiaPageSize.height,
                    child: SingleChildScrollView(
                      controller: _verticalScrollController,
                      scrollDirection: Axis.vertical,
                      child: const CodiaPage(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CodiaPage extends StatefulWidget {
  const CodiaPage({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPageState();
}

class _CodiaPageState extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'INSCRIPTION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 50),
                    _buildInputField('Nom'),
                    SizedBox(height: 16),
                    _buildInputField('Contact'),
                    SizedBox(height: 16),
                    _buildInputField('Email'),
                    SizedBox(height: 16),
                    _buildInputField('Password'),
                    SizedBox(height: 16),
                    _buildInputField('Photo'),
                    SizedBox(height: 50),
                    _buildButton('ENREGISTREMENT', Colors.blue),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AVEZ-VOUS UN COMPTE ?',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            // Ajoutez l'action de navigation ou autre ici
                          },
                          child: _buildButton('Connexion', Colors.red, small: true),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    _buildImage('images/image1_2103.png', 261.383, 163.88),
                    SizedBox(height: 20),
                    _buildImage('images/image2_2102.png', 258.923, 169.717),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInputField(String label) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(color: const Color(0xffdfdfdf), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: const Color(0xff828282),
        ),
      ),
    );
  }

  Widget _buildButton(String label, Color color, {bool small = false}) {
    return Container(
      padding: small
          ? EdgeInsets.symmetric(horizontal: 16, vertical: 4)
          : EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: small
            ? []
            : [
                BoxShadow(
                  color: Color(0x0c000000),
                  offset: Offset(0, 1),
                  blurRadius: 2,
                ),
              ],
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: small ? 14 : 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String path, double width, double height) {
    return Image.asset(
      path,
      width: width,
      height: height,
    );
  }
}

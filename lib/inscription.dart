import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50), // Spacer
              const Text(
                'INSCRIPTION',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff000000),
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
                  const Text(
                    'AVEZ-VOUS UN COMPTE ?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Ajoutez l'action de navigation ou autre ici
                    },
                    child: _buildButton('Connexion', Colors.red, small: true),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              _buildImage('images/image1_2103.png', 261.383, 163.88),
              SizedBox(height: 20),
              _buildImage('images/image2_2102.png', 258.923, 169.717),
              SizedBox(height: 50), // Spacer
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(color: const Color(0xffdfdfdf), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xff828282),
        ),
      ),
    );
  }

  Widget _buildButton(String label, Color color, {bool small = false}) {
    return Container(
      padding: small
          ? const EdgeInsets.symmetric(horizontal: 16, vertical: 4)
          : EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: small
            ? []
            : [
                const BoxShadow(
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

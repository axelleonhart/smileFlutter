import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool mostrarFormulario = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFA0D523),
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: size.width * 0.7,
                child: Image.asset('assets/images/logo1.png'),
              ),
            ),
            this.mostrarFormulario == false ? Dismissible(
              key: Key('login'),
              direction: DismissDirection.up,
              onDismissed: (DismissDirection dir) {
                print('se fue');
                print(dir);
                this.mostrarFormulario = true;
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Icon(Icons.arrow_upward, color: Colors.white, size: 45),
                    Text(
                      'ENTRAR',
                      style: TextStyle(
                        fontFamily: 'DMSansBold',
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ) 
            : Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Correo Electronico'
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Contraseña'
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
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
    );
  }
}

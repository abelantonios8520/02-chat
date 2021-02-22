import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            _Logo(),

            _Form(),

            _Labels(),

            Text('Términos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200),)

          ],
        ),
      )
   );
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[

            Image(image: AssetImage('assets/mgRed.jpeg')),
            SizedBox(height: 20),
            Text('MGWorld', style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric( horizontal: 50 ),

      child: Column(
        children: <Widget>[
          
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(0,5),
                  blurRadius: 5
                  )
                ]
              ),
              child: TextField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                //obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'Teléfono'
                ),
              ),
              )


          //TODO: Crear boton
          //RaisedButton(onPressed: () { },)
        ],
      ),
    );
  }
}

class _Labels extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('¿No tienes cuenta?', style: TextStyle( color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300 ),),
          SizedBox( height: 10 ),
          Text( 'Crea una ahora!', style: TextStyle( color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold), )
        ],),
    );
  }
}
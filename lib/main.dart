import 'package:atm_consultoria/empresa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
    debugShowCheckedModeBanner: false,
  ));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 24,
            color: Colors.black54,
          ),
          Stack(children: [
            Image.network(
              'https://s3.amazonaws.com/ibc-portal/wp-content/uploads/2017/05/13110626/consultoria-organizacional.jpg',
              height: 170,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              width: 250,
              height: 50,
              color: Colors.black45,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 100, 0, 0),
              child: Text(
                'ATM ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 45),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(110, 123, 0, 0),
              child: Text(
                'Consultoria',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // background
                        onPrimary: Colors.blueAccent, // foreground
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Empresa()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                            child: Icon(
                              Icons.home_work,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                          Text("A empresa",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent, // background
                        onPrimary: Colors.black26, // foreground
                      ),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                            child: Icon(
                              Icons.design_services,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                          Text("Serviços",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        onPrimary: Colors.redAccent, // foreground
                      ),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                            child: Icon(
                              Icons.people,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                          Text("Clientes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent, // background
                        onPrimary: Colors.blueAccent, // foreground
                      ),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                            child: Icon(
                              Icons.contact_phone,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                          Text("Contato",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

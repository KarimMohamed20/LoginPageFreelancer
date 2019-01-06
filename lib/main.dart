import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
          accentColor: Color.fromRGBO(19, 49, 173, 1),
          primaryColor: Color.fromRGBO(19, 49, 173, 1),
          backgroundColor: Colors.white),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        return SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: orientation == Orientation.landscape ? 30 : 30,
                    width: double.infinity,
                  ),
                  Container(
                    width: orientation == Orientation.landscape ? 600 : 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height:
                              orientation == Orientation.landscape ? 10 : 20,
                        ),
                        new Image.asset(
                          'assets/logo.png',
                          width:
                              orientation == Orientation.landscape ? 110 : 170,
                          height:
                              orientation == Orientation.landscape ? 110 : 170,
                        ),
                        SizedBox(
                          height: orientation == Orientation.landscape ? 5 : 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              orientation = Orientation.landscape;
                            });
                          },
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth: orientation == Orientation.landscape
                                    ? 550
                                    : 330),
                            child: new TextFormField(
                              controller: email,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person_outline),
                                hintText: 'E-Mail',
                                labelText: 'E-Mail',
                                labelStyle: TextStyle(
                                    color: Color.fromRGBO(19, 49, 173, 1),
                                    fontWeight: FontWeight.bold,
                                    decorationColor:
                                        Color.fromRGBO(19, 49, 173, 1)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: orientation == Orientation.landscape
                                  ? 550
                                  : 330),
                          child: new TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock_outline),
                              hintText: 'Password',
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(19, 49, 173, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              orientation == Orientation.landscape ? 10 : 30,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: orientation == Orientation.landscape
                                ? 400
                                : 275,
                            maxHeight:
                                orientation == Orientation.landscape ? 45 : 50,
                          ),
                          child: new RaisedButton(
                              child: new Center(
                                child: new Text('ENTER',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              color: Color.fromRGBO(16, 47, 187, 1),
                              onPressed: () {},
                              // padding: EdgeInsets.all(20),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(15.0))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: new Text('FORGOT YOUR PASSWORD',
                                style: TextStyle(
                                    color: Color.fromRGBO(16, 47, 187, 1),
                                    fontWeight: FontWeight.bold)),
                            onTap: () {
                              print('FORGOT YOUR PASSWORD');
                            },
                          ),
                        ),
                        SizedBox(
                          height:
                              orientation == Orientation.landscape ? 15 : 30,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: orientation == Orientation.landscape ? 10 : 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 1.5,
                        color: Colors.white,
                      ),
                      new Text('Social Media',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Container(
                        width: 120,
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: orientation == Orientation.landscape ? 5 : 10,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Material(
                        color: Colors.white,
                        type: MaterialType.circle,
                        child: InkWell(
                          onTap: () {
                            print('GOOGLE PLUS');
                          },
                          child: Padding(
                            padding: EdgeInsets.all(5.5),
                            child: Image.asset(
                              'assets/googlePlus.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        type: MaterialType.circle,
                        child: InkWell(
                          onTap: () {
                            print('FACEBOOK');
                          },
                          child: Padding(
                            padding: EdgeInsets.all(5.5),
                            child: Image.asset(
                              'assets/facebook.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: orientation == Orientation.landscape ? 5 : 0,
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

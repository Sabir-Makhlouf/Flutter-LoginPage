import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home>{


final TextEditingController _userController = new TextEditingController();
final TextEditingController _passwordController = new TextEditingController();

String userInfo = '';
void _onLogin(){
  setState(() {
if(_userController.text.isEmpty && _passwordController.text.isEmpty){
  userInfo = 'Please enter you name and password';
}else{
  userInfo = 'Welcome ${_userController.text}';

}
  });

  print('Logged in !');
}
void _onClear(){
  setState(() {
    _userController.clear();
    _passwordController.clear();
  });
  print('Clearing !');
}



  @override
Widget build(BuildContext context){
  return new Scaffold( 
    backgroundColor:Colors.white70,
    appBar: AppBar(
      backgroundColor: Colors.deepPurple,
      title: new Text("Sabir Makhlouf Simple login page"),
    ),

    body: new Container(
      padding: EdgeInsets.all(5.0),
      alignment: Alignment.center,
      child: new Column(

        children: <Widget>[
          new Image.asset(
            'img/user.png',
            height: 100.0,
            width: 100.0,
          ),

            new Container(
              padding: EdgeInsets.all(10.0),
              height: 10.0,
              width: 10.0,
              child: new Column(
                children: <Widget>[



                ],
              ),
            ),
            new Padding(padding:  EdgeInsets.all(5.0),),
            new TextField(
              style: TextStyle(fontSize: 18.0,color: Colors.deepPurple),
              controller: _userController,
              decoration: InputDecoration(

                  icon: new Icon(Icons.person,
                    color: Colors.deepPurple,size: 32.0,),
                  hintText: 'Your Name'
              ),
            ),
            new Padding(padding:  EdgeInsets.all(5.0),),
            new TextField(
              style: TextStyle(fontSize: 18.0,color: Colors.deepPurple),
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(

                  icon: new Icon(Icons.lock,
                    color: Colors.deepPurple,size: 32.0,),
                  hintText: 'Your Password',

              ),
            ),
            new Padding(padding:  EdgeInsets.all(5.0),),
            new Center(
              child:new Row(
                children: <Widget>[

                  new Container(
                    margin: EdgeInsets.only(left: 5.0),
                   child: new FlatButton(

                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      onPressed: _onLogin,
                      child: new Text('Login'),
                    ),
                  ),

                  new Container(
                    margin: EdgeInsets.only(left: 5.0),
                    child:   new FlatButton(
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      onPressed: _onClear,
                      child: new Text('Clear'),
                    ),
                  ),



                ],
              ),

            ),
            new Padding(padding:  EdgeInsets.all(5.0),),
            new Container(

              child:   new Text('$userInfo',
                style: TextStyle(
                    color: Colors.deepPurple,fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
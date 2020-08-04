import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  NotesState createState() => NotesState();
}

class NotesState extends State<Notes> {
  int _currentIndex = 0;
  final _formKey = GlobalKey<FormState>();
  void _profile() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[500],
          title: Text('Profile'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 100),
            CircleAvatar(
                backgroundColor: Colors.purple[900],
                radius: 100,
                child: ClipOval(
                  child: Image.asset('images/nisarg.jpeg', height: 200),
                )),
            SizedBox(height: 50),
            Text('Nisarg Bijutkar',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'open sans',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[800])),
            SizedBox(height: 10),
            Text('Full Stack Developer',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 15))
          ],
        ),
      );
    }));
  }

  void _form() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Add task'),
          backgroundColor: Colors.pink[500],
          
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: 300,
              margin:EdgeInsets.fromLTRB(50, 50,0,0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Title',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        onPressed: () {
                          // Validate will return true if the form is valid, or false if
                          // the form is invalid.
                          if (_formKey.currentState.validate()) {
                            // Process data.
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      );
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[500],
        title: Text('Tasks'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: _profile,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _form,
        backgroundColor: Colors.pink[900],
      ),
    );
  }
}

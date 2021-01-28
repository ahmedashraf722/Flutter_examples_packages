import 'package:flutter/material.dart';

class TextFormFieldExample extends StatefulWidget {
  @override
  _TextFormFieldExampleState createState() => _TextFormFieldExampleState();
}

enum AuthMod { SignUp, Login }

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  AuthMod _authMod = AuthMod.Login;

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  // var _loading = false;

  final _passwordController = TextEditingController();

  void switchAuthMod() {
    if (_authMod == AuthMod.Login) {
      setState(() {
        _authMod = AuthMod.SignUp;
      });
    } else {
      setState(() {
        _authMod = AuthMod.Login;
      });
    }
  }

  void _submit() {
    if (!_formKey.currentState.validate()) {
      //invalid!
      return;
    }
    _formKey.currentState.save();
    if (_authMod == AuthMod.Login) {
      //user Log in
    } else {
      // user sign up
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Auth Form"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val.isEmpty || !val.contains('@')) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      _authData['email'] = val;
                      print(_authData['email']);
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    //  keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val.isEmpty || val.length <= 5) {
                        return 'Invalid Password is too short';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      _authData['email'] = val;
                      print(_authData['email']);
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextFormField(
                    enabled: _authMod == AuthMod.SignUp,
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                    obscureText: true,
                    validator: _authMod == AuthMod.SignUp
                        ? (value) {
                            if (value != _passwordController.text) {
                              return ' passwords not too match';
                            }
                            return null;
                          }
                        : null,
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  child: Text(_authMod == AuthMod.Login ? 'LOGIN' : 'SignUP'),
                  onPressed: _submit,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  color: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).primaryTextTheme.button.color,
                ),
                FlatButton(
                  onPressed: switchAuthMod,
                  child: Text(
                    '${_authMod == AuthMod.Login ? 'SignUp' : 'Login'} Instead',
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  textColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

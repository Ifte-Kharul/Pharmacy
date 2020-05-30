import 'package:flutter/material.dart';
import 'package:pharmacy/utilities/constants.dart';
//import 'utilities/constants.dart';
import './utilities/textF.dart';
import './utilities/GoBackButton.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
//import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final dformat = DateFormat("dd-MM-yyyy");
  DateTime date;
  String dropdownValue;
  String bdate = 'Select Your Birthday';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold,
                            //fontFamily: 'openSans',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(260.0, 20.0, 0.0, 0.0),
                        child: Text(
                          '.',
                          style: TextStyle(
                              fontSize: 200.0,
                              fontWeight: FontWeight.bold,
                              color: KredAccent),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextF(
                          lText: 'Email',
                          secureText: false,
                        ),
                        SizedBox(height: 10.0),
                        TextF(
                          lText: 'Password',
                          secureText: true,
                        ),
                        SizedBox(height: 10.0),
                        TextF(
                          lText: 'Confirm Password',
                          secureText: true,
                        ),
                        SizedBox(height: 10.0),
                        TextF(
                          lText: 'User Name',
                          secureText: false,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text('Date Of Birth : ')),
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: kBoxDecorationStyle,
                                child: FlatButton(
                                  onPressed: () async {
                                    date = await showRoundedDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate:
                                          DateTime(DateTime.now().year - 100),
                                      lastDate:
                                          DateTime(DateTime.now().year + 1),
                                      borderRadius: 16,
                                      theme: ThemeData(
                                        primaryColor: KredAccent,
                                        accentColor: KredAccent,
                                      ),
                                    );
                                    //bdate = dformat.format(date);
                                    setState(
                                      () {
                                        bdate = dformat.format(date);
                                      },
                                    );
                                  },
                                  child: Text(bdate),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text('I\'m a')),
                            Expanded(
                              flex: 2,
                              child: DropdownButton(
                                value: dropdownValue,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 2,
                                  color: KredAccent,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Doctor',
                                  'Medical Student',
                                  'Pharmacy Owner',
                                  'General Public'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 50.0),
                        GoBack(
                          onPressed: () {
                            print('Submit button Clicked');
                          },
                          colour: KredAccent,
                          lText: 'SIGN UP',
                        ),
                        SizedBox(height: 20.0),
                        GoBack(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            colour: KredAccent,
                            lText: 'Go Back'),
                        SizedBox(height: 30.0),
                      ],
                    )),
              ]),
        ));
  }
}

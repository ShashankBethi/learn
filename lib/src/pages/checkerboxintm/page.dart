import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PageCheckerboxintm extends StatefulWidget {
  const PageCheckerboxintm({
    Key? key,
  }) : super(key: key);

  @override
  _StateCheckerboxintm createState() => _StateCheckerboxintm();
}

class _StateCheckerboxintm extends State<PageCheckerboxintm> {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "Checkerboxintm",
      },
      isUserIdPreferableIfExists: true,
    );

    unawaited(
      Future.delayed(
        Duration.zero,
        () async {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          width: double.maxFinite,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF465262).withOpacity(1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () async {
                    await Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageIntermediate(),
                      ),
                    );
                  },
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageIntermediate(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Icon(
                        MdiIcons.fromString('keyboard-backspace'),
                        size: 30,
                        color: Color(0xFFFFFFFF).withOpacity(1),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 15,
                  right: 15,
                  bottom: 15,
                ),
                child: Text(r'''CheckBox Widget''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(1),
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                    maxLines: 1),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFF465262).withOpacity(1),
            ),
            child: NotificationListener<ScrollEndNotification>(
              onNotification: (final scrollEnd) {
                final metrics = scrollEnd.metrics;
                if (metrics.atEdge) {
                  final isTop = metrics.pixels == 0;
                  if (isTop) {
                  } else {}
                }
                return true;
              },
              child: ListView.builder(
                reverse: false,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: this.datasets['null'].length > 0
                    ? this.datasets['null'].length
                    : 0,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(r'''What is CheckBox Widget''',
                            style: GoogleFonts.arimaMadurai(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                            r'''Checkbox in flutter is a material design widget. It is always used in the Stateful Widget as it does not maintain a state of its own. We can use its onChanged property to interact or modify other widgets in the flutter app. Like most of the other flutter widgets, it also comes with many properties like activeColor, checkColor, mouseCursor, etc, to let developers have full control over the widget’s look and feel.

Constructor of Checkbox Widget:
const Checkbox(
{Key key,
@required bool value,
bool tristate: false,
@required ValueChanged<bool> onChanged,
MouseCursor mouseCursor,
Color activeColor,
Color checkColor,
Color focusColor,
Color hoverColor,
MaterialTapTargetSize materialTapTargetSize,
VisualDensity visualDensity,
FocusNode focusNode,
bool autofocus: false}
)
Properties of Checkbox Widget:
activeColor: This property takes the Color class as the object to fill in the ChechBox when it is checked.
autofocus: This property takes in a boolean value as the object. If it is set to true the CheckBox gets selected at the initial focus.
checkColor:  This property also takes in Color class as the object. It assigns color to the check icon.
focusColor: This property also takes in Color class as the object to give color to the checkbox when it is in focus.
focusNode: It sets an additional focus node to get the focus of the cursor. It takes in FocusNode as the object.
hoverColor: The hoverColor property takes in Color class as the object. It controls the color of the checkbox at the time of hover.
materialTapTargetSize: It controls the size of the tapped area. It takes MaterialTapTargetSize enum as the object.
mouseCursor: This determines the cursor type at the time of the pointer event. It holds MouseCursor class as the object.
onChanged: ValueChanged<T> typedef is the object given to this property. It is called when the value in the CheckBox widget should be changed.
tristate: Usually checkbox is either checked or not checked. If this property which takes a boolean as the object is set to true then it can set to null also.
value: This property takes in a boolean value as the object to determine whether the CheckBox is checked or not.
visualDensity: It controls the compactness of CheckBox widget, by taking in the VisualDensity class as the object.''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1000),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(r'''Demo Code''',
                            style: GoogleFonts.arimaMadurai(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          top: 10,
                          right: 10,
                          bottom: 100,
                        ),
                        child: Text(r'''import package:flutter/material.dart;
 
//importing material design library
void main() {
  runApp(MaterialApp(
    //runApp method
    home: HomePage(),
  ));//MaterialApp
}
 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  bool value = false;
 
  @override
  //App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(GeeksforGeeks),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: Menu,
            onPressed: () {},
          ), //IconButton
        ), //AppBar
        body: Center(
          /** Card Widget **/
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 430,
                height: 700,
                child: Column(
                  children: [
                    Text(
                      Algorithms,
                      style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontSize: 30), //TextStyle
                    ), //Text
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ), //SizedBox
                        Text(
                          Library Implementation Of Searching Algorithm: ,
                          style: TextStyle(fontSize: 17.0),
                        ), //Text
                        SizedBox(width: 10), //SizedBox
                        /** Checkbox Widget **/
                        Checkbox(
                          value: this.value,
                          onChanged: (bool value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ), //Checkbox
                      ], //<Widget>[]
                    ), //Row
                  ],
                ), //Column
              ), //SizedBox
            ), //Padding
          ), //Card
        ), //Center//Center
      ), //Scaffold
    ); //MaterialApp
  }
}''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFDE9D9D).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 10000),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

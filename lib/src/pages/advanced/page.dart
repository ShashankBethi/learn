import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

class PageAdvanced extends StatefulWidget {
  const PageAdvanced({
    Key? key,
  }) : super(key: key);

  @override
  _StateAdvanced createState() => _StateAdvanced();
}

class _StateAdvanced extends State<PageAdvanced> {
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
        'name': "Advanced",
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
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFF29384D).withOpacity(1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4,
                    top: 25,
                  ),
                  child: GestureDetector(
                      onTap: () async {
                        await Navigator.push<void>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageHomePage(),
                          ),
                        );
                      },
                      child: TextButton(
                        onPressed: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageHomePage(),
                            ),
                          );
                        },
                        child: Icon(
                          MdiIcons.fromString('keyboard-backspace'),
                          size: 40,
                          color: Color(0xFFFFFFFF).withOpacity(1),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    top: 38,
                  ),
                  child: Text(r'''Advanced''',
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageCardadv(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFF465262).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          border: null,
                        ),
                        child: Center(
                          child: Text(
                            '''Card Widget''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageGridviewadv(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFF465262).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          border: null,
                        ),
                        child: Center(
                          child: Text(
                            '''Grid View ''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageListviewadv(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFF465465).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          border: null,
                        ),
                        child: Center(
                          child: Text(
                            '''List View''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageListtileadv(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFF465262).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          border: null,
                        ),
                        child: Center(
                          child: Text(
                            '''ListTile Widget''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageBttmnavignbaradv(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFF465262).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          border: null,
                        ),
                        child: Center(
                          child: Text(
                            '''Bottom Navigation Bar''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageFlowwidadv(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFF465465).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          border: null,
                        ),
                        child: Center(
                          child: Text(
                            '''Flow Widget''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageDraweradv(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFF465262).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          border: null,
                        ),
                        child: Center(
                          child: Text(
                            '''Drawer Widget''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

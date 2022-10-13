import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

class PageBeginner extends StatefulWidget {
  const PageBeginner({
    Key? key,
  }) : super(key: key);

  @override
  _StateBeginner createState() => _StateBeginner();
}

class _StateBeginner extends State<PageBeginner> {
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
        'name': "Beginner",
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
                          left: 10,
                          top: 15,
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
                                size: 30,
                                color: Color(0xFFF6F3F3).withOpacity(1),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                        ),
                        child: Text(r'''For Begginners''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
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
                          top: 20,
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageFlutterintroB(),
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
                                  '''Flutter Introduction''',
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
                                builder: (context) => PageTextB(),
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
                                  '''Text Widget''',
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
                                builder: (context) => PageCenterB(),
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
                                  '''Center Widget''',
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
                                builder: (context) => PageStateleB(),
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
                                  '''Stateless Widget''',
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
                                builder: (context) => PageContainbeggi(),
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
                                  '''Container Widget''',
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
                                builder: (context) => PageColbegg(),
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
                                  '''Column Widget''',
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
                                builder: (context) => PageMaterbegg(),
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
                                  '''MaterialApp Widget''',
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
                                builder: (context) => PageLogobegg(),
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
                                  '''FlutterLogo WIdget''',
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
                                builder: (context) => PageRowb(),
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
                                  '''Row Widget''',
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
                                builder: (context) => PageIconb(),
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
                                  '''Icon Widget''',
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
                                builder: (context) => PageIconbub(),
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
                                  '''IconButton Widget''',
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
                                builder: (context) => PageScaffbegg(),
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
                                  '''Scaffold Widget''',
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
                                builder: (context) => PageRaisdbtnbegg(),
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
                                  '''RaisedButton Widget''',
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
                                builder: (context) => PageGestbegg(),
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
                                  '''GestureDetector''',
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
                                builder: (context) => PageTextbegg(),
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
                                  '''Text Field''',
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
                                builder: (context) => PageFormbegg(),
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
                                  '''Form Widget''',
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
                                builder: (context) => PagePaddbegg(),
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
                                  '''Padding ''',
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
                                builder: (context) => PageMarginbegg(),
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
                                  '''Margin Widget''',
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
                                builder: (context) => PageAlignbegg(),
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
                                  '''Align Widget''',
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
                                builder: (context) => PageBordbegg(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Border Widget''',
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
                                builder: (context) => PageDecboxbegg(),
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
                                  '''Decorated Box''',
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
                                builder: (context) => PageBoxdecbegg(),
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
                                  '''Box Decoration''',
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
                                builder: (context) => PageOpabegg(),
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
                                  '''Opacity Widget''',
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
                                builder: (context) => PageRotabxbegg(),
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
                                  '''Rotated Box''',
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
                                builder: (context) => PageConstbxbegg(),
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
                                  '''Constrained Box''',
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
                          bottom: 15,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageLimtbegg(),
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
                                  '''Limited Box''',
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

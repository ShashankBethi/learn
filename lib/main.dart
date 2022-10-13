  import 'package:myapp/src/teta_files/imports.dart';
  
  
  
  
  

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNoYXNoYW5rYmV0aGlAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInByb2plY3RzIjpbODEwNDMsMTAwMDQ0LDEwMjQzMiwxNTkxMjIsMTU5MTE1LDEwMjQzOCwxNTkxMjUsMTQ0MTk3XSwiaW1hZ2UiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BTG01d3UwckVoaUlMU1Roc3RsWnFwVEhQc0RrS1Z5SlpMenRQUnpEdlVCeT1zOTYtYyIsIm5hbWUiOiJTaGFzaGFuayBCZXRoaSIsImVtaXR0ZXIiOiJUZXRhLUF1dGgiLCJpYXQiOjE2NjU2NDc1OTQsImV4cCI6NDgyMTQwNzU5NH0.0fgSwNMKynritsaWpHsDsaqT5oc7KBokoP55uI2eOgY',
      prjId: 102438,
    );
    
    
    
    
    
    runApp(
      MyApp()
    );
  }

  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    void initState() {
      TranslatorGenerator.instance.init(
        mapLocales: [
          MapLocale('en', AppLocale.en),
        ],
        initLanguageCode: 'en',
      );
      TranslatorGenerator.instance.onTranslatedLanguage = _onTranslatedLanguage;
      super.initState();
    }

    void _onTranslatedLanguage(final Locale? locale) {
      setState(() {});
    }

    @override
    Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (final context) => ThemeCubit(),
          ),
        ],
        child: Sizer(
          builder: (
            final context,
            final orientation,
            final deviceType,
          ) => MaterialApp(
            title: 'flutter learn',
            supportedLocales: TranslatorGenerator.instance.supportedLocales,
            localizationsDelegates: TranslatorGenerator.instance.localizationsDelegates,
            home: SplashScreenView(
              navigateRoute: PageEntryPoint(
                key: ValueKey('PageEntryPoint English'),
              ),
              duration: 2200,
              imageSize: 80,
              imageSrc: 'assets/teta-app.png',
              text: '',
              textType: TextType.NormalText,
              textStyle: TextStyle(
                fontSize: 30.0,
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ), 
      );
    }
  }

  
  
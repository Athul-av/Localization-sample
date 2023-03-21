import 'package:flutter/material.dart';
import 'package:reciepe_app/view/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){

  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newlocale){
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newlocale);
  }
}

class _MyAppState extends State<MyApp> {

  Locale? _locale ;
  setLocale(Locale locale){
  setState(() {
    _locale = locale;
  });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const Homescreen(),
      theme: ThemeData(
        useMaterial3: true, 
       primaryColor: Colors.greenAccent 
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales, 
  locale:_locale,  
    );
  }
} 
import 'package:flutter/material.dart';
import 'package:reciepe_app/main.dart';
import 'package:reciepe_app/view/nonveg.dart';
import 'package:reciepe_app/view/veglist.dart';
import 'package:reciepe_app/widgets/constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override 
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 90,
          title: Padding(
            padding: const EdgeInsets.only(left: 10), 
            child: boldtext(AppLocalizations.of(context)!.recipe,21 ,Colors.black), 
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child:PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: TextButton(onPressed: (){
                    MyApp.setLocale(context,const Locale('en'));
                    Navigator.of(context).pop();  
                  },child:const Text('🇬🇧  english',style: TextStyle(color: Colors.black ),),)),
                  PopupMenuItem(child: TextButton(onPressed: (){
                    MyApp.setLocale(context,const Locale('es'));
                    Navigator.of(context).pop();   
                  },child:const Text('🇪🇸  spanish',style: TextStyle(color: Colors.black )),)),
                  PopupMenuItem(child: TextButton(onPressed: (){
                    MyApp.setLocale(context,const Locale('ar'));
                    Navigator.of(context).pop();  
                  },child:const Text('🇸🇦  arabic',style: TextStyle(color: Colors.black )),)),
                  PopupMenuItem(child: TextButton(onPressed: (){
                    MyApp.setLocale(context,const Locale('hi'));
                    Navigator.of(context).pop();  
                  },child:const Text('🇮🇳  hindi',style: TextStyle(color: Colors.black )),))    
                ],
                icon:const Icon(Icons.translate), 
              )
              //  IconButton(onPressed: (){


              // }, icon:const Icon(Icons.translate  )),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white, 
           
            
            tabs: [
              Tab(
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.36,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(19),
                      ),
                      color: Colors.green),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.brunch_dining,color: Colors.white,),
                      boldtext(AppLocalizations.of(context)!.veg, 15,Colors.white)
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.36,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(19),
                      ),
                      color: Colors.green),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.fastfood,color : Colors.white,),
                      boldtext(AppLocalizations.of(context)!.nonveg, 15,Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        body:const Padding(
          padding:  EdgeInsets.fromLTRB(15,25,15,5), 
          child: TabBarView(children: [
            VegItems(),
            NonVeg() 
          ]),
        ) ,
      ),
    );
  }
}

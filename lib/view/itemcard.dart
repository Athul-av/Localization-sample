import 'package:flutter/material.dart';
import 'package:reciepe_app/widgets/constant.dart';

Widget itemcard(context,String title,String details,String img){
  return
   Card( 
        elevation: 6, 
         child: Container(
          height: 110, 
          width:double.infinity,
          decoration: BoxDecoration(
            color: Colors.white ,
            borderRadius: BorderRadius.circular(15) 
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                 CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white, 
                  backgroundImage: NetworkImage(img),
                ) ,
               const SizedBox(width: 20,),  
               
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.52,
               
                  child: 
                   Column( 
                    crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child:boldtext(title, 17, Colors.black), 
                    ),
                    Flexible (child: normaltext(details,12))  
                  ],
                ),
                )
              ],
            ),
            
          ),
         ),
       );
}
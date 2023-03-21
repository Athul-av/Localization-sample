import 'package:flutter/cupertino.dart';
import 'package:reciepe_app/view/itemcard.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NonVeg extends StatelessWidget {
  const NonVeg({super.key});

  @override
  Widget build(BuildContext context) {
   return ListView(
      children: [
        itemcard(
            context,
            AppLocalizations.of(context)!.grilledchick, 
            AppLocalizations.of(context)!.grilledchickdes, 
            'https://i.ndtvimg.com/i/2015-12/grilled-chicken-625_625x350_71451368942.jpg'),
           const SizedBox(height: 5,),
            itemcard(
            context,
            AppLocalizations.of(context)!.mutton, 
            AppLocalizations.of(context)!.muttondes, 
            'https://i.ndtvimg.com/i/2015-03/badam-korma_625x350_41426244081.jpg'),
            const SizedBox(height: 5,),
            itemcard(
            context,
             AppLocalizations.of(context)!.tandoori, 
            AppLocalizations.of(context)!.tandoorides, 
            'https://i.ndtvimg.com/i/2016-06/lamb-chops_625x350_51466768845.jpg'),
            const SizedBox(height: 5,),
            itemcard(
            context,
             AppLocalizations.of(context)!.fish, 
            AppLocalizations.of(context)!.fishdes, 
            'https://i.ndtvimg.com/i/2016-11/biryani-620_620x350_41478678907.jpg'),
            const SizedBox(height: 5,),
            itemcard(
            context,
             AppLocalizations.of(context)!.chicken65, 
            AppLocalizations.of(context)!.chicken65des, 
            'https://i.ndtvimg.com/i/2015-07/chicken-65_625x350_61436162562.jpg'),
            const SizedBox(height: 5,),
            itemcard(
            context,
             AppLocalizations.of(context)!.butterchick, 
            AppLocalizations.of(context)!.butterchickdes,  
            'https://i.ndtvimg.com/i/2018-01/butter-chicken_620x350_51517373579.jpg') 
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:reciepe_app/view/itemcard.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class VegItems extends StatelessWidget {
  const VegItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        itemcard(
            context,
            AppLocalizations.of(context)!.tortilla, 
            AppLocalizations.of(context)!.tortillades,
            'https://www.acouplecooks.com/wp-content/uploads/2018/02/Chipotle-Black-Bean-Tortilla-Soup.jpg'),
           const SizedBox(height: 5,),
            itemcard(
            context,
           AppLocalizations.of(context)!.sheet,
            AppLocalizations.of(context)!.sheetdes,
            'https://www.acouplecooks.com/wp-content/uploads/2021/04/Focaccia-Pizza-015s3.jpg'),
            const SizedBox(height: 5,),
            itemcard(
            context,
           AppLocalizations.of(context)!.burrito,
            AppLocalizations.of(context)!.burritodes,
            'https://www.acouplecooks.com/wp-content/uploads/2020/09/Rice-Bowl-027.jpg'),
            const SizedBox(height: 5,), 
            itemcard(
            context,
            AppLocalizations.of(context)!.fettuccine,
            AppLocalizations.of(context)!.fettuccinedes,
            'https://www.acouplecooks.com/wp-content/uploads/2019/12/Vegan-Fettucini-Alfredo-001.jpg'),
            const SizedBox(height: 5,),
            itemcard(
            context,
            AppLocalizations.of(context)!.tofu,
            AppLocalizations.of(context)!.tofudes,
            'https://www.acouplecooks.com/wp-content/uploads/2021/06/BBQ-Tofu-003.jpg'),
            const SizedBox(height: 5,),
            itemcard(
            context,
           AppLocalizations.of(context)!.pasta,
            AppLocalizations.of(context)!.pastades, 
            'https://www.acouplecooks.com/wp-content/uploads/2021/11/Vegetable-Spaghetti-003.jpg') 
      ],
    );
  }
}

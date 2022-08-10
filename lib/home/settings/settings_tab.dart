import 'package:flutter/material.dart';
import 'package:islami_app/home/settings/language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.headline4,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              ShowLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor,
                width: 1),
                borderRadius:BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Text('English',
              style: Theme.of(context).textTheme.headline4),
            ),
          ),
          SizedBox(height: 24,),
          Text('Theme',
            style: Theme.of(context).textTheme.headline4,),
          SizedBox(height: 10,),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor,
                    width: 1),
                borderRadius:BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Text('Light',
                  style: Theme.of(context).textTheme.headline4),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder:(buildContext){
      return LanguageBottomSheet();
    });
  }
}

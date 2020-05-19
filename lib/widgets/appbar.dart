import 'package:flutter/material.dart';

import '../utils/universal_variable.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

final Widget title;
final List<Widget> action;
final Widget leading;
final bool centerTile;

const CustomAppBar({
Key key,
@required this.title,
@required this.action,
@required this.leading,
@required this.centerTile,

}):super(key:key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:UniversalVariables.blackColor,
      border: Border(
        bottom: BorderSide(
                  color:UniversalVariables.blackColor,
           width: 1.0,
           style: BorderStyle.solid
        )
      )
      ),

      child: AppBar(
         backgroundColor: UniversalVariables.blackColor,
         elevation: 0,
         leading: leading,
         actions:action,
          centerTitle: centerTile,
          title: title,
      ) ,
    );
  }
  final Size preferredSize= const Size.fromHeight(kToolbarHeight+10);
}
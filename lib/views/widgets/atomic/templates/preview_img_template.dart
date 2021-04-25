import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lets_goto_solo/config/constants/constants.dart';
import 'package:lets_goto_solo/config/helpers/helpers.dart';
import 'package:lets_goto_solo/views/widgets/atomic/molecules/icon_app_mol.dart';
import 'package:lets_goto_solo/views/widgets/templates/inkwell_app.dart';
import 'package:photo_view/photo_view.dart';

class PreviewImgDisplay extends StatelessWidget {
  final String urlImage;

  const PreviewImgDisplay(
      {Key key, this.urlImage: ConstVars.defaultNetImgError})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                  width: Helpers.width(context),
                  height: Helpers.height(context),
                  child: PhotoView(
                    imageProvider: NetworkImage(urlImage),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Helpers.percentHeight(context, 6),
                        right: Helpers.percentHeight(context, 2)),
                    child: InkWellApp(
                        paddingAll: Helpers.percentHeight(context, 1.5),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: IconApp(
                          icon: Icons.close,
                          iconColor: Colors.white70,
                          boxColor: Colors.transparent,
                          borderSize: 2,
                          roundSize: 0,
                          iconSize: Helpers.percentHeight(context, 6),
                          boxSize: Helpers.percentHeight(context, 8),
                        )),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

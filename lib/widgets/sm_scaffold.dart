import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substance_mix/presets/sm_colors.dart';
import 'package:substance_mix/presets/sm_dimens.dart';

class SMScaffold extends StatelessWidget {
  final Widget appbar;
  final List<Widget> children;

  const SMScaffold({Key key, this.appbar, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SMColors.primary,
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 22 + SMDimens.appBarHeight,
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                SizedBox(height: SMDimens.appBarHeight, child: appbar),
              ],
            ),
            decoration: BoxDecoration(
              color: SMColors.primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(SMDimens.radius),
                  bottomRight: Radius.circular(SMDimens.radius)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: SMDimens.paddingBig),
                child: LayoutBuilder(
                  builder: (BuildContext context,
                      BoxConstraints viewportConstraints) {
                    return IntrinsicHeight(
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: viewportConstraints.maxHeight,
                          ),
                          child: IntrinsicHeight(
                            child: Column(children: children),
                          ),
                        ),
                      ),
                    );
                  },
                )),
          )
        ],
      ),
    );
  }
}

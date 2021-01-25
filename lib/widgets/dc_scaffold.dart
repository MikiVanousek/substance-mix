import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DCScaffold extends StatelessWidget {
  final Widget appbar;
  final List<Widget> children;

  const DCScaffold({Key key, this.appbar, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DCColors.primary,
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 22 + DCDimens.appBarHeight,
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                SizedBox(height: DCDimens.appBarHeight, child: appbar),
              ],
            ),
            decoration: BoxDecoration(
              color: DCColors.primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(DCDimens.radius),
                  bottomRight: Radius.circular(DCDimens.radius)),
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
                    const EdgeInsets.symmetric(horizontal: DCDimens.paddingBig),
                child: LayoutBuilder(
                  builder:
                      (BuildContext context, BoxConstraints viewportConstraints) {
                    return IntrinsicHeight(
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: viewportConstraints.maxHeight,
                          ),
                          child: IntrinsicHeight(
                            child: Column(
                              children: children
                            ),
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

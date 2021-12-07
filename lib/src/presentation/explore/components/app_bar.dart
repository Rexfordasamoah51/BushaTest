import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      title: SizedBox(
        height: 45,
        child: CupertinoTextField(
          keyboardType: TextInputType.text,
          placeholder: 'Search',
          placeholderStyle: Theme.of(context).textTheme.bodyText1,
          prefix: const Padding(
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.black,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: AppColors.greySecondary,
          ),
        ),
      ),
    );
  }
}

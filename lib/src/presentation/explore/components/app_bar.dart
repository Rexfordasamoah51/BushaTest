import 'package:busha/src/common/app_colors.dart';

import 'package:busha/src/presentation/search/search_view.dart';
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
          readOnly: true,
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const SearchView(),
              ),
            );
          },
          keyboardType: TextInputType.text,
          placeholder: 'Search',
          placeholderStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: AppColors.greyPrimary,
              ),
          prefix: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
            child: Image.asset('assets/ser.png'),
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

import 'package:busha/src/common/app_colors.dart';
import 'package:busha/src/common/util.dart';
import 'package:flutter/material.dart';

class RefererCard extends StatelessWidget {
  const RefererCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: context.responsiveHeight * 0.22,
          width: context.responsiveWidth * 1.0,
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.greySecondary.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
            border: Border.all(
              color: AppColors.greySecondary,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Earn for life',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: AppColors.greyPrimary,
                        ),
                  ),
                  Text(
                    'Invite a friend to Busha\nand earn 0.25% on all\ntheir transactions',
                    style: Theme.of(context).textTheme.subtitle1!,
                  ),
                  Text(
                    'Invite Friends',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.green,
                        ),
                  ),
                ],
              ),
              Image.asset('assets/refer.png')
            ],
          ),
        ),
      ],
    );
  }
}

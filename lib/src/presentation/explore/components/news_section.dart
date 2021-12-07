import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ethereum Co-founder opposes\nEl-salvador Bitcoin Adoption\npolicy',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'CoinDesk • 2h',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: AppColors.greyPrimary,
                    ),
              )
            ],
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/elon.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}

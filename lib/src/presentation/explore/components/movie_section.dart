import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/material.dart';

class MoverItems extends StatelessWidget {
  const MoverItems({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String price;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.5,
          margin: const EdgeInsets.symmetric(horizontal: 5),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: color,
                  child: Image.asset(imagePath),
                ),
              ),
              ListTile(
                title: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  price,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: textColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

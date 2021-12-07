import 'package:flutter/material.dart';

class WatchListItem extends StatelessWidget {
  const WatchListItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.priceSubTitle,
    required this.color,
    required this.imagePath,
    this.textColor,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String price;
  final String priceSubTitle;
  final Color color;
  final Color? textColor;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Image.asset(imagePath),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            price,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            priceSubTitle,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: textColor ?? Colors.red,
                ),
          ),
        ],
      ),
    );
  }
}

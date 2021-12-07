import 'package:flutter/material.dart';

class WatchList extends StatelessWidget {
  const WatchList({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title ?? 'Watchlist',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: Text(
        subtitle ?? 'The coins you follow',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      trailing: Text(
        'See all',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}

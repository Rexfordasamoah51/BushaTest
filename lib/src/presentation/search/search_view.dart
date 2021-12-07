import 'package:busha/src/app/widget_wrapper.dart';
import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/search_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          _SearchTop(),
          SizedBox(height: 20),
          _SearchListSub(),
        ],
      ),
    );
  }
}

class _SearchTop extends StatelessWidget {
  const _SearchTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: _SearchBar(),
        ),
        _Cancel(),
      ],
    );
  }
}

class _Cancel extends StatelessWidget {
  const _Cancel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          'Cancel',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width * 0.75,
      child: CupertinoTextField(
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
    );
  }
}

class _SearchListSub extends StatelessWidget {
  const _SearchListSub({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: searchList
          .map(
            (item) => SearchListItem(
              title: item.title,
              subtitle: item.title,
              price: item.price,
              imagePath: item.imageUrl,
              color: item.color,
              textColor: item.textColor,
              priceSubTitle: item.priceSub,
            ),
          )
          .toList(),
    );
  }
}

class SearchListItem extends StatelessWidget {
  const SearchListItem({
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
                  color: AppColors.greyPrimary,
                ),
          ),
        ],
      ),
    );
  }
}

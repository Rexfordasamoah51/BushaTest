import 'package:busha/src/app/widget_wrapper.dart';
import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'explore_model.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      bottomNavigationBar: const _BottomNav(),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
          return const [
            _ExploreText(),
            _AppBar(),
          ];
        },
        body: ListView(
          children: [
            const _WatchList(),
            const _WatchListSub(),
            const _WatchList(
              title: 'Top Movers',
              subtitle: 'Coins making the most moves today',
            ),
            _MoverItemsList(),
            _RefererCard(),
            // Column(
            //   children: watchlist
            //       .map((item) => _MoverItems(
            _WatchList(
              title: 'Trending news',
              subtitle: 'Crypto news about the market',
            ),
            //             price: item.price,
            //             title: item.title,
            //           ))
            //       .toList(),
            // )
          ],
        ),
      ),
    );
  }
}

class _RefererCard extends StatelessWidget {
  const _RefererCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.22,
          width: MediaQuery.of(context).size.width * 0.95,
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Earn for life',
                style: Theme.of(context).textTheme.bodyText1!,
              ),
              Row(
                children: [
                  Text(
                    'Invite a friend to Busha\nand earn 0.25% on all\ntheir transactions',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 18,
                        ),
                  ),
                  Image.asset('assets/refer.png')
                ],
              ),
              Text(
                'Invite Friends',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.green,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MoverItemsList extends StatelessWidget {
  const _MoverItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _MoverItems(
            imagePath: watchlist[index].imageUrl,
            price: watchlist[index].priceSub,
            title: watchlist[index].subtitle,
            color: watchlist[index].color,
            textColor: watchlist[index].textColor,
          );
        },
        itemCount: watchlist.length,
        shrinkWrap: true,
      ),
    );
  }
}

class _MoverItems extends StatelessWidget {
  const _MoverItems({
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

class _WatchListSub extends StatelessWidget {
  const _WatchListSub({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: watchlist
          .map(
            (item) => _WatchListItem(
              title: item.title,
              subtitle: item.subtitle,
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

class _WatchListItem extends StatelessWidget {
  const _WatchListItem({
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

class _WatchList extends StatelessWidget {
  const _WatchList({
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

class _ExploreText extends StatelessWidget {
  const _ExploreText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 80,
      elevation: 0,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
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

class _BottomNav extends StatelessWidget {
  const _BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      unselectedItemColor: Colors.black,
      selectedItemColor: AppColors.greyPrimary,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.shifting,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance_wallet_outlined,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.person,
          ),
          label: '',
        ),
      ],
    );
  }
}

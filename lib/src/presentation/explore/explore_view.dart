import 'package:busha/src/app/widget_wrapper.dart';
import 'package:busha/src/common/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';
import 'explore_model.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppWrapper(
      bottomNavigationBar: BottomNav(),
      child: _ExploreBody(),
    );
  }
}

class _ExploreBody extends StatelessWidget {
  const _ExploreBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
        return const [
          ExploreText(),
          CustomAppBar(),
        ];
      },
      body: const _ExploreSubSection(),
    );
  }
}

class _ExploreSubSection extends StatelessWidget {
  const _ExploreSubSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        WatchList(),
        _WatchListSub(),
        WatchList(
            title: 'Top Movers', subtitle: 'Coins making the most moves today'),
        _MoverItemsList(),
        RefererCard(),
        WatchList(
          title: 'Trending news',
          subtitle: 'Crypto news about the market',
        ),
        _DivderWithPadding(),
        _NewsListView()
      ],
    );
  }
}

class _NewsListView extends StatelessWidget {
  const _NewsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const NewsList(),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 4,
      ),
    );
  }
}

class _DivderWithPadding extends StatelessWidget {
  const _DivderWithPadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Divider(),
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
      height: context.responsiveHeight * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return MoverItems(
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

class _WatchListSub extends StatelessWidget {
  const _WatchListSub({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: watchlist
          .map(
            (item) => WatchListItem(
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

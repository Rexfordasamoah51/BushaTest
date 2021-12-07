import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/material.dart';

class Watchlist {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Color color;
  final Color? textColor;
  final String price;
  final String priceSub;

  Watchlist(
    this.title,
    this.subtitle,
    this.imageUrl,
    this.color,
    this.price,
    this.priceSub, {
    this.textColor = Colors.red,
  });
}

final List watchlist = [
  Watchlist(
    'BTC',
    'Bitcoin',
    'assets/BTC.png',
    AppColors.yellowSecondary,
    '₦7,234,567.34',
    '▲45.45%',
    textColor: Colors.green,
  ),
  Watchlist(
    'ETH',
    'Ethereum',
    'assets/ETH.png',
    AppColors.bluePrimary,
    '₦234,567.34',
    '▼2.75%',
  ),
  Watchlist(
    'BNB',
    'Binance Coin',
    'assets/Vector.png',
    AppColors.yellowPrimary,
    '₦0.00545',
    '▼2.75%',
  ),
];

import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/material.dart';

class SearchList {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Color color;
  final Color? textColor;
  final String price;
  final String priceSub;

  SearchList(
    this.title,
    this.subtitle,
    this.imageUrl,
    this.color,
    this.price,
    this.priceSub, {
    this.textColor = Colors.red,
  });
}

final List searchList = [
  SearchList(
    'Naira',
    'Bitcoin',
    'assets/NGN.png',
    AppColors.greenPrimary,
    '₦234,567.34',
    '',
    textColor: AppColors.greenPrimary,
  ),
  SearchList(
    'Bitcoin',
    'Ethereum',
    'assets/BTC.png',
    AppColors.yellowPrimary,
    '0.015 BTC',
    '537,640.56 NGN',
  ),
  SearchList(
    'Ethereum',
    'Binance Coin',
    'assets/ETH.png',
    AppColors.bluePrimary,
    '0.02 ETH',
    '48,065.09 NGN',
  ),
  SearchList(
    'USD Token',
    'Binance Coin',
    'assets/t.png',
    AppColors.greebSec,
    '2349.6 USDT',
    '1,336,053 NGN',
  ),
];

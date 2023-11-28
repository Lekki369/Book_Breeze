import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'trend_model.dart';
import 'trends_notifier.dart';

List<Trends> trends = [
  Trends(imageUrl: 'imageUrl', title: 'a'),
  Trends(imageUrl: 'imageUrl', title: 'b'),
  Trends(imageUrl: 'imageUrl', title: 'c'),
  Trends(imageUrl: 'imageUrl', title: 'd'),
  Trends(imageUrl: 'imageUrl', title: 'e'),
  Trends(imageUrl: 'imageUrl', title: 'f'),
  Trends(imageUrl: 'imageUrl', title: 'g'),
  Trends(imageUrl: 'imageUrl', title: 'h'),
  Trends(imageUrl: 'imageUrl', title: 'i'),
  Trends(imageUrl: 'imageUrl', title: 'j'),
  Trends(imageUrl: 'imageUrl', title: 'k'),
  Trends(imageUrl: 'imageUrl', title: 'l'),
  Trends(imageUrl: 'imageUrl', title: 'm'),
  Trends(imageUrl: 'imageUrl', title: 'n'),
];

final trendProvider = StateNotifierProvider<TrendNotifier, List<Trends>>(
  (ref) => TrendNotifier(trends),
);

final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.dark);

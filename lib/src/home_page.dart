import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Book Brezze',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 50.w, right: 50.w),
        child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: ListView(
            primary: true,
            children: [
              Text(
                'Trending',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 20.h),
              Consumer(
                builder: (context, ref, child) {
                  final trends = ref.watch(trendProvider);
                  return SizedBox(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: GridView.builder(
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 20),
                      itemCount: trends.length,
                      itemBuilder: (context, index) {
                        return Container(
                          constraints: BoxConstraints.expand(
                            height: 400.h,
                            width: 400.w,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30.r),
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Placeholder(
                                      child: Text(
                                        trends[index].imageUrl,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  trends[index].title,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

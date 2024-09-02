import 'package:ecommerce_project/common/styles/cart_count.dart';
import 'package:ecommerce_project/common/widgets/brand_slider.dart';
import 'package:ecommerce_project/common/widgets/my_grid_layout.dart';
import 'package:ecommerce_project/common/widgets/product_card_vertical.dart';
import 'package:ecommerce_project/common/widgets/rounded_card.dart';
import 'package:ecommerce_project/common/widgets/search_bar.dart';
import 'package:ecommerce_project/common/widgets/section_heading.dart';
import 'package:ecommerce_project/common/widgets/tab_bar.dart';
import 'package:ecommerce_project/features/home_screen/widgets/custom_app_bar.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              title: const Text(
                'Store',
                style: TextStyle(fontSize: 25),
              ),
              actions: [CartCount(iconColor: Colors.blue, onTap: () {})],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      pinned: true,
                      floating: true,
                      expandedHeight: 500,
                      flexibleSpace: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            const SizedBox(height: 10),
                            const MySearchBar(
                              icon: Icon(Icons.search_outlined),
                              text: 'Search',
                              showBackground: false,
                              showBorder: true,
                            ),
                            const SizedBox(height: 10),
                            SectionHeadings(
                              title: 'Popular Brands',
                              showActionButton: true,
                              onTap: () {},
                            ),
                            const SizedBox(height: 10),
                            MyGridLayout(
                                itemCount: 4,
                                mainAxisExtent: 80,
                                itemBuilder: (context, index) {
                                  return RoundedCard(
                                    customColor: customColor,
                                    showBorder: true,
                                    onTap: () {},
                                  );
                                })
                          ],
                        ),
                      ),
                      bottom: const MyTabBar(tabs: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Electronics')),
                        Tab(child: Text('Furniture')),
                        Tab(child: Text('Drink')),
                        Tab(child: Text('Food')),
                      ]),
                    )
                  ];
                },
                body: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          BrandSlider(
                            customColor: customColor,
                            images: const [
                              ImagesPath.tShirt1,
                              ImagesPath.tShirt2,
                              ImagesPath.tShirt3,
                              ImagesPath.tShirt4,
                              ImagesPath.tShirt5
                            ],
                          ),
                          const SizedBox(height: 10),
                          const SectionHeadings(
                            title: 'You may like',
                            showActionButton: true,
                          ),
                          Expanded(
                            child: MyGridLayout(
                              itemCount: 4,
                              itemBuilder: (BuildContext, int) =>
                                  const ProductCardVertical(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

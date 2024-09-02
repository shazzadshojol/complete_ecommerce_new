import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/common/styles/cart_count.dart';
import 'package:ecommerce_project/common/widgets/my_grid_layout.dart';
import 'package:ecommerce_project/common/widgets/product_card_vertical.dart';
import 'package:ecommerce_project/common/widgets/rounded_images.dart';
import 'package:ecommerce_project/common/widgets/section_heading.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/text_fields.dart';
import 'package:ecommerce_project/features/home_screen/widgets/banner_dot_navigation.dart';
import 'package:ecommerce_project/features/home_screen/widgets/category_image_buttons.dart';
import 'package:ecommerce_project/features/home_screen/widgets/custom_app_bar.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomAppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good day for shopping',
                      style: TextStyle(fontSize: 14, color: customColor),
                    ),
                    Text(
                      'Shazzad Hossain',
                      style: TextStyle(fontSize: 22, color: customColor),
                    ),
                  ],
                ),
                actions: [
                  CartCount(
                    onTap: () {},
                    iconColor: customColor,
                  )
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFields(
                  hintText: 'Search',
                  controller: _searchController,
                  icon: Icon(
                    Icons.search_outlined,
                    color: customColor,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: SectionHeadings(
                  title: 'Popular Categories',
                  showActionButton: false,
                ),
              ),
              CategoryImageButtons(color: customColor),
              const SizedBox(height: 10),
              _buildSlider(),
              const SizedBox(height: 10),
              SectionHeadings(
                title: 'Popular Products',
                showActionButton: true,
              ),
              MyGridLayout(
                itemCount: 4,
                itemBuilder: (BuildContext, int) => const ProductCardVertical(),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentSlideIndex = index;
              });
            },
          ),
          carouselController: _carouselController,
          items: [
            _buildBannerImage(ImagesPath.slider1),
            _buildBannerImage(ImagesPath.slider2),
            _buildBannerImage(ImagesPath.slider3),
          ],
        ),
        const SizedBox(height: 8),
        BannerDotNavigation(
            currentIndex: _currentSlideIndex,
            carouselController: _carouselController),
      ],
    );
  }

  Widget _buildBannerImage(String imageUrl) {
    return RoundedImage(
      imageUrl: imageUrl,
      applyImageRadius: true,
      backgroundColor: Colors.transparent,
      borderRadius: 15,
    );
  }
}

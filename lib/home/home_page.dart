import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lenskart_test/commons/app_colors.dart';
import 'package:lenskart_test/commons/extensions.dart';
import 'package:lenskart_test/commons/responsive/responsive.dart';
import 'package:lenskart_test/commons/theme/text_theme_helper.dart';
import 'package:lenskart_test/home/widgets/status_category_widget.dart';
import 'package:lenskart_test/resources/resources.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    context.homeCubit.getAllMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 8.w,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    Svgs.menu,
                    height: 26,
                    width: 26,
                  ),
                  const Icon(
                    Icons.search,
                    size: 28,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24,
                top: 4.w,
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextThemeHelper.cetaceanBlue_24_600,
                labelColor: AppColors.cetaceanBlue,
                unselectedLabelColor: AppColors.cetaceanBlue.withOpacity(0.3),
                unselectedLabelStyle: TextThemeHelper.cetaceanBlue_24_600,
                indicator: UnderlineTabIndicator(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(
                    width: 3.0,
                    color: AppColors.ultraRed,
                  ),
                  insets: EdgeInsets.only(
                    right: 24.w,
                    left: -2.w,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 0,
                ),
                labelPadding: EdgeInsets.only(
                  right: 5.w,
                ),
                tabs: const [
                  Tab(
                    text: "In Theater",
                  ),
                  Tab(
                    text: "Box Office",
                  ),
                  Tab(
                    text: "Coming Soon",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.w,
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: const [
                  StatusCategoryWidget(),
                  StatusCategoryWidget(),
                  StatusCategoryWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

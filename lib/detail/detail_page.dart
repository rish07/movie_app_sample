import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lenskart_test/commons/app_colors.dart';
import 'package:lenskart_test/commons/responsive/responsive.dart';
import 'package:lenskart_test/commons/theme/text_theme_helper.dart';
import 'package:lenskart_test/commons/widgets/custom_action_chip.dart';
import 'package:lenskart_test/detail/widgets/cast_widget.dart';
import 'package:lenskart_test/detail/widgets/movie_detail_item.dart';
import 'package:lenskart_test/home/models/movie_model.dart';
import 'package:lenskart_test/resources/resources.dart';

import 'widgets/detail_page_title_widget.dart';

class DetailPage extends StatefulWidget {
  final MovieModel movie;
  const DetailPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => context.pop(),
                ),
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    Images.headerImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 10.w,
                    ),
                    Container(
                      padding: EdgeInsets.all(
                        size.width * 0.05,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  widget.movie.title ?? "Ford v Ferrari",
                                  style: TextThemeHelper.cetaceanBlue_24_600,
                                ),
                                SizedBox(
                                  height: 2.w,
                                ),
                                Row(
                                  children: [
                                    MovieDetailItem(
                                      text: widget.movie.year?.toString() ??
                                          "2019",
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    const MovieDetailItem(
                                      text: "PG 13",
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    const MovieDetailItem(
                                      text: "2h 32m",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.w,
                                ),
                                Row(
                                  children: const [
                                    CustomActionChip(
                                      text: "Action",
                                    ),
                                    CustomActionChip(
                                      text: "Biography",
                                    ),
                                    CustomActionChip(
                                      text: "Drama",
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                            Svgs.addIcon,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 6.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const DetailPageTitleWidget(
                            text: "Plot Summary",
                          ),
                          SizedBox(
                            height: 2.w,
                          ),
                          Text(
                            "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.",
                            style: TextThemeHelper.rhythm_14_400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const DetailPageTitleWidget(
                            text: "Cast & Crew",
                          ),
                          SizedBox(
                            height: 4.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CastWidget(
                                name: "James Mangold",
                                designation: "Director",
                                imageAsset: Images.actor4,
                              ),
                              CastWidget(
                                name: "Matt Damon",
                                designation: "Carroll",
                                imageAsset: Images.actor3,
                              ),
                              CastWidget(
                                name: "Christian Bale",
                                designation: "Ken Miles",
                                imageAsset: Images.actor2,
                              ),
                              CastWidget(
                                name: "Caitriona Balfe",
                                designation: "Mollie",
                                imageAsset: Images.actor1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 6.w,
            top: 60.w,
            child: Container(
              width: 102.w,
              padding: EdgeInsets.symmetric(
                vertical: 4.w,
                horizontal: 8.w,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.cetaceanBlue.withOpacity(
                      0.2,
                    ),
                    blurRadius: 16,
                    spreadRadius: 1,

                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        Svgs.star,
                        height: 6.w,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "8.5/",
                          style: TextThemeHelper.cetaceanBlue_12_500,
                          children: [
                            TextSpan(
                              text: "10",
                              style: TextThemeHelper.americanBlue_10_500,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Text(
                        "150,212",
                        style: TextThemeHelper.manatee_8_400,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.w,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          Svgs.linedStar,
                        ),
                        SizedBox(
                          height: 2.w,
                        ),
                        Text(
                          "Rate This",
                          style: TextThemeHelper.cetaceanBlue_12_500,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 4.w,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: AppColors.emerald,
                            borderRadius: BorderRadius.circular(
                              2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "86",
                              style: TextThemeHelper.white_12_500,
                            ),
                          ),
                        ),
                        Text(
                          "Metascore",
                          style: TextThemeHelper.cetaceanBlue_12_500,
                        ),
                        Text(
                          "62 critic reviews",
                          style: TextThemeHelper.manatee_10_400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

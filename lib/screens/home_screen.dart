import 'package:fast_shop/components/article_content.dart';
import 'package:fast_shop/components/card_article.dart';
import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/horizontal_list.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

ItemList itemList = ItemList();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //carousel slider
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: CarouselWidgetPage(),
            ),
            //categories
            Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category',
                          style: kLabelTextStyleBlueArticle,
                        ),
                        Text(
                          'More Categories',
                          style: kLabelTextStyleYellowArticle,
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 110,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[0].image,
                          itemName: itemList.iconItems[0].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[1].image,
                          itemName: itemList.iconItems[1].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[2].image,
                          itemName: itemList.iconItems[2].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[3].image,
                          itemName: itemList.iconItems[3].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[4].image,
                          itemName: itemList.iconItems[4].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[5].image,
                          itemName: itemList.iconItems[5].itemName,
                        )
                      ])),
                ])),
            //pastries
            //pastries
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      itemList.categoryItems[0],
                      style: kLabelTextCategoryStyleBlue,
                    ),
                    Text(
                      'See More',
                      style: kLabelTextCategoryStyleYellow,
                    )
                  ],
                ),
              ),
              Container(
                height: 187,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => CardArticle(
                    // cardChild: Text(itemsList[i]),
                    cardChild: ArticleContent(
                      articleImage: itemList.sweetItems[i].image,
                      articleItem: itemList.sweetItems[i].itemName,
                      articlePrice: itemList.sweetItems[i].price,
                    ),
                    onPress: onPress,
                  ),
                  itemCount: itemList.sweetItems.length,
                ),
              ),
            ]),
            //bags
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemList.categoryItems[1],
                        style: kLabelTextCategoryStyleBlue,
                      ),
                      Text(
                        'See More',
                        style: kLabelTextCategoryStyleYellow,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 187,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => CardArticle(
                      // cardChild: Text(itemsList[i]),
                      cardChild: ArticleContent(
                        articleImage: itemList.bagItems[i].image,
                        articleItem: itemList.bagItems[i].itemName,
                        articlePrice: itemList.bagItems[i].price,
                      ),
                      onPress: () {
                        setState(() {
                          Navigator.pushNamed(context, '/product',
                              arguments: i);
                        });
                      },
                    ),
                    itemCount: itemList.bagItems.length,
                  ),
                ),
              ],
            ),
            //fashion
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemList.categoryItems[2],
                        style: kLabelTextCategoryStyleBlue,
                      ),
                      Text(
                        'See More',
                        style: kLabelTextCategoryStyleYellow,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 187,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => CardArticle(
                      // cardChild: Text(itemsList[i]),
                      cardChild: ArticleContent(
                        articleImage: itemList.fashionItems[i].image,
                        articleItem: itemList.fashionItems[i].itemName,
                        articlePrice: itemList.fashionItems[i].price,
                      ),
                      onPress: onPress,
                    ),
                    itemCount: itemList.fashionItems.length,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onPress() {}
}

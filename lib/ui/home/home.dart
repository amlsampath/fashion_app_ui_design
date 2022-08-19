import 'package:fashion_design_app/constant/color.dart';
import 'package:fashion_design_app/data/model/fashion_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<FashionModel> fashionModel = <FashionModel>[
    FashionModel(city: 'Paris', name: 'Niketa William', url: 'https://images.unsplash.com/photo-1562572159-4efc207f5aff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
    FashionModel(city: 'Landon', name: 'Trisha Louis', url: 'https://images.unsplash.com/photo-1604904612715-47bf9d9bc670?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
    FashionModel(city: 'Begin', name: 'Louis Trisha', url: 'https://images.unsplash.com/photo-1618721405821-80ebc4b63d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
  ];

  List<String> category = [
    'Recommended',
    'New Models',
    'Show 2020',
    'Show 2019',
    'Show 2018',
    'Show 2017',
    'Show 2016',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            size.width * .04,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .002,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/main_menu.png',
                      width: size.width * .05,
                    ),
                    Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Week in Paris",
                      style: TextStyle(
                        color: ColorConstant.mainColor,
                        fontSize: size.width * .08,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: size.height * .001,
                    ),
                    Text(
                      '2021 Fashion show in Pairs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                            fontSize: size.width * .05,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Image.asset(
                          'assets/images/list.png',
                          width: size.width * .05,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .04,
                    ),
                    SizedBox(
                      height: size.height * .05,
                      child: ListView.builder(
                        itemCount: category.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(right: size.width * .1),
                              child: Text(
                                category[i],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * .035,
                                  color: currentIndex == i ? ColorConstant.mainColor : Colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height * .001,
                    ),
                    SizedBox(
                      height: size.height * .3,
                      child: ListView.builder(
                        itemCount: fashionModel.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/details');
                            },
                            child: Container(
                              height: size.height * .3,
                              margin: EdgeInsets.only(right: size.width * .015),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: const Offset(0, 0),
                                            ),
                                          ],
                                        ),
                                        child: Image.network(
                                          fashionModel[i].url,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * .005,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          fashionModel[i].name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          fashionModel[i].city,
                                          style: TextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      height: size.height * .25,
                      width: size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

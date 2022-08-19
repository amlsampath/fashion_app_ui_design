import 'package:fashion_design_app/ui/reusable/customIconText.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 172, 105, 30),
                Color.fromARGB(255, 26, 150, 252),
                Color.fromARGB(255, 1, 88, 114),
                Color.fromARGB(255, 241, 10, 226),
              ],
            )),
            child: Image.asset(
              "assets/images/lady.png",
              width: size.width,
              height: size.height,
            ),
          ),
          Positioned(
            top: size.height * .05,
            right: size.width * .04,
            left: size.width * .04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.label,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * .2,
            left: size.width * .05,
            child: Column(
              children: [
                CustomIconText(
                  icon: Icons.message_outlined,
                  text: '3',
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                CustomIconText(
                  icon: Icons.heart_broken_rounded,
                  text: '579',
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                CustomIconText(
                  icon: Icons.lock_clock_outlined,
                  text: '18',
                ),
              ],
            ),
          ),
          Positioned(
            left: size.width * .05,
            right: size.width * .05,
            bottom: size.height * .05,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Milla Jovovich',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width * .25,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20.0)),
                        alignment: Alignment.bottomRight,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                          Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            color: Colors.white,
                          ),
                        ]),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

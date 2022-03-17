import 'package:flutter/material.dart';
import 'package:shop/Elements/button.dart';
import 'package:shop/Elements/imgScr.dart';
import 'package:shop/common/addressShow.dart';
import 'package:shop/common/dialogBoxS.dart';
import 'package:shop/utils/style.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, i) {
            return Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: offWhiteColor,
                    border: Border.all(
                      color: borderColor,
                    )
                    // border: Border(
                    //     bottom: BorderSide(
                    //         width: 1.0,
                    //         color: Color.fromARGB(255, 221, 214, 214)))
                    ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#Order Id: 8888888',
                        style: labelTextStyle,
                      ),
                      Divider(),
                      TrackingProdContent()
                    ]));
          }),
    );
  }
}

class TrackingProdContent extends StatefulWidget {
  TrackingProdContent({Key? key}) : super(key: key);

  @override
  State<TrackingProdContent> createState() => _TrackingProdContentState();
}

class _TrackingProdContentState extends State<TrackingProdContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipped',
            style: labelTextStyle,
          ),

          TrackDetContent(
            value: .25,
          ),

          // ! Product Deatils
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Pics(
                    src: 'assets/images/indianGod.png',
                    width: 80,
                    height: 50,
                  ),
                  BasicProdDetail(
                    cartBtn: false,
                    mrpTxt: false,
                  ),
                ],
              ),
              InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    alignment: Alignment.topRight,
                    child: Txt(
                      t: 'Cancel',
                      color: redColor,
                    ),
                  ))
            ],
          ),
          Divider(),
          // !  Button For View More
          Center(
            child: Btn(
              margin: EdgeInsets.only(bottom: 5),
              width: 120,
              btnName: 'view more',
              txtColor: txtWhiteColor,
              color: coffeColor,
              height: 30,
              onTap: () async {
                await showDialog(
                  context: context,
                  // barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertBox(
                      title: 'Order Details',
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PriceList(
                            heading: 'Price',
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

// ! Traicking page
class TrackDetContent extends StatelessWidget {
  final double? value;
  final int? trackId;
  final String? t;
  final dynamic onTap;

  const TrackDetContent(
      {Key? key, this.onTap, this.value, this.t, this.trackId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Shipped',
          style: labelTextStyle,
        ),
        Column(
          children: [
            Txt(
              t: t ?? '',
              color: txtWhiteColor,
            ),
            Container(
              width: 90,
              child: LinearProgressIndicator(
                color: offgreenColor,
                backgroundColor: offWhiteColor,
                // valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
                value: value,
              ),
            ),
            Row(
              children: [
                Txt(
                  t: 'Delivery \n Tracking Id ${trackId}',
                  color: txtWhiteColor,
                  fontSize: 13,
                ),
                InkWell(
                  onTap: onTap,
                  child: Txt(
                    t: 'TrackOrder',
                    color: blackColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

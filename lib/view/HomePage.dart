import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:task/Controller/homescreen_controller.dart';
import 'package:task/Model/ProductModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductController controller = Get.put(ProductController());
    int pageindex = 0;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(17.h),
        child: FutureBuilder<ShopDetails>(
          future: controller.productapi(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            ShopDetails value = snapshot.data!;
            return appbars(
              address: value.data[0].shops[0].shop.googleAddress,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  FutureBuilder<ShopDetails>(
                    future: controller.productapi(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      ShopDetails value = snapshot.data!;
                      return defaultMarket(
                          market:
                              "Default market in ${value.data[0].markets.name}");
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  FutureBuilder<ShopDetails>(
                      future: controller.productapi(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        ShopDetails valuess = snapshot.data!;
                        return GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: valuess.data.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              // mainAxisSpacing: ,
                              crossAxisSpacing: 5.w,
                              mainAxisSpacing: 5.h,
                              childAspectRatio: 150 / 250,
                            ),
                            itemBuilder: (BuildContext context, index) {
                              return product(
                                image:
                                    valuess.data[index].shops[index].shop.image,
                                title: valuess
                                    .data[index].shops[index].shop.shopName,
                                // catg: valuess.data[index].shops[index].categories[index].,
                                near: valuess
                                    .data[index].shops[index].shop.street,
                                offer:
                                    "${valuess.data[index].shops[index].offers} Offers",
                              );
                            });
                      })
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 8.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon:  Icon(
                Icons.home_outlined,
                color: Colors.purple,
                size: 9.w,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon:  Icon(
                Icons.search,
                color: Colors.grey,
                size: 7.w,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon:  Icon(
                Icons.shopping_cart_rounded,
                color: Colors.purple,
                size: 9.w,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon:  Icon(
                Icons.notifications_none,
                color: Colors.grey,
                size: 7.w,
              ),
            ),
             IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon:  Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 7.w,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

class appbars extends StatelessWidget {
  final String address;
  const appbars({
    required this.address,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.purple),
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.crop_free,
        size: 8.w,
      ),
      title: Container(
        height: 7.h,
        width: 7.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C560BAQHNaGabFjFIMg/company-logo_200_200/0/1612713923020?e=2147483647&v=beta&t=4r-BLtSCMtQA4oCMHtXRqVil8yNel428jYRI0QDYsIg"))),
      ),
      centerTitle: true,
      actions: [
        Row(
          children: [
            Icon(
              Icons.favorite_outline,
              size: 8.w,
            ),
            SizedBox(
              width: 2.w,
            ),
            Icon(
              Icons.shopping_bag,
              size: 8.w,
            ),
          ],
        )
      ],
      flexibleSpace: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Icon(
              Icons.location_on,
              size: 7.w,
              color: Colors.purple,
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Home",
                style: TextStyle(
                    color: Color.fromARGB(255, 84, 84, 84),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 45,
                  height: 6.h,
                  child: Text(
                    address,
                    style: TextStyle(fontSize: 13.sp, color: Colors.black54),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class product extends StatelessWidget {
  final String image;
  final String title;
  final String near;
  final String offer;

  const product({
    required this.image,
    required this.offer,
    required this.title,
    required this.near,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(blurRadius: 1, color: Color.fromARGB(255, 137, 137, 137))
        ],
        borderRadius: BorderRadius.circular(5.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 15.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.all(3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2.h,
                      width: 15.w,
                      color: Colors.yellow,
                      child: Center(child: Text(offer)),
                    ),
                    Container(
                      height: 5.5.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(2.w)),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Text(
                            "4.0",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w900),
            ),
            Text(
              "Appliances & Electronics",
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              near,
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 3.h,
              width: 23.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  borderRadius: BorderRadius.circular(2.w)),
              child: Center(
                  child: Text(
                "CLOSED",
                style: TextStyle(color: Colors.green),
              )),
            )
          ],
        ),
      ),
    );
  }
}

class defaultMarket extends StatelessWidget {
  final String market;
  const defaultMarket({
    required this.market,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          market,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
        ),
        Text(
          "See all",
          style: TextStyle(fontSize: 13.sp),
        )
      ],
    );
  }
}

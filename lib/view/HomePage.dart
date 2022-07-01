import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:task/Controller/homescreen_controller.dart';
import 'package:task/Model/ProductModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(17.h),
        child: appbars(),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Column(
                children: [
                  const defaultMarket(),
                  SizedBox(
                    height: 2.h,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                      itemCount: 2,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                                    // mainAxisSpacing: ,
                                    crossAxisSpacing: 5.w,
                                    childAspectRatio: 150 / 250,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return product();
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class appbars extends StatelessWidget {
  const appbars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        ProductController controller = Get.put(ProductController());

    return AppBar(
      iconTheme: IconThemeData(color: Colors.purple),
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.crop_free,
        size: 8.w,
      ),
      title: Icon(
        Icons.favorite,
        size: 8.w,
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
                child: FutureBuilder<ShopDetails>(
                  future: controller.productapi(),

                  builder: (context,snapshot) {
                    return 
                Text(
                      "Nemmara, palakkad, kerala, india, kochi, kakkanad, jdksfjskjf ",
                      style: TextStyle(fontSize: 13.sp,color: Colors.black54),
                    );
                  }
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class product extends StatelessWidget {
  const product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.h,
      width: 45.w,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(blurRadius: 1, color: Color.fromARGB(255, 216, 216, 216))
        ],
        borderRadius: BorderRadius.circular(5.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20.h,
              width: 80.w,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg"),
                      fit: BoxFit.cover)),
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
                      child: Center(child: Text("0 Offer")),
                    ),
                    Container(
                      height: 6.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(2.w)),
                      child: Column(
                        children: [Icon(Icons.star), Text("4.0")],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              "Harry shop",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w900),
            ),
            Text(
              "Furniture",
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "Near gg",
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
              child: Center(child: Text("CLOSED")),
            )
          ],
        ),
      ),
    );
  }
}

class defaultMarket extends StatelessWidget {
  const defaultMarket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Default market in ATTA MARKET",
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

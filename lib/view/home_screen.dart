import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza/screen/provider/home_provider.dart';
import 'package:pizza/screen/provider/second_provider.dart';
import 'package:provider/provider.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homeprovider? homeprovider;

  @override
  Widget build(BuildContext context) {
    homeprovider = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ALL In One App",
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    height: 100,
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 1),
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Provider.of<SecondProvider>(context,listen: false).initURLmethod(index);
                            Navigator.pushNamed(context, 'second');
                          },
                          child: logoBoxUI(homeprovider!.logoImgList[index],homeprovider!.nameList[index])),
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                    )))
          ],
        ),
      ),
    );
  }

  Widget logoBoxUI(String imgPath,String name) {
    return Column(
      children: [
        Container(
          height:100,
          width: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            //border: Border.all(color: Colors.blue.shade700,width: 2)
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset("${imgPath}",fit: BoxFit.cover)),
        ),
        Text("${name}",
          style: GoogleFonts.rubik(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1),),
      ],
    );
  }
}
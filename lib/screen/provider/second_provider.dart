
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondProvider extends ChangeNotifier
{
  List onlinelinkList = [
    "https://www.amazon.com/",
    "https://www.flipkart.com/",
    "https://www.pizzahut.co.in/",
    "https://lapinozpizza.in/",
    "https://www.meesho.com/",
    "https://www.jio.com/",
  ];

  WebViewController? webViewController;

  void initURLmethod(int i)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${onlinelinkList[i]}"));
  }
}
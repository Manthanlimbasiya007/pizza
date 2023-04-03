
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondProvider extends ChangeNotifier
{
  List onlinelinkList = [
    "https://www.wikipedia.org/",
    "https://www.w3schools.com/",
    "https://www.javatpoint.com/",
    "https://www.tutorialspoint.com/index.htm",
  ];

  WebViewController? webViewController;

  void initURLmethod(int i)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${onlinelinkList[i]}"));
  }
}
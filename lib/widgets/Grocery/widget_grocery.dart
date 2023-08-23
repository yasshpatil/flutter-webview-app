// ignore_for_file: depend_on_referenced_packages
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

void main() {
  runApp(const MaterialApp(home: ScreenGrocery()));
}

class ScreenGrocery extends StatefulWidget {
  const ScreenGrocery({Key? key}) : super(key: key);

  @override
  State<ScreenGrocery> createState() => _ScreenGroceryState();
}

class _ScreenGroceryState extends State<ScreenGrocery> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith(
                'https://www.flipkart.com/grocery-supermart-store?marketplace=GROCERY&cmpid=grocery_perf_search_new&cmpid=grocery_perf_search_new')) {
              log('Blocking navigation to ${request.url}');
              return NavigationDecision.prevent;
            }
            log('Allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
          onUrlChange: (UrlChange change) {
            log('URL changed to ${change.url}');
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        
      )
      ..loadRequest(Uri.parse(
          'https://www.flipkart.com/grocery-supermart-store?marketplace=GROCERY&cmpid=grocery_perf_search_new&cmpid=grocery_perf_search_new'));

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #enddocregion platform_features

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    final double padding = MediaQuery.of(context).size.height * 0.043;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: padding),
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}

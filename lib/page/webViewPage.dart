import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatelessWidget {

  WebViewPage({@required this.link});

  final link;

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: link,
      withZoom: true,
    );
  }
}

import 'package:fluo/theme.dart';
import 'package:fluo/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

class Webview extends StatelessWidget {
  const Webview({
    super.key,
    required this.title,
    required this.url,
    required this.onClosePressed,
  });

  final String title;
  final String url;
  final Function() onClosePressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.read<FluoTheme>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.modalTitleTextStyle,
              ),
              RoundButton(
                onPressed: onClosePressed,
                iconData: Icons.close_rounded,
              ),
            ],
          ),
        ),
        Expanded(
          child: InAppWebView(
            initialSettings: InAppWebViewSettings(
              transparentBackground: true,
            ),
            initialUrlRequest: URLRequest(
              url: WebUri(url),
            ),
          ),
        ),
      ],
    );
  }
}

void showWebviewDialog({
  required BuildContext context,
  required FluoTheme theme,
  required String title,
  required String url,
}) {
  showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    enableDrag: false,
    builder: (context) {
      return Provider(
        create: (_) => theme,
        child: Webview(
          title: title,
          url: url,
          onClosePressed: () => Navigator.of(context).pop(),
        ),
      );
    },
  );
}

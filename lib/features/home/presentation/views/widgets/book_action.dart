import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../core/model/book_model.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                final uri = Uri.tryParse(bookModel.volumeInfo.previewLink!);
                if (uri != null &&
                    uri.isAbsolute &&
                    (uri.scheme == 'http' || uri.scheme == 'https')) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WebPage(url: bookModel.volumeInfo.previewLink!),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'cannot launch ${bookModel.volumeInfo.previewLink!}'),
                    ),
                  );
                }
              },
              text: getText(bookModel),
              textColor: Colors.white,
              fontSize: 16,
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WebPage extends StatelessWidget {
  final String url;

  const WebPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Website'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Available';
  } else {
    return 'Preview';
  }
}

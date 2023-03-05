import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:html/dom.dart' as dom;
import 'package:webview_flutter/webview_flutter.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key, required this.data});
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    //DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(data['updated']);
    //var inputDate = DateTime.parse(parseDate.toString());
    //var outputDate = DateFormat('MM/dd/yyyy hh:mm a').format(inputDate);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Blog'),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: TextDirection.ltr,
                      children: <Widget>[
                        const SizedBox(height: 10),
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "http:${data['author']['image']['url']}"),
                            ),
                            const SizedBox(width: 10),
                            Text("${data['author']['displayName']}",
                                style: const TextStyle(
                                  // color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(data['title'],
                            style: const TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w900)),
                        const SizedBox(height: 10),
                        Html(
                          data: """
<div>${data['content']}</div>
""",
                          style: {'div': Style(direction: TextDirection.rtl)},
                        ),
                      ],
                    ))
              ],
            )));
  }

  _launchURL(url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}


/*
Html(
                        data: """
                <div dir='ltr'> islam megdoude xvmlxkvdfsfl</div>
                """,
                        style: {
                          'div': Style(
                            direction: TextDirection.ltr
                          ),
                        },
                        onLinkTap: (String? url,
                            RenderContext context,
                            Map<String, String> attributes,
                            dom.Element? element) async {
                          await _launchURL(url);
                        }),
*/
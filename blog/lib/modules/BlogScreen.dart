import 'package:flutter/material.dart';

import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:html/dom.dart' as dom;
import 'package:webview_flutter/webview_flutter.dart';
/*
class BlogScreen extends StatelessWidget {
  final _unfocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color(0xFF181718),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                        child: Text(
                          'مرحبا بكم في المدونه',
                          textAlign: TextAlign.center,
                          style:
                          TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFF9F6FA),
                            fontSize: 28,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(10, 15, 10, 10),
                        child: Text(
                          'مرحبا بكم في مدونه نادي الالكترونيك اتمنى لكم الاستمتاع بوقتكم في مدونتنا',
                          textAlign: TextAlign.center,
                          style:
                          TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF7D7C7D),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                  child: Container(
                    width: 403.7,
                    height: 337,
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E1),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: Image.asset(
                                'assets/images/Capture_dcran_2023-02-15_205528.png',
                                width: double.infinity,
                                height: 136.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              'اللغة العربية بين الفصحى والعامية',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              'اللّغة هي ألفاظ يعبّر بها كل قوم عن أغراضهم، واللّغة العربية بشكل خاص تحمل تميّزا بين اللّغات بصفتها المُعبّر الوحيد للأمة العربية، مما أكسبها نوعا من الصّلابة في مواجهة التّغيرات الحادثة عليها ولكنّها علـى هذا لم تسلم -كغيرها- من حالة الازدواج اللّغوي وتحوّل النطق العامي بها عن كتابتها بالفصحى، فكيف استطاعت اللّغة العاميّة الانتشار على حساب اللّغة العربية الفصحى؟ وللأيّ مدى كان تأثير العاميّة على الفصحى؟',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: Text(
                                    'مقدود صلاح',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/photo_2022-10-08_17-38-42.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                  child: Container(
                    width: 403.7,
                    height: 317.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E1),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: Image.asset(
                                'assets/images/Capture_dcran_2023-02-15_210350.png',
                                width: double.infinity,
                                height: 136.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              'ما هي الحوسبة السحابية؟',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              ' يمكننا اليوم أن نتحدث عن التطور الھائل في تكنولوجیا تواكب \"زمن السرعة\" بشكل جيد من حيث الأداء والسرعة وتحسين الإنتاج، بیانات ضخمة یمكن نقلھا وحفظھا بنقرة زر وخدمات توفر تخزین بیانات بشكل آمن، هذه التقنیة ساھمت في تحويل الموارد إلى خدمات قابلة للتطوير عند الطلب، فماذا نعرف عن الحوسبة السحابية؟ وما الخدمات التي تقدمھا؟',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: Text(
                                    'فرحات زيد',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/photo_2022-10-08_17-38-42.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/


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

import 'package:blog/modules/AboutUS.dart';
import 'package:flutter/material.dart';


class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  _HistoryWidgetState createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {


  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  List<String> titles = [
    'الصالون الوطني للابتكارات 2001',
    'أكاديمية شركة هواوي للشهادات 2021 ',
    'القافلة الوطنية شاب فكرة 2022',
    'محاضرة ريادة الأعمال 2022',
    'الملتقى الدولي للتكنولوجيا المتقدمة و الالكترونيك 2022',
    'أكاديمية شركة هواوي للشهادات 2022',
  ];

  List<String> imgsUrl = [
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
  ];

  List<String> contents = [
    'لطبعة الحادية عشر للصالون الوطني للابتكار المنظم من طرف وزارة الصناعة و الذي أقيم في ديسمبر من سنة 2021 بجامعة محمد بوضياف المسيلة.',
    'محاضرة قدمتها سفيرة شركة هواوي الصينية بالجزائر لفائدة طلبة جامعة محمد بوضياف المسيلة.',
    'القافلة التي جالت العديد من الولايات لاختيار أحسن الأفكار في مجال المؤسسات الناشئة والتي حطت رحالها بولاية المسيلة خلال شهر مارس من سنة 2022',
    'نظم الحدث كاملا من طرف نادي الإلكترونيك حيث قدمت فيه العديد من المحاضرات في مجال ريادة الأعمال و المؤسسات الناشئة حيث حضر الحدث العديد من النوادي العلمية من كافة جامعات الوطن.',
    'الملتقى الدولي للتكنولوجيا المتقدمة و الإلكترونيك و الذي احتضنته جامعة المسيلة و كان للنادي الشرف لتنظيمه و الذي أقيم خلال شهر نوفمبر من سنة 2022',
    'و التي أقيمت خلال شهر ديسمبر من سنة 2022 قدمت المحاضرة سفيرة شركة هواوي بالجزائر حول المسابقة المقدمة من طرف الشركة لفائدة الطلبة.',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFD3D0D4),

      body: SafeArea(
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
                    height: 171.9,
                    decoration: const BoxDecoration(
                      color: Color(0xFF181718),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Text(
                            'انجازات النادي',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF008080),
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 15, 10, 10),
                          child: Text(
                            'ينشط النادي العديد من الدورات و النشاطات وتنظيم المنتديات والفعاليات الوطنية وحتى الدولية',
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
                  ...List.generate(
                    titles.length,
                          (index) => HistoryCard(title: titles[index],imgUrl: imgsUrl[index],content: contents[index],),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  HistoryCard({Key? key,
    required this.title,
    required this.imgUrl,
    required this.content,}) : super(key: key);
  String title = '' ;
  String imgUrl = '';
  String content = '' ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
      child: Container(
        width: 403.7,
        height: 282.3,
        decoration: BoxDecoration(
          color: const Color(0xFFE1E1E1),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                    0, 0, 5, 0),
                child: Text(
                  title,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Image.network(
                  imgUrl,
                  width: 350.7,
                  height: 155.5,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                child: Text(
                  content,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HistoryCardModel {
  String title = '' ;
  String imgUrl = '';
  String content = '' ;
  HistoryCardModel({
    required this.title,
    required this.imgUrl,
    required this.content,
});
}
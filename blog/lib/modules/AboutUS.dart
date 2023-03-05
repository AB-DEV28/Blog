
import 'package:flutter/material.dart';



class AboutUSWidget extends StatefulWidget {
  const AboutUSWidget({Key? key}) : super(key: key);

  @override
  _AboutUSWidgetState createState() => _AboutUSWidgetState();
}

class _AboutUSWidgetState extends State<AboutUSWidget> {


  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  List<String> roles = [
    'الاستاذ المشرف على النادي',
    'رئيس النادي',
    'النائب الرئيس الأول',
    ' النائب الرئيس الثاني',
    ' مسؤول العلاقات الخارجية',
    ' مسؤول قسم التنظيم',
    'الكاتب العام',
    'مسؤول قسم الاعلام',
    'قسم ادارة المشاريع',
  ];
  List<String> imgsUrls = [
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
    'https://picsum.photos/seed/250/600',
  ];
  List<String> names = [
    'خنوف صالح',
    'فرحات زيد',
    ' بركة رياض',
    ' عبد الله عبد العزيز المطيع',
    'حجاب عباد',
    'بلحاج عبد القادر',
    'نعيجي علاء',
    'طرشي نبيل',
    'لعمري اسراء',
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
                  // ta3rif nadi
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                    child: Container(
                      width: double.infinity,
                      height: 450,
                      decoration: BoxDecoration(
                        color: const Color(0xFF181718),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'التعريف بالنادي',
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF008080),
                                fontSize: 32,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                            child: Text(
                              'نادي علمي ثقافي تأسس خلال الموسم الدراسي 2018-2019 من قبل مجموعة من الطلاب الذين يجمعهم شغف العلم و تنمية المهارات و هو نادي تابع لكلية التكنولوجيا بالقطب الجامعي ، بعد 4 سنوات أصبح النادي أحد أكبر نوادي جامعة محمد بوضياف المسيلة وذلك من خلال تزايد عدد أعضائه ، الذي وصل إلى أكثر من 600 عضو ، نظرا لشعبيته الكبيرة والتي تجاوزت حتى صدى الولاية ليعرف وطنيا ، وحصل على العديد من الجوائز في مختلف التظاهرات والمسابقات العلمية على المستوى المحلي والوطني . على المستوى المحلي ، ينشط النادي العديد من الدورات و النشاطات وتنظيم المنتديات والفعاليات الوطنية وحتى الدولية ويتابع النادي اكثر من 6000 شخص على منصة فيسبوك و2000 شخص على منصة الإنستغرام',
                              maxLines: 16,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 70.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: Text(
                              'تقديم النادي',
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF008080),
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ta9dim nadi
                  ...List.generate(9, (index) => CoreMemberCard(role: roles[index] ,imgUrl: imgsUrls[index],name: names[index] ,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoreMemberCard extends StatelessWidget {
  CoreMemberCard({Key? key,
    required this.role,
    required this.imgUrl,
    required this.name,}) : super(key: key);
  String role = '' ;
  String imgUrl = '';
  String name = '' ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
      child: Container(
        width: 403.7,
        height: 256.8,
        decoration: BoxDecoration(
          color: const Color(0xFF181718),
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, 0, 5, 0),
                    child: Text(
                      ' الاستاذ المشرف على النادي  ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0, 0, 0, 5),
                      child: Container(
                        width: 150,
                        height: 150,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/250/600',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, 5, 0, 0),
                    child: Text(
                      'خنوف صالح',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF008080),
                        fontSize: 26,
                      ),
                    ),
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

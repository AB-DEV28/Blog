import 'package:blog/layout/cubit/cubit.dart';
import 'package:blog/layout/cubit/states.dart';
import 'package:blog/modules/AboutUS.dart';
import 'package:blog/modules/BlogScreen.dart';
import 'package:blog/modules/History.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {


  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state){},
        builder: (context, state){
          var myIndex = HomeCubit.get(context).currentIndex;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFD3D0D4),
            drawer: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Drawer(
                elevation: 16,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // elec
                      Container(
                        width: double.infinity,
                        height: 254,
                        decoration: BoxDecoration(
                          color: Color(0xFF151515),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Elec',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF008080),
                                  fontSize: 32,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  'Club',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFF9F6FA),
                                    fontSize: 32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // pages
                      Container(
                        width: double.infinity,
                        height: 672.1,
                        decoration: BoxDecoration(
                          color: Color(0xFF151515),
                        ),
                        child: ListView.builder(
                               itemBuilder: (context, index) => defaultList(
                                 HomeCubit.get(context).myTitles[index],
                                 index,
                                 context,
                               ),
                               itemCount: HomeCubit.get(context).pages.length,
                             ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: Color(0xFF181718),
              automaticallyImplyLeading: false,
              leading: InkWell(
                onTap: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Color(0xFFF9F6FA),
                  size: 14,
                ),
              ),
              title: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Elec',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Color(0xFF008080),
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Club',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Color(0xFFF9F6FA),
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        child: Text(
                          'Let\'s Talk',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF008080)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(130, 40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 3,
            ),
            body: HomeCubit.get(context).pages[myIndex],
          );
        },

    );
  }
}




Widget defaultList(title, index, context) => ListTile(
  title: Text(
    '$title',
    style: TextStyle(
      color: Colors.white
    ),
  ),
  trailing: Icon(
    Icons.arrow_forward_ios,
    size: 16.0,
  ),
  onTap: () {
    HomeCubit.get(context).changeIndex(index);
    Navigator.pop(context);
  },
  selected: false,
);

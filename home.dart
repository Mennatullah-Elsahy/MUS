import '../about_us/about_us_widget.dart';
import '../academic/academic_widget.dart';
import '../book_details/book_details_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../my_exchanges/my_exchanges_widget.dart';
import '../my_profile/my_profile_widget.dart';
import '../new_book/new_book_widget.dart';
import '../offers/offers_widget.dart';
import '../recommendation/recommendation_widget.dart';
import '../search/search_widget.dart';
import '../start/start_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 5),
                child: Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/999/600',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 30),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '2ghvszl9' /* User Name */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Libre Baskerville',
                        color: Colors.black,
                        fontSize: 25,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.35),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6, 0, 11, 3),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyProfileWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.location_history,
                        color: Colors.black,
                        size: 40,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'p6ay42zk' /* Profile */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Libre Baskerville',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 26,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(8, 14, 0, 14),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 11, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OffersWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.credit_card,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '6ky0406a' /* My Plan */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Libre Baskerville',
                            color: Color(0xFF010101),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8, 14, 0, 14),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 11, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyExchangesWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.swap_horiz,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '1en44ivb' /* Exchanges */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Libre Baskerville',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8, 14, 0, 14),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 11, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecommendationWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.recommend,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'l85bsq4t' /* Recommendations */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Libre Baskerville',
                            color: Colors.black,
                            fontSize: 19,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8, 14, 0, 14),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 11, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUsWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.people_alt_rounded,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '5gd6s4p5' /* About Us */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Libre Baskerville',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8, 14, 0, 14),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 11, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '647ibwiq' /* Log Out */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Libre Baskerville',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                    tileColor: Colors.black,
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8, 14, 0, 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 6,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 12,
                        height: 40,
                        color: Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 8, 0, 8),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'oxnr33fu' /* Recently Given Books */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Libre Baskerville',
                              color: Colors.black,
                              fontSize: 22,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookDetailsWidget(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/photo_2022-10-19_20-34-48.jpg',
                            width: 120,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/photo_2022-10-19_20-42-53.jpg',
                          width: 120,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/photo_2022-10-19_20-43-00.jpg',
                          width: 120,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/photo_2022-10-19_20-43-14.jpg',
                          width: 120,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/photo_2022-10-19_20-43-22.jpg',
                          width: 120,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/photo_2022-10-19_20-43-27.jpg',
                          width: 120,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 12,
                        height: 40,
                        color: Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 8, 0, 8),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '8zbq2vij' /* Book Category */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Libre Baskerville',
                              color: Colors.black,
                              fontSize: 22,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xFF6839EF),
                          size: 0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AcademicWidget(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/A1.jpg',
                            width: 180,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/A2.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/A3.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/B1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/B2.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/C3.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/C2.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/C4.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/C1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/E1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/H3.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/photo_2022-10-19_21-58-16.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/H2.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/H4.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/H5.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/K1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/L1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/M1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/P1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/R1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/S1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/S3.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/S2.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/T1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 16, 0),
                        child: Image.asset(
                          'assets/images/Y1.jpg',
                          width: 180,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'ikf3ixpu' /* Exchange Your Books */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Libre Baskerville',
                        color: Color(0xFF2D3436),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewBookWidget(),
                              ),
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'k47z38hv' /* Giving */,
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.levelUpAlt,
                            size: 36,
                          ),
                          options: FFButtonOptions(
                            width: 190,
                            height: 70,
                            color: Colors.black,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Libre Baskerville',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-0.55, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchWidget(),
                              ),
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'mygsuxty' /* Taking */,
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.levelDownAlt,
                            size: 36,
                          ),
                          options: FFButtonOptions(
                            width: 190,
                            height: 70,
                            color: Colors.black,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Libre Baskerville',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600,
                                    ),
                            borderSide: BorderSide(
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

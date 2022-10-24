import '../create_account/create_account_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartWidget extends StatefulWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(-0.75, -0.8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.95, -0.65),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 12),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'dt52ryw4' /* MINE IS YOURS */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Libre Baskerville',
                            color: Color(0xFF625966),
                            fontSize: 19,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.05, -0.8),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '6z1vhw9j' /* M U S */,
                    ),
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Libre Baskerville',
                          color: Color(0xFF2D3436),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Divider(
                  height: 6,
                  thickness: 1,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.black,
                ),
                Align(
                  alignment: AlignmentDirectional(-0.3, -0.25),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                    child: Image.asset(
                      'assets/images/photo_2022-10-21_01-06-38.jpg',
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.95, 0.45),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'pcgri6is' /* Take a Journey 
to your book */
                        ,
                      ),
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF625966),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.75),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 22, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: CreateAccountWidget(),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        '4mbnu7cd' /* Get Started */,
                      ),
                      options: FFButtonOptions(
                        width: 300,
                        height: 57,
                        color: Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

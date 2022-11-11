import 'package:flutter/material.dart';
import 'package:mus_app/core/flutter_flow/flutter_flow.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'MINE IS YOURS' /* MINE IS YOURS */,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Libre Baskerville',
                        color: const Color(0xFF625966),
                        fontSize: 19,
                      ),
                ),
              ),
            ),
            Text(
              'M U S' /* M U S */,
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Libre Baskerville',
                    color: const Color(0xFF2D3436),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Divider(
              height: 6,
              thickness: 1,
              indent: 18,
              endIndent: 18,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
              child: Image.asset(
                'assets/images/photo_2022-10-24_10-06-09.jpg',
                width: 400,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              child: Text(
                'Take a Journey to your book',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Poppins',
                      color: const Color(0xFF625966),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 22, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/signup");
                },
                text: 'Get Started' /* Get Started */,
                options: FFButtonOptions(
                  width: 300,
                  height: 57,
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 8,
                  ),
                  borderRadius: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

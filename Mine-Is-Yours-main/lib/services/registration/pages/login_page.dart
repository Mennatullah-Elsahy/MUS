import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:mus_app/components/animated_widgets.dart';
import 'package:mus_app/helpers/app_colors.dart';
import 'package:mus_app/helpers/app_text_styles.dart';
import 'package:mus_app/helpers/media_query_helper.dart';
import 'package:mus_app/routes/routes.dart';
import 'package:mus_app/services/new_post/widgets/custom_btn.dart';
import 'package:mus_app/services/new_post/widgets/custom_text_field.dart';

import '../../../core/flutter_flow/flutter_flow_theme.dart';
import '../../../core/flutter_flow/flutter_flow_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQueryHelper.width,
          height: MediaQueryHelper.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4, 50, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.15, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: '',
                            options: FFButtonOptions(
                                width: 12,
                                height: 75,
                                color: Colors.black,
                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Libre Baskerville',
                                      color: Colors.white,
                                    ),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 16),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: Text(
                            'Welcome Back.. ',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Libre Baskerville',
                                  color: const Color(0xFF2D3436),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                      ),
                      Lottie.asset(
                        'assets/lottie_animations/lf30_editor_k8ghji64.json',
                        width: 150,
                        height: 130,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Expanded(
                  child: ListAnimator(
                    data: [
                      CustomTextField(key: Key("email"),hint: "Email", onChange: (value) {}),
                      CustomTextField(key: Key("password"),hint: "Password", onChange: (value) {}),
                      const SizedBox(height: 4),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "Forget Password?",
                            style: AppTextStyles.w800.copyWith(fontSize: 12, color: AppColor.HOME_BAR_COLOR),
                          ))
                    ],
                  ),
                ),
                CustomBtn(key: Key("btn"),text: "Login", onTap: () {RouterGenerator.push(Routes.home);}, fontSize: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Text("or", style: AppTextStyles.w400.copyWith(fontSize: 24, color: AppColor.SUB_HEADER)),
                      SizedBox(width: 8),
                      const Expanded(
                          child: Divider(
                        height: 0,
                        color: AppColor.SUB_HEADER,
                      )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Dont have an account? ", style: AppTextStyles.w400.copyWith(fontSize: 14, color: AppColor.SUB_HEADER)),
                    Text("Register", style: AppTextStyles.w600.copyWith(fontSize: 18, color: Colors.black)),
                  ],
                ),
                SizedBox(height: 24,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

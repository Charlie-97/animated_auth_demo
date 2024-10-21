import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:state_extended/state_extended.dart';

import '../../common/theming/app_textstyles.dart';
import '../../common/widgets/app_button.dart';
import 'first_page_controller.dart';

class FirstPageView extends StatefulWidget {
  static const String routeName = '/AuthView';
  const FirstPageView({super.key});

  @override
  State createState() => _FirstPageViewState();
}

class _FirstPageViewState extends AppStateX<FirstPageView>
    with SingleTickerProviderStateMixin {
  factory _FirstPageViewState() => _this ??= _FirstPageViewState._();

  _FirstPageViewState._() : super(controller: FirstPageController()) {
    con = controller as FirstPageController;
  }

  static _FirstPageViewState? _this;
  late FirstPageController con;

  bool isAnimated = false;

  @override
  void initState() {
    con.initializeAnimation(this);

    super.initState();
  }

  @override
  void dispose() {
    con.model.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: _body(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        Center(
          child: AnimatedBuilder(
            animation: con.model.controller,
            builder: (context, child) {
              return SlideTransition(
                position: con.model.firstWidgetOffsetAnimation,
                child: AnimatedBuilder(
                  animation: con.model.firstWidgetUpwardAnimation,
                  builder: (context, child) {
                    return SlideTransition(
                      position: con.model.firstWidgetUpwardAnimation,
                      child: Image.asset(
                        'assets/man_illustration.png',
                        fit: BoxFit.scaleDown,
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        // if (con.model.controller.value > 0.5)
        AnimatedBuilder(
            animation: con.model.controller,
            builder: (context, child) {
              return SlideTransition(
                position: con.model.secondWidgetOffsetAnimation,
                child: Container(
                  padding: const EdgeInsets.only(
                    right: 12,
                    left: 12,
                  ),
                  child: Center(
                    child: _rightWidget(),
                  ),
                ),
              );
            }),
      ],
    );
  }

  Widget _rightWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton.primary(
          text: const Text(
            'Register',
            style: AppTextstyles.primaryButton,
          ),
        ),
        const Gap(24),
        AppButton.secondary(
          text: Text(
            'Login',
            style: AppTextstyles.secondaryButton,
          ),
        ),
      ],
    );
  }
}

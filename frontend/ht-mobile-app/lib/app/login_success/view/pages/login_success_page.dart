import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ht/app/login_success/view/providers/login_success_provider.dart';
import 'package:ht/base/presentation/pages/p_stateless.dart';
import 'package:ht/config/app_sizes.dart';
import 'package:ht/utils/extensions/context_extension.dart';

class LoginSuccessPage extends PageStateless<LoginSuccessProvider> {
  const LoginSuccessPage({super.key});

  @override
  Widget buildPage(
    BuildContext context,
    LoginSuccessProvider provider,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Logged In',
                style: context.textTheme.titleLarge,
              ),
              AppSizes.mediumHeightDimens.verticalSpace,
              ElevatedButton(
                onPressed: () => apiCallSafety(
                  () => provider.logout(),
                ).then((value) => context.navigator.pop()),
                child: const Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

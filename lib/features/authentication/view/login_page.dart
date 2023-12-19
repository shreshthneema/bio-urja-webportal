import 'dart:ui';

import 'package:flutter/material.dart';
import '../../widgets/index.dart';
import '../../../utils/index.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: context.textTheme.titleSmall
              ?.apply(color: context.colorScheme.primary),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              width: 4,
              color: context.colorScheme.secondary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: context.colorScheme.primary,
              width: 2,
            ),
          ),
          hintStyle: context.textTheme.bodyMedium,
          labelStyle: context.textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Focus.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: context.colorScheme.tertiary,
          body: Container(
            width: context.screenWidth,
            height: context.screenHeight,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.6),
                          Colors.white.withOpacity(0.3),
                        ],
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                    width: 350,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          AppAssets.companyLogo,
                          color: context.colorScheme.primary,
                          // color: Color(0xFFa8cf38),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        NormalTextField(
                          labelText: 'Username',
                          onSaved: (val) {},
                          suffixIcon: Icons.person_outline_outlined,
                          defaultTextStyle: context.textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        PasswordTextField(
                          labelText: 'Password',
                          onSaved: (val) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          title: 'Login',
                          onTap: () {},
                          expand: true,
                          paddingVertical: context.isMobileScreen ? 12 : 18,
                          defaultTextStyle: context.textTheme.titleLarge
                              ?.apply(color: context.colorScheme.onPrimary),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

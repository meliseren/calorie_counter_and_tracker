import 'package:calorie_counter_and_tracker/components/screen/main_button.dart';
import 'package:calorie_counter_and_tracker/infrastructure/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainScreenBackGroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 93.0.sp),
              Text(
                'Logo',
                style: kPoppins18_600,
              ),
              SizedBox(height: 70.0.sp),
              MainButton(
                title: 'Yeni bir kullanıcıyım',
              ),
              MainButton(
                backgroundColor: Colors.amber,
                title: 'Zaten bir hesabım var',
              ),
              Text(
                'Devam etmekle Şartlar ve Koşullar ve Gizlilik Politikasını kabul etmiş olursunuz.',
                style: kPoppins14_400,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

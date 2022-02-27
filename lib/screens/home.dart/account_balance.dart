import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:ui_challenge/widgets/custom_button.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({Key? key}) : super(key: key);
  static const clockIcon = 'assets/icons/clock.png';
  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: 330,
      height: 180,
      border: 1,
      linearGradient: LinearGradient(colors: [
        const Color(0xFF64A3DD).withOpacity(0.05),
        const Color(0xFF64A3DD).withOpacity(0.1),
      ]),
      blur: 19,
      borderGradient: LinearGradient(
        colors: [
          const Color(0xFF64A3DD).withOpacity(0.05),
          const Color(0xFF64A3DD).withOpacity(0.1),
        ],
      ),
      borderRadius: 16,
      // decoration: BoxDecoration(
      //   color: const Color(0xFF6D9CC8).withOpacity(0.05),
      //   borderRadius: BorderRadius.circular(16),
      // ),
      child: Stack(
        children: [
          Positioned(top: 24, left: 20, child: currentBalance()),
          Positioned(top: 66, left: 200, child: date()),
          Positioned(
            left: 20,
            top: 104,
            child: Row(
              children: [
                CustomButton(
                    height: 40,
                    width: 140,
                    title: 'Deposite',
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF Pro Display',
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                    onPressed: () {}),
                const SizedBox(
                  width: 15,
                ),
                CustomButton(
                    height: 40,
                    width: 140,
                    title: 'Withdraw',
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color(0xff3E495C),
                    ),
                    style: const TextStyle(
                        color: Color(0xff00BDFF),
                        fontFamily: 'SF Pro Display',
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget currentBalance() {
    return SizedBox(
      width: 135,
      height: 64,
      child: Stack(
        children: [
          const Positioned(
            bottom: 47,
            right: 29,
            child: Text(
              'Account Balance',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SF Pro Display',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: 21,
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: '\$7.95',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF Pro Display',
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: ' (USD)',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontFamily: 'SF Pro Display',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget date() {
    return SizedBox(
        height: 20,
        width: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.access_time_outlined,
              color: Colors.white,
              size: 14,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'June 22, 2021',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SF Pro Display',
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ));
  }
}

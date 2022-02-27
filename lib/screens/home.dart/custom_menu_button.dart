import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({Key? key, required this.icon, required this.title})
      : super(key: key);
  final Widget icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 60,
        height: 120,
        child: Column(
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF9FAFB).withOpacity(0.06),
              ),
              child: icon,
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: 55,
              height: 42,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontFamily: 'SF Pro Display',
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

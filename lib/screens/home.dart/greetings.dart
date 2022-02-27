import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  const Greetings({Key? key}) : super(key: key);
  static const searchIcon = 'assets/icons/search.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                'Narayan Joshi',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SF Pro Display',
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Hi, Welcome back!',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontFamily: 'SF Pro Display',
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff21283B),
              ),
              child: Image.asset(searchIcon),
            ),
          ),
        ],
      ),
    );
  }
}

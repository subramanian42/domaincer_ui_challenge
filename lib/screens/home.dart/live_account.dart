import 'package:flutter/material.dart';
import 'package:ui_challenge/widgets/custom_button.dart';

class LiveAccount extends StatefulWidget {
  const LiveAccount({Key? key}) : super(key: key);
  static const vector = 'assets/icons/Vector.png';

  @override
  State<LiveAccount> createState() => _LiveAccountState();
}

class _LiveAccountState extends State<LiveAccount> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return isOpen ? openWidget() : closedWidget();
  }

  Widget closedWidget() {
    return Container(
      width: 330,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff3E495C)),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: Text(
                    'Narayan Joshi',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: "SF Pro Display"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'A/c No. 5263798',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff96A0B5),
                        fontFamily: "SF Pro Display"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 110,
            ),
            const Text(
              '\$4.63',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff26CC68),
                  fontFamily: "SF Pro Display"),
            ),
            IconButton(
              onPressed: () {
                isOpen = !isOpen;
                setState(() {});
              },
              icon: Image.asset(LiveAccount.vector),
            )
          ],
        ),
      ),
    );
  }

  Widget openWidget() {
    return Container(
      width: 330,
      height: 210,
      decoration: BoxDecoration(
          color: const Color(0xffF9FAFB).withOpacity(0.05),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Text(
                        'Narayan Joshi',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: "SF Pro Display"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'A/c No. 5263798',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff96A0B5),
                            fontFamily: "SF Pro Display"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 110,
                ),
                const Text(
                  '\$4.63',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff26CC68),
                      fontFamily: "SF Pro Display"),
                ),
                IconButton(
                  onPressed: () {
                    isOpen = !isOpen;
                    setState(() {});
                  },
                  icon: RotatedBox(
                      quarterTurns: 5, child: Image.asset(LiveAccount.vector)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                customField('\$0', 'Margin Used'),
                const SizedBox(
                  width: 12,
                ),
                customField('\$4.63', 'Available'),
                const SizedBox(
                  width: 12,
                ),
                customField('MT4', 'Platform'),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                CustomButton(
                    title: 'Fund Now',
                    width: 135,
                    height: 40,
                    color: const Color(0xffF9FAFB).withOpacity(0.1),
                    style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffF82E4A),
                        fontFamily: "SF Pro Display"),
                    onPressed: () {}),
                const SizedBox(
                  width: 17,
                ),
                CustomButton(
                    title: 'Settings',
                    width: 135,
                    height: 40,
                    color: const Color(0xffF9FAFB).withOpacity(0.1),
                    style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff00BDFF),
                        fontFamily: "SF Pro Display"),
                    onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customField(String title, String subtitle) {
    return Container(
      width: 88,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffF9FAFB).withOpacity(0.03)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(title,
                style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: "SF Pro Display")),
          ),
          Text(
            subtitle,
            style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff96A0B5),
                fontFamily: "SF Pro Display"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: TColor.white,
        body: Container(
            width: media.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: TColor.primaryG,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Stack(alignment: Alignment.center, children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Spacer(),
                Text(
                  "Fitness",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),

                Text(
                  "Everybody Can Train",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 36,
                  ),
                ),
                const Spacer(),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: MaterialButton(
                        onPressed: () {},
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        textColor: TColor.primaryColor1,
                        minWidth: double.maxFinite,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) {
                            return LinearGradient(
                                    colors: TColor.primaryG,
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)
                                .createShader(Rect.fromLTRB(
                                    0, 0, bounds.width, bounds.height));
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                color: TColor.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                ) // MaterialButton
              ]),
            ]

                // LinearGradient // BoxDecoration
                )));
  }
}

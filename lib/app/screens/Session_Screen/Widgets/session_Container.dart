import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:overlay_group_avatar/overlay_group_avatar.dart';

import '../../../utils/images.dart';
class SessionContainer extends StatefulWidget {
  SessionContainer({
    super.key,
  });

  @override
  State<SessionContainer> createState() => _SessionContainerState();
}

class _SessionContainerState extends State<SessionContainer> {
  bool showAll = false;
  List<ImageProvider> memberImages = [
    AssetImage(Images.avatar),
    AssetImage(Images.avatar2),
    AssetImage(Images.avatar3),
    AssetImage(Images.ball),
    // Add more images here...
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 92,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 68,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '9:00 AM -\n10:00 PM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: 34,
                      height: 16,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        '2 hr',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.50,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 8,),
              VerticalDivider(),
              SizedBox(width: 8,),
              Expanded(
                flex: 3,
                child: Container(
                  height: 80,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Wrap(
                            spacing: -10,
                            children: [
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(Images.avatar),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(Images.avatar2),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(Images.avatar3),
                                ),
                              ),
                              if (!showAll)
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showAll = true;
                                    });
                                  },
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF111928),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Colors.white),
                                        borderRadius: BorderRadius.circular(999),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+${memberImages.length}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.19,
                                        ),
                                      ),
                                    )// Muestra el número de miembros ocultos
                                  ),
                                ),
                              if (showAll)
                                ...memberImages.map((image) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showAll = false;
                                    });
                                  },
                                  child: SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircleAvatar(
                                      backgroundImage: image
                                    ),
                                  ),
                                )),

                            ],
                          ),
                          Spacer(),
                           SvgPicture.asset(Images.users,height: 16,width: 16,),
                          SizedBox(width: 4),
                          Text(
                            '8/10',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Court 1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w500,
                          height: 0.12,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image(image: AssetImage(Images.map),height: 16,width: 16,),
                          SizedBox(width: 4),
                          Text(
                            'MBPJ Sports Complex',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          )
                        ],)

                    ],
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 68,
                padding: const EdgeInsets.all(12),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDEE1E2)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Icon(Icons.remove_red_eye_outlined,size: 24,color: Color(0xff545F71),),
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lawan/app/widgets/Friendly_Session/FrindlyContainer.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/List_Container.dart';

import '../../widgets/Friendly_Session/Session_Row.dart';

class PublicThirdScreen extends StatelessWidget {
  const PublicThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return FrindlySessionContainer(
                  onTap: () {},
                );
              },
            ),
          ),
          SizedBox(height: 16),
          SessionsRow(),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListContainer(
                      isFriendlySession: true,

                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

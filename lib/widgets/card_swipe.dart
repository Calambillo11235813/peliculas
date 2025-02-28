import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/material.dart';

class CardSwipe extends StatelessWidget {
  const CardSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,

      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.7,
        itemHeight: size.height * 0.8,
        itemBuilder: (_, int index) {
          return FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage(
              'https://www.psifoundation.org/wp-content/uploads/2018/03/placeholder-300x400-225x300.png',
            ),
          );
        },
      ),
    );
  }
}

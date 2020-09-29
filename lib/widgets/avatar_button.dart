import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarButton extends StatelessWidget {
  final double imageSize;
  const AvatarButton({Key key, this.imageSize = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // Margin surround the widget
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black12,
                offset: Offset(0, 12),
              )
            ],
          ),
          child: ClipOval(
            child: Image.network(
              'https://img2.gratispng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg',
              width: imageSize,
              fit: BoxFit.fitHeight,
              height: imageSize,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1.8,
                ),
                color: Colors.redAccent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

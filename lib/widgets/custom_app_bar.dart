import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      expandedHeight: 100,
      floating: false,
      pinned: true,
      iconTheme: const IconThemeData(color: Colors.black45),
      centerTitle: true,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            double percent = ((constraints.maxHeight - kToolbarHeight) * 100 / (100 - kToolbarHeight));
            double dx = 0;
            var top = constraints.biggest.height;
            dx = 100 - percent;
            if(constraints.maxHeight == 100) {
              dx = 0;
            }
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: kToolbarHeight / 3, left: 16), 
                  child: Transform.translate(
                    offset: Offset(dx, constraints.maxHeight - kToolbarHeight),
                    child: Text(
                      'Пользователи', 
                      style: TextStyle(
                        fontSize:  top < 100
                          ? size.height / 40
                          : size.height / 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        )
    );
  }
}
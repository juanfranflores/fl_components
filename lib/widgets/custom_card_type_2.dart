import "package:flutter/material.dart";

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 350,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(
              right: 20,
              top: 20,
              bottom: 10,
            ),
            child: const Text("Image description"),
          )
        ],
      ),
    );
  }
}

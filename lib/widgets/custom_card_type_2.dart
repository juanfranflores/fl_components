import "package:flutter/material.dart";

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? description;
  const CustomCardType2({
    super.key,
    required this.imageUrl,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            height: 350,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          if (description != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(
                right: 20,
                top: 20,
                bottom: 10,
              ),
              child: Text(description!),
            )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_flutter/models/universe_model.dart';

class UniverseWidget extends StatelessWidget {
  UniverseWidget(
      {Key? key, required this.universeModel, required this.changeIsFavorite})
      : super(key: key);
  final UniverseModel universeModel;
  final void Function() changeIsFavorite;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          _buildImageBackground(),
          _buildInformation(MediaQuery.of(context).size.width)
        ],
      ),
    );
  }

  Widget _buildImageBackground() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(universeModel.image))),
    );
  }

  Widget _buildInformation(double width) {
    final style = TextStyle(color: Colors.white, fontSize: 24);
    return FittedBox(
      child: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.grey.withOpacity(0.6),
          width: width,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(universeModel.name,
                        style: style.copyWith(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text(universeModel.description, style: style),
                  ],
                ),
              ),
              IconButton(
                  onPressed: changeIsFavorite,
                  icon: Icon(
                      universeModel.favorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.orange))
            ],
          )),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeBallAndImage extends StatelessWidget {
  const PokeBallAndImage({Key? key, required this.pokemon}) : super(key: key);
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(Constants.pokeballImageUrl,
              width: UIHelper.calculatePokBallAndImage(),
              height: UIHelper.calculatePokBallAndImage(),
              fit: BoxFit.fitHeight),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => const Icon(Icons.ac_unit),
              imageUrl: pokemon.img ?? '',
              width: UIHelper.calculatePokBallAndImage(),
              height: UIHelper.calculatePokBallAndImage(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) =>  CircularProgressIndicator(
              color: UIHelper.getColorFromType(pokemon.type![0])),
            ),
          ),
        )
      ],
    );
  }
}

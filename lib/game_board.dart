import 'package:chess_flutter/components/square.dart';
import 'package:chess_flutter/helper/helper_methods.dart';
import 'package:chess_flutter/values/colors.dart';
import 'package:flutter/material.dart';
import 'components/piece.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  //Create a chess piece
  ChessPiece mypawn = ChessPiece(
    type: ChessPieceType.pawn,
    isWhite: false,
    imagePath: 'images/pawn.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GridView.builder(
        itemCount: 8 * 8,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemBuilder: (context, index) {
          return Square(
            isWhite: isWhite(index),
            piece: mypawn,
          );
        },
      ),
    );
  }
}

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class BalanceinfoBox extends StatelessWidget {
  const BalanceinfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      flipOnTouch: true,
      direction: FlipDirection.VERTICAL, // vertical চাইলে VERTICAL
      front: _buildBox(
        text: "আপনার সাথে সবসময়",
      ),
      back: _buildBox(
        text: "💖 বিকাশের সাথে ৫ বছর",
      ),
    );
  }

  Widget _buildBox({required String text}) {
    return Container(
      height: 40,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

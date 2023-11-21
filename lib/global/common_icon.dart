import 'package:flutter/material.dart';

class CommonIcon extends StatelessWidget {
  final String fileName;
  final bool isBW;
  final String extension;
  final double height;
  final double width;
  final Color? color;

  const CommonIcon({
    Key? key,
    required this.fileName,
    this.isBW = false,
    this.extension = 'png',
    this.height = 16,
    this.width = 16,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String filePath = getIconPath(fileName, extension);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        filePath,
        height: height,
        width: width,
        color: color,
      ),
    );
  }

  String getIconPath(String fileName, String extension) {
    return 'assets/icons/$fileName.${isBW ? 'bw.' : ''}$extension';
  }
}

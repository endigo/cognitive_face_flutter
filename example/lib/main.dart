import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cognitive_face_flutter/cognitive_face_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

final endpoint = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0";
final key = "3080b54bd7c64a27801465608ca06a3e";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File image;
  List<Face> faces = [];
  final client = FaceServiceClient(key, serviceHost: endpoint);

  void _incrementCounter() async {
    var maxWidth = MediaQuery.of(context).size.width;
    File _image = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      maxWidth: maxWidth,
    );

    if (_image != null) {
      File croppedFile = await ImageCropper.cropImage(
        sourcePath: _image.path,
        ratioX: 1.0,
        ratioY: 1.0,
        maxWidth: maxWidth.toInt(),
        maxHeight: maxWidth.toInt(),
      );

      _getImageSize(Image.file(croppedFile, fit: BoxFit.fitWidth)).then((Size size) {
        print('CROPPED IMAGE WIDTH: ${size.width} HEIGHT: ${size.height}');
      });

      setState(() {
        image = croppedFile;
      });

      List<Face> _faces = await client.detect(
        image: _image,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true,
      );

      setState(() {
        faces = _faces;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _buildImage(context),
            FlatButton(
              child: Text('Clear'),
              onPressed: () {
                setState(() {
                  image = null;
                  faces = null;
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildImage(BuildContext context) {
    if (image != null) {
      List<Widget> children = [
        SizedBox(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<Size>(
            future: _getImageSize(Image.file(image, fit: BoxFit.fitWidth)),
            builder: (BuildContext context, AsyncSnapshot<Size> snapshot) {
              if (snapshot.hasData) {
                return Container(
                  foregroundDecoration: FaceDetectDecoration(
                    faces,
                    snapshot.data,
                  ),
                  child: Image.file(
                    image,
                    fit: BoxFit.fitWidth,
                  ),
                );
              } else {
                return Text('Please wait...');
              }
            },
          ),
        ),
      ];

      children.addAll(_drawRectangle(context));

      return Stack(
        children: children,
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height - 250.0,
      alignment: Alignment.center,
      child: Text('no picture'),
    );
  }

  List<Widget> _drawRectangle(BuildContext context) {
    if (image == null) return [Container()];

    if (faces == null)
      return [
        Center(
          child: CircularProgressIndicator(),
        )
      ];

    if (faces.isEmpty) {
      return [Container()];
    }

    return faces.map((face) {
      print(face.faceRectangle);
      return Positioned(
        top: face.faceRectangle.top.toDouble(),
        left: face.faceRectangle.left.toDouble(),
        child: Container(
          width: face.faceRectangle.width.toDouble(),
          height: face.faceRectangle.height.toDouble(),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
            ),
          ),
        ),
      );
    }).toList();
  }

  Future<Size> _getImageSize(Image image) {
    Completer<Size> completer = new Completer<Size>();
    image.image.resolve(new ImageConfiguration()).addListener(
        (ImageInfo info, bool _) => completer.complete(
            Size(info.image.width.toDouble(), info.image.height.toDouble())));
    return completer.future;
  }
}

class FaceDetectDecoration extends Decoration {
  final Size originalImageSize;
  final List<Face> faces;
  FaceDetectDecoration(this.faces, this.originalImageSize);

  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) => _FaceDetectPainter(faces, originalImageSize);
}

class _FaceDetectPainter extends BoxPainter {
  final List<Face> faces;
  final Size originalImageSize;
  _FaceDetectPainter(this.faces, this.originalImageSize);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final paint = new Paint()
      ..strokeWidth = 1.0
      ..color = Colors.red
      ..style = PaintingStyle.stroke;

    print('originalImageSize: ${originalImageSize.width} ${originalImageSize.height}');
    print('configuration: ${configuration.size.width} ${configuration.size.height}');

    final _heightRatio = originalImageSize.height / configuration.size.height;
    final _widthRatio = originalImageSize.width / configuration.size.width;
    for (var face in faces) {
      var width = face.faceRectangle.width / _widthRatio;
      var height = face.faceRectangle.height / _heightRatio;
      var left = face.faceRectangle.left / _widthRatio;
      var top = face.faceRectangle.top / _heightRatio;

      print(face.faceRectangle);

      final _rect = Rect.fromLTWH(left, top, width, height);

      canvas.drawRect(_rect, paint);
    }
  }
}

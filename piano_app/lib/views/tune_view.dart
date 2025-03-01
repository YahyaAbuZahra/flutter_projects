import 'package:flutter/material.dart';
import 'package:piano_app/widgets/tune_item.dart';
import 'package:piano_app/models/tune_model.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(
      color: Color(0xff8B0000),
      sound: 'note1.wav',
    ), // أحمر غامق كلاسيكي
    TuneModel(color: Color(0xffA0522D), sound: 'note2.wav'), // بني داكن دافئ
    TuneModel(color: Color(0xffB8860B), sound: 'note3.wav'), // ذهبي معتق
    TuneModel(color: Color(0xff2E8B57), sound: 'note4.wav'), // أخضر داكن
    TuneModel(color: Color(0xff4682B4), sound: 'note5.wav'), // أزرق فولاذي راقٍ
    TuneModel(color: Color(0xff191970), sound: 'note6.wav'),
    // أزرق منتصف الليل
    TuneModel(color: Color.fromARGB(255, 0, 0, 0), sound: 'note7.wav'),
    TuneModel(color: Color(0xff4B0082), sound: 'note7.wav'), // بنفسجي إمبراطوري
    // بنفسجي إمبراطوري
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Tune'),
        backgroundColor: const Color.fromARGB(255, 58, 140, 178),
        elevation: 0,
      ),
      body: Column(children: tunes.map((e) => TuneItem(tune: e)).toList()),
    );
  }
}

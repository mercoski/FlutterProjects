import 'package:dogru_yanlis_uygulamasi/constants.dart';

class TestVeri {
  final List<Sorular> _soruBankasi = [
    Sorular(soruMetni: 'Titanik en büyük gemidir', soruCevabi: false),
    Sorular(soruMetni: '1 asal sayıdır', soruCevabi: false),
    Sorular(soruMetni: '25x5 = 132 dir', soruCevabi: false),
    Sorular(soruMetni: 'Flutter eglencelidir', soruCevabi: true),
    Sorular(soruMetni: 'Dünya düzdür', soruCevabi: false),
    Sorular(soruMetni: 'Katildiğiniz için teşekkürler', soruCevabi: true)
  ];

  //Getters

  String getSoruMetni(int soruSayisi) {
    return _soruBankasi[soruSayisi].soruMetni;
  }

  bool getSoruCevabi(int soruSayisi) {
    return _soruBankasi[soruSayisi].soruCevabi;
  }

  int getSoruListesiUzunlugu() {
    return _soruBankasi.length;
  }
}

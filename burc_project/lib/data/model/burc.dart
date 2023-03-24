class Burc {
  final String burcAdi;
  final String burcTarihi;
  final String burcDetayi;
  final String burcKucukResim;
  final String burcBuyukResim;
  
  get getBurcAdi => this.burcAdi;

  get getBurcTarihi => this.burcTarihi;

  get getBurcDetayi => this.burcDetayi;

  get getBurcKucukResim => this.burcKucukResim;

  get getBurcBuyukResim => this.burcBuyukResim;
  //bu değerlere fonksiyon aracılığıyla ulaşabileceğiz - dart getter ve setter kullandık

  Burc(this.burcAdi, this.burcTarihi, this.burcDetayi, this.burcKucukResim,
      this.burcBuyukResim);

  @override
  String toString() {
    return '$burcAdi $burcBuyukResim $burcTarihi';
  }
}

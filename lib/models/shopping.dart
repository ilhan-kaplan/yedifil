import 'package:yedifil/models/product.dart';

class Shopping {
  String name;
  String security;
  String cargo;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Product>> menu;
  Shopping(
      this.name,
      this.security,
      this.cargo,
      this.label,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu,
      );
  static Shopping generateShopping() {
    return Shopping(
        'Kadın',
        'Güvenli İşlem',
        '24 Saatte Kargo',
        'Kadın',
        'assets/images/star_icon.png',
        'Yüksek Puanlı Çok Satanlar...',
        4.8,
        {
          'Önerilenler': Product.generateRecommendProducts(),
          'Popüler':Product.generatePopulerProducts(),
          'Fırsat Ürünleri': Product.generateOpportunityProducts(),
          'Yeni Sezon': Product.generateNewSeasonProducts(),
        }
        );
  }
}
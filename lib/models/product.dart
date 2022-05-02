class Product {
  String imgUrl;
  String desc;
  String name;
  String color;
  num score;
  String delivery;
  num price;
  num quantity;
  List<Map<String,String>> related;
  String about;
  bool hightLight;

  Product(
      this.imgUrl,
      this.desc,
      this.name,
      this.color,
      this.score,
      this.delivery,
      this.price,
      this.quantity,
      this.related,
      this.about,
      {this.hightLight= false}
      );

  static List<Product> generateRecommendProducts(){
    return [
      Product(
          'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          'Rahat Kesim',
          'Midi Kadın İndigo Etek',
          'Pembe',
          4.8,
          'Hızlı Teslimat',
          210,
          1,
          [
            {
              'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
            },
            {
              'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
            },
            {
              'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
            },
            {
              'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
            },

          ],
          'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
              'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
              'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
          hightLight: true,
      ),
      Product(
        'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
        'Sweatshirt Kız çocuk',
        'Benetton Yazılı Sweatshirt',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        439.99,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: false,
      ),
      Product(
        'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
        'Tshirt Kadın',
        'Coool Kolej Relax Fit Crop',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        221.99,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: false,
      ),
      Product(
        'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
        'Desenli Pantolon',
        'Koton Desenli Pantolon',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        181,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: false,
      ),
      Product(
        'https://m.media-amazon.com/images/I/41i9E7YqdfL._AC_SY695_.jpg',
        'Favorite Duffle Spor Çanta',
        'Under Armour Çanta',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        539,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: false,
      ),

    ];
  }

  static List<Product> generatePopulerProducts(){
    return [
      Product(
        'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
        'Desenli Pantolon',
        'Koton Desenli Pantolon',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        181,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: true,
      ),
      Product(
        'https://m.media-amazon.com/images/I/41i9E7YqdfL._AC_SY695_.jpg',
        'Favorite Duffle Spor Çanta',
        'Under Armour Çanta',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        539,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz 1-3 iş günü içerisinde kargoya teslim edilir.',
        hightLight: false,
      ),
    ];
  }

  static List<Product> generateOpportunityProducts(){
    return [
      Product(
        'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
        'Tshirt Kadın',
        'Coool Kolej Relax Fit Crop',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        221.99,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: true,
      ),
    ];
  }

  static List<Product> generateNewSeasonProducts(){
    return [
      Product(
        'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
        'Rahat Kesim',
        'Midi Kadın İndigo Etek',
        'Pembe',
        4.8,
        'Hızlı Teslimat',
        210,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: true,
      ),
      Product(
        'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
        'Sweatshirt Kız çocuk',
        'Benetton Yazılı Sweatshirt',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        439.99,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: false,
      ),
      Product(
        'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
        'Tshirt Kadın',
        'Coool Kolej Relax Fit Crop',
        'Kırmızı',
        4.9,
        'Hızlı Teslimat',
        221.99,
        1,
        [
          {
            'Etek': 'https://m.media-amazon.com/images/I/61m4FmCWP9L._UX679_.jpg',
          },
          {
            'Tişört': 'https://m.media-amazon.com/images/I/81kPK+M8LgL._AC_SY879_.jpg',
          },
          {
            'Polar': 'https://m.media-amazon.com/images/I/91GIsXC9pEL._AC_SY879_.jpg',
          },
          {
            'Pantolon': 'https://m.media-amazon.com/images/I/81pJuudpV-L._AC_SY879_.jpg',
          },

        ],
        'Ürünlerinizin gönderimini anlaşmalı olduğumuz ARAS, PTT, '
            'BOVO, YURTİÇİ ve MNG Kargo firmaları ile yapmaktayız. '
            'Siparişleriniz aynı gün içerisinde kargoya teslim edilir.',
        hightLight: false,
      ),
    ];
  }

}
class Country {
  String name;
  String location;
  String imageasset;
  String about;
  String phonecode;

  Country(
      {required this.name,
      required this.location,
      required this.imageasset,
      required this.about,
      required this.phonecode});
}

var CountryList = [
  Country(
      name: 'Indonesia',
      location: 'South-East Asia',
      imageasset: 'assets/images/flag.jpeg',
      about:
          'Indonesia , dikenal dengan nama resmi Republik Indonesia atau lebih lengkapnya Negara Kesatuan Republik Indonesia, adalah negara kepulauan di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Oseania, sehingga dikenal sebagai negara lintas benua, serta antara Samudra Pasifik dan Samudra Hindia.',
      phonecode: '+62'),
  Country(
      name: 'Malaysia',
      location: 'South-East Asia',
      imageasset: 'assets/images/my_flag.jpeg',
      about:
          'Malaysia adalah sebuah negara federal yang terdiri dari tiga belas negeri (negara bagian) dan tiga wilayah federal di Asia Tenggara dengan luas 330.803 km persegi. Ibu kotanya adalah Kuala Lumpur, sedangkan Putrajaya menjadi pusat pemerintahan federal. Jumlah penduduk negara ini mencapai 32.730.000 jiwa pada tahun 2020. Negara ini dipisahkan ke dalam dua kawasan — Semenanjung Malaysia dan Malaysia Timur — oleh Kepulauan Natuna, wilayah Indonesia di Laut Natuna yang terletak di sebelah Selatan dari Laut China Selatan. Malaysia berbatasan dengan Thailand, Indonesia, Singapura, Brunei, dan Filipina. Negara ini terletak di dekat khatulistiwa dan beriklim tropika. Kepala negara Malaysia adalah seorang Raja atau seorang Sultan yang dipilih secara bergiliran setiap 5 tahun sekali dari antara raja negara-negara bagian yang diperintah. Raja Malaysia biasanya memakai gelar Sri Paduka Baginda Yang di-Pertuan Agong dan pemerintahannya dikepalai oleh seorang Perdana Menteri. Model pemerintahan Malaysia mirip dengan sistem parlementer Westminster.',
      phonecode: '+60'),
  Country(
      name: 'Singapura',
      location: 'South-East Asia',
      imageasset: 'assets/images/sg_flag.jpeg',
      about:
          'Singapura adalah sebuah negara pulau di lepas ujung selatan Semenanjung Malaya, 137 kilometer (85 mi) di utara khatulistiwa di Asia Tenggara. Negara ini terpisah dari Malaysia oleh Selat Johor di utara, dan dari Kepulauan Riau, Indonesia oleh Selat Singapura di selatan. Singapura adalah pusat keuangan terdepan ketiga di dunia dan sebuah kota dunia kosmopolitan yang memainkan peran penting dalam perdagangan dan keuangan internasional. Pelabuhan Singapura adalah satu dari lima pelabuhan tersibuk di dunia.',
      phonecode: '+65'),
  Country(
      name: 'Philipine',
      location: 'South-East Asia',
      imageasset: 'assets/images/ph_flag.jpeg',
      about:
          'Filipina, dengan nama resmi disebut sebagai Republik Filipina adalah sebuah negara kepulauan dan negara kesatuan yang bersistem presidensial dengan berbentuk republik konstitusional di Asia Tenggara, sebelah utara Indonesia, dan timur laut Sabah. Filipina merupakan sebuah negara kepulauan yang terletak di Lingkar Pasifik Barat, negara ini terdiri dari 7.641 pulau. Selama ribuan tahun, warga kepulauan Filipina, dan pekerja keras ini telah mengembangkan sistem cocok tanam padi yang sangat maju, yang menyediakan makanan pokok bagi masyarakatnya.',
      phonecode: '+63'),
  Country(
      name: 'Australia',
      location: 'Australia',
      imageasset: 'assets/images/aus_flag.jpeg',
      about:
          'Australia, resminya Persemakmuran Australia, adalah sebuah negara di belahan selatan yang terdiri dari daratan utama benua Australia, Pulau Tasmania, dan berbagai pulau kecil di Samudra Hindia, dan Samudra Pasifik. Negara-negara yang bertetangga dengannya adalah Indonesia, Timor Leste, dan Papua Nugini di utara; Kepulauan Solomon, Vanuatu, dan Kaledonia Baru di timur-laut; dan Selandia Baru di tenggara.',
      phonecode: '+61'),
];

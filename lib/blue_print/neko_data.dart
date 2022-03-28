class NekoData {
  String name;
  String description;
  String publishDate;
  String publishTime;
  String price;
  String imageAsset;

  NekoData({
    required this.name,
    required this.description,
    required this.publishDate,
    required this.publishTime,
    required this.price,
    required this.imageAsset,
  });
}

var nekoList = [
  NekoData(
    name: 'Bengal',
    description:
        'Ras Bengal merupakan hasil perkawinan kucing american shorthair dan asian leopard, yang kemudian anak betinanya dikawinkan lagi dengan induknya. Kucing yang satu ini memiliki pola spotted wild cat dan masih tergolong kucing hutan. Ukuran tubuhnya sangat atletis dengan berat jantan ketika dewasa bisa mencapai 10kg. Salah satu sifat ras Bengal yakni menyukai air, dan merupakan kucing yang cerdas serta aktif.',
    publishDate: '15 Januari 2021',
    publishTime: '11:06:13',
    price: 'Rp 500.000',
    imageAsset: 'images/bengal.jpg',
  ),
  NekoData(
    name: 'Russian Blue',
    description:
        'Kucing biru Rusia atau russian blue merupakan kucing yang banyak digemari karena memiliki bulu pendek berwarna abu-abu kebiruan yang terlihat mengkilap. Matanya berwarna hijau cerah dan terkadang terdapat bercak putih di atas matanya. Russian blue lebih banyak dijadikan induk untuk menciptakan jenis ras yang lain. Sifatnya sangat ramah dan pemalu, namun ia juga cerdas, sensitif, dan penuh rasa ingin tahu.',
    publishDate: '17 Februari 2021',
    publishTime: '12:33:13',
    price: 'Rp 750.000',
    imageAsset: 'images/russian-blue.jpg',
  ),
  NekoData(
    name: 'Bulu Pendek Britania',
    description:
        'Kucing bulu pendek Britania merupakan ras tertua yang diyakini ada hubungannya dengan bangsa Romawi yang pernah menjajah Britania. Ras ini memiliki tubuh gempal dengan bulu pendek berwarna abu-abu kebiruan, namun kemudian dikawinkan silang dengan jenis Persia agar tidak punah dan menghasilkan kucing bulu pendek dengan berbagai warna. Kucing ini juga banyak menjadi ikon film animasi atau produk makanan kucing “Whiskas”.',
    publishDate: '19 Maret 2021',
    publishTime: '13:56:13',
    price: 'Rp 1.000.000',
    imageAsset: 'images/kucing-bulu-pendek-britania.jpg',
  ),
  NekoData(
    name: 'Munchkin',
    description:
        'Munchkin merupakan kucing asal Amerika Serikat yang berkaki pendek akibat mutasi genetik. Namun mutasi tersebut tidak membuatnya mengalami gangguan tulang dan menyebabkan cacat atau kematian. Kaki depan Munchkin lebih pendek dari kaki yang belakang sehingga akan terlihat seperti membungkuk. Munchkin menjadi ras terkecil di dunia dengan berat jantan yakni sekitar 3-4 kg. Karena keunikannya, Munchkin banyak dikawinkan dengan ras lainnya.',
    publishDate: '21 April 2021',
    publishTime: '14:57:57',
    price: 'Rp 3.500.000',
    imageAsset: 'images/munchkin.jpg',
  ),
  NekoData(
    name: 'Persia',
    description:
        'Kucing berbulu panjang dengan wajah bulat datar dan moncong pendek ini berasal dari Iran (Persia). Pada umumnya kucing Persia memiliki bentuk tubuh yang besar, gemuk, serta berhidung pesek. Namun seiring bertambahnya waktu beberapa peternak mencoba melestarikannya dengan ras lain dan menghasilkan karakteristik warna baru selain perak cerah dan gelap. Selain itu ciri hidung dan bentuk tubuhnya juga banyak yang berubah.',
    publishDate: '23 Mei 2021',
    publishTime: '15:32:13',
    price: 'Rp 300.000',
    imageAsset: 'images/persia.jpg',
  ),
  NekoData(
    name: 'Sphynx',
    description:
        'Sphynx merupakan kucing hasil rekayasa genetika asal Kanada dan merupakan jenis keturunan dari kucing tanpa bulu. Jika dilihat sepintas maka tubuh Sphynx akan terlihat botak, namun jika diperhatikan dengan seksama maka kucing yang diadopsi dari nama patung di Mesir ini memiliki bulu yang sangat pendek dan sangat sedikit sekali, yang terdapat pada bagian ekor, kaki, telinga, dan dekat organ kelamin.',
    publishDate: '25 Juni 2021',
    publishTime: '16:45:09',
    price: 'Rp 5.000.000',
    imageAsset: 'images/sphynx.jpg',
  ),
  NekoData(
    name: 'Siam',
    description:
        'Kucing berjenis oriental pertama ini banyak ditemukan di negara Siam (Thailand). Ras murni yang memiliki bulu pendek dengan tanda pada kaki, ekor dan wajahnya ini merupakan kucing terpopuler di dunia. Ia memiliki mata berwarna biru dengan tubuh ramping dan kaki serta ekor yang panjang. Siam juga memiliki bentuk wajah yang menyerupai apel, segitiga, dan baji sehingga unik dan mudah dikenali.',
    publishDate: '27 Juli 2021',
    publishTime: '16:47:27',
    price: 'Rp 300.000',
    imageAsset: 'images/siam.jpg',
  ),
  NekoData(
    name: 'Telinga Lipat',
    description:
        'Kucing telinga lipat Skotlandia sering disebut dengan kucing coupari atau kucing berwajah burung hantu karena memiliki bentuk telinga yang melipat. Meskipun begitu, kucing asal Skotlandia ini belum diakui karena faktor gen yang belum stabil. Kucing telinga lipat Skotlandia merupakan kucing yang bersahabat, ramah, dan tenang. Ia memiliki kepala dan mata yang bulat, hidungnya pesek, dengan kaki serta leher yang pendek.',
    publishDate: '29 Agustus 2021',
    publishTime: '18:59:45',
    price: 'Rp 3.500.000',
    imageAsset: 'images/telinga-lipat-skotlandia.jpg',
  ),
  NekoData(
    name: 'Maine Coon',
    description:
        'Kucing tertua asal Maine, Amerika Serikat, ini merupakan jenis kucing domestik terbesar dengan tinggi yang bisa mencapai satu meter. Beberapa masyarakat percaya bahwa Maine Coon berasal dari keturunan rakun dengan kucing setengah liar. Maine Coon memiliki ekor dengan bulu yang mengembang dengan bentuk yang hampir menyerupai rakun. Ia juga memiliki bulu lebat dan halus di sekitar leher sehingga menyerupai singa.',
    publishDate: '3 September 2021',
    publishTime: '19:17:49',
    price: 'Rp 9.000.000',
    imageAsset: 'images/maine-coon.jpg',
  ),
  NekoData(
    name: 'Ragdoll',
    description:
        'Ragdoll merupakan jenis kucing terbesar yang dikembangbiakkan oleh seorang warga Amerika Serikat, Ann Baker. Kucing ini memiliki bentuk tubuh yang besar dengan dada dan panggul yang lebar. Ragdoll masih memiliki keturunan gen dari ras Persia, Birman, dan juga Burmese. Yang mana bulu-bulunya sangat lembut seperti bulu kelinci. Untuk warna bulunya memiliki pola bicolor, vandan point (tortie, solid, lynx), dan mitted.',
    publishDate: '5 Novenber 2021',
    publishTime: '20:44:33',
    price: 'Rp 15.000.000',
    imageAsset: 'images/ragdoll.jpg',
  ),
];

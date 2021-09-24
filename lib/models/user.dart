class User {
  final int id;
  final String nama;
  final String email;
  final String noHP;
  final String imageUrl;

  User({
    required this.id,
    required this.nama,
    required this.email,
    required this.noHP,
    required this.imageUrl,
  });

  static List<User> getUser() {
    return <User>[
      User(
          id: 1,
          nama: 'Park Chanyoel',
          email: 'chanyoel.61@gmail.com',
          noHP: '0826191241627',
          imageUrl: 'images/2.jpg'),
      User(
          id: 2,
          nama: 'Do Kyongsoo',
          email: 'cimol.kyongsoo@gmail.com',
          noHP: '0812543768777',
          imageUrl: 'images/4.jpg'),
      User(
          id: 3,
          nama: 'Byun Baekhyun Oh Sehun Kim Jongdae Kim Kai Xiumin,
          email: 'weareone.1408@gmail.com',
          noHP: '089675566853',
          imageUrl: 'images/6.jpg'),
      User(
          id: 4,
          nama: 'Oh Sehun',
          email: 'sehunnie.61@gmail.com',
          noHP: '0826193331627',
          imageUrl: 'images/8.jpg'),
    ];
  }
}

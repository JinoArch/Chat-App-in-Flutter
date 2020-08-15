class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Jino',
  imageUrl: 'assets/images/jino.jpg',
  isOnline: true,
);

// USERS
final User elon = User(
  id: 1,
  name: 'Elon',
  imageUrl: 'assets/images/elon.jpg',
  isOnline: true,
);
final User linus = User(
  id: 2,
  name: 'Linus Tolvards',
  imageUrl: 'assets/images/linus.jpg',
  isOnline: true,
);
final User ece = User(
  id: 3,
  name: 'ECE',
  imageUrl: 'assets/images/ece.jpg',
  isOnline: false,
);
final User ronaldo = User(
  id: 4,
  name: 'Ronaldo bro',
  imageUrl: 'assets/images/ronaldo.jpg',
  isOnline: false,
);
final User rs = User(
  id: 5,
  name: 'Richard Stallman',
  imageUrl: 'assets/images/rs.jpeg',
  isOnline: true,
);
final User prinz = User(
  id: 6,
  name: 'Prinz',
  imageUrl: 'assets/images/prinz.jpg',
  isOnline: false,
);
final User suhel = User(
  id: 7,
  name: 'Suhel',
  imageUrl: 'assets/images/suhel.jpg',
  isOnline: false,
);
final User jeff = User(
  id: 7,
  name: 'Jeff Becoz',
  imageUrl: 'assets/images/Jeff.jpg',
  isOnline: false,
);
final User gnu = User(
  id: 7,
  name: 'GNU/LINUX Group',
  imageUrl: 'assets/images/gnu.jpg',
  isOnline: false,
);

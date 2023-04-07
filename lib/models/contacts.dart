class Contacts {
  String name;
  String imageLink;

  Contacts(this.name, this.imageLink);
}

List<Contacts> contacts() {
  return [
    Contacts("Bilal", "assets/images/image2.webp"),
    Contacts("Sabahat", "assets/images/image1.jpg"),
    Contacts("Saad", "assets/images/image5.webp"),
    Contacts("Waleed", "assets/images/image9.webp"),
    Contacts("Anne", "assets/images/image6.webp"),
    Contacts("Kate", "assets/images/image7.webp"),
    Contacts("Scarlet", "assets/images/image8.webp"),
  ];
}

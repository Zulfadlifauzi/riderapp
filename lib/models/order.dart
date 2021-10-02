class AllModel {
  String? name;
  String? description;
  String? price;
  String? location;
  String? pickup;
  String? dropoff;
  String? mile;
  String? image;
  String? order;

  AllModel(this.name, this.description, this.price, this.location, this.pickup,
      this.dropoff, this.mile, this.image, this.order);
}

List<AllModel> orderlist = allData
    .map((item) => AllModel(
          item['name'],
          item['description'],
          item['price'],
          item['location'],
          item['pickup'],
          item['dropoff'],
          item['mile'],
          item['image'],
          item['order'],
        ))
    .toList();

var allData = [
  {
    'name': 'hello',
    'description': 'letak atas meja ye bang',
    'price': 'RM15',
    'location': 'aeon shah alam',
    'pickup': 'Pizza hut aeon \nshah alam',
    'dropoff': 'menara U1',
    'mile': '5KM',
    'order': 'h544-8gi3'
  },
  {
    'name': 'Amir',
    'description': 'letak depan pintu',
    'price': 'RM15',
    'location': 'aeon shah alam',
    'pickup': 'rojak mee \nshah alam',
    'dropoff': 'menara U1',
    'mile': '11KM',
    'order': 'h544-8gi3'
  },
  {
    'name': 'Amri',
    'description': 'letak atas meja ye bang',
    'price': 'RM20',
    'location': 'Tesco shah alam',
    'pickup': 'Pizza hut \naeon shah alam',
    'dropoff': 'menara U1',
    'mile': '5KM',
    'order': 'h544-8gi3'
  },
  {
    'name': 'Khalid',
    'description': 'letak atas meja ye bang',
    'price': 'RM15',
    'location': 'lotus shah alam',
    'pickup': 'Kfc aeon \nshah alam',
    'dropoff': 'menara U1',
    'mile': '20KM',
    'image': 'https://cache.etips.com/poi/poi181/o/306.jpg'
  },
  {
    'name': 'Ahmad',
    'description': 'kat level 5 bang',
    'price': 'RM50',
    'location': 'aeon shah alam',
    'pickup': 'Vivo aeon \nshah alam',
    'dropoff': 'menara U2',
    'mile': '10KM',
    'image': 'https://static.toiimg.com/photo/54445819.cms'
  },
  {
    'name': 'Irfan',
    'description': 'letak tepi pintu',
    'price': 'RM30',
    'location': 'Giant shah alam',
    'pickup': 'Ayam merah \naeon shah alam',
    'dropoff': 'menara U1',
    'mile': '10KM',
    'image': 'https://static.toiimg.com/photo/54445819.cms'
  },
];

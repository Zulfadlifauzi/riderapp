class AchievementModel {
  String? name;
  String? status;
  String? image;
  AchievementModel(this.name, this.status, this.image);
}

List<AchievementModel> levelup = levelupData
    .map(
        (item) => AchievementModel(item['name'], item['status'], item['image']))
    .toList();

var levelupData = [
  {
    'name': 'Beginner',
    'status': 'Completed',
    'image': 'https://static.toiimg.com/photo/54445819.cms'
  },
  {
    'name': 'Send 1 Order',
    'status': 'Completed',
    'image': 'https://live.staticflickr.com/6010/5983602334_3f1e716fbc_b.jpg'
  },
  {
    'name': 'Send 5 Order',
    'status': 'Completed',
    'image': 'https://cache.etips.com/poi/poi181/o/306.jpg'
  },
  {
    'name': 'Send 10 Order',
    'status': 'Ongoing',
    'image':
        'https://www.e-maik.my/v2/images/masjid/Masjid-Muhammadi/DSC_3805.jpg'
  },
  {
    'name': 'Completed the tutorial',
    'status': 'Completed',
    'image': 'https://live.staticflickr.com/5778/23359946396_3c6fc9034c_b.jpg'
  },
];

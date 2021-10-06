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
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'name': 'Send 1 Order',
    'status': 'Completed',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'name': 'Send 5 Order',
    'status': 'Completed',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'name': 'Send 10 Order',
    'status': 'Ongoing',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'name': 'Completed the tutorial',
    'status': 'Completed',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
];

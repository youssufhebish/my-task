class PlayerModel {
  final String playerImage;
  final String playerName;
  final String playerPosition;
  final bool isBest;

  PlayerModel({
    required this.playerImage,
    required this.playerName,
    required this.playerPosition,
    required this.isBest,
  });
}

List<PlayerModel> playersList = [
  PlayerModel(
    playerImage: 'assets/images/avatar.png',
    playerName: 'James',
    playerPosition: 'LWF',
    isBest: true,
  ),
  PlayerModel(
    playerImage: 'assets/images/avatar.png',
    playerName: 'James',
    playerPosition: 'GK',
    isBest: false,
  ),
  PlayerModel(
    playerImage: 'assets/images/avatar.png',
    playerName: 'James',
    playerPosition: 'CB',
    isBest: false,
  ),
  PlayerModel(
    playerImage: 'assets/images/avatar.png',
    playerName: 'James',
    playerPosition: 'CF',
    isBest: false,
  ),
];
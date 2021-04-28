import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Pages/webview_games.dart';
import './games_list.dart';

class ControlImages {
  String name;
  String thumbImg;
  String navUrl;

  ControlImages({
    this.name,
    this.thumbImg,
    this.navUrl,
  });
}

class GamesHome extends StatefulWidget {
  @override
  _GamesHomeState createState() => _GamesHomeState();
}

class _GamesHomeState extends State<GamesHome> {
  List<ControlImages> topGameImg = [
    ControlImages(
        name: 'Smarty Bubbles',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SmartyBubbles20160620Teaser.jpg',
        navUrl: 'https://play.famobi.com/smarty-bubbles/A-P2VAM'),
    ControlImages(
        name: 'Jewelish Blitz',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/JewelishBlitzTeaser.jpg',
        navUrl: 'https://play.famobi.com/jewelish-blitz/A-P2VAM'),
    ControlImages(
        name: 'Endless Truck',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/EndlessTruckTeaser.jpg',
        navUrl: 'https://play.famobi.com/endless-truck/A-P2VAM'),
    ControlImages(
        name: 'Table Tennis',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/TableTennis_WorldTour_Teaser.jpg',
        navUrl: 'https://play.famobi.com/table-tennis-world-tour/A-P2VAM'),
  ];
  List<ControlImages> topPickDetails = [
    ControlImages(
        name: 'Bubble woods',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BubbleWoodsTeaser.jpg',
        navUrl: 'https://play.famobi.com/bubble-woods/A-P2VAM'),
    ControlImages(
        name: 'Archery',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ArcheryWorldTourTeaser.jpg',
        navUrl: 'https://play.famobi.com/archery-world-tour/A-P2VAM'),
    ControlImages(
        name: 'Classic Chess',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ChessClassicTeaser.jpg',
        navUrl: 'https://play.famobi.com/chess-classic/A-P2VAM'),
    ControlImages(
        name: 'Sudoku',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SudokuClassicTeaser.jpg',
        navUrl: 'https://play.famobi.com/sudoku-classic/A-P2VAM'),
    ControlImages(
        name: 'Endless Truck',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/EndlessTruckTeaser.jpg',
        navUrl: 'https://play.famobi.com/endless-truck/A-P2VAM'),
    ControlImages(
        name: 'Table Tennis',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/TableTennis_WorldTour_Teaser.jpg',
        navUrl: 'https://play.famobi.com/table-tennis-world-tour/A-P2VAM'),
    ControlImages(
        name: 'Free Kick',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dFreeKickTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-free-kick/A-P2VAM'),
    ControlImages(
        name: 'Word',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/WordDetectorTeaserB.jpg',
        navUrl: 'https://play.famobi.com/word-detector/A-P2VAM'),
    ControlImages(
        name: 'Fruita Crush',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/FruitaCrushTeaser.jpg',
        navUrl: 'https://play.famobi.com/fruita-crush/A-P2VAM'),
  ];

  List<ControlImages> puzzleDetails = [
    ControlImages(
        name: '2048',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/2048Teaser.jpg',
        navUrl: 'https://play.famobi.com/2048/A-P2VAM'),
    ControlImages(
        name: 'Ultimate SUDOKU',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/UltimateSudokuTeaser.jpg',
        navUrl: 'https://play.famobi.com/ultimate-sudoku/A-P2VAM'),
    ControlImages(
        name: 'Blue Box',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BlueBoxTeaser.jpg',
        navUrl: 'https://play.famobi.com/blue-box/A-P2VAM'),
    ControlImages(
        name: 'Ojello',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/OjelloTeaser.jpg',
        navUrl: 'https://play.famobi.com/ojello/A-P2VAM'),
    ControlImages(
        name: 'Maze',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/MazeTeaser.jpg',
        navUrl: 'https://play.famobi.com/maze/A-P2VAM'),
    ControlImages(
        name: 'Word Search',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/WordSearchClassicTeaser.jpg',
        navUrl: 'https://play.famobi.com/word-search-classic/A-P2VAM'),
    ControlImages(
        name: 'JigSaw Puzzle',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/Jigsaw_Puzzle_Deluxe_Teaser.jpg',
        navUrl: 'https://play.famobi.com/jigsaw-puzzle-deluxe/A-P2VAM'),
    ControlImages(
        name: 'Mahjong',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/MahjongConnectClassicTeaser.jpg',
        navUrl: 'https://play.famobi.com/mahjong-connect-classic/A-P2VAM'),
  ];

  List<ControlImages> multiplayerDetails = [
    ControlImages(
        name: '8 Balls',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/8BallOnlineTeaser.jpg',
        navUrl: 'https://play.famobi.com/8ball-online/A-P2VAM'),
    ControlImages(
        name: 'Defly',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/DeflyTeaser.jpg',
        navUrl: 'https://play.famobi.com/defly/A-P2VAM'),
    ControlImages(
        name: 'VIP Spades',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/VIPSpadesTeaser.jpg',
        navUrl: 'https://play.famobi.com/vip-spades/A-P2VAM'),
    ControlImages(
        name: 'My Farm',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/MyFreeFarm2Teaser.jpg',
        navUrl: 'https://play.famobi.com/my-free-farm-2/A-P2VAM'),
    ControlImages(
        name: 'Forge of Empires',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ForgeOfEmpires_Teaser.jpg',
        navUrl: 'https://play.famobi.com/foe/A-P2VAM'),
    ControlImages(
        name: 'Shakes & Fidget',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ShakesAndFidgetTeaser.jpg',
        navUrl: 'https://play.famobi.com/shakes-and-fidget/A-P2VAM'),
    ControlImages(
        name: 'Call of War',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/CallOfWarTeaser.jpg',
        navUrl: 'https://play.famobi.com/call-of-war/A-P2VAM'),
    ControlImages(
        name: '4 in a Row',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/4InARowTeaser_.jpg',
        navUrl: 'https://play.famobi.com/4-in-a-row/A-P2VAM'),
  ];

  List<ControlImages> girlsDetails = [
    ControlImages(
        name: 'Baby Lilly',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BabyLilyBirthday_Teaser.jpg',
        navUrl: 'https://play.famobi.com/baby-lily-birthday/A-P2VAM'),
    ControlImages(
        name: 'Pizza Margaritta',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/PizzaMargheritaTeaser.jpg',
        navUrl: 'https://play.famobi.com/pizza-margherita/A-P2VAM'),
    ControlImages(
        name: 'Wedding Lilly',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/WeddingLilyTeaser.jpg',
        navUrl: 'https://play.famobi.com/wedding-lily/A-P2VAM'),
    ControlImages(
        name: 'Shopping Lilly',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ShoppingLilyTeaser.jpg',
        navUrl: 'https://play.famobi.com/shopping-lily/A-P2VAM'),
    ControlImages(
        name: 'Love Tester',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/LoveTester_Teaser.jpg',
        navUrl: 'https://play.famobi.com/lovetester/A-P2VAM'),
    ControlImages(
        name: 'Beach Beauty',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BeachBeauty_Teaser.jpg',
        navUrl: 'https://play.famobi.com/beach-beauty/A-P2VAM'),
    ControlImages(
        name: 'Lilly Makeup',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/LilyTeaser.jpg',
        navUrl: 'https://play.famobi.com/rm-maria/A-P2VAM'),
    ControlImages(
        name: 'My Wedding',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/MyWeddingTeaser.jpg',
        navUrl: 'https://play.famobi.com/my-wedding/A-P2VAM'),
  ];

  List<ControlImages> sportsDetails = [
    ControlImages(
        name: 'Ultimate Boxing',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/UltimateBoxingTeaser.jpg',
        navUrl: 'https://play.famobi.com/ultimate-boxing/A-P2VAM'),
    ControlImages(
        name: 'Classic Bowling',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ClassicBowlingTeaser.jpg',
        navUrl: 'https://play.famobi.com/classic-bowling/A-P2VAM'),
    ControlImages(
        name: 'Highway Rider',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/HighwayRiderExtremeTeaser.jpg',
        navUrl: 'https://play.famobi.com/highway-rider-extreme/A-P2VAM'),
    ControlImages(
        name: 'Race Right',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/RaceRightTeaser.jpg',
        navUrl: 'https://play.famobi.com/race-right/A-P2VAM'),
    ControlImages(
        name: 'Adventure Drivers',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/AdventureDriversTeaser.jpg',
        navUrl: 'https://play.famobi.com/adventure-drivers/A-P2VAM'),
    ControlImages(
        name: '3D Chess',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dChessTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-chess/A-P2VAM'),
    ControlImages(
        name: '3D Basketball',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dBasketballTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-basketball/A-P2VAM'),
    ControlImages(
        name: 'Arcade Golf',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ArcadeGolfNeonTeaser.jpg',
        navUrl: 'https://play.famobi.com/arcade-golf-neon/A-P2VAM'),
    ControlImages(
        name: 'Billiard Blizz',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BilliardBlitzChallengeTeaser.jpg',
        navUrl: 'https://play.famobi.com/billiard-blitz-challenge/A-P2VAM'),
    ControlImages(
        name: '3D Bowling',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dBowlingTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-bowling/A-P2VAM'),
    ControlImages(
        name: 'Fishing Frenzy',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/FishingFrenzyTeaser.jpg',
        navUrl: 'https://play.famobi.com/fishing-frenzy/A-P2VAM'),
    ControlImages(
        name: 'Skeet Challenge',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SkeetChallengeTeaser.jpg',
        navUrl: 'https://play.famobi.com/skeet-challenge/A-P2VAM'),
  ];

  List<ControlImages> graphic3dgamesDetails = [
    ControlImages(
        name: 'Truck Trials',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/TruckTrialsTeaser.jpg',
        navUrl: 'https://play.famobi.com/truck-trials/A-P2VAM'),
    ControlImages(
        name: 'Asphalt Racing',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/AsphaltSpeedRacing3D_Teaser.jpg',
        navUrl: 'https://play.famobi.com/asphalt-speed-racing-3d/A-P2VAM'),
    ControlImages(
        name: '3D free kick',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dFreeKickWorldCup18Teaser.jpg',
        navUrl: 'https://play.famobi.com/3d-free-kick-world-cup-18/A-P2VAM'),
    ControlImages(
        name: '3D Bowling',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dBowlingTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-bowling/A-P2VAM'),
    ControlImages(
        name: '3D Solitaire',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dSolitaireTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-solitaire/A-P2VAM'),
    ControlImages(
        name: 'Racing Cars',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/RacingCarsTeaser.jpg',
        navUrl: 'https://play.famobi.com/racing-cars/A-P2VAM'),
    ControlImages(
        name: 'Crazy Hill driver',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/CrazyHillDriver_Teaser.jpg',
        navUrl: 'https://play.famobi.com/crazy-hill-driver/A-P2VAM'),
    ControlImages(
        name: 'Swoop',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SWOOOPTeaser.jpg',
        navUrl: 'https://play.famobi.com/swooop/A-P2VAM'),
    ControlImages(
        name: 'Fallout Racer',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/FalloutRacer_Teaser.jpg',
        navUrl: 'https://play.famobi.com/fallout-racer/A-P2VAM'),
    ControlImages(
        name: 'Yeti Sensation',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/YetiSensationTeaser.jpg',
        navUrl: 'https://play.famobi.com/yeti-sensation/A-P2VAM'),
    ControlImages(
        name: '3D Air Hockey',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dAirHockeyTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-air-hockey/A-P2VAM'),
    ControlImages(
        name: '3D Darts',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/3dDartsTeaser.jpg',
        navUrl: 'https://play.famobi.com/3d-darts/A-P2VAM'),
    ControlImages(
        name: 'Bus Parking 3D',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BusParking3D_Teaser.jpg',
        navUrl: 'https://play.famobi.com/bus-parking-3d/A-P2VAM'),
  ];

  List<ControlImages> matchinggamesDetails = [
    ControlImages(
        name: 'Smarty Bubbles',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SmartyBubbles20160620Teaser.jpg',
        navUrl: 'https://play.famobi.com/smarty-bubbles/A-P2VAM'),
    ControlImages(
        name: 'Fruita Crush',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/FruitaCrushTeaser.jpg',
        navUrl: 'https://play.famobi.com/fruita-crush/A-P2VAM'),
    ControlImages(
        name: 'Jewelish Blitz',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/JewelishBlitzTeaser.jpg',
        navUrl: 'https://play.famobi.com/jewelish-blitz/A-P2VAM'),
    ControlImages(
        name: 'Pirates!',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/PiratesTheMatch3Teaser.jpg',
        navUrl: 'https://play.famobi.com/pirates-the-match-3/A-P2VAM'),
    ControlImages(
        name: 'Dots Mania',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/DotsManiaTeaser.jpg',
        navUrl: 'https://play.famobi.com/dots-mania/A-P2VAM'),
    ControlImages(
        name: 'Hextris',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/HextrisTeaser.jpg',
        navUrl: 'https://play.famobi.com/hextris/A-P2VAM'),
    ControlImages(
        name: 'Zop',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/ZopTeaser.jpg',
        navUrl: 'https://play.famobi.com/zop/A-P2VAM'),
    ControlImages(
        name: 'Juicy Dash',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/JuicyDashTeaser.jpg',
        navUrl: 'https://play.famobi.com/juicy-dash/A-P2VAM'),
    ControlImages(
        name: 'Magic Jewels',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/MagicJewelsTeaser.jpg',
        navUrl: 'https://play.famobi.com/magic-jewels/A-P2VAM'),
    ControlImages(
        name: 'Block Buster',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BlockBusterTeaser.jpg',
        navUrl: 'https://play.famobi.com/block-buster/A-P2VAM'),
    ControlImages(
        name: 'Domino Shades',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/DominoShadesTeaser.jpg',
        navUrl: 'https://play.famobi.com/domino-shades/A-P2VAM'),
  ];

  List<ControlImages> cardgamesDetails = [
    ControlImages(
        name: 'Duo Cards',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/DuoCardsTeaser.jpg',
        navUrl: 'https://play.famobi.com/duo-cards/A-P2VAM'),
    ControlImages(
        name: 'Gin Rummy Plus',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/GinRummyPlusTeaser.jpg',
        navUrl: 'https://play.famobi.com/gin-rummy-plus/A-P2VAM'),
    ControlImages(
        name: 'VIP Spades',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/VIPSpadesTeaser.jpg',
        navUrl: 'https://play.famobi.com/vip-spades/A-P2VAM'),
    ControlImages(
        name: 'Jackpot',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/JackpotTeaser.jpg',
        navUrl: 'https://play.famobi.com/jackpot-de/A-P2VAM'),
    ControlImages(
        name: 'Fairy Cards',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/FairyCardsTeaser.jpg',
        navUrl: 'https://play.famobi.com/fairy-cards/A-P2VAM'),
    ControlImages(
        name: 'Crossover 21',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/Crossover21Teaser.jpg',
        navUrl: 'https://play.famobi.com/crossover-21/A-P2VAM'),
  ];

  List<ControlImages> quizgamesDetails = [
    ControlImages(
        name: 'Alien Quest',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/AlienQuestTeaser.jpg',
        navUrl: 'https://play.famobi.com/alien-quest/A-P2VAM'),
    ControlImages(
        name: '1 Sound 1 Word',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/1Sound1WordTeaser.jpg',
        navUrl: 'https://play.famobi.com/1-sound-1-word/A-P2VAM'),
    ControlImages(
        name: 'Geo Quiz Europe',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/GeoQuizEuropeTeaser.jpg',
        navUrl: 'https://play.famobi.com/geo-quiz-europe/A-P2VAM'),
    ControlImages(
        name: 'Wordguess 2 Easy',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/Wordguess2EasyTeaser.jpg',
        navUrl: 'https://play.famobi.com/wordguess-2-easy/A-P2VAM'),
    ControlImages(
        name: 'Quick Quiz',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/QuickQuizTeaser.jpg',
        navUrl: 'https://play.famobi.com/quick-quiz/A-P2VAM'),
    ControlImages(
        name: 'Animal Quiz',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/AnimalQuizChristmasTeaser.jpg',
        navUrl: 'https://play.famobi.com/animal-quiz/A-P2VAM'),
  ];

  List<ControlImages> educationalDetails = [
    ControlImages(
        name: 'Find In Mind',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/FindInMind_Teaser.jpg',
        navUrl: 'https://play.famobi.com/find-in-mind/A-P2VAM'),
    ControlImages(
        name: 'Kids Color Book',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/KidsColorBook2Teaser.jpg',
        navUrl: 'https://play.famobi.com/kids-color-book-2/A-P2VAM'),
    ControlImages(
        name: 'Jigsaw Puzzle',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/Jigsaw_Puzzle_Deluxe_Teaser.jpg',
        navUrl: 'https://play.famobi.com/jigsaw-puzzle-deluxe/A-P2VAM'),
    ControlImages(
        name: 'Word Search',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/WordSearchClassicTeaser.jpg',
        navUrl: 'https://play.famobi.com/word-search-classic/A-P2VAM'),
    ControlImages(
        name: '4x Puzzle',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/4xPuzzleTeaser.jpg',
        navUrl: 'https://play.famobi.com/4x-puzzle/A-P2VAM'),
    ControlImages(
        name: '123 Puzzle',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/123PuzzleTeaser.jpg',
        navUrl: 'https://play.famobi.com/123-puzzle/A-P2VAM'),
    ControlImages(
        name: 'Freaking Math',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/FreakingMathTeaser.jpg',
        navUrl: 'https://play.famobi.com/freaking-math/A-P2VAM'),
    ControlImages(
        name: 'Easter Card',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/EasterCardMatchTeaser.jpg',
        navUrl: 'https://play.famobi.com/easter-card-match/A-P2VAM'),
    ControlImages(
        name: 'Match The Animal',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/MatchTheAnimalTeaser.jpg',
        navUrl: 'https://play.famobi.com/match-the-animal/A-P2VAM'),
    ControlImages(
        name: '123 Puzzle',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/123PuzzleTeaser.jpg',
        navUrl: 'https://play.famobi.com/123-puzzle/A-P2VAM'),
    ControlImages(
        name: 'Kiba & Kumba',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/KibaKumbaPuzzleTeaser.jpg',
        navUrl: 'https://play.famobi.com/kiba-kumba-puzzle/A-P2VAM'),
    ControlImages(
        name: 'Puzzle Sea',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/KidsPuzzleSeaTeaser.jpg',
        navUrl: 'https://play.famobi.com/kids-puzzle-sea/A-P2VAM'),
  ];

  List<ControlImages> platformgamesDetails = [
    ControlImages(
        name: 'Plumber Run',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SuperPlumberRunTeaser.jpg',
        navUrl: 'https://play.famobi.com/super-plumber-run/A-P2VAM'),
    ControlImages(
        name: 'Banana Run',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/BananaRun_Teaser.jpg',
        navUrl: 'https://play.famobi.com/banana-run/A-P2VAM'),
    ControlImages(
        name: 'Jungle Run',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/JungleRunTeaser.jpg',
        navUrl: 'https://play.famobi.com/jungle-run/A-P2VAM'),
    ControlImages(
        name: 'Little Giant',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/TheLittleGiantTeaser.jpg',
        navUrl: 'https://play.famobi.com/the-little-giant/A-P2VAM'),
    ControlImages(
        name: 'Nut Rush',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/NutRushTeaser.jpg',
        navUrl: 'https://play.famobi.com/nut-rush/A-P2VAM'),
    ControlImages(
        name: 'Outcome',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/OutcomeTeaser.jpg',
        navUrl: 'https://play.famobi.com/outcome/A-P2VAM'),
    ControlImages(
        name: 'Greedy Rabbit',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/GreedyRabbitTeaser.jpg',
        navUrl: 'https://play.famobi.com/greedy-rabbit/A-P2VAM'),
    ControlImages(
        name: 'Christmas World',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SnowballChristmasWorldTeaser.jpg',
        navUrl: 'https://play.famobi.com/snowball-christmas-world/A-P2VAM'),
    ControlImages(
        name: 'Snowball World',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SnowballWorldTeaser.jpg',
        navUrl: 'https://play.famobi.com/snowball-world/A-P2VAM'),
    ControlImages(
        name: 'Nut Rush 3',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/NutRush3ChristmasTeaser.jpg',
        navUrl: 'https://play.famobi.com/nut-rush3/A-P2VAM'),
    ControlImages(
        name: 'Shadow Run',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/KibaKumbaShadowRunTeaser.jpg',
        navUrl: 'https://play.famobi.com/kk-shadow-run/A-P2VAM'),
    ControlImages(
        name: 'Sweets Monster',
        thumbImg:
            'https://img.cdn.famobi.com/portal/html5games/images/tmp/SweetsMonsterTeaser.jpg',
        navUrl: 'https://play.famobi.com/sweets-monster/A-P2VAM'),
  ];

  List<ControlImages> simpleAdgamesDetails = [
    // ControlImages(
    //     name: 'Pac-man',
    //     thumbImg:
    //         'https://d3frsattnbx5l6.cloudfront.net/1537170387565-pacman-launcher-icon-4x.png',
    //     navUrl: 'https://appsco.pe/launch/pacman'),
    ControlImages(
        name: 'Sudoku',
        thumbImg:
            'https://d3frsattnbx5l6.cloudfront.net/1537695393429-sudoku-android-chrome-512x512.png',
        navUrl: 'https://appsco.pe/launch/sudoku'),
    // ControlImages(
    //     name: 'Hextris',
    //     thumbImg:
    //         'https://d3frsattnbx5l6.cloudfront.net/1532688946432-hextris-Square44x44Logo.targetsize-256_altform-unplated.png',
    //     navUrl: 'https://appsco.pe/launch/hextris'),
    // ControlImages(
    //     name: '2048',
    //     thumbImg:
    //         'https://d3frsattnbx5l6.cloudfront.net/1517942372440-2048.jpg',
    //     navUrl: 'https://appsco.pe/launch/2048'),
    ControlImages(
        name: 'Tower Game',
        thumbImg:
            'https://d3frsattnbx5l6.cloudfront.net/1539285157804-towergame-icon-512.png',
        navUrl: 'https://appsco.pe/launch/towergame'),
    ControlImages(
        name: 'Doodle Cricket',
        thumbImg:
            'https://d3frsattnbx5l6.cloudfront.net/1535443532926-doodlecricket-android-chrome-512x512.png',
        navUrl: 'https://appsco.pe/launch/doodlecricket'),
    ControlImages(
        name: 'Tic Tac Toe',
        thumbImg:
            'https://d3frsattnbx5l6.cloudfront.net/1562616305193-tictactoe-android-icon-512x512.png',
        navUrl: 'https://appsco.pe/launch/tictactoe'),
    ControlImages(
        name: 'grrds Puzzle',
        thumbImg:
            'https://d3frsattnbx5l6.cloudfront.net/1532688939240-grrdspuzzle-g_icon_192.png',
        navUrl: 'https://appsco.pe/launch/grrdspuzzle'),
    ControlImages(
        name: 'Memory Game',
        thumbImg:
            'https://d3frsattnbx5l6.cloudfront.net/1532688817300--192.png',
        navUrl: 'https://appsco.pe/launch/memorygame'),
    // ControlImages(
    //     name: 'Dino Game',
    //     thumbImg:
    //         'https://d3frsattnbx5l6.cloudfront.net/1536211720248-dinogame-android-chrome-144x144.png',
    //     navUrl: 'https://appsco.pe/launch/dinogame'),
    // ControlImages(
    //     name: 'FourChips',
    //     thumbImg:
    //         'https://d3frsattnbx5l6.cloudfront.net/1588148995114-fourchips-four512.png',
    //     navUrl: 'https://appsco.pe/launch/fourchips'),
    // ControlImages(
    //     name: 'CircleGame',
    //     thumbImg:
    //         'https://d3frsattnbx5l6.cloudfront.net/1589182488948-circlegame-icon512.png',
    //     navUrl: 'https://appsco.pe/launch/circlegame'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
              Colors.teal[100],
              Colors.white70,
              Colors.white,
              Colors.white
            ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 5),
              TitleCard('Top Games'),
              TopGamesCarousal(topGameImg: topGameImg),
              SizedBox(height: 25),
              NameRow('Top Picks', topPickDetails),
              HorizontalImageList(listDetails: topPickDetails),
              SizedBox(height: 25),
              NameRow('Puzzle Games', puzzleDetails),
              HorizontalImageList(listDetails: puzzleDetails),
              SizedBox(height: 25),
              NameRow('Multiplayer Games', multiplayerDetails),
              HorizontalImageList(listDetails: multiplayerDetails),
              SizedBox(height: 25),
              NameRow('Simple Games', simpleAdgamesDetails),
              AppScopeGamesList(listDetails: simpleAdgamesDetails),
              SizedBox(height: 25),
              NameRow('Sport Games', sportsDetails),
              HorizontalImageList(listDetails: sportsDetails),
              SizedBox(height: 25),
              NameRow('3D Games', graphic3dgamesDetails),
              HorizontalImageList(listDetails: graphic3dgamesDetails),
              SizedBox(height: 25),
              NameRow('Matching Games', matchinggamesDetails),
              HorizontalImageList(listDetails: matchinggamesDetails),
              SizedBox(height: 25),
              NameRow('Card Games', cardgamesDetails),
              HorizontalImageList(listDetails: cardgamesDetails),
              SizedBox(height: 25),
              NameRow('Quiz Games', quizgamesDetails),
              HorizontalImageList(listDetails: quizgamesDetails),
              SizedBox(height: 25),
              NameRow('Educational Games', educationalDetails),
              HorizontalImageList(listDetails: educationalDetails),
              SizedBox(height: 25),
              NameRow('Platform Games', platformgamesDetails),
              HorizontalImageList(listDetails: platformgamesDetails),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

class NameRow extends StatelessWidget {
  final String titlename;
  final List<ControlImages> listdetails;
  NameRow(this.titlename, this.listdetails);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SubTitle(titlename),
        IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.teal[700],
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GamesList(titlename, listdetails),
                ));
          },
        ),
      ],
    );
  }
}

class TopGamesCarousal extends StatelessWidget {
  const TopGamesCarousal({
    Key key,
    @required this.topGameImg,
  }) : super(key: key);

  final List<ControlImages> topGameImg;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: topGameImg.map((img) {
        return Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SociaGamesWebview(img.name, img.navUrl)));
            },
            child: Container(
              // padding: const EdgeInsets.symmetric(vertical: 2),
              width: MediaQuery.of(context).size.width,
              // margin: const EdgeInsets.symmetric(vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: CachedNetworkImage(
                  imageUrl: img.thumbImg,
                  fit: BoxFit.fill,
                  //   placeholder: (BuildContext context, img) =>
                  //       CircularProgressIndicator(),
                ),
              ),
            ),
          );
        });
      }).toList(),
      options: CarouselOptions(
        height: 185,
        initialPage: 0,
        enlargeCenterPage: true,
        autoPlay: true,
        pauseAutoPlayOnManualNavigate: true,
        // autoPlayInterval: Duration(milliseconds: 50),
      ),
    );
  }
}

class HorizontalImageList extends StatelessWidget {
  const HorizontalImageList({
    Key key,
    @required this.listDetails,
  }) : super(key: key);

  final List<ControlImages> listDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        // shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SociaGamesWebview(
                        listDetails[index].name, listDetails[index].navUrl),
                  ));
            },
            child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CachedNetworkImage(
                      imageUrl: listDetails[index].thumbImg,
                      // placeholder: (context, url) =>
                      //     Center(child: CircularProgressIndicator(),),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    listDetails[index].name,
                    style: GoogleFonts.jotiOne(
                      textStyle: TextStyle(
                        color: Colors.teal[800],
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            )),
        itemCount: listDetails.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  final String title;
  TitleCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Center(
          child: Text(
        title,
        style: GoogleFonts.fasterOne(
          textStyle: TextStyle(
            color: Colors.teal[900],
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
      )),
    );
  }
}

class SubTitle extends StatelessWidget {
  final String title;
  SubTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      alignment: Alignment(-1, 0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.fasterOne(
          textStyle: TextStyle(
            color: Colors.teal[900],
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class AppScopeGamesList extends StatelessWidget {
  const AppScopeGamesList({
    Key key,
    @required this.listDetails,
  }) : super(key: key);

  final List<ControlImages> listDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        // shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SociaGamesWebview(
                        listDetails[index].name, listDetails[index].navUrl),
                  ));
            },
            child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CachedNetworkImage(
                      imageUrl: listDetails[index].thumbImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    listDetails[index].name,
                    style: GoogleFonts.jotiOne(
                      textStyle: TextStyle(
                        color: Colors.teal[800],
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            )),
        itemCount: listDetails.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

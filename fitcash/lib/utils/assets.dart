const String runningIcon = "assets/icons/run.png";
const String introVideo = "assets/videos/intro.mp4";

class Ficons {
  static String main = 'assets/icons/';
  static String fitnessIcon = getName("fitnessIcon.png");
  static String sharingIcon = getName("sharingIcon.png");
  static String summaryIcon = getName("summaryIcon.png");
  static String meetIcon = getName("meetIcon.png");
  static String fitnessIconActive = getName("fitnessIcon-active.png");
  static String sharingIconActive = getName("sharingIcon-active.png");
  static String summaryIconActive = getName("summaryIcon-active.png");

  static String getName(String name) => "$main$name";
}

class Fimages {
  static String main = 'assets/images/';
  static String sharing = getName("sharing.png");

  static String getName(String name) => "$main$name";
}

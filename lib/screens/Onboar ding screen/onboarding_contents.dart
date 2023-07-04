class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your work and get the result",
    image: "assets/Electronic_exams1.png",
    desc: "Remember to keep track of your professional accomplishments.",
  ),
  OnboardingContents(
    title: "Stay organized with team",
    image: "assets/Electronic_exams6.jpg",
    desc:"But understanding the contributions and companies.",
  ),
  OnboardingContents(
    title: "Get notified when work happens",
    image: "assets/Electronic_exams3.jpg",
    desc:"Takecollaborate live or on your own time.",
  ),
];
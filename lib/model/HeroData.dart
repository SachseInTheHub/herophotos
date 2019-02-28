class HeroData {
  final String name;
  final String imageUrl;
  final String originStory;

  HeroData(this.name, this.imageUrl, this.originStory);
}

List<HeroData> getHeroes() {
  return [
    HeroData(
        "SPIDER-MAN",
        "http://i.annihil.us/u/prod/marvel/i/mg/8/a0/52d404a90aeb4.jpg",
        "A bite from a spider somehow granted teenager Peter Parker its arachnid abilities and instead of using them for personal gain, he decided to help others with them. An orphan living with his aunt, May Parker, the boy chose to wear a mask while fighting crime so as not to burden her with his actions. Calling himself Spider-Man and sporting a pair of web-shooting devices he’d constructed, Parker wound up in internet videos which attracted the attention of Tony Stark. The billionaire industrialist deduced Spider-Man’s secret identity and approached Parker at his and May’s home in Queens, New York with a request for aid from the hero in an upcoming confrontation with Captain America and a group of other rogue Avengers and associates. Parker was initially hesitant to even admit his secret career as Spider-Man, but the thrill of adventure and Stark’s talk of responsibility drew him in and he accepted the invitation, as well as a new, high-tech costume and web-shooters."),
    HeroData(
        "THOR",
        "https://nerdist.com/wp-content/uploads/2017/10/2853187-comics_thor_marvel_comics_avengers_mjolnir_fresh_hd_wallpaper.jpg",
        "Born 1500 years ago to Odin and Frigga, the king and queen of fabled Asgard, Thor grew into a mighty warrior and protector of his home and people. Thought to be rash and even reckless by his father, Thor nevertheless looked forward to the day of his ascension to the throne. But, his adoptive brother Loki schemed in private to ensure that day never arrived. He manipulated Thor into attacking the Frost Giants, legendary adversaries of the Asgardians and Loki’s people, and Odin—hoping to teach his son humility—divested Thor of his magic hammer Mjolnir and banished him to Midgard, the realm also known as Earth. Alone and unable to return to Asgard, Thor met scientists Jane Foster and Erik Selvig in the midst of their investigation into strange activity near a small New Mexico town. While his brother struggled with the limitations of mortals on Earth, Loki worked to ensure his own seizure of the Asgardian throne and planned to allow the Frost Giant king—his real father—into Asgard to slay Odin in his sleep. Back on Earth, Thor sacrificed himself to save the town from destruction and in doing so, impressed Odin enough to restore him to full Asgardian power."),
    HeroData(
        "Iron Man",
        "https://cdn1.thr.com/sites/default/files/imagecache/scale_crop_768_433/2015/10/iron_man_comic.jpg",
        "Genius inventor Tony Stark continued his father Howard Stark’s weaponry business after his parents’ untimely deaths and flew it to even greater heights of innovation. While in Afghanistan to demonstrate a new missile for the U.S. military, Stark’s convoy came under fire by a terrorist group known as the Ten Rings and he was severely wounded. Taken prisoner by the group, Stark awoke in their headquarters to learn that shrapnel near his heart had nearly cost him his life, but swift action by scientist and fellow prisoner Ho Yinsen—who had inserted a powerful electromagnet in Stark’s chest—would prolong it temporarily. Stalling his captors after they demanded he build them a new weapon, Stark replaced the magnet with the RT, a miniature version of a device originally designed by his father, the Arc Reactor. Furthermore, he and Yinsen created a crude suit of armor which could provide them the means with which to escape. The suit worked as planned, though Yinsen sacrificed himself in order to allow Tony enough time to power it up to fight their terrorist captors."),
    HeroData(
        "Black Widow",
        "https://static.comicvine.com/uploads/original/11118/111183611/5193180-tumblr_nyxu5mbe891sbqrlmo1_1280.jpg",
        "Natasha Romanoff was trained from a young age to cultivate a very specific set of skills in a Russian facility called the Red Room. There she honed the skills that would turn her into a human warrior who continues to stand shoulder-to-shoulder with super soldiers, Asgardians and people in armored suits. However, she eventually eschewed her KGB masters, switched allegiances and began working for the good guys."),
  ];
}
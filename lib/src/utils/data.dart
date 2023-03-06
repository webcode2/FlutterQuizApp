import 'dart:math';

List<Map<String, dynamic>> data = [
  {
    "category": "General Knowledge",
    "id": "622a1c397cc59eab6f950fb3",
    "correctAnswer": "Apple",
    "incorrectAnswers": ["Microsoft", "Google", "Linux "],
    "question": "Who Make Macintosh Computers?",
    "tags": ["technology", "business", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "easy",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "6396ed6f6017b1e8e09020d0",
    "correctAnswer": "What Hath God Wrought?",
    "incorrectAnswers": [
      "Testing Testing Testing",
      "Good Morning Victory ",
      "You Smell"
    ],
    "question": "What was the first ever message sent via morse code?",
    "tags": ["history", "technology", "firsts", "inventions"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0395ec7d86251f9b65c4e",
    "correctAnswer": "Internet Service Provider",
    "incorrectAnswers": [
      "Internet Service Portal",
      "Internet Software Provider",
      "Internet Search Provider"
    ],
    "question": "In computer networking, is the full form of tje initials ISP?",
    "tags": ["the_internet", "technology", "science", "initials"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "63a0394ac7d86251f9b65c36",
    "correctAnswer": "Google Chrome",
    "incorrectAnswers": ["Mozilla Firefox", "Microsoft Edge", "Safari"],
    "question": "As of 2023, what is the most used web browser?",
    "tags": ["the_internet", "technology", "science"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "622a1c3a7cc59eab6f950ffb",
    "correctAnswer": "China",
    "incorrectAnswers": ["England", "France", "Russia"],
    "question": "Which nation invented Paper?",
    "tags": ["inventions", "technology", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03956c7d86251f9b65c45",
    "correctAnswer": "FTP",
    "incorrectAnswers": ["SSH", "HTTP", "SMTP"],
    "question":
        "Which networking protocol is used to transfer files between two computers?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3e7cc59eab6f952270",
    "correctAnswer": "Modulate Demodulate",
    "incorrectAnswers": ["Modern Demograph", "Modular Emitter", "Mono Demo"],
    "question": "In computing what term does the word modem come from?",
    "tags": ["science", "computing", "words", "the_internet", "technology"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "622a1c367cc59eab6f9503c9",
    "correctAnswer": "Betamax",
    "incorrectAnswers": ["VHS", "SuperMotion", "Videoman"],
    "question":
        "What was the name of the domestic videocassette tape recorder system introduced by Sony in 1975?",
    "tags": ["technology", "1970's", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03959c7d86251f9b65c48",
    "correctAnswer": ".html",
    "incorrectAnswers": [".php", ".js", ".css"],
    "question":
        "On the Internet, what file extension is used for the content of web pages?",
    "tags": [
      "the_internet",
      "technology",
      "science",
      "computing",
      "software_engineering"
    ],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3e7cc59eab6f95225c",
    "correctAnswer": "Joint Photographic Experts Group",
    "incorrectAnswers": [
      "Joyful Pictures Editable Graphics",
      "Judged Process Edging Gaps",
      "Jagged Point Enabled Graphs"
    ],
    "question": "In computing what do the initials JPEG stand for?",
    "tags": ["science", "words", "initials", "computing", "technology"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0395bc7d86251f9b65c4b",
    "correctAnswer": "Domain Name System",
    "incorrectAnswers": [
      "Data Network Server",
      "Dynamic Network System",
      "Data Name System"
    ],
    "question": "In computer networking, what does DNS stand for?",
    "tags": ["the_internet", "technology", "science", "initials", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3a7cc59eab6f95107c",
    "correctAnswer": "Virtual Reality",
    "incorrectAnswers": [
      "Augmented Reality",
      "Visual Hologram",
      "Immersive Space"
    ],
    "question":
        "What 2 Word Term Is Given To A Simulated 3D Environment Used in Computer Graphics? ",
    "tags": ["technology", "computing", "science"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0394fc7d86251f9b65c3c",
    "correctAnswer": "SMTP",
    "incorrectAnswers": ["FTP", "HTTP", "DNS"],
    "question": "Which protocol is used to send and receive emails?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3c7cc59eab6f9519c9",
    "correctAnswer": "Atari",
    "incorrectAnswers": ["Sega", "Nintendo", "Sony"],
    "question": "What company made the first color arcade game?",
    "tags": ["video_games", "firsts", "technology", "science"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03948c7d86251f9b65c33",
    "correctAnswer": "Uniform Resource Locator",
    "incorrectAnswers": [
      "Unique Resource Linker",
      "Uniform Resource Linker",
      "Universal Resource Locator"
    ],
    "question": "In computer networking, what do the initials URL stand for?",
    "tags": ["the_internet", "technology", "science", "initials"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0393dc7d86251f9b65c26",
    "correctAnswer": "Hypertext Markup Language",
    "incorrectAnswers": [
      "High Tech Machine Language",
      "Hypertext Transfer Model",
      "Hardware Technology Marker Language"
    ],
    "question": "What does HTML stand for?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "622a1c3a7cc59eab6f951097",
    "correctAnswer": "Stealth",
    "incorrectAnswers": ["Supersonic", "Automated", "Nuclear"],
    "question":
        "The Lockheed F-117 Nighthawk Was The First Of Which Type Of Aircraft?",
    "tags": ["technology", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03963c7d86251f9b65c52",
    "correctAnswer": "HTTP",
    "incorrectAnswers": ["DNS", "SMTP", "FTP"],
    "question": "Which protocol is used to access webpages?",
    "tags": ["the_internet", "technology", "science"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": true
  },
  {
    "category": "Science",
    "id": "63a03954c7d86251f9b65c42",
    "correctAnswer": "Internet Protocol",
    "incorrectAnswers": [
      "Information Protocol",
      "Internet Program",
      "Internet Portal"
    ],
    "question": "In computer networking, what is meaning of the initials IP?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03960c7d86251f9b65c50",
    "correctAnswer": "wget",
    "incorrectAnswers": ["download", "get", "fetch"],
    "question":
        "Which popular software command is used to download a file from a web server?",
    "tags": ["the_internet", "technology", "computing"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": true
  },
  {
    "category": "General Knowledge",
    "id": "622a1c397cc59eab6f950fb3",
    "correctAnswer": "Apple",
    "incorrectAnswers": ["Microsoft", "Google", "Linux"],
    "question": "Who Make Macintosh Computers?",
    "tags": ["technology", "business", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "easy",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "6396ed6f6017b1e8e09020d0",
    "correctAnswer": "What Hath God Wrought?",
    "incorrectAnswers": [
      "Testing Testing Testing",
      "Good Morning Victory ",
      "You Smell"
    ],
    "question": "What was the first ever message sent via morse code?",
    "tags": ["history", "technology", "firsts", "inventions"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0395ec7d86251f9b65c4e",
    "correctAnswer": "Internet Service Provider",
    "incorrectAnswers": [
      "Internet Service Portal",
      "Internet Software Provider",
      "Internet Search Provider"
    ],
    "question": "In computer networking, is the full form of tje initials ISP?",
    "tags": ["the_internet", "technology", "science", "initials"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "63a0394ac7d86251f9b65c36",
    "correctAnswer": "Google Chrome",
    "incorrectAnswers": ["Mozilla Firefox", "Microsoft Edge", "Safari"],
    "question": "As of 2023, what is the most used web browser?",
    "tags": ["the_internet", "technology", "science"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "622a1c3a7cc59eab6f950ffb",
    "correctAnswer": "China",
    "incorrectAnswers": ["England", "France", "Russia"],
    "question": "Which nation invented Paper?",
    "tags": ["inventions", "technology", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03956c7d86251f9b65c45",
    "correctAnswer": "FTP",
    "incorrectAnswers": ["SSH", "HTTP", "SMTP"],
    "question":
        "Which networking protocol is used to transfer files between two computers?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3e7cc59eab6f952270",
    "correctAnswer": "Modulate Demodulate",
    "incorrectAnswers": ["Modern Demograph", "Modular Emitter", "Mono Demo"],
    "question": "In computing what term does the word modem come from?",
    "tags": ["science", "computing", "words", "the_internet", "technology"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "622a1c367cc59eab6f9503c9",
    "correctAnswer": "Betamax",
    "incorrectAnswers": ["VHS", "SuperMotion", "Videoman"],
    "question":
        "What was the name of the domestic videocassette tape recorder system introduced by Sony in 1975?",
    "tags": ["technology", "1970's", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03959c7d86251f9b65c48",
    "correctAnswer": ".html",
    "incorrectAnswers": [".php", ".js", ".css"],
    "question":
        "On the Internet, what file extension is used for the content of web pages?",
    "tags": [
      "the_internet",
      "technology",
      "science",
      "computing",
      "software_engineering"
    ],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3e7cc59eab6f95225c",
    "correctAnswer": "Joint Photographic Experts Group",
    "incorrectAnswers": [
      "Joyful Pictures Editable Graphics",
      "Judged Process Edging Gaps",
      "Jagged Point Enabled Graphs"
    ],
    "question": "In computing what do the initials JPEG stand for?",
    "tags": ["science", "words", "initials", "computing", "technology"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0395bc7d86251f9b65c4b",
    "correctAnswer": "Domain Name System",
    "incorrectAnswers": [
      "Data Network Server",
      "Dynamic Network System",
      "Data Name System"
    ],
    "question": "In computer networking, what does DNS stand for?",
    "tags": ["the_internet", "technology", "science", "initials", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3a7cc59eab6f95107c",
    "correctAnswer": "Virtual Reality",
    "incorrectAnswers": [
      "Augmented Reality",
      "Visual Hologram",
      "Immersive Space"
    ],
    "question":
        "What 2 Word Term Is Given To A Simulated 3D Environment Used in Computer Graphics? ",
    "tags": ["technology", "computing", "science"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0394fc7d86251f9b65c3c",
    "correctAnswer": "SMTP",
    "incorrectAnswers": ["FTP", "HTTP", "DNS"],
    "question": "Which protocol is used to send and receive emails?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "622a1c3c7cc59eab6f9519c9",
    "correctAnswer": "Atari",
    "incorrectAnswers": ["Sega", "Nintendo", "Sony"],
    "question": "What company made the first color arcade game?",
    "tags": ["video_games", "firsts", "technology", "science"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03948c7d86251f9b65c33",
    "correctAnswer": "Uniform Resource Locator",
    "incorrectAnswers": [
      "Unique Resource Linker",
      "Uniform Resource Linker",
      "Universal Resource Locator"
    ],
    "question": "In computer networking, what do the initials URL stand for?",
    "tags": ["the_internet", "technology", "science", "initials"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a0393dc7d86251f9b65c26",
    "correctAnswer": "Hypertext Markup Language",
    "incorrectAnswers": [
      "High Tech Machine Language",
      "Hypertext Transfer Model",
      "Hardware Technology Marker Language"
    ],
    "question": "What does HTML stand for?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "General Knowledge",
    "id": "622a1c3a7cc59eab6f951097",
    "correctAnswer": "Stealth",
    "incorrectAnswers": ["Supersonic", "Automated", "Nuclear"],
    "question":
        "The Lockheed F-117 Nighthawk Was The First Of Which Type Of Aircraft?",
    "tags": ["technology", "general_knowledge"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03963c7d86251f9b65c52",
    "correctAnswer": "HTTP",
    "incorrectAnswers": ["DNS", "SMTP", "FTP"],
    "question": "Which protocol is used to access webpages?",
    "tags": ["the_internet", "technology", "science"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": true
  },
  {
    "category": "Science",
    "id": "63a03954c7d86251f9b65c42",
    "correctAnswer": "Internet Protocol",
    "incorrectAnswers": [
      "Information Protocol",
      "Internet Program",
      "Internet Portal"
    ],
    "question": "In computer networking, what is meaning of the initials IP?",
    "tags": ["the_internet", "technology", "science", "computing"],
    "type": "Multiple Choice",
    "difficulty": "hard",
    "regions": [],
    "isNiche": false
  },
  {
    "category": "Science",
    "id": "63a03960c7d86251f9b65c50",
    "correctAnswer": "wget",
    "incorrectAnswers": ["download", "get", "fetch"],
    "question":
        "Which popular software command is used to download a file from a web server?",
    "tags": ["the_internet", "technology", "computing"],
    "type": "Multiple Choice",
    "difficulty": "medium",
    "regions": [],
    "isNiche": true
  }
];

class Question {
  String category;
  String id;
  String correctAnswer;
  List<String> options;
  String question;
  List tags;
  String type;
  String difficulty;
  List? region;
  bool isNiche;
  Question(
    this.category,
    this.id,
    this.correctAnswer,
    this.options,
    this.question,
    this.tags,
    this.type,
    this.region,
    this.isNiche,
    this.difficulty,
  );
}

class Qbrain {
  int qN = 0;
  Map<String, bool> option = {};
  final List<Question> _qBank = [];

  Qbrain() {
    _buildQ();
  }

  void _buildQ() {
    for (Map q in data) {
      List<String> options = [...q["incorrectAnswers"], (q['correctAnswer'])];
      options.shuffle(Random.secure());

      _qBank.add(Question(
        q["category"],
        q["id"],
        q['correctAnswer'],
        options,
        q["question"],
        q["tags"],
        q["type"],
        q["region"],
        q["isNiche"],
        q["difficulty"],
      ));
    }
  }

  void nextQuest() {
    qN < data.length - 1 ? qN++ : null;
  }

  Question getQuestion() => _qBank[qN];
}

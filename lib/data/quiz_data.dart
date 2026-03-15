// lib/data/quiz_data.dart
import '../models/question.dart';
import '../models/level.dart';

// Helper pour créer une question rapidement
Question q(
  String id,
  String frTitle,
  String enTitle,
  List<List<String>> opts, // [[fr, en], ...]
  int correct,
  String frExpl,
  String enExpl,
  String frKnow,
  String enKnow,
  String source,
  List<String> tags,
) {
  return Question(
    id: id,
    title: {'fr': frTitle, 'en': enTitle},
    options: opts.map((o) => {'fr': o[0], 'en': o[1]}).toList(),
    correctIndex: correct,
    explanation: {'fr': frExpl, 'en': enExpl},
    didYouKnow: {'fr': frKnow, 'en': enKnow},
    source: source,
    tags: tags,
  );
}

final Map<String, List<Level>> allQuizData = {
  // ════════════════════════════════════════════════
  //  HISTOIRE
  // ════════════════════════════════════════════════
  "Histoire": [
    Level(number: 1, title: "Les Fondements", isLocked: false, questions: [
      q(
          "h1_1",
          "En quelle année la Haute-Volta est-elle devenue le Burkina Faso ?",
          "In what year did Upper Volta become Burkina Faso?",
          [
            ["1983", "1983"],
            ["1984", "1984"],
            ["1987", "1987"],
            ["1960", "1960"]
          ],
          1,
          "C'est le 4 août 1984, lors du 1er anniversaire de la Révolution.",
          "It was on August 4, 1984, during the 1st anniversary of the Revolution.",
          "Le nom combine le Mooré et le Dioula.",
          "The name combines Mooré and Dioula.",
          "Archives nationales",
          ["révolution", "1984"]),
      q(
          "h1_2",
          "Que signifie 'Burkina Faso' ?",
          "What does 'Burkina Faso' mean?",
          [
            ["Pays de la Révolution", "Land of Revolution"],
            ["Terre de savane", "Savannah land"],
            ["Patrie des hommes intègres", "Land of upright men"],
            ["Pays des ancêtres", "Land of ancestors"]
          ],
          2,
          "'Burkina' (hommes intègres en Mooré) + 'Faso' (patrie en Dioula).",
          "'Burkina' (upright men in Mooré) + 'Faso' (homeland in Dioula).",
          "'Burkina' vient du Mooré, 'Faso' du Dioula.",
          "'Burkina' is from Mooré, 'Faso' from Dioula.",
          "Dictionnaires locaux",
          ["langue", "étymologie"]),
      q(
          "h1_3",
          "Qui a dirigé la Révolution du 4 août 1983 ?",
          "Who led the August 4, 1983 Revolution?",
          [
            ["Blaise Compaoré", "Blaise Compaoré"],
            ["Thomas Sankara", "Thomas Sankara"],
            ["Maurice Yaméogo", "Maurice Yaméogo"],
            ["Gérard Kango Ouédraogo", "Gérard Kango Ouédraogo"]
          ],
          1,
          "Thomas Sankara a conduit le coup d'État et est devenu président du CNR.",
          "Thomas Sankara led the coup and became president of the CNR.",
          "Sankara est surnommé 'le Che Guevara africain'.",
          "Sankara is nicknamed 'the African Che Guevara'.",
          "Archives nationales",
          ["Sankara", "révolution"]),
      q(
          "h1_4",
          "En quelle année le Burkina Faso a-t-il obtenu son indépendance ?",
          "In what year did Burkina Faso gain independence?",
          [
            ["1958", "1958"],
            ["1960", "1960"],
            ["1962", "1962"],
            ["1966", "1966"]
          ],
          1,
          "La Haute-Volta a obtenu son indépendance de la France le 5 août 1960.",
          "Upper Volta gained independence from France on August 5, 1960.",
          "Maurice Yaméogo fut le premier président.",
          "Maurice Yaméogo was the first president.",
          "Histoire nationale",
          ["indépendance", "1960"]),
      q(
          "h1_5",
          "Quelle est la capitale du Burkina Faso ?",
          "What is the capital of Burkina Faso?",
          [
            ["Bobo-Dioulasso", "Bobo-Dioulasso"],
            ["Koudougou", "Koudougou"],
            ["Ouagadougou", "Ouagadougou"],
            ["Banfora", "Banfora"]
          ],
          2,
          "Ouagadougou est la capitale politique et économique.",
          "Ouagadougou is the political and economic capital.",
          "Les habitants l'appellent affectueusement 'Ouaga'.",
          "Residents affectionately call it 'Ouaga'.",
          "Géographie nationale",
          ["capitale"]),
      q(
          "h1_6r",
          "Quel nom a été donné au régime de Thomas Sankara (1983-1987) ?",
          "What name was given to Thomas Sankara's regime (1983-1987)?",
          [
            [
              "La Révolution Démocratique et Populaire (RDP)",
              "The Democratic and Popular Revolution (RDP)"
            ],
            ["La Première République", "The First Republic"],
            [
              "Le Conseil National de la Révolution (CNR)",
              "The National Council of the Revolution (CNR)"
            ],
            ["L'Empire Mossi", "The Mossi Empire"]
          ],
          0,
          "Le régime de Sankara (1983-1987) s'appelait officiellement la Révolution Démocratique et Populaire.",
          "Sankara's regime (1983-1987) was officially called the Democratic and Popular Revolution.",
          "Le CNR était l'organe dirigeant de la révolution sankariste.",
          "The CNR was the governing body of the Sankarist revolution.",
          "Révolution burkinabè",
          ["Sankara", "RDP"]),
      q(
          "h1_7r",
          "Quelle devise adopte Sankara pour symboliser la révolution burkinabè ?",
          "What motto did Sankara adopt to symbolize the Burkinabè revolution?",
          [
            [
              "Patrie ou Mort, Nous Vaincrons",
              "Fatherland or Death, We Will Win"
            ],
            ["Liberté, Égalité, Fraternité", "Liberty, Equality, Fraternity"],
            ["L'union fait la force", "Unity is strength"],
            ["Travail, Progrès, Justice", "Work, Progress, Justice"]
          ],
          0,
          "Sankara a adopté la devise révolutionnaire Patrie ou Mort, Nous Vaincrons inspirée de Cuba.",
          "Sankara adopted the revolutionary motto Fatherland or Death, We Will Win inspired by Cuba.",
          "Cette devise reflétait l'esprit de sacrifice total pour la révolution.",
          "This motto reflected the spirit of total sacrifice for the revolution.",
          "Symbolique révolutionnaire",
          ["devise", "révolution"]),
      q(
          "h1_8r",
          "Quand la Haute-Volta a-t-elle obtenu son indépendance de la France ?",
          "When did Upper Volta gain independence from France?",
          [
            ["5 août 1960", "August 5, 1960"],
            ["11 décembre 1958", "December 11, 1958"],
            ["4 août 1984", "August 4, 1984"],
            ["15 janvier 1966", "January 15, 1966"]
          ],
          0,
          "La Haute-Volta a proclamé son indépendance le 5 août 1960 sous la présidence de Maurice Yaméogo.",
          "Upper Volta proclaimed its independence on August 5, 1960 under President Maurice Yaméogo.",
          "Maurice Yaméogo fut le premier président de la Haute-Volta.",
          "Maurice Yaméogo was the first president of Upper Volta.",
          "Archives nationales",
          ["indépendance", "1960"]),
      q(
          "h1_9r",
          "Quel était le nom du premier parti politique de la Haute-Volta ?",
          "What was the name of the first political party of Upper Volta?",
          [
            ["Union Démocratique Voltaïque", "Voltaic Democratic Union"],
            ["Rassemblement Démocratique Africain", "African Democratic Rally"],
            ["Parti Démocratique Unifié", "United Democratic Party"],
            ["Front Populaire", "Popular Front"]
          ],
          1,
          "Le Rassemblement Démocratique Africain (RDA) fut la première organisation politique majeure en Haute-Volta.",
          "The African Democratic Rally (RDA) was the first major political organization in Upper Volta.",
          "Le RDA était un mouvement panafricain créé en 1946.",
          "The RDA was a pan-African movement created in 1946.",
          "Histoire politique",
          ["parti", "RDA"]),
      q(
          "h1_10r",
          "Quel événement a précédé l'indépendance de la Haute-Volta en 1960 ?",
          "What event preceded the independence of Upper Volta in 1960?",
          [
            [
              "La création de la République autonome en 1958",
              "The creation of the autonomous Republic in 1958"
            ],
            ["Une guerre civile", "A civil war"],
            ["Un référendum national", "A national referendum"],
            ["Une révolution militaire", "A military revolution"]
          ],
          0,
          "En 1958, la Haute-Volta devient une République autonome au sein de la Communauté française, étape avant l'indépendance de 1960.",
          "In 1958, Upper Volta became an autonomous Republic within the French Community, a step before independence in 1960.",
          "Cette autonomie a permis à la Haute-Volta de préparer progressivement son indépendance.",
          "This autonomy allowed Upper Volta to gradually prepare for independence.",
          "Archives nationales",
          ["indépendance", "1958"]),
    ]),
    Level(number: 2, title: "La Révolution", isLocked: true, questions: [
      q(
          "h2_1",
          "Quel soulèvement populaire a mis fin au régime de Compaoré en 2014 ?",
          "What uprising ended Compaoré's regime in 2014?",
          [
            [
              "L'insurrection des 30-31 octobre 2014",
              "The uprising of October 30-31, 2014"
            ],
            ["La révolution du 4 août", "The August 4 revolution"],
            ["Un coup d'État militaire", "A military coup"],
            ["Des élections générales", "General elections"]
          ],
          0,
          "Les 30-31 octobre 2014, le peuple s'est soulevé contre une modification constitutionnelle.",
          "On October 30-31, 2014, the people rose against a constitutional modification.",
          "L'Assemblée nationale a été incendiée.",
          "The National Assembly was set on fire.",
          "Histoire contemporaine",
          ["insurrection", "2014"]),
      q(
          "h2_2",
          "Quelle organisation a succédé au CNR après 1987 ?",
          "Which organization succeeded the CNR after 1987?",
          [
            ["Le Front Populaire", "The Popular Front"],
            ["L'Union Démocratique", "The Democratic Union"],
            ["Le Congrès National", "The National Congress"],
            ["Le Parlement Provisoire", "The Provisional Parliament"]
          ],
          0,
          "Après l'assassinat de Sankara, Blaise Compaoré a créé le Front Populaire.",
          "After Sankara's assassination, Blaise Compaoré created the Popular Front.",
          "Compaoré a dirigé le pays jusqu'en 2014.",
          "Compaoré led the country until 2014.",
          "Histoire politique",
          ["Compaoré", "FP"]),
      q(
          "h2_3",
          "Quelle politique Sankara a-t-il lancée pour l'autosuffisance alimentaire ?",
          "What policy did Sankara launch for food self-sufficiency?",
          [
            [
              "La bataille pour l'autosuffisance alimentaire",
              "The battle for food self-sufficiency"
            ],
            ["La politique du tout-coton", "The all-cotton policy"],
            ["L'opération charrue", "Operation plow"],
            ["Le plan céréalier", "The cereal plan"]
          ],
          0,
          "Sankara a lancé une politique pour que le Burkina produise sa propre nourriture.",
          "Sankara launched a policy for Burkina to produce its own food.",
          "Il a planté des millions d'arbres contre la désertification.",
          "He planted millions of trees against desertification.",
          "Révolution burkinabè",
          ["Sankara", "agriculture"]),
      q(
          "h2_4",
          "Quel était le nom du conseil révolutionnaire dirigé par Sankara ?",
          "What was the name of the revolutionary council led by Sankara?",
          [
            [
              "CNR (Conseil National de la Révolution)",
              "CNR (National Council of the Revolution)"
            ],
            [
              "CPR (Comité Populaire Révolutionnaire)",
              "CPR (Popular Revolutionary Committee)"
            ],
            [
              "FPB (Front Populaire Burkinabè)",
              "FPB (Burkinabè Popular Front)"
            ],
            [
              "MDP (Mouvement Démocratique Populaire)",
              "MDP (Popular Democratic Movement)"
            ]
          ],
          0,
          "Le CNR (Conseil National de la Révolution) a gouverné de 1983 à 1987.",
          "The CNR (National Council of the Revolution) governed from 1983 to 1987.",
          "Le CNR a lancé les Comités de Défense de la Révolution (CDR) dans tout le pays.",
          "The CNR launched Committees for the Defense of the Revolution (CDR) nationwide.",
          "Archives politiques",
          ["CNR", "Sankara"]),
      q(
          "h2_5",
          "Quelle date marque l'anniversaire de la Révolution célébrée sous Sankara ?",
          "What date marks the Revolution anniversary celebrated under Sankara?",
          [
            ["4 août", "August 4"],
            ["5 août", "August 5"],
            ["11 décembre", "December 11"],
            ["1er janvier", "January 1"]
          ],
          0,
          "Le 4 août 1983 est la date du coup d'État qui a lancé la Révolution.",
          "August 4, 1983 is the date of the coup that launched the Revolution.",
          "C'est aussi la date où la Haute-Volta est devenue Burkina Faso en 1984.",
          "It is also the date Upper Volta became Burkina Faso in 1984.",
          "Calendrier national",
          ["4 août", "révolution"]),
      q(
          "h2_6r",
          "Quelles étaient les Comités de Défense de la Révolution (CDR) ?",
          "What were the Committees for the Defense of the Revolution (CDR)?",
          [
            [
              "Des comités populaires chargés d'implanter la révolution dans chaque village",
              "Popular committees tasked with implementing the revolution in each village"
            ],
            ["Des tribunaux militaires", "Military tribunals"],
            ["Des partis d'opposition tolérés", "Tolerated opposition parties"],
            ["Des coopératives agricoles", "Agricultural cooperatives"]
          ],
          0,
          "Les CDR encadraient la population à la base et mobilisaient pour les chantiers révolutionnaires.",
          "The CDRs organized the population at the grassroots and mobilized for revolutionary projects.",
          "Ils ont été renommés Comités Révolutionnaires (CR) en 1984.",
          "They were renamed Revolutionary Committees (RC) in 1984.",
          "Institutions révolutionnaires",
          ["CDR", "révolution"]),
      q(
          "h2_7r",
          "Quelle grande réforme foncière Sankara a-t-il lancée en 1984 ?",
          "What major land reform did Sankara launch in 1984?",
          [
            [
              "La nationalisation des terres et redistribution aux paysans",
              "The nationalization of land and redistribution to peasants"
            ],
            [
              "La privatisation des terres agricoles",
              "The privatization of agricultural land"
            ],
            [
              "La création de grandes plantations d'État",
              "The creation of large state plantations"
            ],
            [
              "L'attribution des terres aux chefs coutumiers",
              "The attribution of land to traditional chiefs"
            ]
          ],
          0,
          "Sankara a nationalisé les terres pour les redistribuer aux paysans et briser le pouvoir foncier féodal.",
          "Sankara nationalized land to redistribute it to peasants and break feudal land power.",
          "Cette réforme a profondément bouleversé les rapports sociaux ruraux.",
          "This reform profoundly transformed rural social relations.",
          "Réforme agraire",
          ["terre", "paysans"]),
      q(
          "h2_8r",
          "Quel coup d'État a renversé Thomas Sankara le 15 octobre 1987 ?",
          "What coup overthrew Thomas Sankara on October 15, 1987?",
          [
            ["Le coup de Blaise Compaoré", "Blaise Compaoré's coup"],
            ["Un soulèvement populaire", "A popular uprising"],
            ["Une intervention étrangère", "A foreign intervention"],
            ["Un coup militaire interne", "An internal military coup"]
          ],
          0,
          "Blaise Compaoré a renversé et tué Thomas Sankara le 15 octobre 1987 lors d'un coup d'État.",
          "Blaise Compaoré overthrew and killed Thomas Sankara on October 15, 1987 in a coup.",
          "Sankara fut tué à seulement 37 ans lors de ce coup d'État.",
          "Sankara was killed at only 37 years old during this coup.",
          "Histoire politique",
          ["Sankara", "1987"]),
      q(
          "h2_9r",
          "Quel était le nom du mouvement créé par Sankara pour mobiliser la jeunesse ?",
          "What was the name of the movement created by Sankara to mobilize youth?",
          [
            [
              "Comités de Défense de la Révolution",
              "Committees for the Defense of the Revolution"
            ],
            ["Mouvement Burkinabè Populaire", "Burkinabè Popular Movement"],
            ["Front National Révolutionnaire", "National Revolutionary Front"],
            ["Union de la Jeunesse Voltaïque", "Voltaic Youth Union"]
          ],
          0,
          "Les Comités de Défense de la Révolution (CDR) encadraient la mobilisation politique et sociale.",
          "The Committees for the Defense of the Revolution (CDR) supervised political and social mobilization.",
          "Les CDR remplaçaient les structures traditionnelles d'organisation sociale.",
          "CDRs replaced traditional structures of social organization.",
          "Révolution burkinabè",
          ["CDR", "révolution"]),
      q(
          "h2_10r",
          "Quel surnom populaire désignait Thomas Sankara parmi les jeunes Africains ?",
          "What popular nickname did young Africans give to Thomas Sankara?",
          [
            ["Le Che Guevara africain", "The African Che Guevara"],
            ["Le Mandela du Sahel", "The Mandela of the Sahel"],
            ["Le Lumumba moderne", "The modern Lumumba"],
            ["Le roi du Burkina", "The king of Burkina"]
          ],
          0,
          "Thomas Sankara était surnommé 'le Che Guevara africain' pour son idéologie révolutionnaire panafricaine.",
          "Thomas Sankara was nicknamed 'the African Che Guevara' for his Pan-African revolutionary ideology.",
          "Comme Che Guevara, Sankara portait une tenue militaire simple et défendait les opprimés.",
          "Like Che Guevara, Sankara wore simple military dress and defended the oppressed.",
          "Biographie",
          ["Sankara", "Che Guevara"]),
    ]),
    Level(number: 3, title: "Mémoire et Avenir", isLocked: true, questions: [
      q(
          "h3_1",
          "Quel est l'objectif principal d'une commémoration nationale ?",
          "What is the main purpose of a national commemoration?",
          [
            [
              "Rappeler un événement et renforcer la mémoire collective",
              "Recall an event and strengthen collective memory"
            ],
            ["Vendre des produits souvenirs", "Sell souvenirs"],
            ["Changer la monnaie nationale", "Change the national currency"],
            ["Réorganiser les frontières", "Reorganize borders"]
          ],
          0,
          "Les commémorations rappellent des événements importants et transmettent des leçons historiques.",
          "Commemorations recall important events and transmit historical lessons.",
          "Elles rassemblent la population autour de valeurs partagées.",
          "They unite people around shared values.",
          "Histoire civique",
          ["mémoire", "commémoration"]),
      q(
          "h3_2",
          "Pourquoi conserver des archives historiques ?",
          "Why preserve historical archives?",
          [
            [
              "Pour comprendre le passé et guider le futur",
              "To understand the past and guide the future"
            ],
            ["Pour décorer les bâtiments", "To decorate buildings"],
            ["Pour augmenter les impôts", "To raise taxes"],
            ["Pour réduire l'alphabétisation", "To reduce literacy"]
          ],
          0,
          "Les archives préservent la mémoire et permettent la recherche et l'éducation.",
          "Archives preserve memory and enable research and education.",
          "Les archives peuvent être numérisées pour une meilleure accessibilité.",
          "Archives can be digitized for better accessibility.",
          "Musées et bibliothèques",
          ["archives", "mémoire"]),
      q(
          "h3_3",
          "Quel document officialise les symboles nationaux ?",
          "What document formalizes national symbols?",
          [
            [
              "La Constitution ou les lois spécifiques",
              "The Constitution or specific laws"
            ],
            ["Un contrat privé", "A private contract"],
            ["Un bulletin municipal", "A municipal bulletin"],
            ["Une affiche publique", "A public poster"]
          ],
          0,
          "Les symboles nationaux sont définis par la Constitution ou des lois spécifiques.",
          "National symbols are defined by the Constitution or specific laws.",
          "Les symboles servent à renforcer l'unité nationale.",
          "Symbols serve to strengthen national unity.",
          "Textes officiels",
          ["symboles", "constitution"]),
      q(
          "h3_4",
          "Quel événement a conduit à l'organisation d'élections présidentielles au Burkina Faso en 2015 ?",
          "What event led to presidential elections in Burkina Faso in 2015?",
          [
            [
              "L'insurrection populaire d'octobre 2014",
              "The popular uprising of October 2014"
            ],
            [
              "La mort naturelle du président",
              "The natural death of the president"
            ],
            ["Un accord de paix régional", "A regional peace agreement"],
            ["Une décision de l'Union Africaine", "An African Union decision"]
          ],
          0,
          "Après l'insurrection de 2014, une transition a mené aux élections de novembre 2015.",
          "After the 2014 uprising, a transition led to the November 2015 elections.",
          "Roch Marc Christian Kaboré a remporté ces premières élections post-transition.",
          "Roch Marc Christian Kaboré won these first post-transition elections.",
          "Histoire contemporaine",
          ["élections", "transition"]),
      q(
          "h3_5",
          "Quel est le rôle de la jeunesse dans la construction nationale ?",
          "What is the role of youth in national building?",
          [
            [
              "Être acteur du développement et défenseur des valeurs républicaines",
              "Be an actor of development and defender of republican values"
            ],
            [
              "Observer passivement les décisions des aînés",
              "Passively observe elders' decisions"
            ],
            ["Éviter la politique", "Avoid politics"],
            ["Attendre l'aide internationale", "Wait for international aid"]
          ],
          0,
          "La jeunesse est le moteur du changement et de l'innovation dans une nation.",
          "Youth is the engine of change and innovation in a nation.",
          "Les mouvements de jeunesse ont joué un rôle clé dans l'insurrection de 2014.",
          "Youth movements played a key role in the 2014 uprising.",
          "Civique",
          ["jeunesse", "développement"]),
      q(
          "h3_6r",
          "Quelle était la politique de Sankara sur la dette extérieure ?",
          "What was Sankara's policy on external debt?",
          [
            [
              "Il dénonçait la dette comme un outil de domination néocoloniale",
              "He denounced debt as a tool of neo-colonial domination"
            ],
            [
              "Il remboursait scrupuleusement toutes les dettes",
              "He scrupulously repaid all debts"
            ],
            [
              "Il empruntait massivement auprès du FMI",
              "He borrowed massively from the IMF"
            ],
            ["Il ignorait la question de la dette", "He ignored the debt issue"]
          ],
          0,
          "Sankara a prononcé un discours célèbre à l'OUA en 1987 appelant à l'annulation collective de la dette africaine.",
          "Sankara gave a famous speech at the OAU in 1987 calling for collective cancellation of African debt.",
          "Il disait que la dette a été contractée contre les peuples africains.",
          "He said debt was contracted against African peoples.",
          "Discours de Addis-Abeba",
          ["dette", "néocolonialisme"]),
      q(
          "h3_7r",
          "Quel était le rôle des femmes dans la révolution de Sankara ?",
          "What was the role of women in Sankara's revolution?",
          [
            [
              "Sankara les a émancipées : accès aux postes politiques, lutte contre excision et mariage forcé",
              "Sankara emancipated them: access to political posts, fight against FGM and forced marriage"
            ],
            [
              "Les femmes étaient exclues de la révolution",
              "Women were excluded from the revolution"
            ],
            [
              "Les femmes n'avaient que des rôles domestiques",
              "Women only had domestic roles"
            ],
            [
              "Les femmes dirigeaient seules la révolution",
              "Women led the revolution alone"
            ]
          ],
          0,
          "Sankara a nommé des femmes ministres, officières et a interdit l'excision et le lévirat.",
          "Sankara appointed women as ministers, officers and banned FGM and levirate.",
          "Il disait que la révolution ne peut triompher sans la libération de la femme.",
          "He said the revolution cannot triumph without the liberation of women.",
          "Émancipation féminine",
          ["femmes", "émancipation"]),
      q(
          "h3_8r",
          "Que s'est-il passé au Burkina Faso le 24 janvier 2022 ?",
          "What happened in Burkina Faso on January 24, 2022?",
          [
            ["Un coup d'État militaire", "A military coup"],
            ["Des élections présidentielles", "Presidential elections"],
            ["Une conférence internationale", "An international conference"],
            ["Une catastrophe naturelle", "A natural disaster"]
          ],
          0,
          "Le lieutenant-colonel Paul-Henri Sandaogo Damiba a pris le pouvoir le 24 janvier 2022 lors d'un coup d'État.",
          "Lieutenant-Colonel Paul-Henri Sandaogo Damiba seized power on January 24, 2022 in a coup.",
          "Ce coup a renversé le président élu Roch Marc Christian Kaboré.",
          "This coup overthrew elected president Roch Marc Christian Kaboré.",
          "Actualité politique",
          ["coup", "2022"]),
      q(
          "h3_9r",
          "Qui dirige le Burkina Faso depuis le coup d'État de septembre 2022 ?",
          "Who has led Burkina Faso since the September 2022 coup?",
          [
            ["Ibrahim Traoré", "Ibrahim Traoré"],
            ["Paul-Henri Damiba", "Paul-Henri Damiba"],
            ["Blaise Compaoré", "Blaise Compaoré"],
            ["Roch Kaboré", "Roch Kaboré"]
          ],
          0,
          "Le capitaine Ibrahim Traoré a renversé Damiba le 30 septembre 2022 et dirige le pays depuis.",
          "Captain Ibrahim Traoré overthrew Damiba on September 30, 2022 and has led the country since.",
          "Ibrahim Traoré est devenu l'un des plus jeunes chefs d'État d'Afrique.",
          "Ibrahim Traoré became one of Africa's youngest heads of state.",
          "Actualité politique",
          ["Traoré", "2022"]),
      q(
          "h3_10r",
          "Que représente le procès de l'assassinat de Sankara pour la justice burkinabè ?",
          "What does the trial of Sankara's assassination represent for Burkinabè justice?",
          [
            [
              "Une avancée historique vers la vérité et la réconciliation nationale",
              "A historic step toward truth and national reconciliation"
            ],
            [
              "Un procès politique sans fondement",
              "A groundless political trial"
            ],
            ["Une revanche de l'opposition", "An opposition revenge"],
            [
              "Un procès organisé par des étrangers",
              "A trial organized by foreigners"
            ]
          ],
          0,
          "Le procès ouvert en 2021 représente une avancée historique de la justice burkinabè sur un crime longtemps impuni.",
          "The trial opened in 2021 represents a historic advance of Burkinabè justice on a long-unpunished crime.",
          "Compaoré a été condamné par contumace pour complicité d'assassinat sur Thomas Sankara.",
          "Compaoré was convicted in absentia for complicity in Thomas Sankara's assassination.",
          "Justice et mémoire",
          ["Sankara", "procès"]),
    ]),
    Level(number: 4, title: "Figures Historiques", isLocked: true, questions: [
      q(
          "h4_1",
          "Qui était Mogho Naaba Wobgho ?",
          "Who was Mogho Naaba Wobgho?",
          [
            [
              "Un roi Mossi qui a résisté à la colonisation française",
              "A Mossi king who resisted French colonization"
            ],
            ["Un président burkinabè", "A Burkinabè president"],
            ["Un général révolutionnaire", "A revolutionary general"],
            ["Un chef religieux", "A religious leader"]
          ],
          0,
          "Mogho Naaba Wobgho a refusé le traité de protectorat français en 1895 et combattu les colonisateurs.",
          "Mogho Naaba Wobgho refused the French protectorate treaty in 1895 and fought the colonizers.",
          "Il reste un symbole de résistance à la colonisation dans la culture Mossi.",
          "He remains a symbol of resistance to colonization in Mossi culture.",
          "Histoire précoloniale",
          ["Wobgho", "résistance"]),
      q(
          "h4_2",
          "Quel réalisateur burkinabè a remporté la Palme d'Or au FESPACO ?",
          "Which Burkinabè director won the FESPACO Palme d'Or?",
          [
            ["Gaston Kaboré", "Gaston Kaboré"],
            ["Idrissa Ouédraogo", "Idrissa Ouédraogo"],
            ["S. Pierre Yameogo", "S. Pierre Yameogo"],
            ["Dani Kouyaté", "Dani Kouyaté"]
          ],
          0,
          "Gaston Kaboré est un réalisateur pionnier du cinéma burkinabè reconnu internationalement.",
          "Gaston Kaboré is a pioneering director of Burkinabè cinema recognized internationally.",
          "Son film Wend Kuuni (1982) est considéré comme un chef-d'œuvre du cinéma africain.",
          "His film Wend Kuuni (1982) is considered a masterpiece of African cinema.",
          "Cinéma",
          ["Kaboré", "cinéma"]),
      q(
          "h4_3",
          "Quelle journaliste burkinabè a fondé L'Indépendant ?",
          "Which Burkinabè journalist founded L'Indépendant?",
          [
            ["Norbert Zongo", "Norbert Zongo"],
            ["Luc Adolphe Tiao", "Luc Adolphe Tiao"],
            ["Newton Ahmed Barry", "Newton Ahmed Barry"],
            ["Boureima Ouédraogo", "Boureima Ouédraogo"]
          ],
          0,
          "Norbert Zongo a fondé le journal L'Indépendant et a été assassiné en 1998.",
          "Norbert Zongo founded the newspaper L'Indépendant and was assassinated in 1998.",
          "Son assassinat a déclenché une crise politique majeure au Burkina Faso.",
          "His assassination triggered a major political crisis in Burkina Faso.",
          "Presse",
          ["Zongo", "journalisme"]),
      q(
          "h4_4",
          "Qui était Sangoulé Lamizana ?",
          "Who was Sangoulé Lamizana?",
          [
            [
              "Un président militaire burkinabè (1966-1980)",
              "A Burkinabè military president (1966-1980)"
            ],
            ["Le fondateur de la Révolution", "The founder of the Revolution"],
            ["Un chef traditionnel Mossi", "A traditional Mossi chief"],
            ["Un ministre sous Sankara", "A minister under Sankara"]
          ],
          0,
          "Sangoulé Lamizana a gouverné la Haute-Volta de 1966 à 1980 en alternant régimes militaires et civils.",
          "Sangoulé Lamizana governed Upper Volta from 1966 to 1980, alternating military and civilian regimes.",
          "Il a instauré la IIe République avec une Constitution en 1977.",
          "He established the Second Republic with a Constitution in 1977.",
          "Présidents",
          ["Lamizana", "histoire"]),
      q(
          "h4_5",
          "Qu'est-ce que l'insurrection d'octobre 2014 ?",
          "What was the October 2014 uprising?",
          [
            [
              "Un soulèvement populaire qui a renversé Blaise Compaoré",
              "A popular uprising that overthrew Blaise Compaoré"
            ],
            ["Un coup d'État militaire", "A military coup"],
            ["Des élections générales", "General elections"],
            ["Une grève nationale", "A national strike"]
          ],
          0,
          "Les 30-31 octobre 2014, le peuple burkinabè s'est soulevé contre la modification de la Constitution.",
          "On October 30-31, 2014, the Burkinabè people rose against the modification of the Constitution.",
          "L'Assemblée nationale a été incendiée lors de cette insurrection populaire.",
          "The National Assembly was set on fire during this popular uprising.",
          "Histoire contemporaine",
          ["insurrection", "2014"]),
      q(
          "h4_6r",
          "Qu'est-ce que le Programme Populaire de Développement (PPD) lancé par Sankara ?",
          "What was the Popular Development Program (PPD) launched by Sankara?",
          [
            [
              "Un programme de construction d'infrastructures par la mobilisation populaire",
              "A program to build infrastructure through popular mobilization"
            ],
            [
              "Un programme d'aide internationale",
              "An international aid program"
            ],
            [
              "Un plan d'ajustement structurel du FMI",
              "An IMF structural adjustment plan"
            ],
            ["Un programme militaire secret", "A secret military program"]
          ],
          0,
          "Le PPD mobilisait les Burkinabè pour construire écoles, dispensaires, routes et barrages.",
          "The PPD mobilized Burkinabè to build schools, dispensaries, roads and dams.",
          "Des milliers de chantiers ont été réalisés grâce à la mobilisation populaire.",
          "Thousands of projects were completed through popular mobilization.",
          "Développement populaire",
          ["PPD", "infrastructure"]),
      q(
          "h4_7r",
          "Quel train ferroviaire Sankara a-t-il fait construire par le peuple burkinabè ?",
          "What railway did Sankara have built by the Burkinabè people?",
          [
            [
              "La ligne Ouagadougou-Tambao construite par les travailleurs bénévoles",
              "The Ouagadougou-Tambao line built by volunteer workers"
            ],
            [
              "La ligne Bobo-Dioulasso-Abidjan",
              "The Bobo-Dioulasso-Abidjan line"
            ],
            ["Le train Paris-Ouagadougou", "The Paris-Ouagadougou train"],
            ["Le métro de Ouagadougou", "The Ouagadougou metro"]
          ],
          0,
          "Sankara a lancé la construction de la voie ferrée vers Tambao pour exploiter les ressources minières.",
          "Sankara launched the construction of the railway to Tambao to exploit mineral resources.",
          "Les travailleurs construisaient la voie ferrée sans aide extérieure, symbole d'autosuffisance.",
          "Workers built the railway without external help, a symbol of self-sufficiency.",
          "Autosuffisance",
          ["chemin de fer", "Tambao"]),
      q(
          "h4_8r",
          "Quel est le rôle du Conseil National de la Transition (CNT) au Burkina Faso ?",
          "What is the role of the National Transition Council (CNT) in Burkina Faso?",
          [
            [
              "Organe législatif de transition",
              "Legislative transitional body"
            ],
            ["Gouvernement militaire", "Military government"],
            ["Tribunal constitutionnel", "Constitutional court"],
            ["Conseil des anciens", "Council of elders"]
          ],
          0,
          "Le CNT joue le rôle de parlement pendant la période de transition politique.",
          "The CNT plays the role of parliament during the political transition period.",
          "Le CNT a été mis en place après le coup d'État de janvier 2022.",
          "The CNT was established after the January 2022 coup.",
          "Institutions burkinabè",
          ["CNT", "transition"]),
      q(
          "h4_9r",
          "Quelle organisation régionale le Burkina a-t-il suspendu ses relations avec en 2023 ?",
          "Which regional organization did Burkina suspend relations with in 2023?",
          [
            ["CEDEAO", "ECOWAS"],
            ["Union Africaine", "African Union"],
            ["ONU", "UN"],
            ["UEMOA", "UEMOA"]
          ],
          0,
          "Le Burkina Faso, avec le Mali et le Niger, a suspendu ses relations avec la CEDEAO puis créé l'AES.",
          "Burkina Faso, with Mali and Niger, suspended relations with ECOWAS and then created the AES.",
          "Ces trois pays ont formé l'Alliance des États du Sahel (AES) en 2023.",
          "These three countries formed the Alliance of Sahel States (AES) in 2023.",
          "Relations internationales",
          ["CEDEAO", "AES"]),
      q(
          "h4_10r",
          "Quelle est la signification du mouvement Balai Citoyen dans la politique burkinabè ?",
          "What is the significance of the Balai Citoyen movement in Burkinabè politics?",
          [
            [
              "Un mouvement citoyen qui a contribué à la chute de Compaoré en 2014",
              "A citizen movement that helped overthrow Compaoré in 2014"
            ],
            [
              "Un syndicat de nettoyeurs professionnels",
              "A professional cleaners' union"
            ],
            ["Un parti politique officiel", "An official political party"],
            ["Un mouvement de jeunesse sportive", "A youth sports movement"]
          ],
          0,
          "Le Balai Citoyen, fondé par Smockey et Sams'K le Jah, a mobilisé la jeunesse burkinabè contre le régime Compaoré.",
          "Balai Citoyen, founded by Smockey and Sams'K le Jah, mobilized Burkinabè youth against the Compaoré regime.",
          "Le mouvement a joué un rôle clé dans l'insurrection populaire d'octobre 2014 qui a renversé Compaoré.",
          "The movement played a key role in the popular uprising of October 2014 that overthrew Compaoré.",
          "Société civile",
          ["Balai Citoyen", "2014"]),
    ]),
    Level(number: 5, title: "Maître de l'Histoire", isLocked: true, questions: [
      q(
          "h5_1",
          "Quand et comment le Burkina Faso a-t-il rejoint l'Alliance des États du Sahel ?",
          "When and how did Burkina Faso join the Alliance of Sahel States?",
          [
            [
              "En 2023 suite au coup d'État et rapprochement avec le Mali et le Niger",
              "In 2023 following the coup and rapprochement with Mali and Niger"
            ],
            ["En 2010 lors d'un sommet de l'UA", "In 2010 at an AU summit"],
            ["En 2015 par référendum", "In 2015 by referendum"],
            ["Il n'en est pas membre", "It is not a member"]
          ],
          0,
          "Après les coups d'État, le Burkina, le Mali et le Niger ont créé l'AES (Alliance des États du Sahel).",
          "After the coups, Burkina, Mali and Niger created the AES (Alliance of Sahel States).",
          "Les trois pays ont annoncé leur retrait de la CEDEAO début 2024.",
          "The three countries announced their withdrawal from ECOWAS in early 2024.",
          "Géopolitique",
          ["AES", "Sahel"]),
      q(
          "h5_2",
          "Qu'est-ce que le site de Loropéni classé à l'UNESCO ?",
          "What is the Loropéni site listed by UNESCO?",
          [
            [
              "Des ruines de fortifications en pierre témoignant du commerce transsaharien",
              "Stone fortification ruins testifying to trans-Saharan trade"
            ],
            ["Un site préhistorique", "A prehistoric site"],
            ["La résidence d'un roi colonial", "A colonial king's residence"],
            ["Un temple religieux médiéval", "A medieval religious temple"]
          ],
          0,
          "Loropéni est le seul site du Burkina Faso inscrit au patrimoine mondial de l'UNESCO (2009).",
          "Loropéni is Burkina Faso's only site inscribed on UNESCO's World Heritage List (2009).",
          "Ces ruines datent de plus de 1000 ans et témoignent des échanges de l'or africain.",
          "These ruins are more than 1000 years old and testify to African gold trade.",
          "Patrimoine",
          ["Loropéni", "UNESCO"]),
      q(
          "h5_3",
          "Quel mouvement citoyen a joué un rôle clé dans l'insurrection de 2014 ?",
          "Which civic movement played a key role in the 2014 uprising?",
          [
            [
              "Le Balai Citoyen fondé par Smockey et Sams'K le Jah",
              "Balai Citoyen founded by Smockey and Sams'K le Jah"
            ],
            ["Le CDP (Congrès pour la Démocratie et le Progrès)", "The CDP"],
            ["L'armée nationale", "The national army"],
            ["La CEDEAO", "ECOWAS"]
          ],
          0,
          "Le Balai Citoyen, mouvement de jeunesse créé en 2013, a mobilisé massivement en octobre 2014.",
          "Balai Citoyen, a youth movement created in 2013, mobilized massively in October 2014.",
          "Smockey et Sams'K le Jah sont deux rappeurs burkinabè engagés politiquement.",
          "Smockey and Sams'K le Jah are two politically engaged Burkinabè rappers.",
          "Société civile",
          ["Balai Citoyen", "2014"]),
      q(
          "h5_4",
          "Quelle était la structure politique des empires Mossi avant la colonisation ?",
          "What was the political structure of Mossi empires before colonization?",
          [
            [
              "Une monarchie héréditaire centralisée dirigée par le Mogho Naaba",
              "A centralized hereditary monarchy led by the Mogho Naaba"
            ],
            ["Une démocratie tribale", "A tribal democracy"],
            ["Un système républicain", "A republican system"],
            ["Une fédération de chefs égaux", "A federation of equal chiefs"]
          ],
          0,
          "L'empire Mossi était une monarchie avec le Mogho Naaba comme souverain suprême depuis le XVe siècle.",
          "The Mossi empire was a monarchy with the Mogho Naaba as supreme sovereign since the 15th century.",
          "La royauté Mossi est toujours présente symboliquement à Ouagadougou.",
          "The Mossi royalty is still symbolically present in Ouagadougou.",
          "Empires",
          ["Mossi", "empire"]),
      q(
          "h5_5",
          "Qui est le capitaine Ibrahim Traoré et quel rôle joue-t-il ?",
          "Who is Captain Ibrahim Traoré and what role does he play?",
          [
            [
              "Le chef de l'État burkinabè depuis le coup d'État de septembre 2022",
              "The head of state of Burkina Faso since the September 2022 coup"
            ],
            ["Un général de l'armée française", "A general of the French army"],
            ["Le président élu en 2020", "The president elected in 2020"],
            ["Le fondateur du Balai Citoyen", "The founder of Balai Citoyen"]
          ],
          0,
          "Ibrahim Traoré a pris le pouvoir en septembre 2022 en renversant le lieutenant-colonel Damiba.",
          "Ibrahim Traoré took power in September 2022 by ousting Lieutenant-Colonel Damiba.",
          "Il est l'un des plus jeunes chefs d'État africains avec moins de 40 ans au pouvoir.",
          "He is one of the youngest African heads of state, under 40 years old in power.",
          "Politique contemporaine",
          ["Traoré", "coup d'État"]),
      q(
          "h5_6r",
          "Pourquoi le 4 août est-il une date symbolique au Burkina Faso ?",
          "Why is August 4 a symbolic date in Burkina Faso?",
          [
            [
              "C'est le jour du coup d'État révolutionnaire de Sankara en 1983",
              "It is the day of Sankara's revolutionary coup in 1983"
            ],
            [
              "C'est la fête nationale burkinabè",
              "It is Burkina's national holiday"
            ],
            [
              "C'est l'anniversaire de la mort de Sankara",
              "It is the anniversary of Sankara's death"
            ],
            ["C'est le jour de l'indépendance", "It is independence day"]
          ],
          0,
          "Le 4 août 1983, Sankara et Blaise Compaoré ont pris le pouvoir lors d'un coup d'État révolutionnaire.",
          "On August 4, 1983, Sankara and Blaise Compaoré seized power in a revolutionary coup.",
          "Le 4 août est devenu un symbole de la révolution burkinabè.",
          "August 4 became a symbol of the Burkinabè revolution.",
          "Histoire révolutionnaire",
          ["4 août", "1983"]),
      q(
          "h5_7r",
          "Quel héritage de la RPP reste présent dans la société burkinabè aujourd'hui ?",
          "What legacy of the RPP remains present in Burkinabè society today?",
          [
            [
              "Un sentiment de fierté nationale, de justice sociale et de souveraineté",
              "A sense of national pride, social justice and sovereignty"
            ],
            [
              "Uniquement des monuments historiques",
              "Only historical monuments"
            ],
            ["Des institutions militaires", "Military institutions"],
            ["Une nostalgie sans impact réel", "Nostalgia without real impact"]
          ],
          0,
          "La RPP a ancré dans la conscience collective l'idéal d'un Burkina indépendant, juste et souverain.",
          "The RPP anchored in collective consciousness the ideal of an independent, just and sovereign Burkina.",
          "Des mouvements comme le Balai Citoyen se réclament de l'héritage sankariste.",
          "Movements like Balai Citoyen claim the Sankarist legacy.",
          "Mémoire collective",
          ["héritage", "souveraineté"]),
      q(
          "h5_8r",
          "Quel procès historique s'est ouvert au Burkina Faso en 2022 concernant l'assassinat de Sankara ?",
          "What historic trial opened in Burkina Faso in 2022 regarding Sankara's assassination?",
          [
            [
              "Procès de l'assassinat de Thomas Sankara",
              "Trial for Thomas Sankara's assassination"
            ],
            ["Procès des putschistes de 2015", "Trial of 2015 coup plotters"],
            ["Procès Compaoré pour trahison", "Compaoré trial for treason"],
            [
              "Procès des gardiens de la révolution",
              "Trial of revolution guards"
            ]
          ],
          0,
          "Le procès pour l'assassinat de Thomas Sankara s'est ouvert à Ouagadougou en 2021-2022.",
          "The trial for Thomas Sankara's assassination opened in Ouagadougou in 2021-2022.",
          "Blaise Compaoré a été jugé par contumace car il vit en exil en Côte d'Ivoire.",
          "Blaise Compaoré was tried in absentia as he lives in exile in Côte d'Ivoire.",
          "Justice burkinabè",
          ["Sankara", "procès"]),
      q(
          "h5_9r",
          "Quelle est la capitale du Burkina Faso ?",
          "What is the capital of Burkina Faso?",
          [
            ["Ouagadougou", "Ouagadougou"],
            ["Bobo-Dioulasso", "Bobo-Dioulasso"],
            ["Koudougou", "Koudougou"],
            ["Banfora", "Banfora"]
          ],
          0,
          "Ouagadougou est la capitale politique et économique du Burkina Faso.",
          "Ouagadougou is the political and economic capital of Burkina Faso.",
          "Ouagadougou signifie 'tu es bienvenu chez nous ici' en langue Mooré.",
          "Ouagadougou means 'you are welcome here with us' in the Mooré language.",
          "Géographie politique",
          ["capitale", "Ouagadougou"]),
      q(
          "h5_10r",
          "Quel est l'héritage de Thomas Sankara pour la jeunesse africaine contemporaine ?",
          "What is Thomas Sankara's legacy for contemporary African youth?",
          [
            [
              "Un modèle de leadership panafricain intègre anti-corruption et pro-peuple",
              "A model of upright Pan-African leadership, anti-corruption and pro-people"
            ],
            ["Un symbole d'autoritarisme", "A symbol of authoritarianism"],
            ["Un héritage purement militaire", "A purely military heritage"],
            ["Un modèle économique libéral", "A liberal economic model"]
          ],
          0,
          "Sankara incarne pour la jeunesse africaine un idéal de leader incorruptible, panafricain, défenseur des pauvres.",
          "Sankara embodies for African youth an ideal of an incorruptible, Pan-African leader, defender of the poor.",
          "Son influence continue de se manifester dans les mouvements de jeunesse africaine du XXIe siècle.",
          "His influence continues to manifest in 21st century African youth movements.",
          "Héritage politique",
          ["Sankara", "panafricanisme"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  ÉCONOMIE
  // ════════════════════════════════════════════════
  "Économie": [
    Level(number: 1, title: "Les Bases", isLocked: false, questions: [
      q(
          "e1_1",
          "Quelle est la monnaie officielle du Burkina Faso ?",
          "What is the official currency of Burkina Faso?",
          [
            ["Franc CFA", "CFA franc"],
            ["Euro", "Euro"],
            ["Dollar américain", "US dollar"],
            ["Livre sterling", "Pound sterling"]
          ],
          0,
          "Le Burkina Faso utilise le Franc CFA (XOF), commun à plusieurs pays d'Afrique de l'Ouest.",
          "Burkina Faso uses the CFA franc (XOF), shared by several West African countries.",
          "Le Franc CFA est arrimé à l'euro via des accords régionaux.",
          "The CFA franc is pegged to the euro via regional agreements.",
          "Banque centrale",
          ["monnaie", "CFA"]),
      q(
          "e1_2",
          "Quel secteur emploie la grande majorité des Burkinabè ?",
          "Which sector employs the vast majority of Burkinabè?",
          [
            ["Agriculture", "Agriculture"],
            ["Technologie", "Technology"],
            ["Finance", "Finance"],
            ["Tourisme", "Tourism"]
          ],
          0,
          "L'agriculture emploie plus de 80% de la population active au Burkina Faso.",
          "Agriculture employs more than 80% of the active population in Burkina Faso.",
          "Le coton est la principale culture d'exportation.",
          "Cotton is the main export crop.",
          "Rapports économiques",
          ["agriculture", "emploi"]),
      q(
          "e1_3",
          "Quelle est la principale ressource minière exportée ?",
          "What is the main mineral resource exported?",
          [
            ["L'or", "Gold"],
            ["Le pétrole", "Oil"],
            ["Le diamant", "Diamond"],
            ["Le fer", "Iron"]
          ],
          0,
          "L'or est devenu la première exportation du Burkina Faso, dépassant le coton.",
          "Gold has become Burkina Faso's top export, surpassing cotton.",
          "Le Burkina Faso est parmi les plus grands producteurs d'or en Afrique de l'Ouest.",
          "Burkina Faso is among the largest gold producers in West Africa.",
          "Ministère des Mines",
          ["or", "mines"]),
      q(
          "e1_4",
          "Qu'est-ce que l'inflation ?",
          "What is inflation?",
          [
            ["Hausse générale des prix", "General rise in prices"],
            ["Baisse des salaires", "Drop in wages"],
            ["Réduction des importations", "Reduction in imports"],
            ["Stabilisation économique", "Economic stabilization"]
          ],
          0,
          "L'inflation correspond à la hausse généralisée des prix dans une économie.",
          "Inflation refers to the general increase in prices in an economy.",
          "Les banques centrales ajustent les taux d'intérêt pour contrôler l'inflation.",
          "Central banks adjust interest rates to control inflation.",
          "Économie de base",
          ["inflation", "économie"]),
      q(
          "e1_5",
          "Que signifie 'balance commerciale' ?",
          "What does 'trade balance' mean?",
          [
            [
              "Différence entre exportations et importations",
              "Difference between exports and imports"
            ],
            ["Nombre d'habitants", "Number of inhabitants"],
            ["Niveau des réserves d'or", "Level of gold reserves"],
            ["Budget de l'État", "State budget"]
          ],
          0,
          "La balance commerciale calcule la différence entre exportations et importations.",
          "The trade balance calculates the difference between exports and imports.",
          "Un excédent indique plus d'exportations que d'importations.",
          "A surplus indicates more exports than imports.",
          "Commerce extérieur",
          ["commerce", "balance"]),
      q(
          "e1_6r",
          "Quelle était la politique économique centrale de la révolution de Sankara ?",
          "What was the central economic policy of Sankara's revolution?",
          [
            [
              "L'autosuffisance alimentaire et la réduction de la dépendance extérieure",
              "Food self-sufficiency and reducing external dependence"
            ],
            [
              "Le libre marché et la privatisation",
              "Free market and privatization"
            ],
            ["L'aide internationale massive", "Massive international aid"],
            [
              "La nationalisation totale de l'économie",
              "Total nationalization of the economy"
            ]
          ],
          0,
          "Sankara prônait une économie ancrée dans la production locale : manger ce qu'on produit, produire ce qu'on mange.",
          "Sankara advocated an economy rooted in local production: eat what you produce, produce what you eat.",
          "Il refusait les ajustements structurels du FMI qui appauvrissaient les pays africains.",
          "He refused IMF structural adjustments that impoverished African countries.",
          "Économie révolutionnaire",
          ["autosuffisance", "Sankara"]),
      q(
          "e1_7r",
          "Quelle initiative de Sankara visait à réduire les dépenses de l'État ?",
          "What Sankara initiative aimed to reduce state spending?",
          [
            [
              "Réduction des salaires des ministres et suppression des privilèges",
              "Reduction of ministers' salaries and elimination of privileges"
            ],
            ["Augmentation des impôts populaires", "Increase in popular taxes"],
            [
              "Réduction des dépenses militaires uniquement",
              "Reduction of military spending only"
            ],
            [
              "Suppression des services publics",
              "Elimination of public services"
            ]
          ],
          0,
          "Sankara a réduit son propre salaire à 450 dollars, vendu les Mercedes de l'État et supprimé les privilèges.",
          "Sankara reduced his own salary to \$450, sold state Mercedes and eliminated privileges.",
          "Il refusait les 1ère classe en avion et voyageait en économique.",
          "He refused to fly business class and traveled economy.",
          "Rigueur budgétaire",
          ["salaires", "austérité"]),
      q(
          "e1_8r",
          "Quel pourcentage de la population burkinabè vit en zone rurale ?",
          "What percentage of Burkina Faso's population lives in rural areas?",
          [
            ["Environ 70%", "About 70%"],
            ["Environ 50%", "About 50%"],
            ["Environ 30%", "About 30%"],
            ["Environ 90%", "About 90%"]
          ],
          0,
          "Environ 70% de la population burkinabè vit en zones rurales et dépend de l'agriculture.",
          "About 70% of Burkina Faso's population lives in rural areas and depends on agriculture.",
          "Cette proportion reflète la nature essentiellement agricole de l'économie burkinabè.",
          "This proportion reflects the essentially agricultural nature of the Burkinabè economy.",
          "Statistiques nationales",
          ["rural", "agriculture"]),
      q(
          "e1_9r",
          "Quelle est la principale culture de rente du Burkina Faso ?",
          "What is Burkina Faso's main cash crop?",
          [
            ["Le coton", "Cotton"],
            ["Le café", "Coffee"],
            ["Le cacao", "Cocoa"],
            ["Le riz", "Rice"]
          ],
          0,
          "Le coton est la principale culture de rente du Burkina Faso, représentant une part importante des exportations.",
          "Cotton is Burkina Faso's main cash crop, representing a significant share of exports.",
          "Le Burkina est l'un des plus grands producteurs de coton en Afrique subsaharienne.",
          "Burkina is one of the largest cotton producers in sub-Saharan Africa.",
          "Agriculture burkinabè",
          ["coton", "exportation"]),
      q(
          "e1_10r",
          "Quel secteur emploie le plus de Burkinabès dans l'économie formelle ?",
          "Which sector employs the most Burkinabès in the formal economy?",
          [
            [
              "La fonction publique et les services",
              "The civil service and services"
            ],
            ["L'industrie minière", "The mining industry"],
            ["Le secteur bancaire", "The banking sector"],
            ["L'industrie textile", "The textile industry"]
          ],
          0,
          "La fonction publique et le secteur des services constituent le plus grand employeur formel du Burkina Faso.",
          "The civil service and services sector is the largest formal employer in Burkina Faso.",
          "Plus de 70% de l'emploi total reste dans le secteur informel agricole.",
          "More than 70% of total employment remains in the informal agricultural sector.",
          "Marché du travail",
          ["emploi", "fonction publique"]),
    ]),
    Level(
        number: 2,
        title: "Commerce et Ressources",
        isLocked: true,
        questions: [
          q(
              "e2_1",
              "Qu'est-ce que la microfinance ?",
              "What is microfinance?",
              [
                [
                  "Petits prêts accordés aux populations à faibles revenus",
                  "Small loans to low-income populations"
                ],
                [
                  "Une grande banque internationale",
                  "A large international bank"
                ],
                [
                  "Un impôt sur les petits commerces",
                  "A tax on small businesses"
                ],
                ["Un programme de retraite", "A retirement program"]
              ],
              0,
              "La microfinance permet aux personnes sans accès bancaire d'obtenir des petits crédits.",
              "Microfinance allows people without bank access to get small loans.",
              "Elle a favorisé l'essor des femmes entrepreneures en Afrique.",
              "It has boosted women entrepreneurs in Africa.",
              "Finance inclusive",
              ["microfinance", "crédit"]),
          q(
              "e2_2",
              "Quelle organisation regroupe les pays d'Afrique de l'Ouest ?",
              "Which organization groups West African countries?",
              [
                ["La CEDEAO", "ECOWAS"],
                ["L'Union Africaine", "African Union"],
                ["Le FMI", "IMF"],
                ["La Banque Mondiale", "World Bank"]
              ],
              0,
              "La CEDEAO (Communauté Économique des États de l'Afrique de l'Ouest) compte 15 membres.",
              "ECOWAS (Economic Community of West African States) has 15 members.",
              "La CEDEAO a été fondée en 1975 à Lagos.",
              "ECOWAS was founded in 1975 in Lagos.",
              "Relations internationales",
              ["CEDEAO", "régional"]),
          q(
              "e2_3",
              "Qu'est-ce que le Mobile Money ?",
              "What is Mobile Money?",
              [
                [
                  "Service de paiement via téléphone mobile",
                  "Payment service via mobile phone"
                ],
                ["Un smartphone de luxe", "A luxury smartphone"],
                ["Un réseau social", "A social network"],
                ["Une banque physique", "A physical bank"]
              ],
              0,
              "Le Mobile Money permet d'envoyer, recevoir et payer via son téléphone sans compte bancaire.",
              "Mobile Money allows sending, receiving and paying via phone without a bank account.",
              "Orange Money et Moov Money sont très populaires au Burkina Faso.",
              "Orange Money and Moov Money are very popular in Burkina Faso.",
              "Fintech Afrique",
              ["mobile money", "fintech"]),
          q(
              "e2_4",
              "Qu'est-ce qu'une coopérative agricole ?",
              "What is an agricultural cooperative?",
              [
                [
                  "Association de producteurs qui mutualisent leurs ressources",
                  "Association of producers who pool resources"
                ],
                ["Une grande ferme d'État", "A large state farm"],
                ["Un marché uniquement urbain", "An exclusively urban market"],
                ["Un programme d'importation", "An import program"]
              ],
              0,
              "Les coopératives permettent aux petits producteurs de partager équipements et marchés.",
              "Cooperatives allow small producers to share equipment and markets.",
              "Elles renforcent le pouvoir de négociation des paysans.",
              "They strengthen farmers' bargaining power.",
              "Agriculture burkinabè",
              ["coopérative", "agriculture"]),
          q(
              "e2_5",
              "Qu'est-ce que le PIB par habitant mesure ?",
              "What does GDP per capita measure?",
              [
                [
                  "La production économique moyenne par personne",
                  "Average economic production per person"
                ],
                [
                  "La température annuelle moyenne",
                  "Average annual temperature"
                ],
                ["Le nombre de fonctionnaires", "Number of civil servants"],
                ["Le budget militaire", "Military budget"]
              ],
              0,
              "Le PIB par habitant divise le PIB total par la population pour donner une moyenne.",
              "GDP per capita divides total GDP by the population to give an average.",
              "Il ne reflète pas toujours la distribution réelle des richesses.",
              "It doesn't always reflect the actual distribution of wealth.",
              "Macroéconomie",
              ["PIB", "mesure"]),
          q(
              "e2_6r",
              "Pourquoi Sankara refusait-il les conditions du FMI et de la Banque Mondiale ?",
              "Why did Sankara refuse IMF and World Bank conditions?",
              [
                [
                  "Ces conditions imposaient des coupes sociales contraires aux intérêts du peuple",
                  "These conditions imposed social cuts contrary to the people's interests"
                ],
                [
                  "Il ne connaissait pas ces institutions",
                  "He didn't know these institutions"
                ],
                [
                  "Il préférait emprunter à la Chine",
                  "He preferred to borrow from China"
                ],
                [
                  "Ces institutions soutenaient sa révolution",
                  "These institutions supported his revolution"
                ]
              ],
              0,
              "Les plans d'ajustement structurel imposaient privatisations et réductions des dépenses sociales.",
              "Structural adjustment plans imposed privatizations and reductions in social spending.",
              "Sankara disait que ces plans appauvrissaient les peuples au profit des créanciers occidentaux.",
              "Sankara said these plans impoverished peoples for the benefit of Western creditors.",
              "Souveraineté économique",
              ["FMI", "ajustement"]),
          q(
              "e2_7r",
              "Quel programme Sankara a-t-il lancé pour l'autosuffisance alimentaire ?",
              "What program did Sankara launch for food self-sufficiency?",
              [
                [
                  "La Bataille du Rail et le Programme d'Intensification de la Production Agricole",
                  "The Battle of the Rail and the Agricultural Production Intensification Program"
                ],
                ["Le Plan Marshall africain", "The African Marshall Plan"],
                ["L'aide alimentaire internationale", "International food aid"],
                [
                  "La collectivisation forcée des terres",
                  "Forced collectivization of land"
                ]
              ],
              0,
              "Sankara mobilisait paysans et soldats pour cultiver les terres et construire des barrages.",
              "Sankara mobilized peasants and soldiers to cultivate land and build dams.",
              "En 3 ans, le Burkina est passé de déficitaire à excédentaire en céréales.",
              "In 3 years, Burkina went from a cereal deficit to a surplus.",
              "Agriculture révolutionnaire",
              ["autosuffisance", "agriculture"]),
          q(
              "e2_8r",
              "Quel est le principal partenaire commercial du Burkina Faso ?",
              "Who is Burkina Faso's main trading partner?",
              [
                ["La Côte d'Ivoire", "Côte d'Ivoire"],
                ["La France", "France"],
                ["Le Ghana", "Ghana"],
                ["Le Sénégal", "Senegal"]
              ],
              0,
              "La Côte d'Ivoire est le principal partenaire commercial du Burkina Faso, notamment pour les importations.",
              "Côte d'Ivoire is Burkina Faso's main trading partner, especially for imports.",
              "Le port d'Abidjan est la principale porte d'entrée des importations burkinabè.",
              "The port of Abidjan is the main entry point for Burkinabè imports.",
              "Commerce extérieur",
              ["Côte d'Ivoire", "commerce"]),
          q(
              "e2_9r",
              "Quelle monnaie est utilisée au Burkina Faso ?",
              "What currency is used in Burkina Faso?",
              [
                ["Le Franc CFA (XOF)", "CFA Franc (XOF)"],
                ["Le Franc Burkinabè", "Burkinabè Franc"],
                ["Le Dollar US", "US Dollar"],
                ["L'Euro", "Euro"]
              ],
              0,
              "Le Burkina Faso utilise le Franc CFA de la zone UEMOA (XOF), arrimé à l'euro.",
              "Burkina Faso uses the CFA Franc of the UEMOA zone (XOF), pegged to the euro.",
              "Le Franc CFA est partagé par 8 pays d'Afrique de l'Ouest dans l'UEMOA.",
              "The CFA Franc is shared by 8 West African countries in UEMOA.",
              "Économie monétaire",
              ["franc CFA", "UEMOA"]),
          q(
              "e2_10r",
              "Qu'est-ce que l'UEMOA et quel avantage offre-t-elle au Burkina Faso ?",
              "What is UEMOA and what advantage does it offer Burkina Faso?",
              [
                [
                  "Une union économique facilitant le commerce et la monnaie commune",
                  "An economic union facilitating trade and common currency"
                ],
                [
                  "Une alliance militaire régionale",
                  "A regional military alliance"
                ],
                [
                  "Un accord de libre-échange avec l'Europe",
                  "A free trade agreement with Europe"
                ],
                [
                  "Un programme d'aide au développement",
                  "A development aid program"
                ]
              ],
              0,
              "L'UEMOA (Union Économique et Monétaire Ouest-Africaine) crée un marché commun et partage le Franc CFA entre 8 pays.",
              "UEMOA (West African Economic and Monetary Union) creates a common market and shares the CFA Franc among 8 countries.",
              "Le Burkina Faso bénéficie de la libre circulation des personnes et des biens au sein de l'UEMOA.",
              "Burkina Faso benefits from free movement of people and goods within UEMOA.",
              "Intégration régionale",
              ["UEMOA", "franc CFA"]),
        ]),
    Level(
        number: 3,
        title: "Développement Durable",
        isLocked: true,
        questions: [
          q(
              "e3_1",
              "Qu'est-ce que le développement durable ?",
              "What is sustainable development?",
              [
                [
                  "Répondre aux besoins présents sans compromettre les générations futures",
                  "Meeting present needs without compromising future generations"
                ],
                [
                  "Construire des bâtiments plus hauts",
                  "Building taller buildings"
                ],
                [
                  "Augmenter uniquement la production industrielle",
                  "Only increasing industrial production"
                ],
                ["Réduire les échanges commerciaux", "Reducing trade"]
              ],
              0,
              "Le développement durable équilibre économie, équité sociale et environnement.",
              "Sustainable development balances economy, social equity and environment.",
              "Le concept a été popularisé par le rapport Brundtland en 1987.",
              "The concept was popularized by the Brundtland report in 1987.",
              "ONU",
              ["durabilité", "environnement"]),
          q(
              "e3_2",
              "Qu'est-ce que l'énergie solaire ?",
              "What is solar energy?",
              [
                [
                  "Énergie produite à partir des rayons du soleil",
                  "Energy produced from sunlight"
                ],
                ["Énergie tirée du pétrole", "Energy from oil"],
                ["Énergie produite par les barrages", "Energy from dams"],
                ["Énergie éolienne", "Wind energy"]
              ],
              0,
              "L'énergie solaire est particulièrement adaptée au Burkina Faso grâce à son ensoleillement.",
              "Solar energy is particularly suited to Burkina Faso thanks to its sunshine.",
              "Le Burkina développe le solaire pour électrifier les zones rurales.",
              "Burkina is developing solar energy to electrify rural areas.",
              "Énergie renouvelable",
              ["solaire", "énergie"]),
          q(
              "e3_3",
              "Qu'est-ce que l'économie verte ?",
              "What is the green economy?",
              [
                [
                  "Modèle économique respectueux de l'environnement",
                  "Economic model respectful of the environment"
                ],
                [
                  "Production exclusive de légumes",
                  "Exclusive vegetable production"
                ],
                [
                  "Commerce uniquement avec des pays voisins",
                  "Trade only with neighboring countries"
                ],
                ["Économie basée sur le coton", "Economy based on cotton"]
              ],
              0,
              "L'économie verte intègre la durabilité environnementale dans la croissance économique.",
              "The green economy integrates environmental sustainability into economic growth.",
              "Elle crée des emplois tout en protégeant les ressources naturelles.",
              "It creates jobs while protecting natural resources.",
              "ONU Environnement",
              ["économie verte", "durabilité"]),
          q(
              "e3_4",
              "Qu'est-ce que la souveraineté alimentaire ?",
              "What is food sovereignty?",
              [
                [
                  "Droit d'un peuple à définir sa propre politique alimentaire",
                  "Right of a people to define their own food policy"
                ],
                [
                  "Importation massive de nourriture",
                  "Massive food importation"
                ],
                [
                  "Interdiction des marchés locaux",
                  "Prohibition of local markets"
                ],
                [
                  "Production industrielle de monocultures",
                  "Industrial monoculture production"
                ]
              ],
              0,
              "La souveraineté alimentaire permet aux pays de contrôler leur production et alimentation.",
              "Food sovereignty allows countries to control their production and food supply.",
              "Thomas Sankara était un précurseur de ce concept en Afrique.",
              "Thomas Sankara was a pioneer of this concept in Africa.",
              "Agro-économie",
              ["souveraineté", "alimentation"]),
          q(
              "e3_5",
              "Qu'est-ce que les transferts de fonds de la diaspora ?",
              "What are diaspora remittances?",
              [
                [
                  "Argent envoyé par les Burkinabè vivant à l'étranger vers leurs familles",
                  "Money sent by Burkinabè living abroad to their families"
                ],
                ["Une aide militaire étrangère", "A foreign military aid"],
                ["Un prêt de la Banque Mondiale", "A World Bank loan"],
                ["Un impôt sur les importations", "A tax on imports"]
              ],
              0,
              "Les transferts de la diaspora sont une source majeure de revenus pour de nombreuses familles.",
              "Diaspora remittances are a major source of income for many families.",
              "Ces transferts dépassent parfois l'aide internationale dans certains pays africains.",
              "These transfers sometimes exceed international aid in some African countries.",
              "Banque centrale",
              ["diaspora", "transferts"]),
          q(
              "e3_6r",
              "Comment Sankara finançait-il les projets sociaux sans s'endetter ?",
              "How did Sankara finance social projects without going into debt?",
              [
                [
                  "Par la mobilisation populaire bénévole et la réduction des dépenses inutiles de l'État",
                  "Through voluntary popular mobilization and reduction of unnecessary state spending"
                ],
                [
                  "Par des emprunts massifs au FMI",
                  "Through massive IMF loans"
                ],
                ["Par des dons de la France", "Through French donations"],
                [
                  "Par des taxes lourdes sur les populations",
                  "Through heavy taxes on the population"
                ]
              ],
              0,
              "Des milliers d'écoles, dispensaires et barrages furent construits par le peuple sans financement extérieur.",
              "Thousands of schools, dispensaries and dams were built by the people without external financing.",
              "Cela démontrait qu'on peut se développer par ses propres moyens.",
              "This demonstrated that development is possible with one's own means.",
              "Développement endogène",
              ["auto-financement", "mobilisation"]),
          q(
              "e3_7r",
              "Que représentait le coton pour la révolution sankariste ?",
              "What did cotton represent for the Sankarist revolution?",
              [
                [
                  "Une culture d'exportation à transformer localement pour créer de la valeur ajoutée",
                  "An export crop to be processed locally to create added value"
                ],
                [
                  "Un symbole du colonialisme à abandonner",
                  "A symbol of colonialism to be abandoned"
                ],
                ["Une aide alimentaire", "A food aid"],
                ["Un produit de luxe", "A luxury product"]
              ],
              0,
              "Sankara voulait industrialiser la transformation du coton au Burkina pour ne pas exporter la richesse brute.",
              "Sankara wanted to industrialize cotton processing in Burkina to avoid exporting raw wealth.",
              "Le slogan : transformer nos matières premières sur place plutôt que les exporter brutes.",
              "The slogan: process our raw materials locally rather than export them raw.",
              "Industrialisation",
              ["coton", "transformation"]),
          q(
              "e3_8r",
              "Quelle ressource minière est la première source de revenus d'exportation du Burkina Faso ?",
              "What mineral resource is Burkina Faso's top source of export revenue?",
              [
                ["L'or", "Gold"],
                ["Le coton", "Cotton"],
                ["Le zinc", "Zinc"],
                ["Le manganèse", "Manganese"]
              ],
              0,
              "L'or est devenu la première ressource d'exportation du Burkina Faso, dépassant le coton.",
              "Gold has become Burkina Faso's leading export resource, surpassing cotton.",
              "Le Burkina Faso est l'un des cinq plus grands producteurs d'or en Afrique.",
              "Burkina Faso is one of the five largest gold producers in Africa.",
              "Mines et ressources",
              ["or", "exportation"]),
          q(
              "e3_9r",
              "Qu'est-ce que le PNDES au Burkina Faso ?",
              "What is the PNDES in Burkina Faso?",
              [
                [
                  "Plan National de Développement Économique et Social",
                  "National Economic and Social Development Plan"
                ],
                [
                  "Programme National des Dépenses de l'État",
                  "National State Expenditure Program"
                ],
                [
                  "Politique Nationale de Diversification Économique et Sociale",
                  "National Policy for Economic and Social Diversification"
                ],
                [
                  "Plan de Négociation pour le Développement Économique et Social",
                  "Negotiation Plan for Economic and Social Development"
                ]
              ],
              0,
              "Le PNDES est le cadre de référence du développement économique et social du Burkina Faso.",
              "PNDES is the reference framework for economic and social development in Burkina Faso.",
              "Le PNDES fixe les orientations stratégiques du développement national.",
              "PNDES sets the strategic directions for national development.",
              "Politique de développement",
              ["PNDES", "développement"]),
          q(
              "e3_10r",
              "Quelle est la principale contrainte au développement industriel du Burkina Faso ?",
              "What is the main constraint on industrial development in Burkina Faso?",
              [
                [
                  "L'enclavement et le coût élevé des transports",
                  "Landlocked status and high transport costs"
                ],
                [
                  "L'absence de ressources naturelles",
                  "Absence of natural resources"
                ],
                ["Le manque de main-d'œuvre", "Lack of labor"],
                [
                  "L'instabilité climatique uniquement",
                  "Climate instability alone"
                ]
              ],
              0,
              "L'enclavement du Burkina Faso rend les transports très coûteux, pénalisant le commerce et l'industrie.",
              "Burkina Faso's landlocked status makes transport very expensive, penalizing trade and industry.",
              "Le pays est à plus de 1000 km des ports côtiers, ce qui augmente considérablement les coûts.",
              "The country is more than 1000 km from coastal ports, which considerably increases costs.",
              "Développement économique",
              ["enclavement", "transport"]),
        ]),
    Level(number: 4, title: "Finance & Marchés", isLocked: true, questions: [
      q(
          "e4_1",
          "Qu'est-ce que la BCEAO ?",
          "What is the BCEAO?",
          [
            [
              "La Banque Centrale des États de l'Afrique de l'Ouest",
              "The Central Bank of West African States"
            ],
            ["Une banque commerciale burkinabè", "A Burkinabè commercial bank"],
            ["Un fonds d'investissement", "An investment fund"],
            [
              "L'organisation douanière de la CEDEAO",
              "The ECOWAS customs organization"
            ]
          ],
          0,
          "La BCEAO est la banque centrale commune aux 8 pays de l'UEMOA, basée à Dakar.",
          "The BCEAO is the common central bank for the 8 UEMOA countries, based in Dakar.",
          "Elle émet le franc CFA et régule la politique monétaire de la zone.",
          "It issues the CFA franc and regulates the monetary policy of the zone.",
          "Banque centrale",
          ["BCEAO", "monnaie"]),
      q(
          "e4_2",
          "Qu'est-ce que l'investissement direct étranger (IDE) ?",
          "What is foreign direct investment (FDI)?",
          [
            [
              "Des capitaux étrangers investis pour contrôler une entreprise",
              "Foreign capital invested to control a company"
            ],
            ["Des prêts bancaires internationaux", "International bank loans"],
            ["Des aides gouvernementales étrangères", "Foreign government aid"],
            ["Des transferts de migrants", "Migrant transfers"]
          ],
          0,
          "Les IDE apportent des capitaux, technologies et emplois dans les pays récepteurs.",
          "FDI brings capital, technologies and jobs to recipient countries.",
          "Le Burkina Faso cherche à attirer des IDE dans les secteurs minier et agricole.",
          "Burkina Faso seeks to attract FDI in the mining and agricultural sectors.",
          "Investissement",
          ["IDE", "investissement"]),
      q(
          "e4_3",
          "Qu'est-ce que l'économie informelle au Burkina Faso ?",
          "What is the informal economy in Burkina Faso?",
          [
            [
              "Des activités non enregistrées représentant la majorité des emplois",
              "Unregistered activities representing the majority of jobs"
            ],
            ["Le commerce illicite uniquement", "Only illicit trade"],
            ["L'économie rurale traditionnelle", "Traditional rural economy"],
            ["Les petites entreprises formelles", "Small formal businesses"]
          ],
          0,
          "L'économie informelle représente plus de 50% du PIB et la majorité des emplois.",
          "The informal economy represents more than 50% of GDP and the majority of jobs.",
          "Les marchés, le petit commerce et l'artisanat constituent le cœur de l'économie informelle.",
          "Markets, small trade and crafts constitute the heart of the informal economy.",
          "Économie informelle",
          ["informel", "emploi"]),
      q(
          "e4_4",
          "Qu'est-ce que le Mobile Money ?",
          "What is Mobile Money?",
          [
            [
              "Un service de paiement via téléphone mobile sans compte bancaire",
              "A payment service via mobile phone without a bank account"
            ],
            ["Un opérateur de téléphonie", "A telephone operator"],
            ["Une banque en ligne", "An online bank"],
            ["Un réseau social financier", "A financial social network"]
          ],
          0,
          "Le Mobile Money permet des transactions financières sans compte bancaire traditionnel.",
          "Mobile Money allows financial transactions without a traditional bank account.",
          "Orange Money et Moov Money sont les principaux services au Burkina Faso.",
          "Orange Money and Moov Money are the main services in Burkina Faso.",
          "Fintech",
          ["mobile money", "paiement"]),
      q(
          "e4_5",
          "Quelle institution finance le développement au Burkina Faso ?",
          "Which institution finances development in Burkina Faso?",
          [
            ["La Banque mondiale et le FMI", "The World Bank and IMF"],
            ["La Réserve Fédérale américaine", "The US Federal Reserve"],
            ["La Banque de France uniquement", "Only the Bank of France"],
            ["La Banque chinoise uniquement", "Only the Chinese bank"]
          ],
          0,
          "La Banque mondiale et le FMI accordent des financements et conseils techniques au Burkina Faso.",
          "The World Bank and IMF provide financing and technical advice to Burkina Faso.",
          "Le Burkina Faso bénéficie aussi de l'aide de la BAD (Banque Africaine de Développement).",
          "Burkina Faso also benefits from assistance from the AfDB (African Development Bank).",
          "Institutions internationales",
          ["Banque mondiale", "FMI"]),
      q(
          "e4_6r",
          "Quelle politique Sankara appliquait-il face aux multinationales ?",
          "What policy did Sankara apply toward multinational companies?",
          [
            [
              "Il exigeait que les bénéfices servent au développement local et non à l'exportation des profits",
              "He required that profits serve local development and not be exported"
            ],
            [
              "Il attirait les multinationales sans conditions",
              "He attracted multinationals without conditions"
            ],
            [
              "Il nationalisait toutes les entreprises étrangères",
              "He nationalized all foreign companies"
            ],
            [
              "Il interdisait tout investissement étranger",
              "He banned all foreign investment"
            ]
          ],
          0,
          "Sankara conditionnait l'investissement étranger à un réel transfert de technologie et de richesse.",
          "Sankara conditioned foreign investment on a real transfer of technology and wealth.",
          "Il exigeait que les entreprises forment des travailleurs burkinabè et créent des emplois locaux.",
          "He required companies to train Burkinabè workers and create local jobs.",
          "Souveraineté économique",
          ["multinationales", "investissement"]),
      q(
          "e4_7r",
          "Comment la révolution traitait-elle le problème de la corruption économique ?",
          "How did the revolution deal with the problem of economic corruption?",
          [
            [
              "Par des Tribunaux Populaires de la Révolution (TPR) jugeant les détourneurs",
              "Through People's Revolutionary Tribunals (PRT) judging embezzlers"
            ],
            ["Par l'amnistie générale", "Through general amnesty"],
            [
              "Par des réductions de salaires seulement",
              "Through salary reductions only"
            ],
            ["En ignorant la corruption", "By ignoring corruption"]
          ],
          0,
          "Les TPR ont jugé publiquement les fonctionnaires corrompus et les détourneurs de fonds.",
          "The PRTs publicly tried corrupt officials and embezzlers.",
          "Ces tribunaux étaient une forme de justice populaire directe.",
          "These tribunals were a form of direct popular justice.",
          "Justice révolutionnaire",
          ["TPR", "corruption"]),
      q(
          "e4_8r",
          "Quel est le taux de chômage approximatif des jeunes au Burkina Faso ?",
          "What is the approximate youth unemployment rate in Burkina Faso?",
          [
            ["Supérieur à 20%", "Greater than 20%"],
            ["Inférieur à 5%", "Less than 5%"],
            ["Environ 10%", "About 10%"],
            ["Plus de 50%", "More than 50%"]
          ],
          0,
          "Le taux de chômage des jeunes au Burkina Faso dépasse les 20%, représentant un défi majeur.",
          "Youth unemployment in Burkina Faso exceeds 20%, representing a major challenge.",
          "L'emploi informel absorbe une grande partie des jeunes sans emploi formel.",
          "Informal employment absorbs a large proportion of youth without formal jobs.",
          "Emploi et jeunesse",
          ["chômage", "jeunesse"]),
      q(
          "e4_9r",
          "Dans quel secteur travaille la majorité des femmes au Burkina Faso ?",
          "In which sector does the majority of women in Burkina Faso work?",
          [
            [
              "Agriculture et secteur informel",
              "Agriculture and informal sector"
            ],
            ["Fonction publique", "Civil service"],
            ["Industrie manufacturière", "Manufacturing industry"],
            ["Commerce international", "International trade"]
          ],
          0,
          "La majorité des femmes burkinabès travaillent dans l'agriculture et le secteur informel.",
          "The majority of Burkinabè women work in agriculture and the informal sector.",
          "Les femmes représentent plus de 60% de la main-d'œuvre agricole.",
          "Women represent more than 60% of the agricultural workforce.",
          "Genre et économie",
          ["femmes", "agriculture"]),
      q(
          "e4_10r",
          "Qu'est-ce que le PNDES et quel est son objectif principal ?",
          "What is PNDES and what is its main objective?",
          [
            [
              "Cadre stratégique de développement économique et social 2016-2020",
              "Strategic framework for economic and social development 2016-2020"
            ],
            ["Un programme d'urgence alimentaire", "An emergency food program"],
            [
              "Un traité de commerce avec la Chine",
              "A trade treaty with China"
            ],
            [
              "Un plan de restructuration militaire",
              "A military restructuring plan"
            ]
          ],
          0,
          "Le PNDES (Plan National de Développement Économique et Social) était le cadre de référence du développement du Burkina 2016-2020.",
          "PNDES (National Economic and Social Development Plan) was Burkina Faso's development reference framework 2016-2020.",
          "Il visait notamment à transformer l'économie burkinabè vers plus de valeur ajoutée.",
          "It aimed notably to transform the Burkinabè economy towards more added value.",
          "Politique économique",
          ["PNDES", "développement"]),
    ]),
    Level(number: 5, title: "Expert Économique", isLocked: true, questions: [
      q(
          "e5_1",
          "Qu'est-ce que la Zone de Libre Échange Continentale Africaine (ZLECAf) ?",
          "What is the African Continental Free Trade Area (AfCFTA)?",
          [
            [
              "Un accord de libre-échange entre 54 pays africains",
              "A free trade agreement between 54 African countries"
            ],
            ["Une monnaie commune africaine", "A common African currency"],
            [
              "Un accord militaire panafricain",
              "A pan-African military agreement"
            ],
            [
              "Un programme d'aide au développement",
              "A development aid program"
            ]
          ],
          0,
          "La ZLECAf vise à créer le plus grand marché mondial de libre-échange en unissant l'Afrique.",
          "AfCFTA aims to create the world's largest free trade market by uniting Africa.",
          "Elle est entrée en vigueur en 2019 et le Burkina Faso en est membre signataire.",
          "It entered into force in 2019 and Burkina Faso is a signatory member.",
          "Commerce africain",
          ["ZLECAf", "libre-échange"]),
      q(
          "e5_2",
          "Qu'est-ce que la souveraineté alimentaire ?",
          "What is food sovereignty?",
          [
            [
              "Le droit des peuples à définir leur propre politique alimentaire",
              "The right of peoples to define their own food policy"
            ],
            [
              "L'autosuffisance totale en nourriture",
              "Complete food self-sufficiency"
            ],
            [
              "L'interdiction d'importer des aliments",
              "Prohibition of food imports"
            ],
            ["Un programme d'aide alimentaire", "A food aid program"]
          ],
          0,
          "La souveraineté alimentaire implique que chaque peuple contrôle sa production et ses politiques alimentaires.",
          "Food sovereignty implies that each people controls its food production and policies.",
          "Sankara avait fait de la souveraineté alimentaire un pilier de la Révolution burkinabè.",
          "Sankara made food sovereignty a pillar of the Burkinabè Revolution.",
          "Agriculture",
          ["souveraineté", "alimentation"]),
      q(
          "e5_3",
          "Qu'est-ce que la taxe sur la valeur ajoutée (TVA) au Burkina Faso ?",
          "What is value-added tax (VAT) in Burkina Faso?",
          [
            [
              "Une taxe de 18% sur la consommation, principale recette fiscale de l'État",
              "An 18% consumption tax, the main state fiscal revenue"
            ],
            [
              "Un impôt sur le revenu des entreprises",
              "A corporate income tax"
            ],
            [
              "Une taxe sur les importations uniquement",
              "A tax on imports only"
            ],
            ["Une contribution volontaire", "A voluntary contribution"]
          ],
          0,
          "La TVA est de 18% au Burkina Faso et représente la principale source de recettes fiscales.",
          "VAT is 18% in Burkina Faso and represents the main source of tax revenue.",
          "L'élargissement de l'assiette fiscale est un défi majeur pour le gouvernement burkinabè.",
          "Broadening the tax base is a major challenge for the Burkinabè government.",
          "Fiscalité",
          ["TVA", "fiscalité"]),
      q(
          "e5_4",
          "Comment les partenariats public-privé (PPP) aident-ils le développement ?",
          "How do public-private partnerships (PPP) help development?",
          [
            [
              "En mobilisant des capitaux privés pour financer des infrastructures sans alourdir la dette",
              "By mobilizing private capital to finance infrastructure without increasing debt"
            ],
            [
              "En nationalisant les entreprises privées",
              "By nationalizing private companies"
            ],
            [
              "En réduisant le rôle de l'État",
              "By reducing the role of the state"
            ],
            [
              "En interdisant les investissements étrangers",
              "By prohibiting foreign investments"
            ]
          ],
          0,
          "Les PPP permettent de financer des projets d'eau, routes et énergie au Burkina Faso.",
          "PPPs allow financing of water, road and energy projects in Burkina Faso.",
          "Le Burkina Faso a développé des PPP dans les secteurs des infrastructures et de l'agriculture.",
          "Burkina Faso has developed PPPs in the infrastructure and agriculture sectors.",
          "Financement",
          ["PPP", "infrastructures"]),
      q(
          "e5_5",
          "Quel est l'impact économique de la crise sécuritaire au Burkina Faso ?",
          "What is the economic impact of the security crisis in Burkina Faso?",
          [
            [
              "Fermeture de mines, perturbation agricole et déplacements de populations",
              "Mine closures, agricultural disruption and population displacement"
            ],
            ["Hausse des exportations", "Increase in exports"],
            [
              "Attraction d'investissements étrangers",
              "Attraction of foreign investments"
            ],
            ["Amélioration du PIB", "Improvement of GDP"]
          ],
          0,
          "L'insécurité jihadiste affecte les zones agricoles et minières du nord et de l'est du pays.",
          "Jihadist insecurity affects agricultural and mining areas in the north and east.",
          "Des milliers d'écoles et de centres de santé ont dû fermer dans les zones de conflit.",
          "Thousands of schools and health centers had to close in conflict zones.",
          "Sécurité",
          ["insécurité", "économie"]),
      q(
          "e5_6r",
          "Quel modèle économique Sankara proposait-il pour l'Afrique ?",
          "What economic model did Sankara propose for Africa?",
          [
            [
              "Un développement endogène basé sur les ressources africaines et la coopération Sud-Sud",
              "Endogenous development based on African resources and South-South cooperation"
            ],
            [
              "La dépendance aux aides occidentales",
              "Dependence on Western aid"
            ],
            ["La mondialisation néolibérale", "Neoliberal globalization"],
            ["L'autarcie totale", "Total autarky"]
          ],
          0,
          "Sankara prônait le développement par les ressources propres, la coopération africaine et le refus de la dette.",
          "Sankara advocated development through own resources, African cooperation and debt refusal.",
          "Il disait : notre monnaie doit être africaine, notre économie doit être africaine.",
          "He said: our currency must be African, our economy must be African.",
          "Panafricanisme économique",
          ["développement", "Afrique"]),
      q(
          "e5_7r",
          "Quel impact économique a eu l'assassinat de Sankara en 1987 ?",
          "What economic impact did Sankara's assassination in 1987 have?",
          [
            [
              "Retour aux politiques d'ajustement structurel du FMI et à la dépendance extérieure",
              "Return to IMF structural adjustment policies and external dependence"
            ],
            [
              "Le Burkina est devenu une puissance économique",
              "Burkina became an economic power"
            ],
            [
              "Les politiques de Sankara ont été maintenues",
              "Sankara's policies were maintained"
            ],
            ["L'économie n'a pas changé", "The economy did not change"]
          ],
          0,
          "Compaoré a inversé les politiques de Sankara et réintroduit les programmes d'ajustement structurel.",
          "Compaoré reversed Sankara's policies and reintroduced structural adjustment programs.",
          "La dette extérieure a massivement augmenté sous Compaoré.",
          "External debt increased massively under Compaoré.",
          "Post-révolution",
          ["Compaoré", "ajustement"]),
      q(
          "e5_8r",
          "Quel organisme régional supervise la politique monétaire de l'UEMOA ?",
          "Which regional body supervises UEMOA monetary policy?",
          [
            ["La BCEAO", "BCEAO"],
            ["La Banque Mondiale", "World Bank"],
            ["Le FMI", "IMF"],
            ["La CEDEAO", "ECOWAS"]
          ],
          0,
          "La Banque Centrale des États de l'Afrique de l'Ouest (BCEAO) supervise la politique monétaire de l'UEMOA.",
          "The Central Bank of West African States (BCEAO) supervises UEMOA monetary policy.",
          "Le siège de la BCEAO est à Dakar, au Sénégal.",
          "The BCEAO headquarters is in Dakar, Senegal.",
          "Institutions financières",
          ["BCEAO", "UEMOA"]),
      q(
          "e5_9r",
          "Quel est le principal défi économique lié à la crise sécuritaire au Burkina Faso ?",
          "What is the main economic challenge related to the security crisis in Burkina Faso?",
          [
            [
              "La fermeture des mines et la baisse des exportations",
              "Mine closures and falling exports"
            ],
            ["La hausse du prix du coton", "Rising cotton prices"],
            ["Le boom du tourisme", "Tourism boom"],
            ["L'augmentation des aides étrangères", "Increase in foreign aid"]
          ],
          0,
          "La crise sécuritaire a entraîné la fermeture de nombreuses mines et une baisse significative des exportations.",
          "The security crisis has led to the closure of many mines and a significant drop in exports.",
          "Certaines zones minières sont devenues inaccessibles en raison de l'insécurité.",
          "Some mining areas have become inaccessible due to insecurity.",
          "Économie et sécurité",
          ["mines", "insécurité"]),
      q(
          "e5_10r",
          "Comment la crise sécuritaire actuelle affecte-t-elle l'économie burkinabè ?",
          "How does the current security crisis affect the Burkinabè economy?",
          [
            [
              "Elle réduit la production agricole et minière dans les zones affectées",
              "It reduces agricultural and mining production in affected areas"
            ],
            ["Elle booste le tourisme de guerre", "It boosts war tourism"],
            [
              "Elle n'a aucun impact sur l'économie",
              "It has no impact on the economy"
            ],
            [
              "Elle stimule les exportations de pétrole",
              "It stimulates oil exports"
            ]
          ],
          0,
          "La crise sécuritaire a lourdement impacté la production agricole, les mines et les échanges commerciaux dans les zones affectées.",
          "The security crisis has heavily impacted agricultural production, mining and trade in affected areas.",
          "Des millions de personnes déplacées ont perdu leurs moyens de subsistance agricoles.",
          "Millions of displaced people have lost their agricultural livelihoods.",
          "Économie et sécurité",
          ["crise", "agriculture"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  CITOYENNETÉ
  // ════════════════════════════════════════════════
  "Citoyenneté": [
    Level(number: 1, title: "Les Institutions", isLocked: false, questions: [
      q(
          "c1_1",
          "Qu'est-ce que le suffrage universel ?",
          "What is universal suffrage?",
          [
            [
              "Droit de vote pour tous les citoyens adultes",
              "Right to vote for all adult citizens"
            ],
            ["Un impôt national", "A national tax"],
            ["Un type de monnaie", "A type of currency"],
            ["Un festival culturel", "A cultural festival"]
          ],
          0,
          "Le suffrage universel garantit le droit de vote à la plupart des citoyens adultes.",
          "Universal suffrage grants voting rights to most adult citizens.",
          "Il peut être direct (vote direct) ou indirect (représentants).",
          "It can be direct (direct vote) or indirect (through representatives).",
          "Civique",
          ["vote", "suffrage"]),
      q(
          "c1_2",
          "Quel est le rôle principal d'un parlement ?",
          "What is the main role of a parliament?",
          [
            [
              "Faire les lois et représenter les citoyens",
              "Make laws and represent citizens"
            ],
            ["Gérer les hôpitaux", "Run hospitals"],
            [
              "Organiser des compétitions sportives",
              "Organize sports competitions"
            ],
            ["Peindre les bâtiments publics", "Paint public buildings"]
          ],
          0,
          "Le parlement débat, vote les lois et contrôle le gouvernement.",
          "Parliament debates, votes laws and oversees the government.",
          "Les parlements peuvent être bicaméraux (deux chambres) ou monocaméraux.",
          "Parliaments can be bicameral (two chambers) or unicameral.",
          "Institutions civiques",
          ["parlement", "lois"]),
      q(
          "c1_3",
          "Que signifie 'séparation des pouvoirs' ?",
          "What does 'separation of powers' mean?",
          [
            [
              "Répartition des fonctions entre législatif, exécutif et judiciaire",
              "Distribution of functions among legislative, executive and judicial"
            ],
            [
              "Regrouper tous les pouvoirs dans un seul organe",
              "Consolidating all powers in one body"
            ],
            ["Suppression du parlement", "Abolition of parliament"],
            ["Parti unique obligatoire", "Mandatory single party"]
          ],
          0,
          "La séparation des pouvoirs évite la concentration excessive du pouvoir.",
          "Separation of powers prevents excessive concentration of power.",
          "C'est un principe fondamental des démocraties modernes.",
          "It's a fundamental principle of modern democracies.",
          "Droit constitutionnel",
          ["pouvoirs", "démocratie"]),
      q(
          "c1_4",
          "À quel âge un citoyen burkinabè peut-il voter ?",
          "At what age can a Burkinabè citizen vote?",
          [
            ["18 ans", "18 years"],
            ["16 ans", "16 years"],
            ["21 ans", "21 years"],
            ["25 ans", "25 years"]
          ],
          0,
          "La majorité électorale au Burkina Faso est fixée à 18 ans.",
          "The voting age in Burkina Faso is set at 18 years.",
          "Dans certains pays, le droit de vote est accordé dès 16 ans.",
          "In some countries, voting rights are granted from age 16.",
          "Code électoral",
          ["vote", "majorité"]),
      q(
          "c1_5",
          "Qui rédige et adopte la Constitution ?",
          "Who drafts and adopts the Constitution?",
          [
            ["Une assemblée constituante", "A constituent assembly"],
            ["Le Parlement ordinaire", "The ordinary Parliament"],
            ["Le Gouvernement seul", "The Government alone"],
            ["Le président uniquement", "The president alone"]
          ],
          0,
          "Une Constitution est souvent adoptée par une assemblée constituante spécialement mandatée.",
          "A constitution is often adopted by a specially mandated constituent assembly.",
          "Les Constitutions peuvent être révisées pour moderniser les institutions.",
          "Constitutions can be revised to modernize institutions.",
          "Droit constitutionnel",
          ["constitution", "assemblée"]),
      q(
          "c1_6r",
          "Comment la RPP définissait-elle le citoyen révolutionnaire ?",
          "How did the RPP define the revolutionary citizen?",
          [
            [
              "Un citoyen conscient, engagé et prêt à sacrifier ses intérêts pour le bien collectif",
              "A conscious, committed citizen ready to sacrifice personal interests for the common good"
            ],
            [
              "Un citoyen obéissant aux ordres militaires",
              "A citizen obedient to military orders"
            ],
            ["Un citoyen uniquement électeur", "A citizen who only votes"],
            ["Un citoyen riche et instruit", "A wealthy and educated citizen"]
          ],
          0,
          "La révolution sankariste exigeait une participation active de chaque citoyen à la transformation du pays.",
          "The Sankarist revolution required the active participation of every citizen in the country's transformation.",
          "Le slogan était : chaque citoyen est un acteur de la révolution.",
          "The slogan was: every citizen is an actor of the revolution.",
          "Citoyenneté révolutionnaire",
          ["citoyen", "engagement"]),
      q(
          "c1_7r",
          "Que représentent les Tribunaux Populaires de la Révolution (TPR) pour la citoyenneté ?",
          "What do the People's Revolutionary Tribunals (PRT) represent for citizenship?",
          [
            [
              "Une forme de justice participative impliquant directement les citoyens",
              "A form of participatory justice directly involving citizens"
            ],
            ["Des tribunaux militaires secrets", "Secret military tribunals"],
            ["Des institutions corrompues", "Corrupt institutions"],
            ["Des organes sans légitimité", "Organs without legitimacy"]
          ],
          0,
          "Les TPR permettaient aux citoyens de juger les responsables de détournements et de corruption.",
          "The PRTs allowed citizens to judge those responsible for embezzlement and corruption.",
          "Ils incarnaient l'idéal de justice populaire directe de la révolution.",
          "They embodied the ideal of direct popular justice of the revolution.",
          "Justice populaire",
          ["TPR", "justice"]),
      q(
          "c1_8r",
          "Quel est le droit fondamental qui permet aux citoyens de participer au gouvernement ?",
          "What is the fundamental right that allows citizens to participate in government?",
          [
            ["Le droit de vote", "The right to vote"],
            ["Le droit à l'éducation", "The right to education"],
            ["Le droit au travail", "The right to work"],
            ["La liberté de déplacement", "Freedom of movement"]
          ],
          0,
          "Le droit de vote est le droit fondamental qui permet aux citoyens de choisir leurs représentants.",
          "The right to vote is the fundamental right that allows citizens to choose their representatives.",
          "Au Burkina Faso, le droit de vote est accordé à partir de 18 ans.",
          "In Burkina Faso, voting rights are granted from age 18.",
          "Droits civiques",
          ["vote", "démocratie"]),
      q(
          "c1_9r",
          "Qu'est-ce que la Constitution burkinabè garantit comme liberté fondamentale ?",
          "What fundamental freedom does the Burkinabè Constitution guarantee?",
          [
            ["La liberté d'expression", "Freedom of expression"],
            ["L'impunité des dirigeants", "Impunity of leaders"],
            ["La propriété collective", "Collective property"],
            ["La soumission à l'autorité", "Submission to authority"]
          ],
          0,
          "La Constitution du Burkina Faso garantit la liberté d'expression comme droit fondamental.",
          "The Constitution of Burkina Faso guarantees freedom of expression as a fundamental right.",
          "La liberté d'expression inclut la liberté de la presse et d'opinion.",
          "Freedom of expression includes freedom of the press and opinion.",
          "Droits constitutionnels",
          ["constitution", "liberté"]),
      q(
          "c1_10r",
          "Quel est l'organe judiciaire suprême du Burkina Faso ?",
          "What is the supreme judicial body of Burkina Faso?",
          [
            ["La Cour de Cassation", "The Court of Cassation"],
            ["Le Tribunal de Ouagadougou", "The Ouagadougou Tribunal"],
            ["Le Conseil d'État", "The Council of State"],
            ["La Cour Constitutionnelle", "The Constitutional Court"]
          ],
          0,
          "La Cour de Cassation est la juridiction suprême de l'ordre judiciaire au Burkina Faso.",
          "The Court of Cassation is the supreme court of the judicial order in Burkina Faso.",
          "Elle tranche les litiges en dernière instance sur les questions de droit civil et pénal.",
          "It rules on disputes as a last resort on civil and criminal law matters.",
          "Justice burkinabè",
          ["Cour de Cassation", "justice"]),
    ]),
    Level(number: 2, title: "Droits et Devoirs", isLocked: true, questions: [
      q(
          "c2_1",
          "Quels sont les droits fondamentaux garantis par la Constitution ?",
          "What fundamental rights are guaranteed by the Constitution?",
          [
            [
              "Liberté, égalité et dignité humaine",
              "Freedom, equality and human dignity"
            ],
            [
              "Droit de posséder plusieurs voitures",
              "Right to own multiple cars"
            ],
            ["Droit de ne pas payer d'impôts", "Right not to pay taxes"],
            ["Droit d'ignorer les lois", "Right to ignore laws"]
          ],
          0,
          "La Constitution garantit la liberté d'expression, d'association et l'égalité devant la loi.",
          "The Constitution guarantees freedom of expression, association and equality before the law.",
          "Ces droits s'inspirent de la Déclaration Universelle des Droits de l'Homme.",
          "These rights are inspired by the Universal Declaration of Human Rights.",
          "Constitution burkinabè",
          ["droits", "libertés"]),
      q(
          "c2_2",
          "Quel est le devoir civique de base de tout citoyen ?",
          "What is the basic civic duty of every citizen?",
          [
            [
              "Respecter les lois et participer à la vie citoyenne",
              "Respect laws and participate in civic life"
            ],
            ["Travailler uniquement pour l'État", "Work only for the state"],
            [
              "Ne jamais critiquer le gouvernement",
              "Never criticize the government"
            ],
            ["Payer uniquement des impôts", "Only pay taxes"]
          ],
          0,
          "Le civisme inclut le respect des lois, le vote et la participation collective.",
          "Civism includes respecting laws, voting and collective participation.",
          "La citoyenneté active est le pilier d'une démocratie forte.",
          "Active citizenship is the pillar of a strong democracy.",
          "Éducation civique",
          ["civisme", "devoir"]),
      q(
          "c2_3",
          "Qu'est-ce qu'un État de droit ?",
          "What is a rule of law state?",
          [
            [
              "Un État où tous sont soumis à la loi, même les dirigeants",
              "A state where everyone is subject to the law, even leaders"
            ],
            ["Un État sans constitution", "A state without a constitution"],
            ["Un État géré par l'armée", "A state managed by the military"],
            ["Un État sans élections", "A state without elections"]
          ],
          0,
          "Dans un État de droit, nul n'est au-dessus de la loi.",
          "In a rule of law state, no one is above the law.",
          "L'indépendance de la justice est essentielle dans un État de droit.",
          "Judicial independence is essential in a rule of law state.",
          "Droit constitutionnel",
          ["état de droit", "justice"]),
      q(
          "c2_4",
          "Qu'est-ce que la société civile ?",
          "What is civil society?",
          [
            [
              "Organisations non gouvernementales et associations citoyennes",
              "Non-governmental organizations and citizen associations"
            ],
            ["L'armée nationale", "The national army"],
            ["Les partis politiques uniquement", "Political parties only"],
            ["Les entreprises privées uniquement", "Private companies only"]
          ],
          0,
          "La société civile regroupe ONG, associations, syndicats et groupements citoyens.",
          "Civil society includes NGOs, associations, unions and citizen groups.",
          "Elle joue un rôle clé dans la surveillance du pouvoir politique.",
          "It plays a key role in monitoring political power.",
          "Sciences politiques",
          ["société civile", "ONG"]),
      q(
          "c2_5",
          "Qu'est-ce qu'une gouvernance transparente ?",
          "What is transparent governance?",
          [
            [
              "Gestion claire avec responsabilité des décideurs",
              "Clear management with accountability of decision-makers"
            ],
            ["Secrets d'État permanents", "Permanent state secrets"],
            ["Absence de contrôle judiciaire", "Absence of judicial oversight"],
            [
              "Interdiction des médias indépendants",
              "Banning of independent media"
            ]
          ],
          0,
          "La gouvernance transparente implique responsabilité et libre accès à l'information.",
          "Transparent governance involves accountability and free access to information.",
          "La transparence favorise la confiance des citoyens envers l'État.",
          "Transparency fosters citizens' trust in the state.",
          "Civique",
          ["gouvernance", "transparence"]),
      q(
          "c2_6r",
          "Comment la révolution mobilisait-elle les citoyens pour le développement ?",
          "How did the revolution mobilize citizens for development?",
          [
            [
              "Par des chantiers collectifs volontaires pour construire écoles et dispensaires",
              "Through voluntary collective work sites to build schools and dispensaries"
            ],
            [
              "Par la conscription militaire forcée",
              "Through forced military conscription"
            ],
            ["Par des impôts très élevés", "Through very high taxes"],
            [
              "Par des programmes d'aide internationale",
              "Through international aid programs"
            ]
          ],
          0,
          "Des journées nationales de travail volontaire mobilisaient des milliers de Burkinabè.",
          "National voluntary work days mobilized thousands of Burkinabè.",
          "Ces chantiers renforçaient la solidarité nationale et le sentiment d'appartenance.",
          "These projects strengthened national solidarity and a sense of belonging.",
          "Mobilisation citoyenne",
          ["volontariat", "chantiers"]),
      q(
          "c2_7r",
          "Quel droit fondamental la RPP a-t-elle reconnu aux femmes ?",
          "What fundamental right did the RPP recognize for women?",
          [
            [
              "L'égalité politique et sociale, le droit de vote et d'accès aux postes de responsabilité",
              "Political and social equality, the right to vote and access to positions of responsibility"
            ],
            ["Uniquement le droit de vote", "Only the right to vote"],
            [
              "Le droit de travailler dans les champs",
              "The right to work in the fields"
            ],
            ["Aucun droit spécifique", "No specific rights"]
          ],
          0,
          "Sankara a créé l'Union des Femmes du Burkina (UFB) et nommé des femmes à des postes clés.",
          "Sankara created the Union of Women of Burkina (UFB) and appointed women to key positions.",
          "Il interdisait l'excision, le mariage forcé et le lévirat.",
          "He banned FGM, forced marriage and levirate.",
          "Droits des femmes",
          ["femmes", "égalité"]),
      q(
          "c2_8r",
          "Quel est le devoir civique obligatoire pour les Burkinabès majeurs ?",
          "What is the mandatory civic duty for adult Burkinabès?",
          [
            ["Participer aux élections", "Participate in elections"],
            ["Payer des impôts", "Pay taxes"],
            ["Rejoindre l'armée", "Join the army"],
            ["Travailler pour l'État", "Work for the state"]
          ],
          1,
          "Le paiement des impôts est un devoir civique fondamental qui finance les services publics.",
          "Paying taxes is a fundamental civic duty that funds public services.",
          "Les impôts financent les écoles, hôpitaux et infrastructures publiques.",
          "Taxes fund schools, hospitals and public infrastructure.",
          "Civisme fiscal",
          ["impôts", "devoir civique"]),
      q(
          "c2_9r",
          "Qu'est-ce que la CENI au Burkina Faso ?",
          "What is the CENI in Burkina Faso?",
          [
            [
              "Commission Électorale Nationale Indépendante",
              "National Independent Electoral Commission"
            ],
            [
              "Conseil Économique National et International",
              "National and International Economic Council"
            ],
            [
              "Centre d'Éducation Nationale et Institutionnelle",
              "National and Institutional Education Center"
            ],
            [
              "Comité d'Enquête Nationale Indépendante",
              "National Independent Investigation Committee"
            ]
          ],
          0,
          "La CENI est l'organe chargé d'organiser et superviser les élections au Burkina Faso.",
          "CENI is the body responsible for organizing and supervising elections in Burkina Faso.",
          "L'indépendance de la CENI est essentielle pour garantir des élections libres et transparentes.",
          "CENI's independence is essential to guarantee free and transparent elections.",
          "Institutions démocratiques",
          ["CENI", "élections"]),
      q(
          "c2_10r",
          "Que garantit le principe de séparation des pouvoirs au Burkina Faso ?",
          "What does the principle of separation of powers guarantee in Burkina Faso?",
          [
            [
              "Que les pouvoirs exécutif, législatif et judiciaire sont indépendants",
              "That executive, legislative and judicial powers are independent"
            ],
            [
              "Que seul le président a tous les pouvoirs",
              "That only the president has all powers"
            ],
            [
              "Que l'armée contrôle le gouvernement",
              "That the army controls the government"
            ],
            [
              "Que les élections sont systématiques",
              "That elections are systematic"
            ]
          ],
          0,
          "La séparation des pouvoirs divise le gouvernement en branches indépendantes pour éviter l'abus de pouvoir.",
          "Separation of powers divides government into independent branches to prevent abuse of power.",
          "Ce principe est fondamental dans toute démocratie constitutionnelle moderne.",
          "This principle is fundamental in any modern constitutional democracy.",
          "Droit constitutionnel",
          ["séparation des pouvoirs", "démocratie"]),
    ]),
    Level(number: 3, title: "Démocratie Avancée", isLocked: true, questions: [
      q(
          "c3_1",
          "Qu'est-ce que le principe de non-discrimination ?",
          "What is the principle of non-discrimination?",
          [
            [
              "Égalité de traitement sans distinction de race, genre ou religion",
              "Equal treatment regardless of race, gender or religion"
            ],
            [
              "Priorité aux hommes dans les emplois publics",
              "Priority to men in public jobs"
            ],
            [
              "Refus de traiter avec certaines communautés",
              "Refusal to deal with certain communities"
            ],
            [
              "Application des lois uniquement aux riches",
              "Applying laws only to the wealthy"
            ]
          ],
          0,
          "La non-discrimination garantit l'égalité de tous devant la loi.",
          "Non-discrimination guarantees equality for all before the law.",
          "C'est un principe fondamental des droits de l'homme.",
          "It is a fundamental principle of human rights.",
          "Droits de l'homme",
          ["discrimination", "égalité"]),
      q(
          "c3_2",
          "Quel est le rôle d'un tribunal constitutionnel ?",
          "What is the role of a constitutional court?",
          [
            [
              "Vérifier que les lois respectent la Constitution",
              "Verify that laws respect the Constitution"
            ],
            ["Juger les crimes de droit commun", "Judge common law crimes"],
            ["Organiser les élections", "Organize elections"],
            ["Gérer le budget de l'État", "Manage the state budget"]
          ],
          0,
          "Le tribunal constitutionnel veille à la conformité des lois avec la Constitution.",
          "The constitutional court ensures laws comply with the Constitution.",
          "Au Burkina Faso, c'est le Conseil Constitutionnel qui joue ce rôle.",
          "In Burkina Faso, the Constitutional Council plays this role.",
          "Droit constitutionnel",
          ["constitution", "tribunal"]),
      q(
          "c3_3",
          "Qu'est-ce que la décentralisation administrative ?",
          "What is administrative decentralization?",
          [
            [
              "Transfert de pouvoirs de l'État central vers les collectivités locales",
              "Transfer of powers from central government to local authorities"
            ],
            [
              "Concentration de tous les pouvoirs à la capitale",
              "Concentration of all powers in the capital"
            ],
            ["Suppression des régions", "Elimination of regions"],
            [
              "Privatisation des services publics",
              "Privatization of public services"
            ]
          ],
          0,
          "La décentralisation rapproche les services publics des citoyens.",
          "Decentralization brings public services closer to citizens.",
          "Le Burkina Faso a 13 régions, 45 provinces et 351 communes.",
          "Burkina Faso has 13 regions, 45 provinces and 351 municipalities.",
          "Administration territoriale",
          ["décentralisation", "collectivités"]),
      q(
          "c3_4",
          "Qu'est-ce que le multipartisme ?",
          "What is multipartism?",
          [
            [
              "Système politique avec plusieurs partis en compétition",
              "Political system with multiple competing parties"
            ],
            ["Un système à parti unique", "A single-party system"],
            [
              "L'absence de partis politiques",
              "The absence of political parties"
            ],
            ["Un gouvernement militaire", "A military government"]
          ],
          0,
          "Le multipartisme permet la compétition démocratique entre différentes visions politiques.",
          "Multipartism allows democratic competition between different political visions.",
          "Le Burkina Faso est un État multipartite depuis la Constitution de 1991.",
          "Burkina Faso has been a multiparty state since the 1991 Constitution.",
          "Sciences politiques",
          ["multipartisme", "démocratie"]),
      q(
          "c3_5",
          "Qu'est-ce que le droit de pétition ?",
          "What is the right to petition?",
          [
            [
              "Droit des citoyens de soumettre des demandes aux autorités",
              "Citizens' right to submit requests to authorities"
            ],
            ["Droit d'ouvrir un commerce", "Right to open a business"],
            ["Droit de construire une maison", "Right to build a house"],
            [
              "Droit de voyager sans passeport",
              "Right to travel without a passport"
            ]
          ],
          0,
          "Le droit de pétition permet aux citoyens de s'adresser directement aux institutions.",
          "The right to petition allows citizens to address institutions directly.",
          "Il est un outil de démocratie participative reconnu dans de nombreuses constitutions.",
          "It is a participatory democracy tool recognized in many constitutions.",
          "Droits civiques",
          ["pétition", "participation"]),
      q(
          "c3_6r",
          "Comment la révolution luttait-elle contre les inégalités sociales ?",
          "How did the revolution fight social inequalities?",
          [
            [
              "Par la redistribution des terres, la gratuité des soins et de l'éducation",
              "Through land redistribution, free healthcare and education"
            ],
            ["Par des discours uniquement", "Through speeches only"],
            ["Par l'aide internationale", "Through international aid"],
            [
              "Par la privatisation des services publics",
              "Through privatization of public services"
            ]
          ],
          0,
          "La révolution a rendu l'éducation et la santé gratuites et accessibles à tous.",
          "The revolution made education and healthcare free and accessible to all.",
          "Le taux de scolarisation a augmenté de 30% en 4 ans de révolution.",
          "Enrollment rates increased by 30% in 4 years of revolution.",
          "Justice sociale",
          ["inégalités", "redistribution"]),
      q(
          "c3_7r",
          "Qu'est-ce que le devoir de vigilance révolutionnaire selon la RPP ?",
          "What is the duty of revolutionary vigilance according to the RPP?",
          [
            [
              "La responsabilité citoyenne de dénoncer corruption, injustice et contre-révolution",
              "The civic responsibility to denounce corruption, injustice and counter-revolution"
            ],
            ["Un service d'espionnage d'État", "A state espionage service"],
            ["Un devoir militaire", "A military duty"],
            ["Une obligation religieuse", "A religious obligation"]
          ],
          0,
          "La révolution appelait chaque citoyen à surveiller et dénoncer les abus et la corruption.",
          "The revolution called on every citizen to monitor and denounce abuses and corruption.",
          "Cette vigilance populaire était vue comme le moteur de la révolution.",
          "This popular vigilance was seen as the engine of the revolution.",
          "Vigilance révolutionnaire",
          ["vigilance", "corruption"]),
      q(
          "c3_8r",
          "Quel texte fonde les droits humains au niveau international ?",
          "What text establishes human rights at the international level?",
          [
            [
              "La Déclaration Universelle des Droits de l'Homme",
              "The Universal Declaration of Human Rights"
            ],
            [
              "La Charte Africaine des Droits de l'Homme",
              "The African Charter on Human Rights"
            ],
            ["Le Traité de Westphalie", "The Treaty of Westphalia"],
            ["La Constitution de l'ONU", "The UN Constitution"]
          ],
          0,
          "La Déclaration Universelle des Droits de l'Homme adoptée en 1948 est le fondement des droits humains.",
          "The Universal Declaration of Human Rights adopted in 1948 is the foundation of human rights.",
          "Cette déclaration a été adoptée par l'Assemblée générale des Nations Unies le 10 décembre 1948.",
          "This declaration was adopted by the UN General Assembly on December 10, 1948.",
          "Droits humains",
          ["DUDH", "droits"]),
      q(
          "c3_9r",
          "Quelle institution burkinabè protège les droits des citoyens contre l'administration ?",
          "Which Burkinabè institution protects citizens' rights against the administration?",
          [
            ["Le Médiateur du Faso", "The Mediator of Faso"],
            ["Le Parlement", "The Parliament"],
            ["La Police Nationale", "The National Police"],
            ["Le Ministère de la Justice", "The Ministry of Justice"]
          ],
          0,
          "Le Médiateur du Faso est l'institution chargée de traiter les conflits entre citoyens et administration.",
          "The Mediator of Faso is the institution responsible for handling conflicts between citizens and administration.",
          "Le Médiateur du Faso intervient gratuitement pour tous les citoyens.",
          "The Mediator of Faso intervenes free of charge for all citizens.",
          "Institutions civiques",
          ["médiateur", "droits"]),
      q(
          "c3_10r",
          "Qu'est-ce que la justice transitionnelle au Burkina Faso ?",
          "What is transitional justice in Burkina Faso?",
          [
            [
              "Des mécanismes pour traiter les violations des droits humains passées",
              "Mechanisms to address past human rights violations"
            ],
            ["Un tribunal militaire temporaire", "A temporary military court"],
            [
              "Une justice expéditive d'urgence",
              "Emergency expeditive justice"
            ],
            ["Un programme d'amnistie générale", "A general amnesty program"]
          ],
          0,
          "La justice transitionnelle comprend les mécanismes comme les procès, commissions vérité et réparations pour les victimes.",
          "Transitional justice includes mechanisms such as trials, truth commissions and reparations for victims.",
          "Le procès de l'assassinat de Sankara est un exemple de justice transitionnelle au Burkina.",
          "The trial for Sankara's assassination is an example of transitional justice in Burkina.",
          "Justice et droits",
          ["justice transitionnelle", "droits"]),
    ]),
    Level(number: 4, title: "Justice & Liberté", isLocked: true, questions: [
      q(
          "c4_1",
          "Qu'est-ce que la présomption d'innocence ?",
          "What is the presumption of innocence?",
          [
            [
              "Toute personne est innocente jusqu'à preuve de culpabilité",
              "Every person is innocent until guilt is proven"
            ],
            [
              "Le coupable est présumé innocent",
              "The guilty is presumed innocent"
            ],
            [
              "Seuls les riches bénéficient de ce droit",
              "Only the rich benefit from this right"
            ],
            [
              "Un principe sans application pratique",
              "A principle without practical application"
            ]
          ],
          0,
          "La présomption d'innocence est un pilier du procès équitable dans les États de droit.",
          "The presumption of innocence is a pillar of fair trial in states governed by the rule of law.",
          "Ce principe est consacré par la Déclaration universelle des droits de l'Homme.",
          "This principle is enshrined in the Universal Declaration of Human Rights.",
          "Justice",
          ["présomption", "innocence"]),
      q(
          "c4_2",
          "Qu'est-ce que la liberté de la presse ?",
          "What is freedom of the press?",
          [
            [
              "Le droit des médias d'informer sans censure",
              "The right of media to inform without censorship"
            ],
            [
              "Le droit du gouvernement de contrôler les médias",
              "The right of government to control media"
            ],
            [
              "L'obligation de relayer les communiqués officiels",
              "The obligation to relay official communiqués"
            ],
            [
              "Un privilège des journalistes étrangers",
              "A privilege of foreign journalists"
            ]
          ],
          0,
          "La liberté de la presse est essentielle pour la démocratie et le contrôle du pouvoir.",
          "Freedom of the press is essential for democracy and control of power.",
          "Le Burkina Faso figure parmi les pays africains avec une presse relativement libre.",
          "Burkina Faso is among African countries with a relatively free press.",
          "Presse",
          ["liberté", "médias"]),
      q(
          "c4_3",
          "Qu'est-ce que le droit d'asile ?",
          "What is the right of asylum?",
          [
            [
              "La protection accordée aux personnes fuyant des persécutions",
              "Protection granted to people fleeing persecution"
            ],
            [
              "Le droit de rester dans n'importe quel pays",
              "The right to stay in any country"
            ],
            [
              "Un privilège réservé aux diplomates",
              "A privilege reserved for diplomats"
            ],
            ["L'immigration économique légale", "Legal economic immigration"]
          ],
          0,
          "Le droit d'asile est garanti par la Convention de Genève de 1951 sur les réfugiés.",
          "The right of asylum is guaranteed by the 1951 Geneva Convention on Refugees.",
          "Le Burkina Faso accueille des réfugiés malgré sa propre crise sécuritaire.",
          "Burkina Faso hosts refugees despite its own security crisis.",
          "Réfugiés",
          ["asile", "réfugiés"]),
      q(
          "c4_4",
          "Qu'est-ce que la protection des données personnelles ?",
          "What is personal data protection?",
          [
            [
              "Le droit de contrôler comment ses informations sont utilisées",
              "The right to control how one's information is used"
            ],
            [
              "L'interdiction d'utiliser internet",
              "The prohibition of using the internet"
            ],
            [
              "Un système de surveillance étatique",
              "A state surveillance system"
            ],
            [
              "La protection des secrets d'État",
              "The protection of state secrets"
            ]
          ],
          0,
          "La protection des données personnelles est un droit fondamental à l'ère numérique.",
          "Personal data protection is a fundamental right in the digital age.",
          "Le Burkina Faso a adopté une loi sur la protection des données personnelles.",
          "Burkina Faso adopted a personal data protection law.",
          "Numérique",
          ["données", "vie privée"]),
      q(
          "c4_5",
          "Qu'est-ce que la CENI au Burkina Faso ?",
          "What is the CENI in Burkina Faso?",
          [
            [
              "La Commission Électorale Nationale Indépendante",
              "The National Independent Electoral Commission"
            ],
            ["Un parti politique", "A political party"],
            ["Un tribunal spécial", "A special court"],
            [
              "Un organe consultatif du gouvernement",
              "A government advisory body"
            ]
          ],
          0,
          "La CENI garantit l'impartialité et la transparence des élections au Burkina Faso.",
          "The CENI guarantees the impartiality and transparency of elections in Burkina Faso.",
          "Elle est composée de représentants des partis politiques et de la société civile.",
          "It is composed of representatives of political parties and civil society.",
          "Élections",
          ["CENI", "élections"]),
      q(
          "ci4_6r",
          "Quel principe citoyen fondamental la RPP mettait-elle en avant ?",
          "What fundamental civic principle did the RPP promote?",
          [
            [
              "La primauté du peuple sur les intérêts individuels et l'État au service du peuple",
              "The primacy of the people over individual interests and the state serving the people"
            ],
            [
              "La soumission du peuple à l'État",
              "The submission of the people to the state"
            ],
            [
              "Les intérêts privés avant le bien commun",
              "Private interests before the common good"
            ],
            [
              "La séparation du peuple et de l'État",
              "The separation of the people and the state"
            ]
          ],
          0,
          "Sankara répétait : le peuple d'abord, le peuple toujours, le peuple partout.",
          "Sankara repeated: the people first, the people always, the people everywhere.",
          "Cela reflétait une vision d'un État vraiment populaire et non patrimonial.",
          "This reflected a vision of a truly popular and non-patrimonial state.",
          "Philosophie révolutionnaire",
          ["peuple", "État"]),
      q(
          "ci4_7r",
          "Comment la RPP garantissait-elle la participation des jeunes à la citoyenneté ?",
          "How did the RPP guarantee the participation of youth in citizenship?",
          [
            [
              "Par les Pionniers de la Révolution et l'intégration des jeunes dans les CDR",
              "Through the Pioneers of the Revolution and integration of youth in CDRs"
            ],
            [
              "En excluant les jeunes de la politique",
              "By excluding youth from politics"
            ],
            [
              "Par l'enrôlement militaire forcé",
              "Through forced military enrollment"
            ],
            [
              "Par des programmes scolaires uniquement",
              "Through school programs only"
            ]
          ],
          0,
          "Les jeunes Burkinabè étaient au cœur de la révolution via les organisations de jeunesse.",
          "Burkinabè youth were at the heart of the revolution through youth organizations.",
          "Sankara disait que la jeunesse est l'avenir de la révolution.",
          "Sankara said youth is the future of the revolution.",
          "Jeunesse révolutionnaire",
          ["jeunesse", "CDR"]),
      q(
          "c4_8r",
          "Quel est le rôle des Volontaires pour la Défense de la Patrie (VDP) ?",
          "What is the role of the Volunteers for the Defense of the Homeland (VDP)?",
          [
            [
              "Soutenir l'armée dans la lutte contre le terrorisme",
              "Support the army in fighting terrorism"
            ],
            ["Organiser des élections locales", "Organize local elections"],
            [
              "Construire des écoles dans les villages",
              "Build schools in villages"
            ],
            ["Gérer les ressources naturelles", "Manage natural resources"]
          ],
          0,
          "Les VDP sont des citoyens formés pour soutenir l'armée dans la lutte contre le terrorisme.",
          "VDPs are trained citizens to support the army in fighting terrorism.",
          "Les VDP ont été créés par une loi en 2020 pour renforcer la défense nationale.",
          "VDPs were created by a law in 2020 to strengthen national defense.",
          "Défense nationale",
          ["VDP", "sécurité"]),
      q(
          "c4_9r",
          "Comment appelle-t-on le principe selon lequel les décisions sont prises au niveau le plus proche des citoyens ?",
          "What is the principle called whereby decisions are made at the level closest to citizens?",
          [
            ["La subsidiarité", "Subsidiarity"],
            ["La centralisation", "Centralization"],
            ["La déconcentration", "Deconcentration"],
            ["La fédéralisation", "Federalization"]
          ],
          0,
          "Le principe de subsidiarité garantit que les décisions sont prises au niveau le plus pertinent et proche des citoyens.",
          "The principle of subsidiarity ensures decisions are made at the most relevant level closest to citizens.",
          "Ce principe est au cœur de la décentralisation administrative au Burkina Faso.",
          "This principle is at the heart of administrative decentralization in Burkina Faso.",
          "Gouvernance locale",
          ["subsidiarité", "décentralisation"]),
      q(
          "c4_10r",
          "Comment fonctionne la décentralisation administrative au Burkina Faso ?",
          "How does administrative decentralization work in Burkina Faso?",
          [
            [
              "Elle transfère des pouvoirs aux collectivités locales élues",
              "It transfers powers to elected local authorities"
            ],
            [
              "Elle centralise tout à Ouagadougou",
              "It centralizes everything in Ouagadougou"
            ],
            [
              "Elle donne le pouvoir aux chefs traditionnels",
              "It gives power to traditional chiefs"
            ],
            [
              "Elle crée des États fédéraux autonomes",
              "It creates autonomous federal states"
            ]
          ],
          0,
          "La décentralisation transfère des compétences et ressources aux communes, provinces et régions.",
          "Decentralization transfers powers and resources to municipalities, provinces and regions.",
          "Le Burkina Faso compte 351 communes dont 49 communes urbaines.",
          "Burkina Faso has 351 municipalities including 49 urban municipalities.",
          "Gouvernance locale",
          ["décentralisation", "communes"]),
    ]),
    Level(number: 5, title: "Citoyen Modèle", isLocked: true, questions: [
      q(
          "ci5_1",
          "Qu'est-ce que la Cour pénale internationale (CPI) ?",
          "What is the International Criminal Court (ICC)?",
          [
            [
              "Un tribunal international jugeant les crimes de guerre et contre l'humanité",
              "An international court judging war crimes and crimes against humanity"
            ],
            ["Une cour nationale burkinabè", "A Burkinabè national court"],
            ["Un tribunal de commerce", "A commercial court"],
            ["Un tribunal régional africain", "A regional African court"]
          ],
          0,
          "La CPI est compétente pour le génocide, les crimes de guerre et crimes contre l'humanité.",
          "The ICC has jurisdiction over genocide, war crimes and crimes against humanity.",
          "Le Burkina Faso a ratifié le Statut de Rome de la CPI en 2004.",
          "Burkina Faso ratified the Rome Statute of the ICC in 2004.",
          "Justice internationale",
          ["CPI", "crime de guerre"]),
      q(
          "ci5_2",
          "Qu'est-ce que la Convention relative aux droits de l'enfant (CDE) ?",
          "What is the Convention on the Rights of the Child (CRC)?",
          [
            [
              "Le traité des droits humains le plus ratifié au monde protégeant les enfants",
              "The world's most ratified human rights treaty protecting children"
            ],
            ["Une loi nationale burkinabè", "A Burkinabè national law"],
            ["Un programme scolaire", "A school program"],
            ["Un financement de l'UNICEF", "UNICEF funding"]
          ],
          0,
          "La CDE garantit la protection, la participation et le développement de chaque enfant.",
          "The CRC guarantees the protection, participation and development of every child.",
          "Le Burkina Faso a ratifié la CDE en 1990 et a adopté le Code de l'enfant en 2004.",
          "Burkina Faso ratified the CRC in 1990 and adopted the Child Code in 2004.",
          "Droits de l'enfant",
          ["CDE", "enfants"]),
      q(
          "ci5_3",
          "Qu'est-ce que la désobéissance civile et ses limites ?",
          "What is civil disobedience and its limits?",
          [
            [
              "Le refus non-violent d'une loi injuste pour provoquer un changement politique",
              "Non-violent refusal of an unjust law to provoke political change"
            ],
            ["La violence politique organisée", "Organized political violence"],
            [
              "Le respect inconditionnel des lois",
              "Unconditional respect for laws"
            ],
            ["Un mouvement armé", "An armed movement"]
          ],
          0,
          "Théorisée par Thoreau et Gandhi, la désobéissance civile est une résistance pacifique légitime.",
          "Theorized by Thoreau and Gandhi, civil disobedience is a legitimate peaceful resistance.",
          "Les mouvements de jeunesse burkinabè ont pratiqué la désobéissance civile en 2014.",
          "Burkinabè youth movements practiced civil disobedience in 2014.",
          "Résistance",
          ["désobéissance civile", "résistance"]),
      q(
          "ci5_4",
          "Quel est le rôle de l'éducation civique dans la démocratie ?",
          "What is the role of civic education in democracy?",
          [
            [
              "Former des citoyens informés capables de participer activement à la vie politique",
              "Training informed citizens capable of actively participating in political life"
            ],
            [
              "Préparer les enfants à devenir fonctionnaires",
              "Prepare children to become civil servants"
            ],
            [
              "Enseigner l'histoire nationale uniquement",
              "Teach national history only"
            ],
            ["Former des militants politiques", "Train political activists"]
          ],
          0,
          "L'éducation civique est fondamentale pour que les citoyens exercent leurs droits consciemment.",
          "Civic education is fundamental for citizens to consciously exercise their rights.",
          "Le Burkina Faso intègre l'éducation civique dans les programmes scolaires officiels.",
          "Burkina Faso integrates civic education into official school curricula.",
          "Éducation",
          ["éducation civique", "démocratie"]),
      q(
          "ci5_5",
          "Qu'est-ce que la responsabilité pénale des dirigeants ?",
          "What is the criminal liability of leaders?",
          [
            [
              "L'obligation pour les dirigeants de répondre pénalement de leurs actes",
              "The obligation for leaders to be criminally accountable for their actions"
            ],
            [
              "L'immunité totale des dirigeants",
              "The total immunity of leaders"
            ],
            [
              "Un jugement politique sans conséquence",
              "A political judgment without consequence"
            ],
            [
              "Un principe non applicable en Afrique",
              "A principle not applicable in Africa"
            ]
          ],
          0,
          "La responsabilité pénale des dirigeants est reconnue par le Statut de Rome de la CPI.",
          "Criminal liability of leaders is recognized by the Rome Statute of the ICC.",
          "L'ancien président Blaise Compaoré a été condamné in absentia pour l'assassinat de Sankara.",
          "Former President Blaise Compaoré was convicted in absentia for Sankara's assassination.",
          "Justice",
          ["responsabilité", "dirigeants"]),
      q(
          "ci5_6r",
          "Quel idéal citoyen l'héritage sankariste transmet-il aujourd'hui ?",
          "What civic ideal does the Sankarist legacy convey today?",
          [
            [
              "Un citoyen intègre, engagé, résistant à la corruption et fier de son identité",
              "An upright, committed citizen, resistant to corruption and proud of identity"
            ],
            ["Un citoyen passif et résigné", "A passive and resigned citizen"],
            [
              "Un citoyen uniquement consommateur",
              "A citizen who is only a consumer"
            ],
            [
              "Un citoyen obéissant à l'autorité",
              "A citizen obedient to authority"
            ]
          ],
          0,
          "L'héritage de Sankara inspire une citoyenneté active, intègre et souveraine.",
          "Sankara's legacy inspires an active, upright and sovereign citizenship.",
          "Le nom Burkina Faso (hommes intègres) est lui-même un appel à la vertu citoyenne.",
          "The name Burkina Faso (land of upright men) is itself a call to civic virtue.",
          "Héritage civique",
          ["intégrité", "héritage"]),
      q(
          "ci5_7r",
          "Comment le mouvement Balai Citoyen s'inscrit-il dans l'héritage de la RPP ?",
          "How does the Balai Citoyen movement fit into the RPP legacy?",
          [
            [
              "Il revendique les valeurs sankaristes d'intégrité et de lutte contre la corruption",
              "It claims Sankarist values of integrity and fight against corruption"
            ],
            [
              "Il rejette totalement l'héritage de Sankara",
              "It completely rejects Sankara's legacy"
            ],
            [
              "Il est financé par des puissances étrangères",
              "It is funded by foreign powers"
            ],
            [
              "Il n'a aucun lien avec la révolution",
              "It has no connection to the revolution"
            ]
          ],
          0,
          "Le Balai Citoyen a utilisé l'héritage sankariste pour mobiliser la jeunesse contre Compaoré en 2014.",
          "Balai Citoyen used the Sankarist legacy to mobilize youth against Compaoré in 2014.",
          "Smockey et Sams'K se réclament explicitement de l'héritage de Sankara.",
          "Smockey and Sams'K explicitly claim Sankara's legacy.",
          "Continuité révolutionnaire",
          ["Balai Citoyen", "Sankara"]),
      q(
          "c5_8r",
          "Quel est le rôle du Conseil Constitutionnel au Burkina Faso ?",
          "What is the role of the Constitutional Council in Burkina Faso?",
          [
            [
              "Garantir la constitutionnalité des lois et des élections",
              "Ensure the constitutionality of laws and elections"
            ],
            ["Gérer l'économie nationale", "Manage the national economy"],
            ["Organiser l'armée", "Organize the army"],
            [
              "Superviser les collectivités locales",
              "Supervise local authorities"
            ]
          ],
          0,
          "Le Conseil Constitutionnel est le gardien de la Constitution et arbitre les conflits électoraux.",
          "The Constitutional Council is the guardian of the Constitution and arbitrates electoral conflicts.",
          "Il est composé de 9 membres nommés pour 9 ans non renouvelables.",
          "It is composed of 9 members appointed for non-renewable 9-year terms.",
          "Institutions burkinabè",
          ["Conseil Constitutionnel", "Constitution"]),
      q(
          "c5_9r",
          "Qu'est-ce que la société civile burkinabè ?",
          "What is Burkinabè civil society?",
          [
            [
              "L'ensemble des organisations non gouvernementales et associations citoyennes",
              "All non-governmental organizations and citizen associations"
            ],
            [
              "Le gouvernement civil par opposition au militaire",
              "The civilian government as opposed to military"
            ],
            [
              "Les partis politiques de l'opposition",
              "Opposition political parties"
            ],
            [
              "Les entreprises privées du pays",
              "Private companies in the country"
            ]
          ],
          0,
          "La société civile regroupe les ONG, syndicats, associations et mouvements citoyens indépendants de l'État.",
          "Civil society includes NGOs, unions, associations and citizen movements independent of the state.",
          "Le Balai Citoyen est un exemple emblématique de la société civile burkinabè.",
          "Balai Citoyen is an emblematic example of Burkinabè civil society.",
          "Société civile",
          ["ONG", "associations"]),
      q(
          "c5_10r",
          "Quelle est l'importance de l'éducation civique pour la démocratie ?",
          "What is the importance of civic education for democracy?",
          [
            [
              "Elle forme des citoyens informés capables de participer à la vie démocratique",
              "It trains informed citizens capable of participating in democratic life"
            ],
            [
              "Elle sert uniquement à mémoriser les lois",
              "It only serves to memorize laws"
            ],
            [
              "Elle est réservée aux politiciens",
              "It is reserved for politicians"
            ],
            [
              "Elle n'a aucun lien avec la démocratie",
              "It has no connection to democracy"
            ]
          ],
          0,
          "L'éducation civique forme des citoyens conscients de leurs droits et responsabilités, essentiels au fonctionnement démocratique.",
          "Civic education trains citizens aware of their rights and responsibilities, essential for democratic functioning.",
          "Au Burkina Faso, l'éducation civique est enseignée dès l'école primaire.",
          "In Burkina Faso, civic education is taught from primary school.",
          "Éducation civique",
          ["citoyenneté", "démocratie"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  SYMBOLES
  // ════════════════════════════════════════════════
  "Symboles": [
    Level(number: 1, title: "Drapeau et Emblèmes", isLocked: false, questions: [
      q(
          "s1_1",
          "Quelles sont les couleurs du drapeau du Burkina Faso ?",
          "What are the colors of Burkina Faso's flag?",
          [
            ["Rouge, vert et étoile jaune", "Red, green and yellow star"],
            ["Bleu, blanc et rouge", "Blue, white and red"],
            ["Vert, noir et jaune", "Green, black and yellow"],
            ["Rouge, blanc et vert", "Red, white and green"]
          ],
          0,
          "Le drapeau a deux bandes horizontales (rouge en haut, vert en bas) avec une étoile jaune.",
          "The flag has two horizontal stripes (red on top, green below) with a yellow star.",
          "Ces couleurs ont été adoptées lors de la Révolution de 1984.",
          "These colors were adopted during the 1984 Revolution.",
          "Textes officiels",
          ["drapeau", "couleurs"]),
      q(
          "s1_2",
          "Que représente l'étoile sur le drapeau ?",
          "What does the star on the flag represent?",
          [
            [
              "La lumière guidant la révolution",
              "The light guiding the revolution"
            ],
            ["Les cinq régions du pays", "The five regions of the country"],
            ["L'Islam", "Islam"],
            ["Les cinq continents", "The five continents"]
          ],
          0,
          "L'étoile jaune au centre symbolise la lumière de la révolution.",
          "The yellow star in the center symbolizes the light of the revolution.",
          "Le rouge symbolise le sang des martyrs, le vert l'espérance.",
          "Red symbolizes the blood of martyrs, green symbolizes hope.",
          "Héraldique nationale",
          ["étoile", "symbolisme"]),
      q(
          "s1_3",
          "Quel est le nom de l'hymne national du Burkina Faso ?",
          "What is the name of Burkina Faso's national anthem?",
          [
            ["Le Ditanye", "Le Ditanye"],
            ["Une Seule Nuit", "Une Seule Nuit"],
            ["La Burkinabè", "La Burkinabè"],
            ["Faso Fii", "Faso Fii"]
          ],
          0,
          "Le Ditanye ('Hymne de la Victoire') est l'hymne national, adopté en 1984.",
          "Le Ditanye ('Hymn of Victory') is the national anthem, adopted in 1984.",
          "L'hymne a été composé par Thomas Sankara lui-même.",
          "The anthem was composed by Thomas Sankara himself.",
          "Culture nationale",
          ["hymne", "Sankara"]),
      q(
          "s1_4",
          "Quel animal figure dans les armoiries du Burkina Faso ?",
          "Which animal appears in Burkina Faso's coat of arms?",
          [
            ["L'étalon", "The stallion"],
            ["Le lion", "The lion"],
            ["L'éléphant", "The elephant"],
            ["L'aigle", "The eagle"]
          ],
          0,
          "L'étalon représente la fierté, la vigueur et la noblesse du peuple burkinabè.",
          "The stallion represents the pride, vigor and nobility of the Burkinabè people.",
          "L'équipe nationale de football est surnommée 'Les Étalons'.",
          "The national football team is nicknamed 'Les Étalons' (The Stallions).",
          "Héraldique nationale",
          ["étalon", "armoiries"]),
      q(
          "s1_5",
          "Quelle est la devise nationale du Burkina Faso ?",
          "What is Burkina Faso's national motto?",
          [
            ["Unité - Progrès - Justice", "Unity - Progress - Justice"],
            [
              "Liberté - Égalité - Fraternité",
              "Liberty - Equality - Fraternity"
            ],
            ["Paix - Travail - Patrie", "Peace - Work - Homeland"],
            ["Force - Honneur - Fidélité", "Strength - Honor - Loyalty"]
          ],
          0,
          "La devise 'Unité - Progrès - Justice' reflète les valeurs fondamentales de la nation.",
          "The motto 'Unity - Progress - Justice' reflects the nation's fundamental values.",
          "Cette devise a été adoptée après la révolution de 1983.",
          "This motto was adopted after the 1983 revolution.",
          "Textes officiels",
          ["devise", "valeurs"]),
      q(
          "s1_6r",
          "Que symbolisent les couleurs rouge et verte du drapeau du Burkina Faso selon la RPP ?",
          "What do the red and green colors of Burkina Faso's flag symbolize according to the RPP?",
          [
            [
              "Le rouge : sang des martyrs de la révolution ; le vert : espoir et richesses naturelles",
              "Red: blood of revolutionary martyrs; green: hope and natural riches"
            ],
            [
              "Le rouge : chaleur du Sahara ; le vert : forêts",
              "Red: heat of the Sahara; green: forests"
            ],
            [
              "Le rouge : danger ; le vert : agriculture",
              "Red: danger; green: agriculture"
            ],
            ["Aucune signification particulière", "No particular meaning"]
          ],
          0,
          "Sankara a choisi ces couleurs pour symboliser le sacrifice révolutionnaire et l'espoir du peuple.",
          "Sankara chose these colors to symbolize revolutionary sacrifice and the hope of the people.",
          "L'étoile jaune au centre représente la lumière qui guide le peuple.",
          "The yellow star in the center represents the light that guides the people.",
          "Symbolisme révolutionnaire",
          ["drapeau", "couleurs"]),
      q(
          "s1_7r",
          "Pourquoi Sankara a-t-il changé le nom Haute-Volta en Burkina Faso en 1984 ?",
          "Why did Sankara change the name Upper Volta to Burkina Faso in 1984?",
          [
            [
              "Pour effacer le nom colonial et affirmer une identité africaine de dignité et d'intégrité",
              "To erase the colonial name and affirm an African identity of dignity and integrity"
            ],
            [
              "Pour satisfaire les demandes françaises",
              "To satisfy French demands"
            ],
            ["Pour des raisons géographiques", "For geographic reasons"],
            ["Par caprice politique", "Out of political whim"]
          ],
          0,
          "Haute-Volta était un nom colonial. Burkina Faso signifie Patrie des hommes intègres en mooré et dioula.",
          "Upper Volta was a colonial name. Burkina Faso means Land of upright men in Mooré and Dioula.",
          "Ce changement de nom était un acte décolonial fort.",
          "This name change was a powerful decolonial act.",
          "Décolonisation symbolique",
          ["nom", "identité"]),
      q(
          "s1_8r",
          "Que symbolise la couleur rouge sur le drapeau du Burkina Faso ?",
          "What does the color red on Burkina Faso's flag symbolize?",
          [
            [
              "Le sang des martyrs de la révolution",
              "The blood of the revolution's martyrs"
            ],
            ["La terre fertile", "The fertile land"],
            ["Le ciel africain", "The African sky"],
            ["Les ressources naturelles", "Natural resources"]
          ],
          0,
          "La couleur rouge sur le drapeau symbolise le sang des martyrs tombés pour la révolution et la patrie.",
          "The red color on the flag symbolizes the blood of the martyrs who fell for the revolution and homeland.",
          "Les couleurs rouge et verte furent choisies lors de la révolution de 1983.",
          "The red and green colors were chosen during the 1983 revolution.",
          "Symboles nationaux",
          ["drapeau", "rouge"]),
      q(
          "s1_9r",
          "Que représente la couleur verte sur le drapeau du Burkina Faso ?",
          "What does the green color on Burkina Faso's flag represent?",
          [
            [
              "L'espoir et les richesses agricoles",
              "Hope and agricultural wealth"
            ],
            ["La forêt tropicale", "The tropical forest"],
            ["L'islamisme", "Islam"],
            ["La nature sauvage", "Wild nature"]
          ],
          0,
          "Le vert représente l'espoir et les richesses agricoles du Burkina Faso.",
          "Green represents the hope and agricultural wealth of Burkina Faso.",
          "L'étoile jaune au centre symbolise la direction et les richesses minières.",
          "The yellow star in the center symbolizes direction and mineral wealth.",
          "Symboles nationaux",
          ["drapeau", "vert"]),
      q(
          "s1_10r",
          "Que représente le livre ouvert dans les armoiries du Burkina Faso ?",
          "What does the open book in Burkina Faso's coat of arms represent?",
          [
            [
              "L'éducation et la quête du savoir",
              "Education and the quest for knowledge"
            ],
            ["La religion islamique", "The Islamic religion"],
            ["La Constitution nationale", "The national Constitution"],
            ["Les droits des femmes", "Women's rights"]
          ],
          0,
          "Le livre ouvert dans les armoiries burkinabè symbolise l'éducation, le savoir et le développement intellectuel.",
          "The open book in the Burkinabè coat of arms symbolizes education, knowledge and intellectual development.",
          "L'alphabétisation reste un défi majeur puisque seulement 46% des adultes savent lire.",
          "Literacy remains a major challenge as only 46% of adults can read.",
          "Armoiries nationales",
          ["armoiries", "éducation"]),
    ]),
    Level(number: 2, title: "Patrimoine Culturel", isLocked: true, questions: [
      q(
          "s2_1",
          "Quel festival cinématographique africain se tient à Ouagadougou ?",
          "Which African film festival is held in Ouagadougou?",
          [
            ["Le FESPACO", "FESPACO"],
            ["Le Festival de Cannes", "The Cannes Festival"],
            ["Les Oscars Africains", "The African Oscars"],
            ["Le Festival du Sahel", "The Sahel Festival"]
          ],
          0,
          "Le FESPACO (Festival Panafricain du Cinéma et de la Télévision) est le plus grand festival africain.",
          "FESPACO (Pan-African Film and Television Festival) is the largest African film festival.",
          "Le FESPACO se tient tous les deux ans depuis 1969.",
          "FESPACO has been held every two years since 1969.",
          "Culture burkinabè",
          ["FESPACO", "cinéma"]),
      q(
          "s2_2",
          "Qu'est-ce que le SIAO ?",
          "What is SIAO?",
          [
            [
              "Salon International de l'Artisanat de Ouagadougou",
              "International Handicraft Fair of Ouagadougou"
            ],
            ["Syndicat des artistes de l'Ouest", "West Artists Union"],
            [
              "Société Internationale des Arts",
              "International Society of Arts"
            ],
            ["Service Inter-Africain des Œuvres", "Inter-African Works Service"]
          ],
          0,
          "Le SIAO est un grand salon biennal valorisant l'artisanat africain à Ouagadougou.",
          "SIAO is a major biennial fair promoting African handicrafts in Ouagadougou.",
          "Il attire des artisans de toute l'Afrique et du monde entier.",
          "It attracts craftspeople from all over Africa and the world.",
          "Culture burkinabè",
          ["SIAO", "artisanat"]),
      q(
          "s2_3",
          "Quel groupe ethnique est le plus nombreux au Burkina Faso ?",
          "Which ethnic group is the most numerous in Burkina Faso?",
          [
            ["Les Mossi", "The Mossi"],
            ["Les Peuls", "The Fulani"],
            ["Les Bissa", "The Bissa"],
            ["Les Lobi", "The Lobi"]
          ],
          0,
          "Les Mossi constituent environ 50% de la population burkinabè.",
          "The Mossi make up about 50% of the Burkinabè population.",
          "Le Mogho Naaba est le roi traditionnel des Mossi à Ouagadougou.",
          "The Mogho Naaba is the traditional king of the Mossi in Ouagadougou.",
          "Ethnologie",
          ["Mossi", "ethnique"]),
      q(
          "s2_4",
          "Quelle est la langue officielle du Burkina Faso ?",
          "What is the official language of Burkina Faso?",
          [
            ["Le français", "French"],
            ["L'anglais", "English"],
            ["L'arabe", "Arabic"],
            ["Le mooré", "Mooré"]
          ],
          0,
          "Le français est la langue officielle, mais le Mooré et le Dioula sont très parlés.",
          "French is the official language, but Mooré and Dioula are widely spoken.",
          "Le Burkina Faso compte plus de 60 langues locales.",
          "Burkina Faso has more than 60 local languages.",
          "Linguistique",
          ["français", "langues"]),
      q(
          "s2_5",
          "Que représente généralement un drapeau national ?",
          "What does a national flag usually represent?",
          [
            [
              "L'identité, l'histoire et les valeurs d'un pays",
              "The identity, history and values of a country"
            ],
            ["Un code postal", "A postal code"],
            ["Un type de nourriture", "A type of food"],
            ["Un véhicule officiel", "An official vehicle"]
          ],
          0,
          "Le drapeau est le symbole visuel le plus reconnu d'une nation.",
          "The flag is the most recognized visual symbol of a nation.",
          "Les couleurs et motifs ont généralement des significations profondes.",
          "Colors and patterns generally have deep meanings.",
          "Symbolisme",
          ["drapeau", "identité"]),
      q(
          "s2_6r",
          "Quel hymne révolutionnaire Sankara lui-même a composé ?",
          "What revolutionary anthem did Sankara himself compose?",
          [
            [
              "Une des versions de l'hymne national burkinabè",
              "One of the versions of the Burkinabè national anthem"
            ],
            ["La Marseillaise africaine", "The African Marseillaise"],
            ["L'hymne de l'UA", "The AU anthem"],
            ["L'Internationale socialiste", "The Socialist Internationale"]
          ],
          0,
          "Sankara, musicien talentueux, a composé une version de l'hymne national burkinabè à la guitare.",
          "Sankara, a talented musician, composed a version of the Burkinabè national anthem on guitar.",
          "Il jouait de la guitare et composait des chansons révolutionnaires.",
          "He played guitar and composed revolutionary songs.",
          "Art révolutionnaire",
          ["hymne", "musique"]),
      q(
          "s2_7r",
          "Quel vêtement Sankara a-t-il promu comme symbole de l'identité africaine ?",
          "What clothing did Sankara promote as a symbol of African identity?",
          [
            [
              "Le faso dan fani, tissu traditionnel burkinabè tissé localement",
              "The faso dan fani, locally woven traditional Burkinabè fabric"
            ],
            ["Le costume occidental", "The Western suit"],
            ["Le boubou malien", "The Malian boubou"],
            ["Le pagne ivoirien", "The Ivorian pagne"]
          ],
          0,
          "Sankara portait et promouvait le faso dan fani pour valoriser le savoir-faire local.",
          "Sankara wore and promoted faso dan fani to value local know-how.",
          "Il ordonnait à ses ministres de porter ce tissu lors des cérémonies officielles.",
          "He ordered his ministers to wear this fabric at official ceremonies.",
          "Identité culturelle",
          ["faso dan fani", "artisanat"]),
      q(
          "s2_8r",
          "Qui a composé l'hymne national du Burkina Faso ?",
          "Who composed the national anthem of Burkina Faso?",
          [
            ["Thomas Sankara", "Thomas Sankara"],
            ["Maurice Yaméogo", "Maurice Yaméogo"],
            ["Blaise Compaoré", "Blaise Compaoré"],
            ["Daniel Ouezzin Coulibaly", "Daniel Ouezzin Coulibaly"]
          ],
          0,
          "Thomas Sankara a lui-même composé le Ditanyè, l'hymne national du Burkina Faso.",
          "Thomas Sankara himself composed the Ditanyè, the national anthem of Burkina Faso.",
          "Thomas Sankara était aussi musicien et jouait de la guitare.",
          "Thomas Sankara was also a musician and played guitar.",
          "Culture nationale",
          ["hymne", "Sankara"]),
      q(
          "s2_9r",
          "Que signifie le mot 'Ditanyè' ?",
          "What does the word 'Ditanyè' mean?",
          [
            ["Chant de la victoire", "Song of victory"],
            ["Hymne des hommes intègres", "Hymn of the upright men"],
            ["Chant des guerriers", "Song of warriors"],
            ["Mélodie de la liberté", "Melody of freedom"]
          ],
          1,
          "Ditanyè signifie 'hymne des hommes intègres' en référence au sens même du nom Burkina Faso.",
          "Ditanyè means 'hymn of the upright men' in reference to the very meaning of the name Burkina Faso.",
          "Le Ditanyè a remplacé l'ancien hymne datant de la période coloniale.",
          "The Ditanyè replaced the old anthem dating from the colonial period.",
          "Culture nationale",
          ["Ditanyè", "hymne"]),
      q(
          "s2_10r",
          "Quel instrument traditionnel est associé à la musique royale Mossi ?",
          "What traditional instrument is associated with Mossi royal music?",
          [
            ["Le bendré (tambour royal)", "The bendré (royal drum)"],
            ["La kora", "The kora"],
            ["Le balafon", "The balafon"],
            ["La guitare traditionnelle", "The traditional guitar"]
          ],
          0,
          "Le bendré est un tambour royal Mossi utilisé lors des cérémonies de la chefferie traditionnelle.",
          "The bendré is a Mossi royal drum used during traditional chieftaincy ceremonies.",
          "Le joueur de bendré (bendré-naaba) occupe une place importante dans la cour royale Mossi.",
          "The bendré player (bendré-naaba) holds an important place in the Mossi royal court.",
          "Musique traditionnelle",
          ["bendré", "Mossi"]),
    ]),
    Level(
        number: 3,
        title: "Traditions et Modernité",
        isLocked: true,
        questions: [
          q(
              "s3_1",
              "Qu'est-ce qu'un patrimoine immatériel ?",
              "What is intangible heritage?",
              [
                [
                  "Traditions, coutumes, savoir-faire et expressions culturelles",
                  "Traditions, customs, know-how and cultural expressions"
                ],
                [
                  "Un bâtiment historique uniquement",
                  "A historic building only"
                ],
                ["Une monnaie ancienne", "An old currency"],
                ["Un parc naturel", "A natural park"]
              ],
              0,
              "Le patrimoine immatériel inclut les pratiques sociales, rituels et expressions culturelles.",
              "Intangible heritage includes social practices, rituals and cultural expressions.",
              "L'UNESCO protège le patrimoine immatériel dans le monde entier.",
              "UNESCO protects intangible heritage worldwide.",
              "UNESCO",
              ["patrimoine", "culture"]),
          q(
              "s3_2",
              "Qu'est-ce que la musique traditionnelle du Burkina Faso ?",
              "What is Burkina Faso's traditional music?",
              [
                [
                  "Un ensemble de musiques portées par divers instruments locaux",
                  "A set of music played on various local instruments"
                ],
                ["Uniquement du jazz", "Only jazz"],
                ["De la musique électronique", "Electronic music"],
                ["Du hip-hop exclusivement", "Hip-hop exclusively"]
              ],
              0,
              "La musique burkinabè est riche avec instruments comme le balafon, le djembé et le kora.",
              "Burkinabè music is rich with instruments like the balafon, djembe and kora.",
              "Le balafon est l'instrument traditionnel par excellence au Burkina Faso.",
              "The balafon is the quintessential traditional instrument in Burkina Faso.",
              "Culture musicale",
              ["musique", "instruments"]),
          q(
              "s3_3",
              "Quel est le rôle des griots dans la société burkinabè ?",
              "What is the role of griots in Burkinabè society?",
              [
                [
                  "Gardiens de la mémoire orale et transmetteurs de la culture",
                  "Keepers of oral memory and transmitters of culture"
                ],
                [
                  "Agents de police traditionnels",
                  "Traditional police officers"
                ],
                ["Agriculteurs spécialisés", "Specialized farmers"],
                ["Commerçants itinérants", "Itinerant traders"]
              ],
              0,
              "Les griots préservent et transmettent l'histoire, les généalogies et les traditions orales.",
              "Griots preserve and transmit history, genealogies and oral traditions.",
              "Ils jouent un rôle essentiel dans les cérémonies et événements importants.",
              "They play an essential role in ceremonies and important events.",
              "Culture burkinabè",
              ["griots", "tradition"]),
          q(
              "s3_4",
              "Qu'est-ce que la 'danse des masques' au Burkina Faso ?",
              "What is the 'mask dance' in Burkina Faso?",
              [
                [
                  "Une pratique culturelle et spirituelle de plusieurs groupes ethniques",
                  "A cultural and spiritual practice of several ethnic groups"
                ],
                ["Un spectacle touristique uniquement", "A tourist show only"],
                ["Une danse moderne", "A modern dance"],
                ["Un rituel interdit", "A forbidden ritual"]
              ],
              0,
              "La danse des masques est une pratique sacrée liée aux cérémonies funèbres et rites de passage.",
              "Mask dancing is a sacred practice linked to funeral ceremonies and rites of passage.",
              "Les masques Bobo et Nuna du Burkina sont mondialement reconnus.",
              "Burkina's Bobo and Nuna masks are internationally recognized.",
              "Traditions",
              ["masques", "danse"]),
          q(
              "s3_5",
              "Comment la modernité influence-t-elle les traditions burkinabè ?",
              "How does modernity influence Burkinabè traditions?",
              [
                [
                  "Elles évoluent en s'adaptant tout en préservant l'essentiel",
                  "They evolve by adapting while preserving the essential"
                ],
                [
                  "Les traditions ont totalement disparu",
                  "Traditions have completely disappeared"
                ],
                ["La modernité n'a aucun impact", "Modernity has no impact"],
                [
                  "Seule la modernité compte aujourd'hui",
                  "Only modernity matters today"
                ]
              ],
              0,
              "Les traditions s'adaptent à la modernité tout en préservant leur essence culturelle.",
              "Traditions adapt to modernity while preserving their cultural essence.",
              "Les artistes burkinabè fusionnent souvent traditions et modernité dans leurs œuvres.",
              "Burkinabè artists often fuse tradition and modernity in their work.",
              "Anthropologie culturelle",
              ["modernité", "traditions"]),
          q(
              "s3_6r",
              "Que représente l'étoile sur le drapeau du Burkina Faso ?",
              "What does the star on Burkina Faso's flag represent?",
              [
                [
                  "La lumière révolutionnaire guidant le peuple vers le progrès",
                  "The revolutionary light guiding the people toward progress"
                ],
                ["Une étoile religieuse", "A religious star"],
                ["La richesse minière du pays", "The country's mineral wealth"],
                ["L'ancienne Haute-Volta", "The former Upper Volta"]
              ],
              0,
              "L'étoile jaune du drapeau symbolise la lumière de la révolution éclairant la voie du peuple.",
              "The yellow star on the flag symbolizes the light of the revolution illuminating the people's path.",
              "Le drapeau entier a été redessiné par Sankara en 1984.",
              "The entire flag was redesigned by Sankara in 1984.",
              "Symbolisme national",
              ["étoile", "révolution"]),
          q(
              "s3_7r",
              "Comment la révolution valorisait-elle les langues nationales comme symboles d'identité ?",
              "How did the revolution value national languages as symbols of identity?",
              [
                [
                  "En les promouvant dans l'administration, l'éducation et les médias",
                  "By promoting them in administration, education and media"
                ],
                [
                  "En imposant uniquement le français",
                  "By imposing only French"
                ],
                [
                  "En les interdisant dans les écoles",
                  "By banning them in schools"
                ],
                [
                  "En n'y accordant aucune importance",
                  "By giving them no importance"
                ]
              ],
              0,
              "Sankara valorisait le mooré, le dioula et les autres langues nationales comme symboles de souveraineté.",
              "Sankara valued Mooré, Dioula and other national languages as symbols of sovereignty.",
              "La radio diffusait en langues nationales pour atteindre les populations rurales.",
              "Radio broadcast in national languages to reach rural populations.",
              "Langues nationales",
              ["langues", "identité"]),
          q(
              "s3_8r",
              "Quel est l'animal emblème du Burkina Faso présent dans les armoiries ?",
              "What is the animal emblem of Burkina Faso present in the coat of arms?",
              [
                ["L'étalon", "The stallion"],
                ["Le lion", "The lion"],
                ["L'éléphant", "The elephant"],
                ["L'aigle", "The eagle"]
              ],
              0,
              "L'étalon (cheval mâle) est l'emblème national du Burkina Faso, symbole de force et de fierté.",
              "The stallion (male horse) is the national emblem of Burkina Faso, symbol of strength and pride.",
              "L'équipe nationale de football est surnommée 'Les Étalons' en référence à cet emblème.",
              "The national football team is nicknamed 'Les Étalons' (The Stallions) in reference to this emblem.",
              "Symboles nationaux",
              ["étalon", "armoiries"]),
          q(
              "s3_9r",
              "Quelle est la signification des deux épées croisées dans les armoiries du Burkina Faso ?",
              "What is the significance of the two crossed swords in Burkina Faso's coat of arms?",
              [
                [
                  "La justice et la résolution révolutionnaire",
                  "Justice and revolutionary resolution"
                ],
                ["La guerre et la paix", "War and peace"],
                ["Les deux langues officielles", "The two official languages"],
                [
                  "Le Nord et le Sud du pays",
                  "The North and South of the country"
                ]
              ],
              0,
              "Les deux épées croisées dans les armoiries symbolisent la justice et la résolution révolutionnaire du peuple.",
              "The two crossed swords in the coat of arms symbolize justice and the people's revolutionary resolution.",
              "Les armoiries ont été redessinées lors de la révolution de 1984.",
              "The coat of arms was redesigned during the 1984 revolution.",
              "Symboles nationaux",
              ["armoiries", "épées"]),
          q(
              "s3_10r",
              "Quel est le sens du croissant de lune présent dans certaines décorations officielles burkinabè ?",
              "What is the meaning of the crescent moon found in some official Burkinabè decorations?",
              [
                [
                  "Il symbolise la foi islamique d'une partie de la population",
                  "It symbolizes the Islamic faith of part of the population"
                ],
                [
                  "Il représente le cycle agricole",
                  "It represents the agricultural cycle"
                ],
                ["C'est un héritage colonial", "It is a colonial heritage"],
                [
                  "Il n'a aucune signification officielle",
                  "It has no official meaning"
                ]
              ],
              0,
              "Le croissant de lune représente la foi islamique partagée par environ 60% de la population burkinabè.",
              "The crescent moon represents the Islamic faith shared by approximately 60% of the Burkinabè population.",
              "Le Burkina Faso est un État laïc qui respecte la coexistence de l'Islam, du Christianisme et des religions traditionnelles.",
              "Burkina Faso is a secular state that respects the coexistence of Islam, Christianity and traditional religions.",
              "Symbolique religieuse",
              ["Islam", "laïcité"]),
        ]),
    Level(number: 4, title: "Identité Nationale", isLocked: true, questions: [
      q(
          "sy4_1",
          "Qu'est-ce que le SIAO ?",
          "What is SIAO?",
          [
            [
              "Le Salon International de l'Artisanat de Ouagadougou",
              "The International Crafts Fair of Ouagadougou"
            ],
            ["Un festival de musique", "A music festival"],
            ["Un salon automobile", "A car show"],
            ["Un marché alimentaire", "A food market"]
          ],
          0,
          "Le SIAO est le plus grand salon de l'artisanat africain, réunissant artisans de tout le continent.",
          "SIAO is the largest African crafts fair, bringing together artisans from across the continent.",
          "Il se tient tous les deux ans à Ouagadougou et attire des visiteurs du monde entier.",
          "It is held every two years in Ouagadougou and attracts visitors from around the world.",
          "Artisanat",
          ["SIAO", "artisanat"]),
      q(
          "sy4_2",
          "Qu'est-ce que le Faso Dan Fani ?",
          "What is Faso Dan Fani?",
          [
            [
              "Un tissu artisanal burkinabè tissé à la main",
              "A hand-woven Burkinabè artisan fabric"
            ],
            [
              "Un tissu importé de Côte d'Ivoire",
              "A fabric imported from Côte d'Ivoire"
            ],
            ["Un tissu synthétique moderne", "A modern synthetic fabric"],
            ["Une technique de teinture", "A dyeing technique"]
          ],
          0,
          "Le Faso Dan Fani est un tissu traditionnel aux couleurs vives, symbole d'identité nationale.",
          "Faso Dan Fani is a traditional fabric with vibrant colors, a symbol of national identity.",
          "Sankara en faisait porter aux membres du gouvernement pour promouvoir l'artisanat local.",
          "Sankara made government members wear it to promote local craftsmanship.",
          "Artisanat",
          ["Faso Dan Fani", "tissu"]),
      q(
          "sy4_3",
          "Que représente l'étalon dans la culture burkinabè ?",
          "What does the stallion represent in Burkinabè culture?",
          [
            [
              "La force, la noblesse et la fierté nationale",
              "Strength, nobility and national pride"
            ],
            ["La richesse minière", "Mining wealth"],
            ["La paix avec les voisins", "Peace with neighbors"],
            ["La religion dominante", "The dominant religion"]
          ],
          0,
          "L'étalon blanc est l'emblème national du Burkina Faso, symbole de dignité et de courage.",
          "The white stallion is Burkina Faso's national emblem, symbol of dignity and courage.",
          "La princesse Yennenga, mère fondatrice des Mossi, est liée à la légende de l'étalon.",
          "Princess Yennenga, founding mother of the Mossi, is linked to the legend of the stallion.",
          "Symboles",
          ["étalon", "symboles"]),
      q(
          "sy4_4",
          "Quel est le rôle des griots dans la culture burkinabè ?",
          "What is the role of griots in Burkinabè culture?",
          [
            [
              "Gardiens de la mémoire historique et musiciens traditionnels",
              "Guardians of historical memory and traditional musicians"
            ],
            ["Chefs politiques traditionnels", "Traditional political chiefs"],
            ["Chefs religieux", "Religious leaders"],
            ["Guerriers traditionnels", "Traditional warriors"]
          ],
          0,
          "Les griots sont des dépositaires de la tradition orale, musiciens et généalogistes.",
          "Griots are depositories of oral tradition, musicians and genealogists.",
          "La profession de griot est héréditaire et transmise de génération en génération.",
          "The griot profession is hereditary and passed from generation to generation.",
          "Tradition",
          ["griot", "tradition orale"]),
      q(
          "sy4_5",
          "Qu'est-ce que la Semaine Nationale de la Culture (SNC) ?",
          "What is the National Culture Week (NCW)?",
          [
            [
              "Le plus grand festival culturel national organisé à Bobo-Dioulasso",
              "The largest national cultural festival organized in Bobo-Dioulasso"
            ],
            ["Une foire internationale", "An international fair"],
            ["Un événement politique", "A political event"],
            ["Un festival de sport", "A sports festival"]
          ],
          0,
          "La SNC rassemble toutes les régions du Burkina pour valoriser leur patrimoine culturel.",
          "The NCW brings together all regions of Burkina to showcase their cultural heritage.",
          "Elle est organisée tous les deux ans à Bobo-Dioulasso, capitale culturelle du pays.",
          "It is organized every two years in Bobo-Dioulasso, the cultural capital of the country.",
          "Culture",
          ["SNC", "culture"]),
      q(
          "s4_6r",
          "Pourquoi la tenue militaire simple de Sankara est-elle devenue un symbole ?",
          "Why has Sankara's simple military uniform become a symbol?",
          [
            [
              "Elle symbolisait le refus des privilèges et l'humilité du dirigeant révolutionnaire",
              "It symbolized the refusal of privileges and the humility of the revolutionary leader"
            ],
            ["Elle était imposée par l'armée", "It was imposed by the army"],
            [
              "Elle était moins chère que le costume civil",
              "It was cheaper than civilian clothing"
            ],
            [
              "Elle n'avait aucune signification particulière",
              "It had no particular meaning"
            ]
          ],
          0,
          "Sankara refusait les costumes de luxe et portait la tenue militaire simple comme ses soldats.",
          "Sankara refused luxury suits and wore the simple military uniform like his soldiers.",
          "Cette sobriété était un message politique fort contre l'ostentation du pouvoir.",
          "This sobriety was a powerful political message against the ostentation of power.",
          "Symbolique du pouvoir",
          ["tenue", "humilité"]),
      q(
          "s4_7r",
          "Quel symbole culturel Sankara a-t-il fait de la bicyclette ?",
          "What cultural symbol did Sankara make of the bicycle?",
          [
            [
              "Un symbole d'humilité, d'écologie et d'indépendance versus la voiture de luxe",
              "A symbol of humility, ecology and independence versus the luxury car"
            ],
            [
              "Un moyen de transport militaire",
              "A military means of transport"
            ],
            ["Un signe de pauvreté", "A sign of poverty"],
            ["Un symbole colonial", "A colonial symbol"]
          ],
          0,
          "Sankara se déplaçait en vélo et encourageait les fonctionnaires à faire de même.",
          "Sankara traveled by bicycle and encouraged officials to do the same.",
          "La bicyclette incarnait la sobriété républicaine et le rejet du faste colonial.",
          "The bicycle embodied republican sobriety and the rejection of colonial pomp.",
          "Symboles révolutionnaires",
          ["bicyclette", "sobriété"]),
      q(
          "s4_8r",
          "Quelle journée nationale est célébrée le 11 décembre au Burkina Faso ?",
          "What national day is celebrated on December 11 in Burkina Faso?",
          [
            [
              "La Fête Nationale de la République",
              "The National Day of the Republic"
            ],
            ["La Fête de l'Indépendance", "Independence Day"],
            ["La Fête des Jeunes", "Youth Day"],
            ["La Fête du Travail", "Labor Day"]
          ],
          0,
          "Le 11 décembre est la Fête Nationale du Burkina Faso, marquant la proclamation de la République.",
          "December 11 is Burkina Faso's National Day, marking the proclamation of the Republic.",
          "En 1958, la Haute-Volta est devenue une République le 11 décembre.",
          "In 1958, Upper Volta became a Republic on December 11.",
          "Fêtes nationales",
          ["fête nationale", "11 décembre"]),
      q(
          "s4_9r",
          "Que représente le livre ouvert dans les armoiries du Burkina Faso ?",
          "What does the open book in Burkina Faso's coat of arms represent?",
          [
            ["L'éducation et la connaissance", "Education and knowledge"],
            ["La Constitution nationale", "The national Constitution"],
            ["Les droits de l'Homme", "Human rights"],
            ["La loi islamique", "Islamic law"]
          ],
          0,
          "Le livre ouvert dans les armoiries symbolise l'éducation et la quête de la connaissance.",
          "The open book in the coat of arms symbolizes education and the pursuit of knowledge.",
          "L'alphabétisation est un enjeu majeur pour le développement du Burkina Faso.",
          "Literacy is a major issue for Burkina Faso's development.",
          "Symboles nationaux",
          ["armoiries", "éducation"]),
      q(
          "s4_10r",
          "Que commémore la fête du 4 août au Burkina Faso ?",
          "What does the August 4 celebration commemorate in Burkina Faso?",
          [
            [
              "L'anniversaire de la Révolution de 1983",
              "The anniversary of the 1983 Revolution"
            ],
            ["La fête de l'indépendance", "Independence Day"],
            ["L'anniversaire de Sankara", "Sankara's birthday"],
            [
              "La création de l'armée nationale",
              "The creation of the national army"
            ]
          ],
          0,
          "Le 4 août commémore la Révolution Démocratique et Populaire (RDP) lancée par Thomas Sankara en 1983.",
          "August 4 commemorates the Democratic and Popular Revolution (RDP) launched by Thomas Sankara in 1983.",
          "C'est à cette date que Sankara a pris le pouvoir et renommé le pays Burkina Faso.",
          "It was on this date that Sankara seized power and renamed the country Burkina Faso.",
          "Fêtes nationales",
          ["4 août", "révolution"]),
    ]),
    Level(number: 5, title: "Ambassadeur Culturel", isLocked: true, questions: [
      q(
          "sy5_1",
          "Quel est le lien entre le FESPACO et l'identité panafricaine ?",
          "What is the link between FESPACO and pan-African identity?",
          [
            [
              "Il promeut le cinéma africain comme outil de construction identitaire panafricaine",
              "It promotes African cinema as a tool for building pan-African identity"
            ],
            [
              "Il est uniquement un événement commercial",
              "It is only a commercial event"
            ],
            [
              "Il exclut les cinéastes non burkinabè",
              "It excludes non-Burkinabè filmmakers"
            ],
            [
              "Il copie les festivals occidentaux",
              "It copies Western festivals"
            ]
          ],
          0,
          "Le FESPACO donne une voix aux cinéastes africains pour raconter leurs propres histoires.",
          "FESPACO gives a voice to African filmmakers to tell their own stories.",
          "La Palme d'Or du FESPACO s'appelle l'Étalon de Yennenga, hommage à la fondatrice des Mossi.",
          "FESPACO's Palme d'Or is called the Étalon de Yennenga, a tribute to the Mossi founder.",
          "Panafricanisme",
          ["FESPACO", "panafricanisme"]),
      q(
          "sy5_2",
          "Comment la diaspora burkinabè préserve-t-elle la culture nationale à l'étranger ?",
          "How does the Burkinabè diaspora preserve national culture abroad?",
          [
            [
              "Via des associations culturelles et célébrations des fêtes nationales",
              "Through cultural associations and celebrations of national holidays"
            ],
            [
              "En abandonnant la culture d'origine",
              "By abandoning the culture of origin"
            ],
            [
              "En isolant les communautés burkinabè",
              "By isolating Burkinabè communities"
            ],
            ["En rejetant toutes les traditions", "By rejecting all traditions"]
          ],
          0,
          "Les associations de la diaspora organisent des événements culturels pour maintenir les liens.",
          "Diaspora associations organize cultural events to maintain cultural ties.",
          "Des journées culturelles burkinabè sont organisées dans plusieurs pays européens.",
          "Burkinabè cultural days are organized in several European countries.",
          "Diaspora",
          ["diaspora", "culture"]),
      q(
          "sy5_3",
          "Qu'est-ce que la légitimité du Mogho Naaba dans le Burkina Faso contemporain ?",
          "What is the legitimacy of the Mogho Naaba in contemporary Burkina Faso?",
          [
            [
              "Autorité morale et médiateur traditionnel respecté lors des crises politiques",
              "Respected moral authority and traditional mediator during political crises"
            ],
            ["Chef d'État de facto", "De facto head of state"],
            ["Simple chef de village", "Simple village chief"],
            ["Rôle purement religieux", "Purely religious role"]
          ],
          0,
          "Le Mogho Naaba est consulté par les autorités lors des grandes crises nationales.",
          "The Mogho Naaba is consulted by authorities during major national crises.",
          "Il a joué un rôle de médiateur lors de l'insurrection populaire de 2014.",
          "He played a mediating role during the popular uprising of 2014.",
          "Tradition",
          ["Mogho Naaba", "royauté"]),
      q(
          "sy5_4",
          "Qu'est-ce que le Laongo sculptural Park ?",
          "What is Laongo Sculptural Park?",
          [
            [
              "Un site de sculptures africaines contemporaines en plein air près de Ouagadougou",
              "A site of contemporary African sculptures in the open air near Ouagadougou"
            ],
            ["Un musée national", "A national museum"],
            ["Un parc zoologique", "A zoological park"],
            [
              "Un site archéologique préhistorique",
              "A prehistoric archaeological site"
            ]
          ],
          0,
          "Laongo est un parc en plein air où des sculpteurs africains ont créé des œuvres monumentales.",
          "Laongo is an open-air park where African sculptors have created monumental works.",
          "Il accueille des symposiums de sculpture depuis 1989 et est devenu un site touristique majeur.",
          "It has hosted sculpture symposiums since 1989 and has become a major tourist site.",
          "Art contemporain",
          ["Laongo", "sculpture"]),
      q(
          "sy5_5",
          "Quel est l'impact du cinéma burkinabè sur l'image de l'Afrique dans le monde ?",
          "What is the impact of Burkinabè cinema on the image of Africa in the world?",
          [
            [
              "Il offre une représentation authentique et nuancée de l'Afrique par des Africains",
              "It offers an authentic and nuanced representation of Africa by Africans"
            ],
            [
              "Il ne touche qu'un public local",
              "It only reaches a local audience"
            ],
            [
              "Il renforce les stéréotypes africains",
              "It reinforces African stereotypes"
            ],
            [
              "Il a peu d'impact international",
              "It has little international impact"
            ]
          ],
          0,
          "Des réalisateurs comme Gaston Kaboré ont déconstruit les représentations coloniales de l'Afrique.",
          "Directors like Gaston Kaboré have deconstructed colonial representations of Africa.",
          "Le Burkina Faso est reconnu comme la 'Mecque du cinéma africain' grâce au FESPACO.",
          "Burkina Faso is recognized as the 'Mecca of African cinema' thanks to FESPACO.",
          "Cinéma",
          ["cinéma", "représentation"]),
      q(
          "s5_6r",
          "Quel symbole universel Sankara incarnait-il pour la jeunesse africaine ?",
          "What universal symbol did Sankara embody for African youth?",
          [
            [
              "L'espoir d'un leadership africain honnête, courageux et au service du peuple",
              "The hope for an honest, courageous African leadership serving the people"
            ],
            ["La dictature militaire", "Military dictatorship"],
            ["Le nationalisme ethnique", "Ethnic nationalism"],
            ["La dépendance envers l'Occident", "Dependence on the West"]
          ],
          0,
          "Sankara est devenu un symbole panafricain d'intégrité, de justice et de dignité africaine.",
          "Sankara became a Pan-African symbol of integrity, justice and African dignity.",
          "Des portraits de Sankara ornent les murs de nombreuses villes africaines.",
          "Portraits of Sankara adorn the walls of many African cities.",
          "Symbole africain",
          ["Sankara", "jeunesse"]),
      q(
          "s5_7r",
          "Comment le Burkina Faso est-il devenu lui-même un symbole pour l'Afrique ?",
          "How did Burkina Faso itself become a symbol for Africa?",
          [
            [
              "Grâce à la révolution sankariste, symbole de dignité, souveraineté et résistance africaine",
              "Thanks to the Sankarist revolution, a symbol of dignity, sovereignty and African resistance"
            ],
            ["Par sa richesse économique", "Through its economic wealth"],
            ["Par sa puissance militaire", "Through its military power"],
            ["Par son aide internationale", "Through its international aid"]
          ],
          0,
          "Le Burkina Faso est devenu pour beaucoup le symbole de ce qu'une révolution africaine peut accomplir.",
          "Burkina Faso became for many the symbol of what an African revolution can achieve.",
          "Des militants panafricains du monde entier se réfèrent au modèle sankariste.",
          "Pan-Africanist activists worldwide refer to the Sankarist model.",
          "Rayonnement africain",
          ["Burkina", "symbole"]),
      q(
          "s5_8r",
          "Quelle est la signification de la croix du Sud sur les armoiries burkinabè ?",
          "What is the significance of the Southern Cross on the Burkinabè coat of arms?",
          [
            [
              "L'appartenance à l'Afrique et la solidarité africaine",
              "Belonging to Africa and African solidarity"
            ],
            ["La colonisation française", "French colonization"],
            ["La religion chrétienne", "The Christian religion"],
            ["Les quatre régions du pays", "The four regions of the country"]
          ],
          0,
          "La croix du Sud symbolise l'appartenance à l'Afrique et la solidarité avec le continent africain.",
          "The Southern Cross symbolizes belonging to Africa and solidarity with the African continent.",
          "La croix du Sud est une constellation visible depuis l'hémisphère sud.",
          "The Southern Cross is a constellation visible from the southern hemisphere.",
          "Symboles nationaux",
          ["armoiries", "Afrique"]),
      q(
          "s5_9r",
          "Quel est le surnom populaire de Ouagadougou, la capitale ?",
          "What is the popular nickname for Ouagadougou, the capital?",
          [
            ["Ouaga", "Ouaga"],
            ["La Ville Verte", "The Green City"],
            ["La Cité Blanche", "The White City"],
            ["La Capitale des Hommes Intègres", "The Capital of Upright Men"]
          ],
          0,
          "Ouagadougou est populairement surnommée 'Ouaga' par ses habitants et dans la culture populaire.",
          "Ouagadougou is popularly nicknamed 'Ouaga' by its inhabitants and in popular culture.",
          "Ouaga est aussi connue pour ses nombreuses motos qui caractérisent son paysage urbain.",
          "Ouaga is also known for its many motorcycles that characterize its urban landscape.",
          "Identité nationale",
          ["Ouagadougou", "Ouaga"]),
      q(
          "s5_10r",
          "Quel est le rôle des chefs traditionnels (Mogho Naaba) dans la société burkinabè ?",
          "What is the role of traditional chiefs (Mogho Naaba) in Burkinabè society?",
          [
            [
              "Autorité morale et culturelle, médiateurs dans les conflits",
              "Moral and cultural authority, mediators in conflicts"
            ],
            [
              "Chefs d'État reconnus constitutionnellement",
              "Constitutionally recognized heads of state"
            ],
            ["Dirigeants militaires", "Military leaders"],
            [
              "Représentants officiels à l'ONU",
              "Official representatives at the UN"
            ]
          ],
          0,
          "Le Mogho Naaba est le roi des Mossi, une autorité morale et culturelle qui joue un rôle de médiateur dans la société.",
          "The Mogho Naaba is the king of the Mossi, a moral and cultural authority who plays a mediator role in society.",
          "Le Mogho Naaba réside à Ouagadougou et perpétue une tradition royale vieille de plusieurs siècles.",
          "The Mogho Naaba resides in Ouagadougou and perpetuates a royal tradition centuries old.",
          "Chefferie traditionnelle",
          ["Mogho Naaba", "tradition"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  SANTÉ
  // ════════════════════════════════════════════════
  "Santé": [
    Level(number: 1, title: "Santé Publique", isLocked: false, questions: [
      q(
          "sa1_1",
          "Quelle pratique prévient le mieux la transmission des maladies ?",
          "Which practice best prevents disease transmission?",
          [
            ["Se laver régulièrement les mains", "Washing hands regularly"],
            ["Ignorer les symptômes", "Ignoring symptoms"],
            ["Partager les médicaments", "Sharing medicines"],
            ["Fumer dans les lieux publics", "Smoking in public places"]
          ],
          0,
          "L'hygiène des mains est l'une des mesures de prévention les plus efficaces.",
          "Hand hygiene is one of the most effective prevention measures.",
          "Le lavage des mains peut réduire les maladies diarrhéiques de 40%.",
          "Handwashing can reduce diarrheal diseases by 40%.",
          "OMS",
          ["hygiène", "prévention"]),
      q(
          "sa1_2",
          "Quelle maladie est principalement transmise par les moustiques au Burkina Faso ?",
          "Which disease is mainly transmitted by mosquitoes in Burkina Faso?",
          [
            ["Le paludisme", "Malaria"],
            ["La tuberculose", "Tuberculosis"],
            ["Le choléra", "Cholera"],
            ["La rougeole", "Measles"]
          ],
          0,
          "Le paludisme est la principale cause de mortalité au Burkina, transmis par l'anophèle.",
          "Malaria is the leading cause of death in Burkina, transmitted by the anopheles mosquito.",
          "Les moustiquaires imprégnées d'insecticide réduisent fortement le paludisme.",
          "Insecticide-treated mosquito nets greatly reduce malaria.",
          "OMS / Ministère Santé",
          ["paludisme", "moustiques"]),
      q(
          "sa1_3",
          "Qu'est-ce que la vaccination ?",
          "What is vaccination?",
          [
            [
              "Administration d'un vaccin pour renforcer l'immunité",
              "Administration of a vaccine to strengthen immunity"
            ],
            ["Un régime alimentaire spécial", "A special diet"],
            ["Un médicament contre la douleur", "A pain medication"],
            ["Une opération chirurgicale", "A surgical operation"]
          ],
          0,
          "La vaccination renforce le système immunitaire pour prévenir des maladies infectieuses.",
          "Vaccination strengthens the immune system to prevent infectious diseases.",
          "La variole a été éradiquée grâce à la vaccination mondiale.",
          "Smallpox was eradicated through global vaccination.",
          "OMS",
          ["vaccination", "immunité"]),
      q(
          "sa1_4",
          "Quel est l'effet de la malnutrition sur les enfants ?",
          "What is the effect of malnutrition on children?",
          [
            [
              "Retard de croissance et affaiblissement immunitaire",
              "Growth retardation and immune weakening"
            ],
            ["Accélération de la croissance", "Acceleration of growth"],
            ["Amélioration de la mémoire", "Improvement of memory"],
            ["Réduction des infections", "Reduction of infections"]
          ],
          0,
          "La malnutrition affecte gravement le développement physique et cognitif de l'enfant.",
          "Malnutrition seriously affects the child's physical and cognitive development.",
          "La malnutrition chronique est liée à la pauvreté et aux crises alimentaires.",
          "Chronic malnutrition is linked to poverty and food crises.",
          "UNICEF",
          ["nutrition", "enfants"]),
      q(
          "sa1_5",
          "Qu'est-ce que la santé maternelle ?",
          "What is maternal health?",
          [
            [
              "Santé de la femme pendant la grossesse et l'accouchement",
              "Women's health during pregnancy and childbirth"
            ],
            ["La santé des personnes âgées", "Health of the elderly"],
            ["La santé des sportives", "Health of female athletes"],
            ["La santé mentale uniquement", "Mental health only"]
          ],
          0,
          "La santé maternelle couvre les soins prénatals, l'accouchement et le post-partum.",
          "Maternal health covers prenatal care, childbirth and postpartum.",
          "Réduire la mortalité maternelle est un ODD prioritaire de l'ONU.",
          "Reducing maternal mortality is a priority UN SDG.",
          "OMS / UNFPA",
          ["maternité", "grossesse"]),
      q(
          "sa1_6r",
          "Quelle révolution sanitaire Sankara a-t-il accomplie en 3 ans ?",
          "What health revolution did Sankara accomplish in 3 years?",
          [
            [
              "Vaccination de 2,5 millions d'enfants en 15 jours contre rougeole, méningite et fièvre jaune",
              "Vaccination of 2.5 million children in 15 days against measles, meningitis and yellow fever"
            ],
            [
              "Construction d'un seul hôpital",
              "Construction of a single hospital"
            ],
            [
              "Importation de médicaments étrangers",
              "Importation of foreign medicines"
            ],
            ["Privatisation des hôpitaux", "Privatization of hospitals"]
          ],
          0,
          "La campagne de vaccination de masse (Commando vaccin) de 1984 est considérée comme un exploit mondial.",
          "The mass vaccination campaign (Vaccine Commando) of 1984 is considered a world achievement.",
          "L'OMS a salué cette campagne comme un modèle pour l'Afrique.",
          "WHO praised this campaign as a model for Africa.",
          "Révolution sanitaire",
          ["vaccination", "Sankara"]),
      q(
          "sa1_7r",
          "Comment Sankara a-t-il rendu les soins de santé accessibles aux villageois ?",
          "How did Sankara make healthcare accessible to villagers?",
          [
            [
              "Par la construction de dispensaires dans chaque village par la mobilisation populaire",
              "By building dispensaries in every village through popular mobilization"
            ],
            [
              "Par des hôpitaux réservés aux villes",
              "Through hospitals reserved for cities"
            ],
            [
              "Par l'aide médicale internationale exclusivement",
              "Through international medical aid exclusively"
            ],
            ["Par des soins payants uniquement", "Through paid care only"]
          ],
          0,
          "Des milliers de dispensaires ont été construits par le peuple lui-même sans financement étranger.",
          "Thousands of dispensaries were built by the people themselves without foreign funding.",
          "En 4 ans, l'espérance de vie au Burkina a augmenté de plusieurs années.",
          "In 4 years, life expectancy in Burkina increased by several years.",
          "Santé communautaire",
          ["dispensaires", "accès"]),
      q(
          "sa1_8r",
          "Qu'est-ce que la réhydratation orale (SRO) ?",
          "What is oral rehydration (ORS)?",
          [
            [
              "Un traitement simple contre la diarrhée à base d'eau, sel et sucre",
              "A simple treatment against diarrhea with water, salt and sugar"
            ],
            ["Un médicament injectable", "An injectable drug"],
            ["Un vaccin contre le choléra", "A cholera vaccine"],
            ["Un antibiotique naturel", "A natural antibiotic"]
          ],
          0,
          "Le SRO (Sel de Réhydratation Orale) est un traitement efficace contre la déshydratation due à la diarrhée.",
          "ORS (Oral Rehydration Salts) is an effective treatment against dehydration from diarrhea.",
          "Le SRO a sauvé des millions de vies dans les pays en développement.",
          "ORS has saved millions of lives in developing countries.",
          "OMS",
          ["SRO", "diarrhée"]),
      q(
          "sa1_9r",
          "Qu'est-ce que la mutuelle de santé au Burkina Faso ?",
          "What is a health mutual fund in Burkina Faso?",
          [
            [
              "Un système d'assurance santé communautaire",
              "A community health insurance system"
            ],
            ["Un hôpital public", "A public hospital"],
            ["Un médicament traditionnel", "A traditional medicine"],
            ["Une ONG de santé", "A health NGO"]
          ],
          0,
          "Les mutuelles de santé sont des systèmes communautaires qui permettent aux membres de cotiser pour couvrir leurs frais de santé.",
          "Health mutual funds are community systems that allow members to contribute to cover their health costs.",
          "Les mutuelles de santé visent à améliorer l'accès aux soins pour les populations vulnérables.",
          "Health mutuals aim to improve access to care for vulnerable populations.",
          "Santé communautaire",
          ["mutuelle", "assurance"]),
      q(
          "sa1_10r",
          "Qu'est-ce que le Programme Élargi de Vaccination (PEV) au Burkina Faso ?",
          "What is the Expanded Program on Immunization (EPI) in Burkina Faso?",
          [
            [
              "Un programme national offrant gratuitement des vaccins essentiels aux enfants",
              "A national program offering essential vaccines free to children"
            ],
            [
              "Un programme de vaccination des animaux",
              "An animal vaccination program"
            ],
            ["Un programme payant pour adultes", "A paid program for adults"],
            [
              "Un programme réservé aux militaires",
              "A program reserved for military personnel"
            ]
          ],
          0,
          "Le PEV offre gratuitement des vaccins essentiels (rougeole, polio, DTC, etc.) à tous les enfants.",
          "The EPI provides free essential vaccines (measles, polio, DTP, etc.) to all children.",
          "La couverture vaccinale au Burkina Faso dépasse 80% pour la rougeole grâce au PEV.",
          "Vaccination coverage in Burkina Faso exceeds 80% for measles thanks to the EPI.",
          "Santé publique",
          ["PEV", "vaccination"]),
    ]),
    Level(
        number: 2,
        title: "Maladies et Prévention",
        isLocked: true,
        questions: [
          q(
              "sa2_1",
              "Qu'est-ce que l'eau potable ?",
              "What is drinking water?",
              [
                [
                  "Eau traitée et sûre pour la consommation humaine",
                  "Treated and safe water for human consumption"
                ],
                ["Toute eau de rivière", "Any river water"],
                ["L'eau de pluie non filtrée", "Unfiltered rainwater"],
                ["L'eau minérale uniquement", "Mineral water only"]
              ],
              0,
              "L'eau potable est exempte de microbes et substances nocives pour la santé.",
              "Drinking water is free of microbes and substances harmful to health.",
              "Seulement une partie de la population mondiale a accès à l'eau potable.",
              "Only part of the world's population has access to drinking water.",
              "OMS / UNICEF",
              ["eau", "potable"]),
          q(
              "sa2_2",
              "Comment prévenir la propagation du choléra ?",
              "How to prevent the spread of cholera?",
              [
                [
                  "Eau potable, assainissement et hygiène",
                  "Drinking water, sanitation and hygiene"
                ],
                ["Éviter de dormir la nuit", "Avoid sleeping at night"],
                ["Manger uniquement de la viande", "Eat only meat"],
                ["Porter des lunettes", "Wear glasses"]
              ],
              0,
              "Le choléra se propage via l'eau et les aliments contaminés.",
              "Cholera spreads through contaminated water and food.",
              "Le choléra peut tuer en quelques heures sans traitement réhydratant.",
              "Cholera can kill within hours without rehydration treatment.",
              "OMS",
              ["choléra", "assainissement"]),
          q(
              "sa2_3",
              "Qu'est-ce que la planification familiale ?",
              "What is family planning?",
              [
                [
                  "Ensemble de méthodes pour choisir le nombre et l'espacement des naissances",
                  "Methods to choose the number and spacing of births"
                ],
                ["Un programme alimentaire", "A food program"],
                ["Une politique d'immigration", "An immigration policy"],
                [
                  "Un impôt sur les familles nombreuses",
                  "A tax on large families"
                ]
              ],
              0,
              "La planification familiale améliore la santé des femmes et des enfants.",
              "Family planning improves the health of women and children.",
              "Elle contribue à réduire la mortalité maternelle et infantile.",
              "It helps reduce maternal and infant mortality.",
              "UNFPA",
              ["planification", "famille"]),
          q(
              "sa2_4",
              "Qu'est-ce que la couverture sanitaire universelle ?",
              "What is universal health coverage?",
              [
                [
                  "Accès de tous à des services de santé de qualité sans difficultés financières",
                  "Everyone's access to quality health services without financial hardship"
                ],
                [
                  "Soins gratuits uniquement pour les riches",
                  "Free care only for the wealthy"
                ],
                ["Absence de médecins", "Absence of doctors"],
                [
                  "Médecine traditionnelle uniquement",
                  "Traditional medicine only"
                ]
              ],
              0,
              "La couverture sanitaire universelle vise à ce que personne ne tombe dans la pauvreté pour se soigner.",
              "Universal health coverage aims to ensure no one falls into poverty to get care.",
              "C'est un des Objectifs de Développement Durable de l'ONU.",
              "It is one of the UN Sustainable Development Goals.",
              "OMS",
              ["santé", "couverture"]),
          q(
              "sa2_5",
              "Quel est le rôle d'un agent de santé communautaire ?",
              "What is the role of a community health worker?",
              [
                [
                  "Assurer des soins de base et sensibiliser dans les communautés rurales",
                  "Provide basic care and raise awareness in rural communities"
                ],
                [
                  "Effectuer des opérations chirurgicales",
                  "Perform surgical operations"
                ],
                ["Gérer les hôpitaux nationaux", "Manage national hospitals"],
                ["Former les médecins spécialistes", "Train specialist doctors"]
              ],
              0,
              "Les agents de santé communautaires sont essentiels dans les zones rurales isolées.",
              "Community health workers are essential in isolated rural areas.",
              "Ils jouent un rôle clé dans la vaccination et la lutte contre le paludisme.",
              "They play a key role in vaccination and malaria control.",
              "Santé publique",
              ["communautaire", "rural"]),
          q(
              "sa2_6r",
              "Quelle politique de Sankara sur les médicaments protégeait les Burkinabè ?",
              "What Sankara policy on medicines protected Burkinabè?",
              [
                [
                  "La production locale de médicaments génériques pour réduire la dépendance",
                  "Local production of generic medicines to reduce dependence"
                ],
                [
                  "L'importation massive de médicaments étrangers coûteux",
                  "Massive importation of expensive foreign medicines"
                ],
                [
                  "La suppression de tous les médicaments",
                  "The elimination of all medicines"
                ],
                [
                  "La privatisation de la pharmacie",
                  "The privatization of pharmacy"
                ]
              ],
              0,
              "Sankara promouvait la pharmacopée traditionnelle et la production locale de médicaments génériques.",
              "Sankara promoted traditional pharmacopoeia and local production of generic medicines.",
              "Cela réduisait la dépendance aux industries pharmaceutiques étrangères.",
              "This reduced dependence on foreign pharmaceutical industries.",
              "Souveraineté sanitaire",
              ["médicaments", "autonomie"]),
          q(
              "sa2_7r",
              "Comment la révolution sankariste concevait-elle la prévention des maladies ?",
              "How did the Sankarist revolution conceive of disease prevention?",
              [
                [
                  "Par l'hygiène publique, l'eau potable, la nutrition et l'éducation sanitaire communautaire",
                  "Through public hygiene, drinking water, nutrition and community health education"
                ],
                [
                  "Par les seuls médicaments curatifs",
                  "Through curative medicines alone"
                ],
                [
                  "Par la médecine traditionnelle exclusive",
                  "Through exclusive traditional medicine"
                ],
                ["Par l'aide internationale", "Through international aid"]
              ],
              0,
              "Sankara misait sur la prévention : eau potable, latrines, nutrition et sensibilisation communautaire.",
              "Sankara focused on prevention: drinking water, latrines, nutrition and community awareness.",
              "Il disait qu'un peuple en bonne santé est un peuple libre.",
              "He said a healthy people is a free people.",
              "Prévention sanitaire",
              ["prévention", "eau"]),
          q(
              "sa2_8r",
              "Quelle organisation est responsable de la politique nationale de santé au Burkina Faso ?",
              "Which organization is responsible for national health policy in Burkina Faso?",
              [
                ["Le Ministère de la Santé", "The Ministry of Health"],
                ["L'OMS", "WHO"],
                ["L'UNICEF", "UNICEF"],
                ["Médecins Sans Frontières", "Doctors Without Borders"]
              ],
              0,
              "Le Ministère de la Santé est responsable de l'élaboration et de la mise en œuvre de la politique de santé.",
              "The Ministry of Health is responsible for developing and implementing health policy.",
              "Le Burkina Faso a adopté la politique de soins de santé primaires depuis 1978.",
              "Burkina Faso adopted primary health care policy since 1978.",
              "Système de santé",
              ["ministère", "santé"]),
          q(
              "sa2_9r",
              "Quel est le taux de couverture vaccinale au Burkina Faso ?",
              "What is the vaccination coverage rate in Burkina Faso?",
              [
                [
                  "Supérieur à 70% pour les vaccins essentiels",
                  "Greater than 70% for essential vaccines"
                ],
                ["Inférieur à 30%", "Less than 30%"],
                ["100% complet", "100% complete"],
                ["Non mesuré", "Not measured"]
              ],
              0,
              "Le Burkina Faso a atteint un taux de vaccination supérieur à 70% pour la plupart des vaccins du Programme Élargi de Vaccination.",
              "Burkina Faso has achieved a vaccination rate above 70% for most vaccines in the Expanded Program on Immunization.",
              "Le Programme Élargi de Vaccination (PEV) couvre les vaccins contre la rougeole, polio, DTC et autres.",
              "The Expanded Program on Immunization covers vaccines against measles, polio, DTC and others.",
              "Vaccination",
              ["PEV", "couverture"]),
          q(
              "sa2_10r",
              "Quel est le principal défi de la santé mentale au Burkina Faso ?",
              "What is the main challenge of mental health in Burkina Faso?",
              [
                [
                  "Le manque de structures et de professionnels de santé mentale",
                  "Lack of mental health structures and professionals"
                ],
                ["Une trop grande offre de soins", "Too much supply of care"],
                ["L'absence de maladies mentales", "Absence of mental illness"],
                [
                  "Le refus culturel de tout traitement",
                  "Cultural refusal of any treatment"
                ]
              ],
              0,
              "Le Burkina Faso manque cruellement de psychiatres, psychologues et structures adaptées à la santé mentale.",
              "Burkina Faso severely lacks psychiatrists, psychologists and facilities suited to mental health.",
              "La stigmatisation des maladies mentales reste un obstacle majeur à la recherche de soins.",
              "Stigmatization of mental illness remains a major obstacle to seeking care.",
              "Santé mentale",
              ["psychiatrie", "soins"]),
        ]),
    Level(number: 3, title: "Santé Globale", isLocked: true, questions: [
      q(
          "sa3_1",
          "Qu'est-ce qu'une épidémie ?",
          "What is an epidemic?",
          [
            [
              "Propagation rapide d'une maladie dans une population",
              "Rapid spread of a disease in a population"
            ],
            ["Une maladie héréditaire", "A hereditary disease"],
            ["Un problème de nutrition", "A nutrition problem"],
            ["Un manque de médicaments", "A shortage of medicines"]
          ],
          0,
          "Une épidémie touche une population dans une zone géographique délimitée.",
          "An epidemic affects a population in a defined geographical area.",
          "Quand elle touche plusieurs continents, on parle de pandémie.",
          "When it affects multiple continents, it becomes a pandemic.",
          "Épidémiologie",
          ["épidémie", "maladie"]),
      q(
          "sa3_2",
          "Qu'est-ce que la santé mentale ?",
          "What is mental health?",
          [
            [
              "Bien-être émotionnel, psychologique et social d'une personne",
              "A person's emotional, psychological and social well-being"
            ],
            ["L'absence totale de stress", "The total absence of stress"],
            ["Une maladie physique", "A physical illness"],
            [
              "La capacité sportive d'une personne",
              "A person's athletic capacity"
            ]
          ],
          0,
          "La santé mentale est une composante essentielle de la santé globale.",
          "Mental health is an essential component of overall health.",
          "L'OMS définit la santé comme un état complet de bien-être physique, mental et social.",
          "WHO defines health as a complete state of physical, mental and social well-being.",
          "OMS",
          ["mental", "bien-être"]),
      q(
          "sa3_3",
          "Quel est l'impact du changement climatique sur la santé ?",
          "What is the impact of climate change on health?",
          [
            [
              "Augmentation des maladies vectorielles et des problèmes nutritionnels",
              "Increase in vector-borne diseases and nutritional problems"
            ],
            [
              "Amélioration générale de la santé",
              "General improvement of health"
            ],
            ["Réduction du paludisme", "Reduction of malaria"],
            ["Disparition des épidémies", "Disappearance of epidemics"]
          ],
          0,
          "Le changement climatique favorise la propagation des maladies tropicales.",
          "Climate change promotes the spread of tropical diseases.",
          "Les canicules augmentent aussi la mortalité, surtout chez les personnes vulnérables.",
          "Heatwaves also increase mortality, especially among vulnerable people.",
          "OMS / Environnement",
          ["climat", "santé"]),
      q(
          "sa3_4",
          "Qu'est-ce que l'automédication excessive ?",
          "What is excessive self-medication?",
          [
            [
              "Se traiter soi-même sans avis médical, pouvant mener à des complications",
              "Treating oneself without medical advice, potentially leading to complications"
            ],
            [
              "Une pratique recommandée par l'OMS",
              "A practice recommended by WHO"
            ],
            [
              "L'utilisation de médicaments naturels",
              "The use of natural medicines"
            ],
            ["La méditation quotidienne", "Daily meditation"]
          ],
          0,
          "L'automédication excessive peut masquer des maladies graves et créer des résistances.",
          "Excessive self-medication can mask serious diseases and create resistance.",
          "La résistance aux antibiotiques est un problème mondial de santé publique.",
          "Antibiotic resistance is a global public health problem.",
          "Santé publique",
          ["automédication", "résistance"]),
      q(
          "sa3_5",
          "Qu'est-ce que la médecine traditionnelle africaine ?",
          "What is African traditional medicine?",
          [
            [
              "Ensemble de pratiques et savoirs médicaux transmis de génération en génération",
              "Set of medical practices and knowledge passed down through generations"
            ],
            ["De la magie uniquement", "Magic only"],
            ["Des médicaments importés", "Imported medicines"],
            ["Une forme de sorcellerie", "A form of witchcraft"]
          ],
          0,
          "La médecine traditionnelle utilise plantes, rituels et savoirs ancestraux pour soigner.",
          "Traditional medicine uses plants, rituals and ancestral knowledge to heal.",
          "L'OMS reconnaît son importance et encourage son intégration au système de santé.",
          "WHO recognizes its importance and encourages its integration into the health system.",
          "OMS",
          ["traditionnel", "plantes"]),
      q(
          "sa3_6r",
          "Quelle était la politique de Sankara sur l'allaitement maternel ?",
          "What was Sankara's policy on breastfeeding?",
          [
            [
              "Il promouvait l'allaitement maternel comme moyen naturel et souverain de nutrition infantile",
              "He promoted breastfeeding as a natural and sovereign means of infant nutrition"
            ],
            [
              "Il préférait les laits en poudre importés",
              "He preferred imported powdered milk"
            ],
            [
              "Il n'avait aucune politique sur ce sujet",
              "He had no policy on this subject"
            ],
            ["Il interdisait l'allaitement maternel", "He banned breastfeeding"]
          ],
          0,
          "Sankara valorisait l'allaitement maternel et la médecine préventive traditionnelle.",
          "Sankara valued breastfeeding and traditional preventive medicine.",
          "Cela réduisait la dépendance aux importations de lait infantile.",
          "This reduced dependence on infant formula imports.",
          "Nutrition infantile",
          ["allaitement", "nutrition"]),
      q(
          "sa3_7r",
          "Quel programme Sankara a-t-il lancé contre le paludisme ?",
          "What program did Sankara launch against malaria?",
          [
            [
              "Distribution gratuite de moustiquaires et assainissement des eaux stagnantes",
              "Free distribution of mosquito nets and sanitation of stagnant water"
            ],
            [
              "Construction d'hôpitaux spécialisés uniquement",
              "Construction of specialized hospitals only"
            ],
            [
              "Importation de médicaments antipaludiques coûteux",
              "Importation of expensive antimalarial drugs"
            ],
            ["Aucun programme spécifique", "No specific program"]
          ],
          0,
          "La révolution mobilisait les populations pour détruire les gîtes larvaires et distribuer des moustiquaires.",
          "The revolution mobilized populations to destroy breeding sites and distribute mosquito nets.",
          "Ces mesures simples ont réduit la mortalité infantile liée au paludisme.",
          "These simple measures reduced infant mortality linked to malaria.",
          "Lutte antipaludique",
          ["paludisme", "prévention"]),
      q(
          "sa3_8r",
          "Qu'est-ce que le paludisme grave ?",
          "What is severe malaria?",
          [
            [
              "Une forme sévère du paludisme pouvant entraîner le coma et la mort",
              "A severe form of malaria that can cause coma and death"
            ],
            ["Une fièvre légère", "A mild fever"],
            [
              "Une forme bénigne traitée à domicile",
              "A mild form treated at home"
            ],
            ["Un paludisme immunisé", "An immunized malaria"]
          ],
          0,
          "Le paludisme grave est une urgence médicale qui peut provoquer le coma, l'anémie sévère et la mort.",
          "Severe malaria is a medical emergency that can cause coma, severe anemia and death.",
          "Les enfants de moins de 5 ans sont les plus vulnérables au paludisme grave.",
          "Children under 5 are most vulnerable to severe malaria.",
          "Paludisme",
          ["paludisme grave", "urgence"]),
      q(
          "sa3_9r",
          "Quelle est l'importance de l'eau potable pour la santé au Burkina Faso ?",
          "What is the importance of safe water for health in Burkina Faso?",
          [
            [
              "Elle prévient les maladies hydriques comme le choléra et la typhöïde",
              "It prevents waterborne diseases like cholera and typhoid"
            ],
            ["Elle améliore uniquement le goût", "It only improves taste"],
            [
              "Elle a peu d'effet sur la santé",
              "It has little effect on health"
            ],
            [
              "Elle est surtout utilisée pour l'agriculture",
              "It is mainly used for agriculture"
            ]
          ],
          0,
          "L'accès à l'eau potable prévient les maladies diarrhéiques, le choléra, la fièvre typhoïde et d'autres maladies hydriques.",
          "Access to safe water prevents diarrheal diseases, cholera, typhoid fever and other waterborne diseases.",
          "Seulement 43% de la population burkinabè avait accès à l'eau potable en 2020.",
          "Only 43% of the Burkinabè population had access to safe water in 2020.",
          "Eau et santé",
          ["eau potable", "maladies hydriques"]),
      q(
          "sa3_10r",
          "Que fait le Programme National de Lutte contre le Paludisme (PNLP) ?",
          "What does the National Malaria Control Program (NMCP) do?",
          [
            [
              "Coordonne la prévention et le traitement du paludisme au niveau national",
              "Coordinates malaria prevention and treatment at national level"
            ],
            ["Administre les hôpitaux publics", "Administers public hospitals"],
            ["Forme les médecins généraux", "Trains general practitioners"],
            [
              "Gère le budget de la santé publique",
              "Manages the public health budget"
            ]
          ],
          0,
          "Le PNLP coordonne toutes les activités de prévention (moustiquaires, spraying) et de traitement du paludisme.",
          "The NMCP coordinates all malaria prevention (mosquito nets, spraying) and treatment activities.",
          "La distribution gratuite de moustiquaires imprégnées a significativement réduit la mortalité palustre.",
          "Free distribution of treated mosquito nets has significantly reduced malaria mortality.",
          "Santé publique",
          ["PNLP", "paludisme"]),
    ]),
    Level(number: 4, title: "Médecine Avancée", isLocked: true, questions: [
      q(
          "sa4_1",
          "Qu'est-ce que la résistance aux antibiotiques ?",
          "What is antibiotic resistance?",
          [
            [
              "La capacité des bactéries à résister aux antibiotiques",
              "The ability of bacteria to resist antibiotics"
            ],
            ["L'allergie aux antibiotiques", "Allergy to antibiotics"],
            [
              "La résistance des patients aux soins",
              "Patient resistance to care"
            ],
            [
              "Un phénomène uniquement vétérinaire",
              "A purely veterinary phenomenon"
            ]
          ],
          0,
          "La résistance aux antibiotiques est une menace mondiale car elle rend les infections incurables.",
          "Antibiotic resistance is a global threat as it makes infections incurable.",
          "L'usage abusif des antibiotiques sans ordonnance contribue à ce problème au Burkina Faso.",
          "Antibiotic abuse without prescription contributes to this problem in Burkina Faso.",
          "Antibiotiques",
          ["résistance", "antibiotiques"]),
      q(
          "sa4_2",
          "Qu'est-ce que la fistule obstétricale ?",
          "What is obstetric fistula?",
          [
            [
              "Une lésion grave liée à un accouchement difficile affectant les femmes",
              "A serious injury linked to difficult childbirth affecting women"
            ],
            ["Une maladie infectieuse", "An infectious disease"],
            ["Un trouble génétique", "A genetic disorder"],
            ["Une complication chirurgicale", "A surgical complication"]
          ],
          0,
          "La fistule obstétricale est une déchirure entre vagin et vessie/rectum causée par un travail prolongé.",
          "Obstetric fistula is a tear between the vagina and bladder/rectum caused by prolonged labor.",
          "Elle peut être réparée chirurgicalement et des centres de prise en charge existent au Burkina.",
          "It can be surgically repaired and care centers exist in Burkina.",
          "Santé maternelle",
          ["fistule", "maternité"]),
      q(
          "sa4_3",
          "Qu'est-ce que la nutrition thérapeutique ?",
          "What is therapeutic nutrition?",
          [
            [
              "Un traitement médical de la malnutrition aigüe sévère",
              "A medical treatment for severe acute malnutrition"
            ],
            ["Un régime alimentaire de sport", "A sports diet"],
            ["Un complément alimentaire de luxe", "A luxury food supplement"],
            ["Une technique agricole", "An agricultural technique"]
          ],
          0,
          "Les aliments thérapeutiques prêts à l'emploi (Plumpy'Nut) sauvent des millions d'enfants malnutris.",
          "Ready-to-use therapeutic foods (Plumpy'Nut) save millions of malnourished children.",
          "Le Plumpy'Nut a été développé par des chercheurs français et est produit localement en Afrique.",
          "Plumpy'Nut was developed by French researchers and is produced locally in Africa.",
          "Nutrition",
          ["PECMA", "malnutrition"]),
      q(
          "sa4_4",
          "Qu'est-ce que la médecine traditionnelle au Burkina Faso ?",
          "What is traditional medicine in Burkina Faso?",
          [
            [
              "Des soins à base de plantes et rituels pratiqués par la majorité de la population",
              "Plant-based care and rituals practiced by the majority of the population"
            ],
            ["Une médecine uniquement rurale", "Only a rural medicine"],
            [
              "Une pratique interdite par la loi",
              "A practice prohibited by law"
            ],
            [
              "Un substitut total à la médecine moderne",
              "A complete substitute for modern medicine"
            ]
          ],
          0,
          "Plus de 70% des Burkinabè ont recours à la médecine traditionnelle, souvent en premier recours.",
          "More than 70% of Burkinabè use traditional medicine, often as a first resort.",
          "Des recherches valident scientifiquement certaines plantes médicinales burkinabè.",
          "Research scientifically validates some Burkinabè medicinal plants.",
          "Médecine traditionnelle",
          ["tradipraticiens", "plantes"]),
      q(
          "sa4_5",
          "Qu'est-ce que la santé mentale dans le contexte burkinabè ?",
          "What is mental health in the Burkinabè context?",
          [
            [
              "Un aspect du bien-être souvent négligé mais essentiel, notamment en période de crise",
              "An often neglected but essential aspect of well-being, especially in times of crisis"
            ],
            [
              "Un luxe des pays riches uniquement",
              "A luxury for rich countries only"
            ],
            [
              "Un sujet sans traitement possible",
              "A subject without possible treatment"
            ],
            ["Une maladie uniquement des villes", "A disease only of cities"]
          ],
          0,
          "La crise sécuritaire génère des traumatismes psychologiques nécessitant un accompagnement.",
          "The security crisis generates psychological trauma requiring support.",
          "Le Centre national de santé mentale de Ouagadougou offre des soins psychiatriques.",
          "The National Mental Health Center of Ouagadougou provides psychiatric care.",
          "Santé mentale",
          ["santé mentale", "trauma"]),
      q(
          "sa4_6r",
          "Comment la révolution liait-elle santé et émancipation de la femme ?",
          "How did the revolution link health and women's emancipation?",
          [
            [
              "En interdisant l'excision, le mariage forcé et en donnant aux femmes accès aux soins",
              "By banning FGM, forced marriage and giving women access to healthcare"
            ],
            [
              "En excluant les femmes des centres de santé",
              "By excluding women from health centers"
            ],
            [
              "En réservant les soins aux hommes",
              "By reserving healthcare for men"
            ],
            [
              "En maintenant les pratiques traditionnelles nocives",
              "By maintaining harmful traditional practices"
            ]
          ],
          0,
          "Sankara a interdit l'excision, le lévirat et les pratiques portant atteinte à la santé des femmes.",
          "Sankara banned FGM, levirate and practices harming women's health.",
          "Il disait : la libération de la femme est une condition de la révolution.",
          "He said: the liberation of women is a condition of the revolution.",
          "Santé féminine",
          ["excision", "femmes"]),
      q(
          "sa4_7r",
          "Quel était le lien entre la révolution et la lutte contre la malnutrition ?",
          "What was the link between the revolution and the fight against malnutrition?",
          [
            [
              "L'autosuffisance alimentaire et la redistribution des terres réduisaient la malnutrition",
              "Food self-sufficiency and land redistribution reduced malnutrition"
            ],
            [
              "La malnutrition n'était pas une priorité",
              "Malnutrition was not a priority"
            ],
            [
              "L'aide alimentaire étrangère était la seule solution",
              "Foreign food aid was the only solution"
            ],
            [
              "La malnutrition était un problème naturel irrémédiable",
              "Malnutrition was an irreversible natural problem"
            ]
          ],
          0,
          "En atteignant l'autosuffisance alimentaire, Sankara a réduit la malnutrition infantile au Burkina.",
          "By achieving food self-sufficiency, Sankara reduced child malnutrition in Burkina.",
          "En 3 ans, le Burkina est passé de pays importateur à exportateur de céréales.",
          "In 3 years, Burkina went from a cereal importer to an exporter.",
          "Nutrition et développement",
          ["malnutrition", "autosuffisance"]),
      q(
          "sa4_8r",
          "Qu'est-ce que la planification familiale au Burkina Faso ?",
          "What is family planning in Burkina Faso?",
          [
            [
              "Des méthodes pour espacer et limiter les naissances",
              "Methods to space and limit births"
            ],
            ["Un programme d'adoption d'enfants", "A child adoption program"],
            [
              "Une aide financière aux familles nombreuses",
              "Financial aid for large families"
            ],
            ["Un programme de mariage précoce", "An early marriage program"]
          ],
          0,
          "La planification familiale comprend l'utilisation de contraceptifs et d'autres méthodes pour gérer la fécondité.",
          "Family planning includes the use of contraceptives and other methods to manage fertility.",
          "Le Burkina Faso a un taux de fécondité élevé d'environ 5 enfants par femme.",
          "Burkina Faso has a high fertility rate of about 5 children per woman.",
          "Santé reproductive",
          ["planification familiale", "contraception"]),
      q(
          "sa4_9r",
          "Qu'est-ce que la nutrition thérapeutique au Burkina Faso ?",
          "What is therapeutic nutrition in Burkina Faso?",
          [
            [
              "Un traitement pour les enfants souffrant de malnutrition sévère",
              "A treatment for children with severe malnutrition"
            ],
            ["Un régime sportif", "A sports diet"],
            [
              "Des vitamines pour les adultes en bonne santé",
              "Vitamins for healthy adults"
            ],
            ["Un programme alimentaire scolaire", "A school food program"]
          ],
          0,
          "La nutrition thérapeutique traite la malnutrition aiguë sévère chez les enfants avec des aliments thérapeutiques spéciaux.",
          "Therapeutic nutrition treats severe acute malnutrition in children with special therapeutic foods.",
          "Le Plumpy'Nut est un aliment thérapeutique utilisé dans les centres de nutrition au Burkina Faso.",
          "Plumpy'Nut is a therapeutic food used in nutrition centers in Burkina Faso.",
          "Nutrition",
          ["malnutrition", "thérapeutique"]),
      q(
          "sa4_10r",
          "Qu'est-ce que la lutte contre la fistule obstétricale au Burkina Faso ?",
          "What is the fight against obstetric fistula in Burkina Faso?",
          [
            [
              "Un programme de traitement chirurgical d'une complication grave de l'accouchement",
              "A surgical treatment program for a serious childbirth complication"
            ],
            [
              "Une campagne contre la malnutrition",
              "A campaign against malnutrition"
            ],
            ["Un programme de planning familial", "A family planning program"],
            [
              "Une campagne de vaccination féminine",
              "A female vaccination campaign"
            ]
          ],
          0,
          "La fistule obstétricale est une grave complication de l'accouchement difficile pouvant être traitée chirurgicalement.",
          "Obstetric fistula is a serious complication of difficult childbirth that can be surgically treated.",
          "Des centres spécialisés au Burkina Faso opèrent gratuitement les femmes souffrant de fistule.",
          "Specialized centers in Burkina Faso perform free operations for women suffering from fistula.",
          "Santé maternelle",
          ["fistule", "maternité"]),
    ]),
    Level(number: 5, title: "Expert Santé", isLocked: true, questions: [
      q(
          "sa5_1",
          "Qu'est-ce que la couverture sanitaire universelle (CSU) ?",
          "What is universal health coverage (UHC)?",
          [
            [
              "Accès de tous aux soins essentiels sans difficulté financière",
              "Access of all to essential care without financial difficulty"
            ],
            [
              "Gratuité totale de tous les soins",
              "Complete free access to all care"
            ],
            ["Uniquement la vaccination gratuite", "Only free vaccination"],
            ["Un programme de l'Union européenne", "A European Union program"]
          ],
          0,
          "La CSU est l'un des Objectifs de développement durable (ODD 3) des Nations Unies.",
          "UHC is one of the Sustainable Development Goals (SDG 3) of the United Nations.",
          "Le Burkina Faso déploie progressivement une politique de CSU avec une assurance maladie.",
          "Burkina Faso is progressively deploying a UHC policy with health insurance.",
          "Santé",
          ["CSU", "accès aux soins"]),
      q(
          "sa5_2",
          "Qu'est-ce que l'onchocercose et comment a-t-elle été combattue au Burkina ?",
          "What is onchocerciasis and how was it fought in Burkina?",
          [
            [
              "Une maladie parasitaire causant la cécité, quasi-éliminée grâce à l'ivermectine",
              "A parasitic disease causing blindness, nearly eliminated through ivermectin"
            ],
            ["Un type de glaucome", "A type of glaucoma"],
            ["Une maladie héréditaire", "A hereditary disease"],
            ["Un type de cancer oculaire", "A type of eye cancer"]
          ],
          0,
          "L'onchocercose était endémique au Burkina Faso et a été quasi-éliminée grâce aux campagnes de masse.",
          "Onchocerciasis was endemic in Burkina Faso and was nearly eliminated through mass campaigns.",
          "Le Programme OCP a traité des millions de personnes en Afrique de l'Ouest.",
          "The OCP programme treated millions of people in West Africa.",
          "Parasitologie",
          ["onchocercose", "cécité"]),
      q(
          "sa5_3",
          "Quel est le rôle de l'OMS en santé publique mondiale ?",
          "What is the role of WHO in global public health?",
          [
            [
              "Coordination de la santé mondiale, normes sanitaires et assistance technique",
              "Coordination of global health, health standards and technical assistance"
            ],
            [
              "Financement direct des hôpitaux africains",
              "Direct financing of African hospitals"
            ],
            [
              "Gestion des hôpitaux nationaux",
              "Management of national hospitals"
            ],
            [
              "Distribution de médicaments gratuits",
              "Distribution of free medicines"
            ]
          ],
          0,
          "L'OMS définit des normes mondiales de santé et coordonne les réponses aux crises sanitaires.",
          "WHO defines global health standards and coordinates responses to health crises.",
          "L'OMS a coordonné la riposte mondiale au COVID-19 et à la résurgence d'Ebola.",
          "WHO coordinated the global response to COVID-19 and the resurgence of Ebola.",
          "OMS",
          ["OMS", "santé mondiale"]),
      q(
          "sa5_4",
          "Comment le changement climatique affecte-t-il la santé au Burkina Faso ?",
          "How does climate change affect health in Burkina Faso?",
          [
            [
              "Il aggrave la malnutrition, étend les maladies vectorielles et provoque des stress thermiques",
              "It worsens malnutrition, extends vector-borne diseases and causes heat stress"
            ],
            [
              "Il améliore la santé en général",
              "It improves health in general"
            ],
            [
              "Il réduit les maladies infectieuses",
              "It reduces infectious diseases"
            ],
            ["Il n'a aucun impact sur la santé", "It has no impact on health"]
          ],
          0,
          "Le réchauffement climatique étend les zones de transmission du paludisme et de la dengue.",
          "Climate warming extends malaria and dengue transmission zones.",
          "La sécheresse aggrave la malnutrition qui affaiblit les défenses immunitaires.",
          "Drought worsens malnutrition which weakens immune defenses.",
          "Climat et santé",
          ["changement climatique", "santé"]),
      q(
          "sa5_5",
          "Qu'est-ce que la meningite et la ceinture de méningite au Burkina ?",
          "What is meningitis and the meningitis belt in Burkina?",
          [
            [
              "Une maladie bactérienne grave, le Burkina étant dans la zone à risque 'ceinture de méningite'",
              "A serious bacterial disease, Burkina being in the 'meningitis belt' risk zone"
            ],
            ["Une maladie cutanée saisonnière", "A seasonal skin disease"],
            ["Un type de cancer cérébral", "A type of brain cancer"],
            ["Une maladie uniquement des bébés", "A disease only of babies"]
          ],
          0,
          "Le vaccin MenAfriVac a réduit de plus de 90% les cas de méningite A dans la zone sahélienne.",
          "The MenAfriVac vaccine reduced meningitis A cases by more than 90% in the Sahel zone.",
          "Le Burkina Faso mène des campagnes annuelles de vaccination contre la méningite.",
          "Burkina Faso conducts annual vaccination campaigns against meningitis.",
          "Méningite",
          ["méningite", "vaccination"]),
      q(
          "sa5_6r",
          "Quel modèle de santé communautaire la RPP a-t-elle développé ?",
          "What community health model did the RPP develop?",
          [
            [
              "Des agents de santé communautaires formés pour servir leur village sans attendre un médecin",
              "Community health workers trained to serve their village without waiting for a doctor"
            ],
            [
              "Un système hospitalier centralisé uniquement",
              "A centralized hospital system only"
            ],
            ["La médecine privée payante", "Private paid medicine"],
            [
              "L'importation de médecins étrangers",
              "Importation of foreign doctors"
            ]
          ],
          0,
          "La révolution formait des agents de santé villageois pour la prévention et les soins de base.",
          "The revolution trained village health workers for prevention and basic care.",
          "Ce modèle est aujourd'hui reconnu par l'OMS comme efficace pour les pays à faibles ressources.",
          "This model is now recognized by WHO as effective for low-resource countries.",
          "Santé communautaire",
          ["agents de santé", "communauté"]),
      q(
          "sa5_7r",
          "Comment l'héritage sanitaire de la RPP influence-t-il le Burkina aujourd'hui ?",
          "How does the RPP's health legacy influence Burkina today?",
          [
            [
              "Il a posé les bases d'un système de santé communautaire et préventif",
              "It laid the foundations of a community and preventive health system"
            ],
            [
              "Il n'a laissé aucune trace dans le système de santé",
              "It left no trace in the health system"
            ],
            [
              "Il a été totalement effacé par Compaoré",
              "It was completely erased by Compaoré"
            ],
            [
              "Il a uniquement influencé les hôpitaux privés",
              "It only influenced private hospitals"
            ]
          ],
          0,
          "Les dispensaires et centres de santé construits sous Sankara servent encore des millions de Burkinabè.",
          "The dispensaries and health centers built under Sankara still serve millions of Burkinabè.",
          "L'approche préventive et communautaire de Sankara est toujours une référence en Afrique.",
          "Sankara's preventive and community approach is still a reference in Africa.",
          "Héritage sanitaire",
          ["héritage", "santé"]),
      q(
          "sa5_8r",
          "Quelle est la principale cause de cécité évitable au Burkina Faso ?",
          "What is the main cause of preventable blindness in Burkina Faso?",
          [
            ["La cataracte", "Cataracts"],
            ["Le traumatisme", "Trauma"],
            ["La rougeole", "Measles"],
            ["Le diabète", "Diabetes"]
          ],
          0,
          "La cataracte est la principale cause de cécité évitable au Burkina Faso, traitée par une opération simple.",
          "Cataracts are the leading cause of preventable blindness in Burkina Faso, treated by a simple operation.",
          "Des milliers de personnes souffrent de cécité par cataracte faute d'accès aux soins.",
          "Thousands of people suffer from cataract blindness due to lack of access to care.",
          "Ophtalmologie",
          ["cataracte", "cécité"]),
      q(
          "sa5_9r",
          "Qu'est-ce que l'assurance maladie universelle (AMU) au Burkina Faso ?",
          "What is universal health insurance (UHI) in Burkina Faso?",
          [
            [
              "Un système en cours de mise en place pour couvrir tous les citoyens",
              "A system being set up to cover all citizens"
            ],
            [
              "Un système pleinement opérationnel depuis 2010",
              "A fully operational system since 2010"
            ],
            [
              "Un programme réservé aux fonctionnaires",
              "A program reserved for civil servants"
            ],
            [
              "Un programme uniquement pour les enfants",
              "A program only for children"
            ]
          ],
          0,
          "L'AMU est un projet de couverture maladie universelle progressivement mis en place au Burkina Faso.",
          "UHI is a universal health coverage project being progressively implemented in Burkina Faso.",
          "L'objectif est d'offrir des soins de santé accessibles à toute la population burkinabè.",
          "The goal is to provide accessible health care to the entire Burkinabè population.",
          "Couverture santé",
          ["AMU", "couverture universelle"]),
      q(
          "sa5_10r",
          "Quel programme lutte contre le ver de Guinée (dracunculose) au Burkina Faso ?",
          "What program fights Guinea worm (dracunculiasis) in Burkina Faso?",
          [
            [
              "Le Programme d'Éradication du Ver de Guinée de l'OMS/Carter Center",
              "WHO/Carter Center Guinea Worm Eradication Program"
            ],
            [
              "Médecins Sans Frontières uniquement",
              "Doctors Without Borders only"
            ],
            [
              "Un programme gouvernemental secret",
              "A secret government program"
            ],
            ["L'UNICEF seul", "UNICEF alone"]
          ],
          0,
          "L'OMS et le Carter Center ont coordonné l'éradication quasi-totale du ver de Guinée en Afrique subsaharienne.",
          "WHO and the Carter Center coordinated the near-total eradication of Guinea worm in sub-Saharan Africa.",
          "Le Burkina Faso était l'un des pays les plus touchés et est désormais proche de l'éradication totale.",
          "Burkina Faso was one of the most affected countries and is now close to total eradication.",
          "Éradication des maladies",
          ["ver de Guinée", "éradication"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  GÉOGRAPHIE
  // ════════════════════════════════════════════════
  "Géographie": [
    Level(number: 1, title: "Le Territoire", isLocked: false, questions: [
      q(
          "g1_1",
          "Le Burkina Faso est-il un pays enclavé ?",
          "Is Burkina Faso a landlocked country?",
          [
            ["Oui, entièrement enclavé", "Yes, completely landlocked"],
            ["Non, il a un accès à l'Atlantique", "No, it has Atlantic access"],
            [
              "Il a accès à l'océan Indien",
              "It has access to the Indian Ocean"
            ],
            ["C'est une île", "It is an island"]
          ],
          0,
          "Le Burkina Faso est entouré par 6 pays : Mali, Niger, Bénin, Togo, Ghana, Côte d'Ivoire.",
          "Burkina Faso is surrounded by 6 countries: Mali, Niger, Benin, Togo, Ghana, Ivory Coast.",
          "L'enclavement représente un défi économique majeur.",
          "Being landlocked is a major economic challenge.",
          "Géographie",
          ["enclavé", "frontières"]),
      q(
          "g1_2",
          "Quelle est la deuxième plus grande ville du Burkina Faso ?",
          "What is the second largest city in Burkina Faso?",
          [
            ["Bobo-Dioulasso", "Bobo-Dioulasso"],
            ["Koudougou", "Koudougou"],
            ["Banfora", "Banfora"],
            ["Dédougou", "Dédougou"]
          ],
          0,
          "Bobo-Dioulasso est le principal centre économique et culturel de l'ouest du pays.",
          "Bobo-Dioulasso is the main economic and cultural center of the west.",
          "Elle est connue pour sa grande mosquée construite en banco (terre crue).",
          "It is known for its great mosque built in banco (raw earth).",
          "Géographie urbaine",
          ["Bobo", "villes"]),
      q(
          "g1_3",
          "Quel type de climat domine au Burkina Faso ?",
          "What type of climate dominates in Burkina Faso?",
          [
            [
              "Tropical semi-aride (sahélien au nord, soudanien au sud)",
              "Tropical semi-arid (Sahelian in north, Sudanian in south)"
            ],
            ["Tempéré océanique", "Temperate oceanic"],
            ["Équatorial humide", "Humid equatorial"],
            ["Polaire", "Polar"]
          ],
          0,
          "Le pays a une longue saison sèche et une courte saison des pluies.",
          "The country has a long dry season and a short rainy season.",
          "L'harmattan, vent sec du Sahara, souffle de novembre à mars.",
          "The harmattan, a dry wind from the Sahara, blows from November to March.",
          "Climatologie",
          ["climat", "sahel"]),
      q(
          "g1_4",
          "Combien de régions administratives compte le Burkina Faso ?",
          "How many administrative regions does Burkina Faso have?",
          [
            ["13 régions", "13 regions"],
            ["5 régions", "5 regions"],
            ["20 régions", "20 regions"],
            ["8 régions", "8 regions"]
          ],
          0,
          "Le Burkina Faso est divisé en 13 régions, elles-mêmes subdivisées en 45 provinces.",
          "Burkina Faso is divided into 13 regions, further divided into 45 provinces.",
          "Les 13 régions couvrent une superficie de 274 200 km².",
          "The 13 regions cover an area of 274,200 km².",
          "Organisation territoriale",
          ["régions", "administration"]),
      q(
          "g1_5",
          "Quel est le fleuve principal qui traverse le Burkina Faso ?",
          "What is the main river that flows through Burkina Faso?",
          [
            ["Le Nakambé (Volta Rouge)", "The Nakambé (Red Volta)"],
            ["Le Niger", "The Niger"],
            ["La Comoé", "The Comoé"],
            ["Le Mouhoun", "The Mouhoun"]
          ],
          0,
          "Le Nakambé est le cours d'eau principal, qui se jette dans le lac Volta au Ghana.",
          "The Nakambé is the main waterway, flowing into Lake Volta in Ghana.",
          "Le Mouhoun (Volta Noire) est aussi un fleuve important du pays.",
          "The Mouhoun (Black Volta) is also an important river in the country.",
          "Hydrographie",
          ["fleuve", "Volta"]),
      q(
          "g1_6r",
          "Quel grand projet d'aménagement du territoire Sankara a-t-il lancé ?",
          "What major land development project did Sankara launch?",
          [
            [
              "La construction de barrages pour l'irrigation et la lutte contre la désertification",
              "The construction of dams for irrigation and fight against desertification"
            ],
            [
              "La construction de grandes villes côtières",
              "The construction of large coastal cities"
            ],
            ["L'exploitation pétrolière", "Oil exploitation"],
            ["La création de zones franches", "The creation of free zones"]
          ],
          0,
          "Sankara a lancé la construction de nombreux barrages pour irriguer les terres et lutter contre la sécheresse.",
          "Sankara launched the construction of numerous dams to irrigate land and fight drought.",
          "Ces barrages ont transformé des zones arides en terres agricoles productives.",
          "These dams transformed arid zones into productive agricultural land.",
          "Aménagement du territoire",
          ["barrages", "irrigation"]),
      q(
          "g1_7r",
          "Quelle politique de Sankara visait à freiner la désertification au Burkina ?",
          "What Sankara policy aimed to halt desertification in Burkina?",
          [
            [
              "La plantation massive d'arbres et la lutte contre les feux de brousse",
              "Massive tree planting and fighting bush fires"
            ],
            ["L'exploitation minière intensive", "Intensive mining"],
            [
              "L'importation de terres agricoles",
              "Importation of agricultural land"
            ],
            ["L'urbanisation accélérée", "Accelerated urbanization"]
          ],
          0,
          "Sankara a lancé des campagnes nationales de reboisement et interdit les feux de brousse non contrôlés.",
          "Sankara launched national reforestation campaigns and banned uncontrolled bush fires.",
          "Des millions d'arbres ont été plantés grâce à la mobilisation populaire.",
          "Millions of trees were planted through popular mobilization.",
          "Environnement",
          ["reboisement", "désertification"]),
      q(
          "g1_8r",
          "Combien de provinces compte le Burkina Faso ?",
          "How many provinces does Burkina Faso have?",
          [
            ["45 provinces", "45 provinces"],
            ["13 régions", "13 regions"],
            ["30 départements", "30 departments"],
            ["26 préfectures", "26 prefectures"]
          ],
          0,
          "Le Burkina Faso est divisé en 45 provinces, regroupées dans 13 régions administratives.",
          "Burkina Faso is divided into 45 provinces, grouped into 13 administrative regions.",
          "Les 13 régions sont elles-mêmes subdivisées en 45 provinces et 351 départements.",
          "The 13 regions are themselves subdivided into 45 provinces and 351 departments.",
          "Administration territoriale",
          ["provinces", "régions"]),
      q(
          "g1_9r",
          "Quel fleuve traverse Ouagadougou ?",
          "Which river flows through Ouagadougou?",
          [
            ["Le Nakambé (Volta Blanche)", "The Nakambé (White Volta)"],
            ["Le Mouhoun (Volta Noire)", "The Mouhoun (Black Volta)"],
            ["Le Nazinon (Volta Rouge)", "The Nazinon (Red Volta)"],
            ["Le Niger", "The Niger"]
          ],
          0,
          "Le Nakambé (anciennement Volta Blanche) est le principal cours d'eau traversant la région de Ouagadougou.",
          "The Nakambé (formerly White Volta) is the main waterway flowing through the Ouagadougou region.",
          "Plusieurs barrages ont été construits sur le Nakambé pour l'irrigation et l'eau potable.",
          "Several dams have been built on the Nakambé for irrigation and drinking water.",
          "Géographie fluviale",
          ["Nakambé", "fleuve"]),
      q(
          "g1_10r",
          "Quelle est la région la plus peuplée du Burkina Faso ?",
          "What is the most populous region of Burkina Faso?",
          [
            [
              "La région du Centre (Ouagadougou)",
              "The Centre region (Ouagadougou)"
            ],
            ["La région des Hauts-Bassins", "The Hauts-Bassins region"],
            ["La région du Sahel", "The Sahel region"],
            ["La région du Plateau Central", "The Central Plateau region"]
          ],
          0,
          "La région du Centre, qui comprend Ouagadougou, est la plus peuplée du Burkina Faso.",
          "The Centre region, which includes Ouagadougou, is the most populous in Burkina Faso.",
          "Ouagadougou concentre à elle seule plus de 2 millions d'habitants, soit environ 10% de la population nationale.",
          "Ouagadougou alone concentrates more than 2 million inhabitants, about 10% of the national population.",
          "Démographie",
          ["Centre", "Ouagadougou"]),
    ]),
    Level(
        number: 2,
        title: "Ressources Naturelles",
        isLocked: true,
        questions: [
          q(
              "g2_1",
              "Quel est le principal défi environnemental du Burkina Faso ?",
              "What is the main environmental challenge of Burkina Faso?",
              [
                [
                  "La désertification et la dégradation des terres",
                  "Desertification and land degradation"
                ],
                ["La montée des eaux", "Rising sea levels"],
                ["Les tsunamis", "Tsunamis"],
                ["Les tempêtes tropicales", "Tropical storms"]
              ],
              0,
              "La désertification avance vers le sud, réduisant les terres cultivables.",
              "Desertification is advancing southward, reducing arable land.",
              "Des projets comme la Grande Muraille Verte combattent ce phénomène.",
              "Projects like the Great Green Wall fight this phenomenon.",
              "Environnement",
              ["désertification", "environnement"]),
          q(
              "g2_2",
              "Qu'est-ce que la déforestation ?",
              "What is deforestation?",
              [
                [
                  "Destruction et disparition des forêts",
                  "Destruction and disappearance of forests"
                ],
                ["Plantation d'arbres", "Planting of trees"],
                ["Protection des zones humides", "Protection of wetlands"],
                ["Irrigation des terres arides", "Irrigation of arid lands"]
              ],
              0,
              "La déforestation réduit la biodiversité et aggrave les changements climatiques.",
              "Deforestation reduces biodiversity and worsens climate change.",
              "Le Burkina perd des milliers d'hectares de forêts chaque année.",
              "Burkina loses thousands of hectares of forest every year.",
              "Environnement",
              ["déforestation", "forêts"]),
          q(
              "g2_3",
              "Quel est l'enjeu de l'eau au Sahel ?",
              "What is the water issue in the Sahel?",
              [
                [
                  "Rareté de l'eau potable et conflits liés à l'accès aux ressources",
                  "Scarcity of drinking water and conflicts over resource access"
                ],
                [
                  "Trop d'eau disponible partout",
                  "Too much water available everywhere"
                ],
                ["Inondations permanentes", "Permanent floods"],
                [
                  "Pollution industrielle des fleuves",
                  "Industrial pollution of rivers"
                ]
              ],
              0,
              "L'eau est rare au Sahel, exacerbant les tensions entre communautés.",
              "Water is scarce in the Sahel, exacerbating tensions between communities.",
              "Les barrages et retenues d'eau sont essentiels pour l'agriculture.",
              "Dams and water reservoirs are essential for agriculture.",
              "Géopolitique de l'eau",
              ["eau", "sahel"]),
          q(
              "g2_4",
              "Pourquoi la gestion des terres est-elle cruciale au Burkina Faso ?",
              "Why is land management crucial in Burkina Faso?",
              [
                [
                  "La majorité vit de l'agriculture, donc la qualité des terres est vitale",
                  "The majority lives from agriculture, so land quality is vital"
                ],
                ["Pour construire des gratte-ciels", "To build skyscrapers"],
                [
                  "Pour accueillir des industries lourdes",
                  "To host heavy industries"
                ],
                ["Pour le tourisme balnéaire", "For beach tourism"]
              ],
              0,
              "Une mauvaise gestion des terres mène à l'appauvrissement et l'exode rural.",
              "Poor land management leads to impoverishment and rural exodus.",
              "La technique du zaï améliore la fertilité des terres dégradées.",
              "The zaï technique improves the fertility of degraded land.",
              "Agriculture",
              ["terres", "agriculture"]),
          q(
              "g2_5",
              "Qu'est-ce que la Grande Muraille Verte ?",
              "What is the Great Green Wall?",
              [
                [
                  "Projet panafricain de reforestation traversant le Sahel",
                  "Pan-African reforestation project crossing the Sahel"
                ],
                ["Un mur défensif militaire", "A military defensive wall"],
                ["Une autoroute internationale", "An international highway"],
                ["Un barrage hydroélectrique", "A hydroelectric dam"]
              ],
              0,
              "Ce projet vise à planter des milliards d'arbres de Dakar à Djibouti.",
              "This project aims to plant billions of trees from Dakar to Djibouti.",
              "Le Burkina Faso est l'un des pays participants à ce projet ambitieux.",
              "Burkina Faso is one of the participating countries in this ambitious project.",
              "Environnement",
              ["muraille verte", "reforestation"]),
          q(
              "g2_6r",
              "Pourquoi Sankara accordait-il une importance particulière aux zones rurales ?",
              "Why did Sankara give particular importance to rural areas?",
              [
                [
                  "Parce que 90% des Burkinabè vivent en zone rurale et que le développement devait les inclure",
                  "Because 90% of Burkinabè live in rural areas and development had to include them"
                ],
                [
                  "Parce qu'il était lui-même paysan",
                  "Because he was a farmer himself"
                ],
                [
                  "Pour exploiter les ressources naturelles",
                  "To exploit natural resources"
                ],
                [
                  "Pour des raisons militaires stratégiques",
                  "For strategic military reasons"
                ]
              ],
              0,
              "La révolution sankariste était d'abord une révolution paysanne mettant les ruraux au cœur du développement.",
              "The Sankarist revolution was first a peasant revolution putting rural people at the heart of development.",
              "Des routes rurales furent construites pour désenclaver les villages.",
              "Rural roads were built to open up villages.",
              "Développement rural",
              ["rural", "paysans"]),
          q(
              "g2_7r",
              "Quel projet géographique Sankara avait-il pour l'intégration africaine ?",
              "What geographic project did Sankara have for African integration?",
              [
                [
                  "La création d'une fédération des États d'Afrique de l'Ouest partageant ressources et marchés",
                  "The creation of a federation of West African states sharing resources and markets"
                ],
                [
                  "La séparation du Burkina de ses voisins",
                  "The separation of Burkina from its neighbors"
                ],
                [
                  "La création d'une grande puissance militaire",
                  "The creation of a great military power"
                ],
                [
                  "L'annexion de pays voisins",
                  "The annexation of neighboring countries"
                ]
              ],
              0,
              "Sankara milita pour l'intégration africaine, notamment au sein de la CEDEAO.",
              "Sankara campaigned for African integration, particularly within ECOWAS.",
              "Il voyait l'Afrique unie comme seul moyen de peser face aux puissances mondiales.",
              "He saw a united Africa as the only way to carry weight against world powers.",
              "Intégration africaine",
              ["intégration", "Afrique"]),
          q(
              "g2_8r",
              "Quel est le point culminant du Burkina Faso ?",
              "What is the highest point in Burkina Faso?",
              [
                ["Le Ténakourou (749 m)", "Ténakourou (749 m)"],
                ["Le Mont Sindou (400 m)", "Mount Sindou (400 m)"],
                [
                  "La colline de Ouagadougou (300 m)",
                  "Ouagadougou hill (300 m)"
                ],
                ["Le Pic de Banfora (600 m)", "Banfora Peak (600 m)"]
              ],
              0,
              "Le Ténakourou, situé dans la région des Cascades, est le point culminant du Burkina Faso à 749 mètres.",
              "Ténakourou, located in the Cascades region, is the highest point in Burkina Faso at 749 meters.",
              "Malgré son altitude modeste, c'est une zone forestière importante.",
              "Despite its modest altitude, it is an important forest area.",
              "Géographie physique",
              ["Ténakourou", "altitude"]),
          q(
              "g2_9r",
              "Quelle réserve naturelle burkinabè est inscrite au patrimoine mondial de l'UNESCO ?",
              "Which Burkinabè nature reserve is listed as a UNESCO World Heritage Site?",
              [
                ["Le Ranch de Gibier de Nazinga", "Nazinga Game Ranch"],
                ["Le Parc National des Deux Balé", "Deux Balé National Park"],
                ["La Réserve du Bangr-Weogo", "Bangr-Weogo Reserve"],
                [
                  "La Réserve de la biosphère de la Mare aux Hippopotames",
                  "Mare aux Hippopotames Biosphere Reserve"
                ]
              ],
              3,
              "La Réserve de la biosphère de la Mare aux Hippopotames est classée patrimoine mondial de l'UNESCO.",
              "The Mare aux Hippopotames Biosphere Reserve is listed as a UNESCO World Heritage Site.",
              "Cette réserve abrite l'une des dernières grandes populations d'hippopotames en Afrique de l'Ouest.",
              "This reserve hosts one of the last large hippopotamus populations in West Africa.",
              "Patrimoine naturel",
              ["UNESCO", "hippopotames"]),
          q(
              "g2_10r",
              "Quels sont les principaux fleuves du Burkina Faso ?",
              "What are the main rivers of Burkina Faso?",
              [
                [
                  "Le Mouhoun (Volta Noire), le Nakambé (Volta Blanche) et le Nazinon (Volta Rouge)",
                  "The Mouhoun (Black Volta), Nakambé (White Volta) and Nazinon (Red Volta)"
                ],
                [
                  "Le Niger, le Sénégal et le Congo",
                  "The Niger, Senegal and Congo"
                ],
                ["Le Nil, l'Ogooué et la Volta", "The Nile, Ogooué and Volta"],
                [
                  "L'Orange, le Limpopo et le Zambèze",
                  "The Orange, Limpopo and Zambezi"
                ]
              ],
              0,
              "Les trois principales rivières du Burkina sont le Mouhoun (Volta Noire), le Nakambé (Volta Blanche) et le Nazinon (Volta Rouge).",
              "The three main rivers of Burkina are the Mouhoun (Black Volta), Nakambé (White Volta) and Nazinon (Red Volta).",
              "Ces trois rivières convergent au Ghana pour former le lac Volta, l'un des plus grands lacs artificiels du monde.",
              "These three rivers converge in Ghana to form Lake Volta, one of the world's largest artificial lakes.",
              "Hydrographie",
              ["Mouhoun", "Nakambé"]),
        ]),
    Level(number: 3, title: "Géopolitique", isLocked: true, questions: [
      q(
          "g3_1",
          "Quels pays frontaliers partagent une frontière avec le Burkina Faso ?",
          "Which bordering countries share a border with Burkina Faso?",
          [
            [
              "Mali, Niger, Bénin, Togo, Ghana, Côte d'Ivoire",
              "Mali, Niger, Benin, Togo, Ghana, Ivory Coast"
            ],
            ["Sénégal, Guinée, Sierra Leone", "Senegal, Guinea, Sierra Leone"],
            ["Cameroun, Tchad, Soudan", "Cameroon, Chad, Sudan"],
            ["Nigéria, Congo, Gabon", "Nigeria, Congo, Gabon"]
          ],
          0,
          "Le Burkina Faso est entouré par 6 pays d'Afrique de l'Ouest et du centre-ouest.",
          "Burkina Faso is surrounded by 6 West and central-west African countries.",
          "Partager 6 frontières favorise les échanges économiques et culturels.",
          "Sharing 6 borders promotes economic and cultural exchanges.",
          "Géographie politique",
          ["frontières", "voisins"]),
      q(
          "g3_2",
          "Quelle est la superficie totale du Burkina Faso ?",
          "What is the total area of Burkina Faso?",
          [
            ["274 200 km²", "274,200 km²"],
            ["150 000 km²", "150,000 km²"],
            ["450 000 km²", "450,000 km²"],
            ["100 000 km²", "100,000 km²"]
          ],
          0,
          "Avec 274 200 km², le Burkina Faso est comparable en taille au Royaume-Uni.",
          "With 274,200 km², Burkina Faso is comparable in size to the United Kingdom.",
          "C'est le 50ème pays africain par superficie.",
          "It is the 50th African country by area.",
          "Géographie physique",
          ["superficie", "territoire"]),
      q(
          "g3_3",
          "Quel est l'enjeu géopolitique lié aux ressources minières ?",
          "What is the geopolitical issue related to mineral resources?",
          [
            [
              "Contrôle des richesses, tensions et risques de conflits",
              "Control of wealth, tensions and risks of conflict"
            ],
            [
              "Trop peu de richesses pour créer des enjeux",
              "Too few resources to create issues"
            ],
            [
              "Aucun pays étranger ne s'y intéresse",
              "No foreign country is interested"
            ],
            [
              "Les ressources sont gérées parfaitement",
              "Resources are perfectly managed"
            ]
          ],
          0,
          "Les ressources aurifères attirent des investisseurs étrangers, créant parfois des tensions.",
          "Gold resources attract foreign investors, sometimes creating tensions.",
          "Des questions de souveraineté sur les ressources sont au cœur des débats politiques.",
          "Questions of sovereignty over resources are at the heart of political debates.",
          "Géopolitique",
          ["ressources", "conflits"]),
      q(
          "g3_4",
          "Qu'est-ce que la coopération Sud-Sud ?",
          "What is South-South cooperation?",
          [
            [
              "Collaboration entre pays en développement pour partager expériences et ressources",
              "Collaboration between developing countries to share experiences and resources"
            ],
            [
              "Commerce entre pays du pôle Sud",
              "Trade between countries of the South Pole"
            ],
            [
              "Alliance militaire entre pays africains",
              "Military alliance between African countries"
            ],
            [
              "Aide des pays riches aux pays pauvres",
              "Aid from rich countries to poor countries"
            ]
          ],
          0,
          "La coopération Sud-Sud renforce l'autonomie des pays du Sud dans leur développement.",
          "South-South cooperation strengthens the autonomy of southern countries in their development.",
          "Elle inclut des échanges de technologies, formations et expertises entre pairs.",
          "It includes exchanges of technologies, training and expertise between peers.",
          "Relations internationales",
          ["coopération", "développement"]),
      q(
          "g3_5",
          "Quel est le rôle de l'Union Africaine pour les pays comme le Burkina Faso ?",
          "What is the role of the African Union for countries like Burkina Faso?",
          [
            [
              "Promouvoir l'intégration, la paix et le développement du continent",
              "Promote integration, peace and development of the continent"
            ],
            ["Imposer des sanctions économiques", "Impose economic sanctions"],
            [
              "Gérer les ressources naturelles de chaque pays",
              "Manage each country's natural resources"
            ],
            ["Contrôler les armées nationales", "Control national armies"]
          ],
          0,
          "L'UA cherche à renforcer la solidarité africaine et régler les crises régionales.",
          "The AU seeks to strengthen African solidarity and resolve regional crises.",
          "L'UA a son siège à Addis-Abeba, en Éthiopie.",
          "The AU is headquartered in Addis Ababa, Ethiopia.",
          "Géopolitique africaine",
          ["Union Africaine", "coopération"]),
      q(
          "g3_6r",
          "Comment la révolution géraitelle le défi de l'enclavement du Burkina ?",
          "How did the revolution manage the challenge of Burkina's landlocked status?",
          [
            [
              "Par la construction de routes et de la ligne de chemin de fer vers Tambao",
              "By building roads and the railway line to Tambao"
            ],
            ["En ignorant le problème", "By ignoring the problem"],
            [
              "Par des accords de transit coûteux",
              "Through costly transit agreements"
            ],
            ["Par des frontières fermées", "Through closed borders"]
          ],
          0,
          "Sankara a lancé la construction de routes rurales et de la ligne ferroviaire vers Tambao.",
          "Sankara launched the construction of rural roads and the railway line to Tambao.",
          "L'enclavement est toujours un défi pour le Burkina, mais Sankara avait initié des solutions.",
          "Landlockedness remains a challenge for Burkina, but Sankara had initiated solutions.",
          "Géographie et développement",
          ["enclavement", "infrastructure"]),
      q(
          "g3_7r",
          "Quelle vision Sankara avait-il de la frontière entre les peuples africains ?",
          "What vision did Sankara have of borders between African peoples?",
          [
            [
              "Les frontières coloniales artificielles divisent des peuples qui forment une même famille africaine",
              "Artificial colonial borders divide peoples who form one African family"
            ],
            [
              "Les frontières sont sacrées et immuables",
              "Borders are sacred and immutable"
            ],
            [
              "Chaque pays doit rester isolé",
              "Each country must remain isolated"
            ],
            ["Les frontières renforcent la paix", "Borders reinforce peace"]
          ],
          0,
          "Sankara critiquait les frontières héritées de la colonisation qui découpaient les nations africaines.",
          "Sankara criticized borders inherited from colonization that cut up African nations.",
          "Il militait pour des frontières ouvertes et la libre circulation des peuples africains.",
          "He campaigned for open borders and free movement of African peoples.",
          "Frontières africaines",
          ["frontières", "colonisation"]),
      q(
          "g3_8r",
          "Quelle région du Burkina Faso est connue pour ses pics rocheux du Sindou ?",
          "Which region of Burkina Faso is known for the Sindou peaks?",
          [
            ["La région des Cascades", "The Cascades region"],
            ["La région du Centre", "The Centre region"],
            ["La région du Sahel", "The Sahel region"],
            ["La région du Nord", "The North region"]
          ],
          0,
          "Les pics de Sindou se trouvent dans la région des Cascades, au sud-ouest du Burkina Faso.",
          "The Sindou peaks are located in the Cascades region, in the southwest of Burkina Faso.",
          "Les pics de Sindou sont des formations rocheuses spectaculaires créées par l'érosion.",
          "The Sindou peaks are spectacular rock formations created by erosion.",
          "Sites naturels",
          ["Sindou", "Cascades"]),
      q(
          "g3_9r",
          "Quel lac artificiel alimente en eau Ouagadougou ?",
          "Which artificial lake supplies water to Ouagadougou?",
          [
            ["Le barrage de Ziga", "Ziga dam"],
            ["Le lac Bam", "Lake Bam"],
            ["Le lac Kompienga", "Lake Kompienga"],
            ["Le barrage de Bagré", "Bagré dam"]
          ],
          0,
          "Le barrage de Ziga est la principale source d'eau potable de la ville de Ouagadougou.",
          "The Ziga dam is the main source of drinking water for the city of Ouagadougou.",
          "Le barrage de Ziga a une capacité de stockage d'environ 200 millions de m³.",
          "The Ziga dam has a storage capacity of approximately 200 million m³.",
          "Ressources en eau",
          ["Ziga", "eau"]),
      q(
          "g3_10r",
          "Quel type de végétation domine dans le nord du Burkina Faso ?",
          "What type of vegetation dominates in northern Burkina Faso?",
          [
            [
              "La végétation semi-aride du Sahel avec arbustes épineux",
              "Semi-arid Sahelian vegetation with thorny shrubs"
            ],
            ["La forêt tropicale dense", "Dense tropical forest"],
            ["La prairie tempérée", "Temperate grassland"],
            ["La mangrove", "Mangrove"]
          ],
          0,
          "Le nord du Burkina Faso est dominé par la végétation semi-aride sahélienne avec épineux et herbes sèches.",
          "Northern Burkina Faso is dominated by semi-arid Sahelian vegetation with thorny plants and dry grasses.",
          "La désertification progresse dans le Sahel burkinabè en raison des changements climatiques.",
          "Desertification is advancing in the Burkinabè Sahel due to climate change.",
          "Végétation",
          ["Sahel", "semi-aride"]),
    ]),
    Level(number: 4, title: "Villes & Régions", isLocked: true, questions: [
      q(
          "g4_1",
          "Combien de régions administratives compte le Burkina Faso ?",
          "How many administrative regions does Burkina Faso have?",
          [
            ["13 régions", "13 regions"],
            ["10 régions", "10 regions"],
            ["20 régions", "20 regions"],
            ["5 régions", "5 regions"]
          ],
          0,
          "Le Burkina Faso est divisé en 13 régions, 45 provinces et 351 communes.",
          "Burkina Faso is divided into 13 regions, 45 provinces and 351 municipalities.",
          "La région du Centre a Ouagadougou comme chef-lieu.",
          "The Centre region has Ouagadougou as its capital.",
          "Administration",
          ["régions", "administration"]),
      q(
          "g4_2",
          "Quelle est la ville la plus peuplée après Ouagadougou ?",
          "What is the most populated city after Ouagadougou?",
          [
            ["Bobo-Dioulasso", "Bobo-Dioulasso"],
            ["Koudougou", "Koudougou"],
            ["Banfora", "Banfora"],
            ["Ouahigouya", "Ouahigouya"]
          ],
          0,
          "Bobo-Dioulasso est la deuxième ville du Burkina et le principal centre économique de l'ouest.",
          "Bobo-Dioulasso is the second city of Burkina and the main economic center of the west.",
          "Bobo-Dioulasso est surnommée 'la cité aux balanzans' en référence aux arbres qui la bordent.",
          "Bobo-Dioulasso is nicknamed 'the city of balanzans' after the trees lining it.",
          "Géographie",
          ["Bobo", "villes"]),
      q(
          "g4_3",
          "Quel parc national est le plus célèbre au Burkina Faso ?",
          "Which national park is the most famous in Burkina Faso?",
          [
            ["Le Ranch de Gibier de Nazinga", "The Nazinga Game Ranch"],
            ["Le Parc de la Pendjari", "The Pendjari Park"],
            ["Le Parc W", "The W Park"],
            ["Le Parc des Deux Balés", "The Deux Balés Park"]
          ],
          0,
          "Le Ranch de Nazinga abrite une importante population d'éléphants dans le sud du pays.",
          "The Nazinga Ranch houses a significant elephant population in the south of the country.",
          "Nazinga est l'un des meilleurs endroits en Afrique de l'Ouest pour observer des éléphants.",
          "Nazinga is one of the best places in West Africa to observe elephants.",
          "Écologie",
          ["Nazinga", "faune"]),
      q(
          "g4_4",
          "Quelles sont les principales ethnies du Burkina Faso ?",
          "What are the main ethnic groups of Burkina Faso?",
          [
            [
              "Mossi, Peul, Gourmantché, Bobo, Dioula",
              "Mossi, Fulani, Gourmantché, Bobo, Dioula"
            ],
            ["Uniquement les Mossi", "Only the Mossi"],
            ["Haoussa, Yoruba, Igbo", "Haoussa, Yoruba, Igbo"],
            ["Mandé, Wolof, Sérère", "Mandé, Wolof, Sérère"]
          ],
          0,
          "Le Burkina Faso compte plus de 60 ethnies, les Mossi étant les plus nombreux (environ 50%).",
          "Burkina Faso has more than 60 ethnic groups, the Mossi being the most numerous (about 50%).",
          "Cette diversité ethnique est une richesse culturelle du Burkina Faso.",
          "This ethnic diversity is a cultural wealth of Burkina Faso.",
          "Ethnies",
          ["Mossi", "ethnies"]),
      q(
          "g4_5",
          "Qu'est-ce que le Sahel et quel impact a-t-il sur le Burkina Faso ?",
          "What is the Sahel and what impact does it have on Burkina Faso?",
          [
            [
              "Une zone semi-aride entre Sahara et savane affectant le nord du pays",
              "A semi-arid zone between Sahara and savanna affecting the north of the country"
            ],
            ["Un fleuve burkinabè", "A Burkinabè river"],
            ["Une région forestière", "A forest region"],
            ["Un plateau montagneux", "A mountainous plateau"]
          ],
          0,
          "Le Sahel couvre le nord du Burkina Faso et souffre de sécheresses et de désertification.",
          "The Sahel covers northern Burkina Faso and suffers from droughts and desertification.",
          "La Grande Muraille Verte est un projet de reforestation pour contrer l'avancée du désert.",
          "The Great Green Wall is a reforestation project to counter the advance of the desert.",
          "Environnement",
          ["Sahel", "désertification"]),
      q(
          "g4_6r",
          "Quel problème environnemental Sankara considérait-il comme une menace pour le Burkina ?",
          "What environmental problem did Sankara consider a threat to Burkina?",
          [
            [
              "La désertification et l'avancée du Sahara menaçant les terres agricoles",
              "Desertification and the advance of the Sahara threatening agricultural land"
            ],
            [
              "La déforestation en zone équatoriale",
              "Deforestation in equatorial zones"
            ],
            ["La montée des eaux océaniques", "Rising ocean waters"],
            ["La pollution industrielle", "Industrial pollution"]
          ],
          0,
          "Sankara voyait la désertification comme un ennemi à combattre avec la même énergie que le colonialisme.",
          "Sankara saw desertification as an enemy to fight with the same energy as colonialism.",
          "Il disait que sans terres, il n'y a pas de révolution possible.",
          "He said that without land, no revolution is possible.",
          "Environnement révolutionnaire",
          ["désertification", "environnement"]),
      q(
          "g4_7r",
          "Comment la RPP gérait-elle le rapport entre villes et campagnes ?",
          "How did the RPP manage the relationship between cities and countryside?",
          [
            [
              "En investissant dans les campagnes pour freiner l'exode rural et décentraliser le développement",
              "By investing in the countryside to slow rural exodus and decentralize development"
            ],
            [
              "En concentrant tous les investissements dans les villes",
              "By concentrating all investments in cities"
            ],
            ["En ignorant les zones rurales", "By ignoring rural areas"],
            [
              "En vidant les campagnes vers les villes",
              "By emptying the countryside toward cities"
            ]
          ],
          0,
          "La révolution voulait rendre les campagnes attractives pour freiner l'exode rural.",
          "The revolution wanted to make the countryside attractive to slow rural exodus.",
          "Des routes, écoles et dispensaires ruraux furent construits à cet effet.",
          "Rural roads, schools and dispensaries were built for this purpose.",
          "Aménagement du territoire",
          ["rural", "exode"]),
      q(
          "g4_8r",
          "Quelle est la superficie approximative du Burkina Faso ?",
          "What is the approximate area of Burkina Faso?",
          [
            ["274 000 km²", "274,000 km²"],
            ["150 000 km²", "150,000 km²"],
            ["500 000 km²", "500,000 km²"],
            ["100 000 km²", "100,000 km²"]
          ],
          0,
          "Le Burkina Faso couvre une superficie d'environ 274 200 km², comparable à celle du Royaume-Uni.",
          "Burkina Faso covers an area of approximately 274,200 km², comparable to that of the United Kingdom.",
          "Cette superficie classe le Burkina parmi les pays de taille moyenne en Afrique.",
          "This area places Burkina among the medium-sized countries in Africa.",
          "Géographie",
          ["superficie", "territoire"]),
      q(
          "g4_9r",
          "Quelle est la population approximative du Burkina Faso (2023) ?",
          "What is the approximate population of Burkina Faso (2023)?",
          [
            ["22 millions", "22 million"],
            ["10 millions", "10 million"],
            ["50 millions", "50 million"],
            ["5 millions", "5 million"]
          ],
          0,
          "La population du Burkina Faso est d'environ 22 millions d'habitants en 2023.",
          "Burkina Faso's population is approximately 22 million inhabitants in 2023.",
          "La population burkinabè est parmi les plus jeunes au monde avec un âge médian de 17 ans.",
          "The Burkinabè population is among the youngest in the world with a median age of 17.",
          "Démographie",
          ["population", "habitants"]),
      q(
          "g4_10r",
          "Quel est le principal lac naturel du Burkina Faso ?",
          "What is the main natural lake of Burkina Faso?",
          [
            [
              "Le lac Bam dans la région du Centre-Nord",
              "Lake Bam in the Centre-Nord region"
            ],
            ["Le lac Volta (artificiel)", "Lake Volta (artificial)"],
            ["Le lac Tingrela", "Lake Tingrela"],
            ["Le lac Kompienga (artificiel)", "Lake Kompienga (artificial)"]
          ],
          0,
          "Le lac Bam est le principal lac naturel du Burkina Faso, situé dans la région du Centre-Nord.",
          "Lake Bam is the main natural lake of Burkina Faso, located in the Centre-Nord region.",
          "Le lac Bam joue un rôle crucial pour l'agriculture irriguée et la pêche dans la région.",
          "Lake Bam plays a crucial role for irrigated agriculture and fishing in the region.",
          "Hydrographie",
          ["lac Bam", "Centre-Nord"]),
    ]),
    Level(number: 5, title: "Géographe Expert", isLocked: true, questions: [
      q(
          "g5_1",
          "Quels sont les trois fleuves principaux qui donnaient leur nom à la Haute-Volta ?",
          "What are the three main rivers that gave their name to Upper Volta?",
          [
            [
              "Le Mouhoun (Volta Noire), le Nakambé (Volta Blanche) et le Nazinon (Volta Rouge)",
              "Mouhoun (Black Volta), Nakambé (White Volta) and Nazinon (Red Volta)"
            ],
            [
              "Le Niger, le Sénégal et le Comoé",
              "The Niger, Senegal and Comoé"
            ],
            ["Le Nil, le Congo et le Zambèze", "The Nile, Congo and Zambezi"],
            ["L'Ogooué, le Bani et la Sirba", "The Ogooué, Bani and Sirba"]
          ],
          0,
          "Les trois Volta ont donné son nom au pays : Haute-Volta, avant de devenir Burkina Faso en 1984.",
          "The three Voltas gave the country its name: Upper Volta, before becoming Burkina Faso in 1984.",
          "Le Mouhoun est le fleuve le plus long et le plus important du Burkina Faso.",
          "The Mouhoun is the longest and most important river in Burkina Faso.",
          "Hydrographie",
          ["Mouhoun", "fleuves"]),
      q(
          "g5_2",
          "Quelle est la superficie du Burkina Faso ?",
          "What is the area of Burkina Faso?",
          [
            ["274 000 km²", "274,000 km²"],
            ["500 000 km²", "500,000 km²"],
            ["100 000 km²", "100,000 km²"],
            ["1 million de km²", "1 million km²"]
          ],
          0,
          "Le Burkina Faso couvre 274 000 km², soit une superficie comparable à celle de l'Italie.",
          "Burkina Faso covers 274,000 km², an area comparable to that of Italy.",
          "C'est un pays enclavé d'Afrique de l'Ouest sans accès à la mer.",
          "It is a landlocked country in West Africa with no access to the sea.",
          "Géographie physique",
          ["superficie", "territoire"]),
      q(
          "g5_3",
          "Quel est le climat dominant au Burkina Faso ?",
          "What is the dominant climate in Burkina Faso?",
          [
            [
              "Un climat tropical soudano-sahélien avec deux saisons (sèche et des pluies)",
              "A tropical Sudano-Sahelian climate with two seasons (dry and rainy)"
            ],
            ["Un climat équatorial humide", "An equatorial humid climate"],
            ["Un climat méditerranéen", "A Mediterranean climate"],
            ["Un climat polaire", "A polar climate"]
          ],
          0,
          "La saison sèche dure 7 à 9 mois selon les régions, la saison des pluies de 3 à 5 mois.",
          "The dry season lasts 7 to 9 months depending on the region, the rainy season 3 to 5 months.",
          "L'harmattan, un vent chaud et sec, souffle du Sahara vers le Burkina en saison sèche.",
          "The harmattan, a hot dry wind, blows from the Sahara towards Burkina in the dry season.",
          "Climatologie",
          ["climat", "saisons"]),
      q(
          "g5_4",
          "Avec combien de pays le Burkina Faso partage-t-il ses frontières ?",
          "With how many countries does Burkina Faso share its borders?",
          [
            [
              "6 pays (Mali, Niger, Bénin, Togo, Ghana, Côte d'Ivoire)",
              "6 countries (Mali, Niger, Benin, Togo, Ghana, Côte d'Ivoire)"
            ],
            ["4 pays", "4 countries"],
            ["8 pays", "8 countries"],
            ["3 pays", "3 countries"]
          ],
          0,
          "Le Burkina Faso est entouré de 6 pays voisins et n'a aucun accès à la mer.",
          "Burkina Faso is surrounded by 6 neighboring countries and has no access to the sea.",
          "L'enclavement est un défi économique majeur pour le pays qui dépend des ports côtiers.",
          "Being landlocked is a major economic challenge for a country that depends on coastal ports.",
          "Géographie",
          ["frontières", "voisins"]),
      q(
          "g5_5",
          "Quelle est la densité de population et sa distribution au Burkina Faso ?",
          "What is the population density and its distribution in Burkina Faso?",
          [
            [
              "Environ 70 hab/km², avec une concentration au centre et au nord",
              "About 70 inhabitants/km², with concentration in the center and north"
            ],
            ["Plus de 500 hab/km²", "More than 500 inhab/km²"],
            ["Moins de 5 hab/km²", "Less than 5 inhab/km²"],
            [
              "Uniquement concentrée dans les villes",
              "Only concentrated in cities"
            ]
          ],
          0,
          "La population burkinabè est estimée à environ 22 millions d'habitants en 2024.",
          "The Burkinabè population is estimated at about 22 million inhabitants in 2024.",
          "Le taux de croissance démographique est l'un des plus élevés au monde (environ 3% par an).",
          "The population growth rate is one of the highest in the world (about 3% per year).",
          "Démographie",
          ["population", "densité"]),
      q(
          "g5_6r",
          "Pourquoi le Burkina est-il particulièrement vulnérable au changement climatique ?",
          "Why is Burkina particularly vulnerable to climate change?",
          [
            [
              "Pays sahélien sans accès à la mer, dépendant d'une agriculture pluviale fragile",
              "Sahelian country without sea access, dependent on fragile rain-fed agriculture"
            ],
            ["Parce qu'il est riche en pétrole", "Because it is rich in oil"],
            [
              "Parce qu'il est densément urbanisé",
              "Because it is densely urbanized"
            ],
            [
              "Parce qu'il est proche des zones industrielles",
              "Because it is close to industrial zones"
            ]
          ],
          0,
          "Le Burkina est enclavé, dépend de la pluie pour l'agriculture et subit l'avancée du désert.",
          "Burkina is landlocked, depends on rain for agriculture and suffers from desert expansion.",
          "Sankara avait anticipé ce défi en lançant des programmes de reboisement.",
          "Sankara had anticipated this challenge by launching reforestation programs.",
          "Vulnérabilité climatique",
          ["Sahel", "agriculture"]),
      q(
          "g5_7r",
          "Quelle leçon géographique et environnementale Sankara nous laisse-t-il ?",
          "What geographic and environmental lesson does Sankara leave us?",
          [
            [
              "La souveraineté sur son territoire passe par la gestion durable de ses ressources naturelles",
              "Sovereignty over one's territory requires sustainable management of natural resources"
            ],
            [
              "L'environnement est secondaire face au développement économique",
              "The environment is secondary to economic development"
            ],
            [
              "Seule l'aide internationale peut sauver l'environnement africain",
              "Only international aid can save the African environment"
            ],
            [
              "Les ressources naturelles doivent être vendues aux multinationales",
              "Natural resources must be sold to multinationals"
            ]
          ],
          0,
          "Sankara voyait la protection de la nature comme un acte de souveraineté nationale.",
          "Sankara saw the protection of nature as an act of national sovereignty.",
          "Il disait que la terre est la mère nourricière du peuple burkinabè.",
          "He said the land is the nurturing mother of the Burkinabè people.",
          "Souveraineté environnementale",
          ["environnement", "souveraineté"]),
      q(
          "g5_8r",
          "Dans quelle région se trouve la ville de Bobo-Dioulasso ?",
          "In which region is the city of Bobo-Dioulasso located?",
          [
            ["Hauts-Bassins", "Hauts-Bassins"],
            ["Cascades", "Cascades"],
            ["Centre-Ouest", "Centre-Ouest"],
            ["Sud-Ouest", "Sud-Ouest"]
          ],
          0,
          "Bobo-Dioulasso est la capitale économique et deuxième ville du Burkina Faso, dans la région des Hauts-Bassins.",
          "Bobo-Dioulasso is the economic capital and second city of Burkina Faso, in the Hauts-Bassins region.",
          "Bobo-Dioulasso est surnommée 'Sya' par ses habitants, son nom traditionnel.",
          "Bobo-Dioulasso is nicknamed 'Sya' by its inhabitants, its traditional name.",
          "Villes burkinabè",
          ["Bobo-Dioulasso", "Hauts-Bassins"]),
      q(
          "g5_9r",
          "Quel pays se trouve au nord du Burkina Faso ?",
          "Which country is to the north of Burkina Faso?",
          [
            ["Le Mali", "Mali"],
            ["Le Niger", "Niger"],
            ["La Côte d'Ivoire", "Côte d'Ivoire"],
            ["Le Ghana", "Ghana"]
          ],
          0,
          "Le Mali partage la plus longue frontière avec le Burkina Faso, au nord et à l'ouest.",
          "Mali shares the longest border with Burkina Faso, to the north and west.",
          "Le Burkina Faso est un pays enclavé entouré par 6 pays : Mali, Niger, Bénin, Togo, Ghana et Côte d'Ivoire.",
          "Burkina Faso is a landlocked country surrounded by 6 countries: Mali, Niger, Benin, Togo, Ghana and Côte d'Ivoire.",
          "Géographie politique",
          ["Mali", "frontière"]),
      q(
          "g5_10r",
          "Quelle ville burkinabè est connue comme carrefour commercial du coton ?",
          "Which Burkinabè city is known as a cotton trade hub?",
          [
            ["Koudougou", "Koudougou"],
            ["Ouagadougou", "Ouagadougou"],
            ["Banfora", "Banfora"],
            ["Fada N'Gourma", "Fada N'Gourma"]
          ],
          0,
          "Koudougou est une ville importante pour le commerce du coton et l'industrie textile au Burkina Faso.",
          "Koudougou is an important city for cotton trade and textile industry in Burkina Faso.",
          "Koudougou est la troisième ville du pays et abrite une importante usine d'égrenage de coton.",
          "Koudougou is the third largest city and hosts an important cotton ginning factory.",
          "Géographie économique",
          ["Koudougou", "coton"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  TECHNOLOGIE
  // ════════════════════════════════════════════════
  "Technologie": [
    Level(number: 1, title: "Tech Fondamentaux", isLocked: false, questions: [
      q(
          "t1_1",
          "Qu'est-ce que l'inclusion numérique ?",
          "What is digital inclusion?",
          [
            [
              "Accès aux outils numériques et aux compétences associées",
              "Access to digital tools and associated skills"
            ],
            ["Un nouveau type de monnaie", "A new type of currency"],
            ["Une technologie agricole", "An agricultural technology"],
            ["Un festival musical", "A music festival"]
          ],
          0,
          "L'inclusion numérique vise à réduire la fracture entre ceux qui ont accès à la tech et les autres.",
          "Digital inclusion aims to reduce the gap between those with tech access and others.",
          "En Afrique, le téléphone mobile est le principal outil d'accès au numérique.",
          "In Africa, the mobile phone is the main tool for digital access.",
          "Tech & société",
          ["inclusion", "numérique"]),
      q(
          "t1_2",
          "Qu'est-ce que le Mobile Money ?",
          "What is Mobile Money?",
          [
            [
              "Service de paiement et transfert d'argent via téléphone mobile",
              "Payment and money transfer service via mobile phone"
            ],
            ["Un smartphone haut de gamme", "A high-end smartphone"],
            ["Un réseau social mobile", "A mobile social network"],
            ["Une banque physique", "A physical bank"]
          ],
          0,
          "Le Mobile Money permet des transactions financières sans compte bancaire classique.",
          "Mobile Money enables financial transactions without a traditional bank account.",
          "Orange Money et Moov Money sont très populaires au Burkina Faso.",
          "Orange Money and Moov Money are very popular in Burkina Faso.",
          "Fintech",
          ["mobile money", "paiement"]),
      q(
          "t1_3",
          "Qu'est-ce que l'énergie solaire ?",
          "What is solar energy?",
          [
            [
              "Énergie produite à partir des rayons du soleil",
              "Energy produced from sunlight"
            ],
            ["Énergie du vent", "Wind energy"],
            ["Énergie des barrages", "Dam energy"],
            ["Énergie nucléaire", "Nuclear energy"]
          ],
          0,
          "L'énergie solaire est très adaptée au Burkina Faso grâce à son fort ensoleillement.",
          "Solar energy is very suitable for Burkina Faso thanks to its strong sunshine.",
          "Des panneaux solaires alimentent des villages entiers sans électricité.",
          "Solar panels power entire villages without electricity.",
          "Énergie renouvelable",
          ["solaire", "énergie"]),
      q(
          "t1_4",
          "Qu'est-ce qu'une startup ?",
          "What is a startup?",
          [
            [
              "Jeune entreprise innovante à fort potentiel de croissance",
              "Young innovative company with high growth potential"
            ],
            ["Une ancienne entreprise familiale", "An old family business"],
            ["Un département gouvernemental", "A government department"],
            ["Une école professionnelle", "A vocational school"]
          ],
          0,
          "Les startups tech proposent des solutions innovantes souvent dans le numérique.",
          "Tech startups offer innovative solutions, often in digital fields.",
          "L'écosystème startup se développe à Ouagadougou avec des incubateurs actifs.",
          "The startup ecosystem is growing in Ouagadougou with active incubators.",
          "Innovation",
          ["startup", "innovation"]),
      q(
          "t1_5",
          "Qu'est-ce qu'Internet ?",
          "What is the Internet?",
          [
            [
              "Réseau mondial d'ordinateurs et appareils interconnectés",
              "Global network of interconnected computers and devices"
            ],
            [
              "Un logiciel de traitement de texte",
              "A word processing software"
            ],
            ["Un satellite météorologique", "A weather satellite"],
            ["Un câble téléphonique", "A telephone cable"]
          ],
          0,
          "Internet permet l'échange instantané d'informations à travers le monde.",
          "The Internet enables instant exchange of information around the world.",
          "Le nombre d'internautes en Afrique double tous les 5 ans.",
          "The number of Internet users in Africa doubles every 5 years.",
          "Technologies",
          ["internet", "réseau"]),
      q(
          "t1_6r",
          "Comment Sankara utilisait-il la radio pour la révolution ?",
          "How did Sankara use radio for the revolution?",
          [
            [
              "La radio était un outil de conscientisation populaire diffusant en langues nationales",
              "Radio was a tool of popular awareness broadcasting in national languages"
            ],
            [
              "La radio était réservée à la propagande militaire",
              "Radio was reserved for military propaganda"
            ],
            [
              "La radio n'avait aucun rôle révolutionnaire",
              "Radio had no revolutionary role"
            ],
            [
              "La radio diffusait uniquement de la musique",
              "Radio only broadcast music"
            ]
          ],
          0,
          "La radio nationale diffusait des émissions éducatives, en langues locales, pour toucher les ruraux.",
          "National radio broadcast educational programs in local languages to reach rural people.",
          "Sankara comprenait que la communication populaire est une arme révolutionnaire.",
          "Sankara understood that popular communication is a revolutionary weapon.",
          "Communication révolutionnaire",
          ["radio", "langues"]),
      q(
          "t1_7r",
          "Quelle politique Sankara avait-il sur le transfert de technologie ?",
          "What policy did Sankara have on technology transfer?",
          [
            [
              "Il exigeait que les partenaires étrangers forment les Burkinabè et transfèrent leurs technologies",
              "He required foreign partners to train Burkinabè and transfer their technologies"
            ],
            [
              "Il acceptait tout investissement sans condition",
              "He accepted any investment without conditions"
            ],
            [
              "Il refusait toute technologie étrangère",
              "He refused any foreign technology"
            ],
            [
              "Il exportait les technologies burkinabè",
              "He exported Burkinabè technologies"
            ]
          ],
          0,
          "Sankara conditionnait la coopération à un vrai transfert de compétences vers les Burkinabè.",
          "Sankara conditioned cooperation on a real transfer of skills to Burkinabè.",
          "Cela visait à réduire la dépendance technologique à long terme.",
          "This aimed to reduce technological dependence in the long term.",
          "Souveraineté technologique",
          ["transfert", "technologie"]),
      q(
          "t1_8r",
          "Quelle est la principale cause de mortalité infantile au Burkina Faso ?",
          "What is the leading cause of infant mortality in Burkina Faso?",
          [
            ["Le paludisme", "Malaria"],
            ["La malnutrition", "Malnutrition"],
            ["Les accidents", "Accidents"],
            ["La rougeole", "Measles"]
          ],
          0,
          "Le paludisme est la principale cause de mortalité infantile au Burkina Faso.",
          "Malaria is the leading cause of infant mortality in Burkina Faso.",
          "Le Burkina Faso figure parmi les pays les plus touchés par le paludisme dans le monde.",
          "Burkina Faso is among the countries most affected by malaria in the world.",
          "Santé publique",
          ["paludisme", "mortalité"]),
      q(
          "t1_9r",
          "Quel vaccin est utilisé pour lutter contre la méningite au Burkina Faso ?",
          "What vaccine is used to fight meningitis in Burkina Faso?",
          [
            ["Le vaccin MenAfriVac", "The MenAfriVac vaccine"],
            ["Le vaccin BCG", "The BCG vaccine"],
            ["Le vaccin DTP", "The DTP vaccine"],
            ["Le vaccin contre la polio", "The polio vaccine"]
          ],
          0,
          "Le MenAfriVac est un vaccin développé spécifiquement contre la méningite dans la ceinture africaine.",
          "MenAfriVac is a vaccine developed specifically against meningitis in the African meningitis belt.",
          "Le Burkina Faso fait partie de la 'ceinture de la méningite' en Afrique subsaharienne.",
          "Burkina Faso is part of the 'meningitis belt' in sub-Saharan Africa.",
          "Vaccination",
          ["méningite", "vaccin"]),
      q(
          "t1_10r",
          "Qu'est-ce que l'ARCEP au Burkina Faso ?",
          "What is ARCEP in Burkina Faso?",
          [
            [
              "L'Autorité de Régulation des Communications Électroniques et des Postes",
              "The Electronic Communications and Postal Regulatory Authority"
            ],
            [
              "Une entreprise de télécommunications",
              "A telecommunications company"
            ],
            [
              "Le ministère de l'Informatique",
              "The Ministry of Information Technology"
            ],
            [
              "Un service de livraison postal international",
              "An international postal delivery service"
            ]
          ],
          0,
          "L'ARCEP est l'organe de régulation des télécommunications et de la poste au Burkina Faso.",
          "ARCEP is the telecommunications and postal regulatory body in Burkina Faso.",
          "Elle veille à la concurrence loyale entre les opérateurs de téléphonie mobile.",
          "It ensures fair competition between mobile phone operators.",
          "Régulation numérique",
          ["ARCEP", "télécommunications"]),
    ]),
    Level(number: 2, title: "Innovation Africaine", isLocked: true, questions: [
      q(
          "t2_1",
          "Qu'est-ce que l'intelligence artificielle ?",
          "What is artificial intelligence?",
          [
            [
              "Simulation de l'intelligence humaine par des machines",
              "Simulation of human intelligence by machines"
            ],
            ["Un robot humanoïde uniquement", "A humanoid robot only"],
            ["Un GPS avancé", "An advanced GPS"],
            ["Un logiciel comptable", "Accounting software"]
          ],
          0,
          "L'IA permet aux machines d'apprendre, raisonner et résoudre des problèmes.",
          "AI allows machines to learn, reason and solve problems.",
          "L'IA est utilisée dans la santé, l'agriculture et l'éducation en Afrique.",
          "AI is used in health, agriculture and education in Africa.",
          "Technologie moderne",
          ["IA", "apprentissage"]),
      q(
          "t2_2",
          "Qu'est-ce que l'agritech ?",
          "What is agritech?",
          [
            [
              "Technologies numériques appliquées à l'agriculture",
              "Digital technologies applied to agriculture"
            ],
            ["Un engrais chimique", "A chemical fertilizer"],
            ["Une variété de coton OGM", "A GMO cotton variety"],
            [
              "Un réseau d'irrigation traditionnel",
              "A traditional irrigation network"
            ]
          ],
          0,
          "L'agritech utilise capteurs, drones et apps pour améliorer la production agricole.",
          "Agritech uses sensors, drones and apps to improve agricultural production.",
          "Des startups africaines développent des apps pour prévenir les maladies des cultures.",
          "African startups develop apps to prevent crop diseases.",
          "Agritech",
          ["agriculture", "technologie"]),
      q(
          "t2_3",
          "Qu'est-ce que le e-learning ?",
          "What is e-learning?",
          [
            [
              "Apprentissage en ligne via des plateformes numériques",
              "Online learning via digital platforms"
            ],
            ["Apprentissage en extérieur", "Outdoor learning"],
            ["Formation physique uniquement", "Physical training only"],
            ["Cours par correspondance papier", "Paper correspondence courses"]
          ],
          0,
          "Le e-learning permet d'accéder à la formation depuis n'importe où avec internet.",
          "E-learning allows access to training from anywhere with internet.",
          "Des plateformes africaines comme Atingi proposent des formations gratuites.",
          "African platforms like Atingi offer free training.",
          "Éducation numérique",
          ["e-learning", "éducation"]),
      q(
          "t2_4",
          "Qu'est-ce que la cybersécurité ?",
          "What is cybersecurity?",
          [
            [
              "Protection des systèmes informatiques contre les attaques malveillantes",
              "Protection of computer systems against malicious attacks"
            ],
            ["Construction de murs physiques", "Building physical walls"],
            ["Protection des forêts", "Forest protection"],
            ["Sécurité des routes", "Road safety"]
          ],
          0,
          "La cybersécurité protège données, réseaux et systèmes contre les pirates informatiques.",
          "Cybersecurity protects data, networks and systems against hackers.",
          "Les cyberattaques coûtent des milliards de dollars chaque année dans le monde.",
          "Cyber attacks cost billions of dollars each year worldwide.",
          "Sécurité informatique",
          ["cyber", "sécurité"]),
      q(
          "t2_5",
          "Qu'est-ce qu'une application mobile ?",
          "What is a mobile application?",
          [
            [
              "Programme installé sur un smartphone pour réaliser des tâches spécifiques",
              "Program installed on a smartphone to perform specific tasks"
            ],
            ["Un opérateur téléphonique", "A telephone operator"],
            ["Un type de réseau Wi-Fi", "A type of Wi-Fi network"],
            ["Un câble de données", "A data cable"]
          ],
          0,
          "Les applications mobiles révolutionnent l'accès aux services en Afrique.",
          "Mobile applications are revolutionizing access to services in Africa.",
          "Des apps permettent d'accéder à la santé, l'éducation et la finance mobile.",
          "Apps allow access to health, education and mobile finance.",
          "Numérique",
          ["application", "smartphone"]),
      q(
          "t2_6r",
          "Quel outil technique Sankara a-t-il utilisé pour alphabétiser les Burkinabè ?",
          "What technical tool did Sankara use to make Burkinabè literate?",
          [
            [
              "Des centres d'alphabétisation avec manuels en langues nationales et radio éducative",
              "Literacy centers with manuals in national languages and educational radio"
            ],
            ["Des ordinateurs importés", "Imported computers"],
            ["Des tablettes numériques", "Digital tablets"],
            ["L'internet haut débit", "High-speed internet"]
          ],
          0,
          "Sankara a lancé des campagnes massives d'alphabétisation en langues nationales.",
          "Sankara launched massive literacy campaigns in national languages.",
          "Le taux d'alphabétisation a augmenté significativement sous la révolution.",
          "The literacy rate increased significantly under the revolution.",
          "Alphabétisation",
          ["alphabétisation", "éducation"]),
      q(
          "t2_7r",
          "Comment la révolution sankariste voyait-elle la science et la technologie ?",
          "How did the Sankarist revolution view science and technology?",
          [
            [
              "Comme des outils au service du peuple et du développement national, pas des fins en soi",
              "As tools serving the people and national development, not ends in themselves"
            ],
            [
              "Comme des luxes inaccessibles aux pays pauvres",
              "As luxuries inaccessible to poor countries"
            ],
            [
              "Comme des inventions uniquement occidentales à copier",
              "As exclusively Western inventions to copy"
            ],
            [
              "Comme des outils de contrôle social",
              "As tools of social control"
            ]
          ],
          0,
          "Sankara voulait une science et une technologie enracinées dans les réalités africaines.",
          "Sankara wanted a science and technology rooted in African realities.",
          "Il formait des techniciens burkinabè pour réduire la dépendance aux experts étrangers.",
          "He trained Burkinabè technicians to reduce dependence on foreign experts.",
          "Science populaire",
          ["science", "développement"]),
      q(
          "t2_8r",
          "Quel est le principal programme de santé maternelle au Burkina Faso ?",
          "What is the main maternal health program in Burkina Faso?",
          [
            [
              "La gratuité des soins pour les femmes enceintes",
              "Free care for pregnant women"
            ],
            ["L'assurance maladie universelle", "Universal health insurance"],
            ["Les hôpitaux mobiles", "Mobile hospitals"],
            ["La médecine traditionnelle", "Traditional medicine"]
          ],
          0,
          "La gratuité des soins pour les femmes enceintes et les enfants de moins de 5 ans est un programme clé.",
          "Free care for pregnant women and children under 5 is a key program.",
          "Ce programme vise à réduire la mortalité maternelle et infantile au Burkina Faso.",
          "This program aims to reduce maternal and infant mortality in Burkina Faso.",
          "Santé maternelle",
          ["gratuité", "maternité"]),
      q(
          "t2_9r",
          "Que signifie CSPS au Burkina Faso ?",
          "What does CSPS mean in Burkina Faso?",
          [
            [
              "Centre de Santé et de Promotion Sociale",
              "Health and Social Promotion Center"
            ],
            [
              "Comité de Santé Publique et Sociale",
              "Public and Social Health Committee"
            ],
            [
              "Centre Sanitaire de Prévention et de Soins",
              "Prevention and Care Health Center"
            ],
            [
              "Comité de Suivi des Programmes de Santé",
              "Health Program Monitoring Committee"
            ]
          ],
          0,
          "Les CSPS sont les structures de santé de base au Burkina Faso, présentes dans les villages.",
          "CSPS are the basic health structures in Burkina Faso, present in villages.",
          "Il existe plus de 1800 CSPS répartis sur tout le territoire burkinabè.",
          "There are more than 1800 CSPS spread across the Burkinabè territory.",
          "Système de santé",
          ["CSPS", "santé"]),
      q(
          "t2_10r",
          "Quelle infrastructure numérique est essentielle pour le développement du Burkina Faso ?",
          "What digital infrastructure is essential for Burkina Faso's development?",
          [
            [
              "La fibre optique et l'extension de la couverture 4G/5G",
              "Fiber optics and extension of 4G/5G coverage"
            ],
            ["Les fax et télex", "Fax machines and telex"],
            ["Les téléphones fixes uniquement", "Fixed telephones only"],
            ["Les radios analogiques", "Analog radios"]
          ],
          0,
          "L'extension des réseaux fibre optique et 4G/5G est cruciale pour connecter les zones rurales et développer l'économie numérique.",
          "Extension of fiber optic and 4G/5G networks is crucial for connecting rural areas and developing the digital economy.",
          "Le Burkina Faso travaille à raccorder plus de 70% du territoire à la fibre optique.",
          "Burkina Faso is working to connect more than 70% of the territory to fiber optics.",
          "Infrastructure numérique",
          ["fibre optique", "4G"]),
    ]),
    Level(number: 3, title: "Futur Numérique", isLocked: true, questions: [
      q(
          "t3_1",
          "Qu'est-ce que la blockchain ?",
          "What is blockchain?",
          [
            [
              "Technologie de registre décentralisé et sécurisé pour enregistrer des transactions",
              "Decentralized and secure ledger technology for recording transactions"
            ],
            ["Un type de réseau social", "A type of social network"],
            ["Un serveur centralisé", "A centralized server"],
            ["Un câble sous-marin", "An underwater cable"]
          ],
          0,
          "La blockchain est à la base des cryptomonnaies et de nombreuses applications sécurisées.",
          "Blockchain is the foundation of cryptocurrencies and many secure applications.",
          "Elle peut améliorer la transparence des élections et des transactions publiques.",
          "It can improve the transparency of elections and public transactions.",
          "Technologies avancées",
          ["blockchain", "décentralisation"]),
      q(
          "t3_2",
          "Qu'est-ce que l'internet des objets (IoT) ?",
          "What is the Internet of Things (IoT)?",
          [
            [
              "Réseau d'objets physiques connectés à internet",
              "Network of physical objects connected to the internet"
            ],
            [
              "Un réseau uniquement pour ordinateurs",
              "A network only for computers"
            ],
            ["Un système de géolocalisation", "A geolocation system"],
            [
              "Un type d'intelligence artificielle",
              "A type of artificial intelligence"
            ]
          ],
          0,
          "L'IoT connecte des capteurs, machines et appareils pour collecter et échanger des données.",
          "IoT connects sensors, machines and devices to collect and exchange data.",
          "En agriculture, des capteurs IoT optimisent l'irrigation et la fertilisation.",
          "In agriculture, IoT sensors optimize irrigation and fertilization.",
          "Technologies avancées",
          ["IoT", "objets connectés"]),
      q(
          "t3_3",
          "Quel est l'impact du numérique sur l'emploi en Afrique ?",
          "What is the impact of digital technology on employment in Africa?",
          [
            [
              "Création de nouveaux emplois tout en transformant certains secteurs",
              "Creation of new jobs while transforming some sectors"
            ],
            ["Suppression de tous les emplois", "Elimination of all jobs"],
            ["Aucun impact sur l'emploi", "No impact on employment"],
            ["Uniquement des impacts négatifs", "Only negative impacts"]
          ],
          0,
          "Le numérique crée des emplois en tech, tout en automatisant certaines tâches répétitives.",
          "Digital technology creates tech jobs while automating some repetitive tasks.",
          "Des millions de jeunes Africains trouvent du travail dans l'économie numérique.",
          "Millions of young Africans find work in the digital economy.",
          "Économie numérique",
          ["emploi", "transformation"]),
      q(
          "t3_4",
          "Qu'est-ce que la souveraineté numérique ?",
          "What is digital sovereignty?",
          [
            [
              "Capacité d'un pays à contrôler ses données et infrastructures numériques",
              "A country's ability to control its digital data and infrastructure"
            ],
            [
              "Droit de ne pas utiliser internet",
              "Right not to use the internet"
            ],
            ["Monopole d'une seule entreprise", "Monopoly of a single company"],
            ["Interdiction des réseaux étrangers", "Ban on foreign networks"]
          ],
          0,
          "La souveraineté numérique protège les données des citoyens et l'économie nationale.",
          "Digital sovereignty protects citizens' data and the national economy.",
          "Des pays africains développent leurs propres clouds souverains.",
          "African countries are developing their own sovereign clouds.",
          "Géopolitique numérique",
          ["souveraineté", "données"]),
      q(
          "t3_5",
          "Comment la tech peut-elle accélérer le développement au Burkina Faso ?",
          "How can tech accelerate development in Burkina Faso?",
          [
            [
              "En améliorant l'accès aux services, à l'éducation et aux marchés",
              "By improving access to services, education and markets"
            ],
            ["En remplaçant tous les agriculteurs", "By replacing all farmers"],
            [
              "En supprimant l'économie informelle",
              "By eliminating the informal economy"
            ],
            ["En limitant les échanges commerciaux", "By limiting trade"]
          ],
          0,
          "La tech permet de 'sauter des étapes' de développement pour rattraper le retard.",
          "Tech allows 'leapfrogging' development stages to catch up.",
          "L'Afrique a sauté l'étape du téléphone fixe pour aller directement au mobile.",
          "Africa skipped the landline phase to go directly to mobile.",
          "Développement numérique",
          ["développement", "tech"]),
      q(
          "t3_6r",
          "Quelle infrastructure technique Sankara a-t-il développée pour le développement rural ?",
          "What technical infrastructure did Sankara develop for rural development?",
          [
            [
              "Des puits, forages et systèmes d'irrigation construits par les populations elles-mêmes",
              "Wells, boreholes and irrigation systems built by the populations themselves"
            ],
            ["Des centres commerciaux", "Shopping centers"],
            ["Des usines de haute technologie", "High-tech factories"],
            ["Des aéroports régionaux", "Regional airports"]
          ],
          0,
          "Des milliers de puits et forages ont été creusés pour garantir l'eau potable aux villages.",
          "Thousands of wells and boreholes were drilled to guarantee drinking water for villages.",
          "La révolution misait sur des technologies simples, durables et maîtrisables localement.",
          "The revolution relied on simple, sustainable and locally manageable technologies.",
          "Technologies rurales",
          ["eau", "puits"]),
      q(
          "t3_7r",
          "Comment Sankara envisageait-il l'énergie solaire pour le Burkina ?",
          "How did Sankara envision solar energy for Burkina?",
          [
            [
              "Comme une énergie souveraine et adaptée au climat sahélien pour réduire la dépendance",
              "As a sovereign energy adapted to the Sahelian climate to reduce dependence"
            ],
            [
              "Comme trop chère pour le Burkina",
              "As too expensive for Burkina"
            ],
            [
              "Comme une technologie exclusivement étrangère",
              "As an exclusively foreign technology"
            ],
            [
              "Comme secondaire par rapport au pétrole",
              "As secondary compared to oil"
            ]
          ],
          0,
          "Sankara voyait dans le soleil une richesse naturelle que le Burkina devait exploiter.",
          "Sankara saw in the sun a natural wealth that Burkina should exploit.",
          "Il avait lancé des projets pilotes d'énergie solaire dans les années 1980.",
          "He had launched pilot solar energy projects in the 1980s.",
          "Énergie solaire",
          ["solaire", "énergie"]),
      q(
          "t3_8r",
          "Quelle maladie tropicale est endémique au Burkina Faso et transmise par l'eau ?",
          "What tropical disease is endemic in Burkina Faso and transmitted by water?",
          [
            ["La bilharziose", "Bilharzia (schistosomiasis)"],
            ["La malaria", "Malaria"],
            ["La dengue", "Dengue"],
            ["La fièvre jaune", "Yellow fever"]
          ],
          0,
          "La bilharziose (schistosomiase) est une maladie endémique au Burkina Faso transmise par l'eau.",
          "Bilharzia (schistosomiasis) is a disease endemic in Burkina Faso transmitted through water.",
          "La bilharziose est causée par des parasites présents dans les eaux douces stagnantes.",
          "Bilharzia is caused by parasites found in stagnant freshwater.",
          "Maladies tropicales",
          ["bilharziose", "eau"]),
      q(
          "t3_9r",
          "Qu'est-ce que la politique de la 'Case de santé' au Burkina Faso ?",
          "What is the 'Health Hut' policy in Burkina Faso?",
          [
            [
              "Petites structures de santé communautaires dans les villages",
              "Small community health structures in villages"
            ],
            [
              "Programme de soins intensifs dans les hôpitaux",
              "Intensive care program in hospitals"
            ],
            [
              "Service de soins mobiles en zones rurales",
              "Mobile care service in rural areas"
            ],
            [
              "Campagne de vaccination nationale",
              "National vaccination campaign"
            ]
          ],
          0,
          "Les cases de santé sont de petites structures communautaires qui offrent des soins de base dans les villages.",
          "Health huts are small community structures that provide basic care in villages.",
          "Elles sont souvent gérées par des agents de santé communautaires formés.",
          "They are often managed by trained community health workers.",
          "Santé communautaire",
          ["case de santé", "village"]),
      q(
          "t3_10r",
          "Qu'est-ce que le 'Mobile Money' et son impact au Burkina Faso ?",
          "What is 'Mobile Money' and its impact in Burkina Faso?",
          [
            [
              "Un service de paiement par téléphone mobile révolutionnant les transactions",
              "A mobile phone payment service revolutionizing transactions"
            ],
            ["Une boutique de vente de téléphones", "A phone shop"],
            ["Un réseau social mobile", "A mobile social network"],
            [
              "Un service de prêt bancaire classique",
              "A traditional bank loan service"
            ]
          ],
          0,
          "Le Mobile Money permet de transférer et recevoir de l'argent via le téléphone, accessible même sans compte bancaire.",
          "Mobile Money allows transferring and receiving money via phone, accessible even without a bank account.",
          "Orange Money et Moov Money sont les principales plateformes de Mobile Money au Burkina Faso.",
          "Orange Money and Moov Money are the main Mobile Money platforms in Burkina Faso.",
          "Fintech",
          ["Mobile Money", "paiement"]),
    ]),
    Level(number: 4, title: "IA & Big Data", isLocked: true, questions: [
      q(
          "t4_1",
          "Qu'est-ce que l'intelligence artificielle (IA) ?",
          "What is artificial intelligence (AI)?",
          [
            [
              "Des machines simulant l'intelligence humaine pour résoudre des problèmes",
              "Machines simulating human intelligence to solve problems"
            ],
            ["Des robots uniquement", "Only robots"],
            ["Des ordinateurs très rapides", "Very fast computers"],
            ["Internet des objets", "Internet of things"]
          ],
          0,
          "L'IA englobe des techniques comme l'apprentissage automatique et les réseaux de neurones.",
          "AI encompasses techniques such as machine learning and neural networks.",
          "L'IA est utilisée pour la détection des maladies, l'agriculture et la gouvernance en Afrique.",
          "AI is used for disease detection, agriculture and governance in Africa.",
          "IA",
          ["intelligence artificielle", "IA"]),
      q(
          "t4_2",
          "Qu'est-ce que le Big Data ?",
          "What is Big Data?",
          [
            [
              "D'énormes volumes de données analysés pour extraire des informations utiles",
              "Huge volumes of data analyzed to extract useful information"
            ],
            ["Un disque dur de grande capacité", "A large capacity hard drive"],
            ["Un réseau internet très rapide", "A very fast internet network"],
            ["Un logiciel de traitement de texte", "A word processing software"]
          ],
          0,
          "Le Big Data permet d'analyser des masses de données pour améliorer la prise de décision.",
          "Big Data allows analysis of data masses to improve decision-making.",
          "Les opérateurs de téléphonie utilisent le Big Data pour améliorer leurs services au Burkina.",
          "Telephone operators use Big Data to improve their services in Burkina.",
          "Données",
          ["big data", "données"]),
      q(
          "t4_3",
          "Qu'est-ce que la blockchain et ses applications possibles en Afrique ?",
          "What is blockchain and its possible applications in Africa?",
          [
            [
              "Un registre numérique décentralisé et sécurisé utilisable pour les paiements et contrats",
              "A decentralized and secure digital ledger usable for payments and contracts"
            ],
            [
              "Un type de cryptomonnaie uniquement",
              "Only a type of cryptocurrency"
            ],
            ["Un réseau social africain", "An African social network"],
            ["Un système de surveillance", "A surveillance system"]
          ],
          0,
          "La blockchain peut sécuriser les titres fonciers, les paiements et les élections en Afrique.",
          "Blockchain can secure land titles, payments and elections in Africa.",
          "Des startups africaines développent des solutions blockchain pour l'agriculture et la finance.",
          "African startups are developing blockchain solutions for agriculture and finance.",
          "Blockchain",
          ["blockchain", "cryptomonnaie"]),
      q(
          "t4_4",
          "Qu'est-ce que l'agriculture numérique au Burkina Faso ?",
          "What is digital agriculture in Burkina Faso?",
          [
            [
              "L'utilisation de technologies numériques pour améliorer la production agricole",
              "The use of digital technologies to improve agricultural production"
            ],
            [
              "La vente en ligne de produits agricoles uniquement",
              "Only online sales of agricultural products"
            ],
            ["L'agriculture sans eau", "Agriculture without water"],
            [
              "L'importation de machines agricoles",
              "Importation of agricultural machinery"
            ]
          ],
          0,
          "Des applications mobiles aident les agriculteurs burkinabè à améliorer leurs pratiques et accéder aux marchés.",
          "Mobile apps help Burkinabè farmers improve their practices and access markets.",
          "La startup burkinabè Sahelian Technologies développe des outils numériques pour les paysans.",
          "The Burkinabè startup Sahelian Technologies develops digital tools for farmers.",
          "Agriculture numérique",
          ["agriculture", "numérique"]),
      q(
          "t4_5",
          "Qu'est-ce que la cybersécurité et son importance au Burkina Faso ?",
          "What is cybersecurity and its importance in Burkina Faso?",
          [
            [
              "La protection des systèmes informatiques contre les attaques malveillantes",
              "The protection of computer systems against malicious attacks"
            ],
            [
              "La surveillance des citoyens sur internet",
              "Surveillance of citizens on the internet"
            ],
            ["Un logiciel antivirus uniquement", "Only antivirus software"],
            ["La censure d'internet", "Internet censorship"]
          ],
          0,
          "La cybersécurité protège les données bancaires, gouvernementales et personnelles des citoyens.",
          "Cybersecurity protects banking, government and personal data of citizens.",
          "Le Burkina Faso a créé une Agence Nationale de la Sécurité des Systèmes d'Information.",
          "Burkina Faso created a National Information Systems Security Agency.",
          "Cybersécurité",
          ["cybersécurité", "protection"]),
      q(
          "t4_6r",
          "Quelle approche Sankara avait-il sur les technologies importées vs locales ?",
          "What approach did Sankara have on imported vs local technologies?",
          [
            [
              "Privilégier les technologies locales et adaptées, tout en apprenant des technologies étrangères",
              "Prioritize local and adapted technologies while learning from foreign ones"
            ],
            [
              "Importer uniquement des technologies étrangères",
              "Import only foreign technologies"
            ],
            [
              "Rejeter toute technologie étrangère",
              "Reject all foreign technology"
            ],
            [
              "Se contenter des technologies traditionnelles",
              "Be content with traditional technologies"
            ]
          ],
          0,
          "Sankara prônait une technologie appropriée, ni trop avancée ni trop primitive, adaptée au contexte africain.",
          "Sankara advocated appropriate technology, neither too advanced nor too primitive, adapted to the African context.",
          "La charrue animale perfectionnée était préférable au tracteur importé non entretenu.",
          "An improved animal plow was preferable to an imported tractor that cannot be maintained.",
          "Technologie appropriée",
          ["technologie", "adaptation"]),
      q(
          "t4_7r",
          "Quel rôle les femmes avaient-elles dans les programmes de technologie rurale ?",
          "What role did women have in rural technology programs?",
          [
            [
              "Elles étaient formées aux techniques agricoles, à la transformation alimentaire et à l'artisanat",
              "They were trained in agricultural techniques, food processing and crafts"
            ],
            [
              "Elles étaient exclues des formations techniques",
              "They were excluded from technical training"
            ],
            [
              "Elles n'avaient que des rôles domestiques",
              "They only had domestic roles"
            ],
            [
              "Elles géraient uniquement les marchés",
              "They only managed markets"
            ]
          ],
          0,
          "La révolution formait spécifiquement les femmes aux techniques améliorant leur productivité.",
          "The revolution specifically trained women in techniques improving their productivity.",
          "Des moulins à grain ont remplacé le pilon manuel, libérant du temps pour les femmes.",
          "Grain mills replaced manual pestles, freeing up time for women.",
          "Femmes et technologie",
          ["femmes", "transformation"]),
      q(
          "t4_8r",
          "Quel est le taux de mortalité maternelle approximatif au Burkina Faso ?",
          "What is the approximate maternal mortality rate in Burkina Faso?",
          [
            [
              "Parmi les plus élevés au monde",
              "Among the highest in the world"
            ],
            ["Comparable à la France", "Comparable to France"],
            ["En dessous de la moyenne africaine", "Below the African average"],
            ["Quasiment nul", "Almost zero"]
          ],
          0,
          "Le taux de mortalité maternelle au Burkina Faso est parmi les plus élevés au monde.",
          "The maternal mortality rate in Burkina Faso is among the highest in the world.",
          "On estime ce taux à plus de 300 décès pour 100 000 naissances vivantes.",
          "This rate is estimated at more than 300 deaths per 100,000 live births.",
          "Santé maternelle",
          ["mortalité", "maternité"]),
      q(
          "t4_9r",
          "Quelle organisation internationale soutient principalement la lutte contre le VIH au Burkina Faso ?",
          "Which international organization mainly supports the fight against HIV in Burkina Faso?",
          [
            ["ONUSIDA", "UNAIDS"],
            ["OMS seule", "WHO alone"],
            ["UNICEF uniquement", "UNICEF only"],
            ["Médecins sans Frontières", "Doctors Without Borders"]
          ],
          0,
          "ONUSIDA (Programme commun des Nations Unies sur le VIH/Sida) soutient la lutte contre le VIH.",
          "UNAIDS (Joint United Nations Program on HIV/AIDS) supports the fight against HIV.",
          "Le taux de prévalence du VIH au Burkina Faso est inférieur à 1% de la population.",
          "The HIV prevalence rate in Burkina Faso is less than 1% of the population.",
          "Santé publique",
          ["VIH", "ONUSIDA"]),
      q(
          "t4_10r",
          "Quel est le principal défi de la cybersécurité au Burkina Faso ?",
          "What is the main cybersecurity challenge in Burkina Faso?",
          [
            [
              "La protection des infrastructures critiques et la lutte contre les cyberattaques",
              "Protection of critical infrastructure and fighting cyberattacks"
            ],
            [
              "L'excès de protection qui bloque l'accès à Internet",
              "Excess protection that blocks Internet access"
            ],
            ["Le manque d'utilisateurs d'Internet", "Lack of Internet users"],
            ["La régulation des vidéos YouTube", "Regulation of YouTube videos"]
          ],
          0,
          "La cybersécurité est un enjeu croissant pour protéger les données gouvernementales et financières des cyberattaques.",
          "Cybersecurity is a growing challenge to protect government and financial data from cyberattacks.",
          "Le Burkina Faso a adopté une stratégie nationale de cybersécurité pour renforcer ses défenses numériques.",
          "Burkina Faso has adopted a national cybersecurity strategy to strengthen its digital defenses.",
          "Cybersécurité",
          ["cybersécurité", "protection"]),
    ]),
    Level(number: 5, title: "Génie Tech", isLocked: true, questions: [
      q(
          "t5_1",
          "Qu'est-ce que le déploiement de la 5G en Afrique de l'Ouest ?",
          "What is the deployment of 5G in West Africa?",
          [
            [
              "Un réseau mobile de nouvelle génération très rapide encore limité au Burkina Faso",
              "A fast new generation mobile network still limited in Burkina Faso"
            ],
            [
              "Un réseau déjà disponible dans tout le Burkina",
              "A network already available throughout Burkina"
            ],
            [
              "Un réseau uniquement pour les entreprises",
              "A network only for businesses"
            ],
            ["Un réseau identique à la 4G", "A network identical to 4G"]
          ],
          0,
          "La 5G est en cours de déploiement en Afrique mais reste limitée aux grandes villes pour l'instant.",
          "5G is being deployed in Africa but remains limited to major cities for now.",
          "Le Burkina Faso mise sur l'amélioration de la 4G avant d'envisager la 5G généralisée.",
          "Burkina Faso focuses on improving 4G before considering widespread 5G.",
          "Télécommunications",
          ["5G", "réseau"]),
      q(
          "t5_2",
          "Qu'est-ce que l'écosystème startup au Burkina Faso ?",
          "What is the startup ecosystem in Burkina Faso?",
          [
            [
              "Un réseau d'entrepreneurs innovants en croissance, surtout dans la fintech et l'agritech",
              "A growing network of innovative entrepreneurs, especially in fintech and agritech"
            ],
            ["Un secteur industriel classique", "A classic industrial sector"],
            [
              "Un programme gouvernemental de nationalisation",
              "A government nationalization program"
            ],
            [
              "Un marché uniquement pour les grandes entreprises",
              "A market only for large companies"
            ]
          ],
          0,
          "Des incubateurs comme Ouaga Lab et le hub Yiibi soutiennent les startups burkinabè.",
          "Incubators like Ouaga Lab and the Yiibi hub support Burkinabè startups.",
          "La fintech et l'agritech sont les secteurs les plus dynamiques des startups au Burkina.",
          "Fintech and agritech are the most dynamic startup sectors in Burkina.",
          "Startups",
          ["startup", "innovation"]),
      q(
          "t5_3",
          "Qu'est-ce que l'énergie solaire et son potentiel au Burkina Faso ?",
          "What is solar energy and its potential in Burkina Faso?",
          [
            [
              "Une énergie renouvelable exploitant l'ensoleillement exceptionnel du Burkina",
              "A renewable energy exploiting Burkina's exceptional sunshine"
            ],
            [
              "Une énergie trop coûteuse pour le Burkina",
              "An energy too costly for Burkina"
            ],
            [
              "Une technologie réservée aux pays riches",
              "A technology reserved for rich countries"
            ],
            [
              "Un projet sans avenir au Sahel",
              "A project with no future in the Sahel"
            ]
          ],
          0,
          "Le Burkina bénéficie de 2500-3000h d'ensoleillement/an, l'un des meilleurs potentiels mondiaux.",
          "Burkina benefits from 2500-3000h of sunshine/year, one of the best global potentials.",
          "La centrale solaire de Zagtouli (33 MW) est l'une des plus grandes d'Afrique subsaharienne.",
          "The Zagtouli solar plant (33 MW) is one of the largest in sub-Saharan Africa.",
          "Énergie renouvelable",
          ["solaire", "énergie"]),
      q(
          "t5_4",
          "Qu'est-ce que la e-santé et ses applications au Burkina Faso ?",
          "What is e-health and its applications in Burkina Faso?",
          [
            [
              "L'utilisation des technologies numériques pour améliorer les soins de santé",
              "The use of digital technologies to improve healthcare"
            ],
            [
              "Des soins médicaux uniquement en ligne",
              "Medical care only online"
            ],
            [
              "Un remplacement des médecins par des robots",
              "A replacement of doctors by robots"
            ],
            [
              "Un système sans applicabilité en Afrique",
              "A system with no applicability in Africa"
            ]
          ],
          0,
          "Des applications mobiles permettent des consultations à distance dans les zones rurales reculées.",
          "Mobile apps enable remote consultations in remote rural areas.",
          "La e-santé aide à surveiller les maladies comme le paludisme et la malnutrition en temps réel.",
          "E-health helps monitor diseases like malaria and malnutrition in real time.",
          "E-santé",
          ["e-santé", "numérique"]),
      q(
          "t5_5",
          "Qu'est-ce que l'accès à internet et ses défis au Burkina Faso ?",
          "What is internet access and its challenges in Burkina Faso?",
          [
            [
              "Un taux de pénétration d'environ 20-30%, freiné par le coût et les infrastructures",
              "A penetration rate of about 20-30%, hindered by cost and infrastructure"
            ],
            [
              "Un accès universel pour tous les citoyens",
              "Universal access for all citizens"
            ],
            [
              "Un accès limité aux entreprises uniquement",
              "Access limited to businesses only"
            ],
            ["Un taux de 80% de pénétration", "A penetration rate of 80%"]
          ],
          0,
          "Le faible accès à internet freine la transformation numérique et l'accès aux services en ligne.",
          "Low internet access hinders digital transformation and access to online services.",
          "Des initiatives comme le réseau national haut débit visent à connecter les zones rurales.",
          "Initiatives like the national broadband network aim to connect rural areas.",
          "Internet",
          ["internet", "accès"]),
      q(
          "t5_6r",
          "En quoi l'approche technologique de Sankara était-elle visionnaire ?",
          "How was Sankara's technological approach visionary?",
          [
            [
              "Il misait sur l'énergie solaire et les technologies durables avant que ce soit à la mode",
              "He bet on solar energy and sustainable technologies before it was fashionable"
            ],
            [
              "Il était contre toute modernisation",
              "He was against any modernization"
            ],
            [
              "Il copiait les technologies soviétiques",
              "He copied Soviet technologies"
            ],
            [
              "Il dépendait entièrement des technologies occidentales",
              "He was entirely dependent on Western technologies"
            ]
          ],
          0,
          "Sankara avait compris dès les années 1980 que l'Afrique devait développer ses propres solutions technologiques.",
          "Sankara understood in the 1980s that Africa had to develop its own technological solutions.",
          "Il parlait déjà d'énergie propre, de développement durable et de souveraineté technologique.",
          "He already spoke of clean energy, sustainable development and technological sovereignty.",
          "Vision technologique",
          ["vision", "durabilité"]),
      q(
          "t5_7r",
          "Comment la révolution sankariste inspire-t-elle les innovateurs africains aujourd'hui ?",
          "How does the Sankarist revolution inspire African innovators today?",
          [
            [
              "En montrant qu'on peut innover avec peu de moyens pour résoudre des problèmes locaux",
              "By showing that one can innovate with few resources to solve local problems"
            ],
            ["En décourageant l'innovation", "By discouraging innovation"],
            [
              "En prouvant que l'Afrique ne peut pas innover",
              "By proving that Africa cannot innovate"
            ],
            [
              "En limitant la créativité africaine",
              "By limiting African creativity"
            ]
          ],
          0,
          "De nombreux innovateurs africains se réclament de l'héritage sankariste de débrouillardise et d'autosuffisance.",
          "Many African innovators claim the Sankarist legacy of resourcefulness and self-sufficiency.",
          "Le mouvement maker africain s'inscrit dans cette tradition de créativité locale.",
          "The African maker movement is part of this tradition of local creativity.",
          "Innovation africaine",
          ["innovation", "héritage"]),
      q(
          "t5_8r",
          "Qu'est-ce que le 'Burkina Faso Health Fund' initié dans les années 2000 ?",
          "What is the 'Burkina Faso Health Fund' initiated in the 2000s?",
          [
            [
              "Un fonds national pour financer les soins de santé",
              "A national fund to finance health care"
            ],
            ["Une ONG étrangère d'aide médicale", "A foreign medical aid NGO"],
            [
              "Un programme de formation des médecins",
              "A doctor training program"
            ],
            [
              "Un système d'assurance maladie privé",
              "A private health insurance system"
            ]
          ],
          0,
          "Le fonds national de santé vise à améliorer l'accès aux soins et à financer le système de santé.",
          "The national health fund aims to improve access to care and finance the health system.",
          "Le financement de la santé reste un défi majeur pour le Burkina Faso.",
          "Health financing remains a major challenge for Burkina Faso.",
          "Financement de la santé",
          ["fonds", "santé"]),
      q(
          "t5_9r",
          "Quelle est la principale cause de malnutrition chez les enfants au Burkina Faso ?",
          "What is the main cause of malnutrition in children in Burkina Faso?",
          [
            [
              "La pauvreté et l'insécurité alimentaire",
              "Poverty and food insecurity"
            ],
            ["La surpopulation urbaine", "Urban overpopulation"],
            [
              "Le manque d'eau potable uniquement",
              "Lack of drinking water alone"
            ],
            ["Les guerres locales", "Local wars"]
          ],
          0,
          "La pauvreté et l'insécurité alimentaire sont les principales causes de malnutrition infantile.",
          "Poverty and food insecurity are the main causes of child malnutrition.",
          "La malnutrition affecte le développement cognitif et physique des enfants.",
          "Malnutrition affects children's cognitive and physical development.",
          "Nutrition",
          ["malnutrition", "pauvreté"]),
      q(
          "t5_10r",
          "Comment les drones sont-ils utilisés dans le développement du Burkina Faso ?",
          "How are drones used in Burkina Faso's development?",
          [
            [
              "Livraison médicale, surveillance agricole et cartographie",
              "Medical delivery, agricultural monitoring and mapping"
            ],
            ["Uniquement pour des usages militaires", "Only for military uses"],
            [
              "Pour des spectacles de divertissement",
              "For entertainment shows"
            ],
            [
              "Ils sont interdits au Burkina Faso",
              "They are banned in Burkina Faso"
            ]
          ],
          0,
          "Les drones sont utilisés pour livrer des médicaments en zones reculées, surveiller les cultures et cartographier le territoire.",
          "Drones are used to deliver medicines to remote areas, monitor crops and map the territory.",
          "Le projet Zipline a utilisé des drones pour livrer du sang et des médicaments dans des zones difficiles d'accès.",
          "The Zipline project has used drones to deliver blood and medicines in hard-to-reach areas.",
          "Innovation technologique",
          ["drones", "livraison"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  SPORTS
  // ════════════════════════════════════════════════
  "Sports": [
    Level(
        number: 1,
        title: "Règles Fondamentales",
        isLocked: false,
        questions: [
          q(
              "sp1_1",
              "Combien de joueurs par équipe sur le terrain au football ?",
              "How many players per team on the field in football?",
              [
                ["11", "11"],
                ["5", "5"],
                ["7", "7"],
                ["15", "15"]
              ],
              0,
              "Le football se joue à 11 contre 11 sur un terrain rectangulaire.",
              "Football is played 11 vs 11 on a rectangular field.",
              "C'est le sport le plus populaire dans le monde avec plus de 4 milliards de fans.",
              "It is the most popular sport in the world with over 4 billion fans.",
              "FIFA",
              ["football", "règles"]),
          q(
              "sp1_2",
              "Quel est le surnom de l'équipe nationale de football du Burkina Faso ?",
              "What is the nickname of Burkina Faso's national team?",
              [
                ["Les Étalons", "The Stallions"],
                ["Les Lions", "The Lions"],
                ["Les Aigles", "The Eagles"],
                ["Les Crocodiles", "The Crocodiles"]
              ],
              0,
              "Les Étalons font référence à l'étalon, symbole animal national du Burkina Faso.",
              "The Stallions refer to the stallion, Burkina Faso's national animal symbol.",
              "Les Étalons ont brillamment atteint la finale de la CAN 2013.",
              "The Stallions brilliantly reached the 2013 AFCON final.",
              "Football burkinabè",
              ["Étalons", "football"]),
          q(
              "sp1_3",
              "Combien de temps dure un match de football réglementaire ?",
              "How long does a regulation football match last?",
              [
                ["90 minutes", "90 minutes"],
                ["60 minutes", "60 minutes"],
                ["120 minutes", "120 minutes"],
                ["45 minutes", "45 minutes"]
              ],
              0,
              "Un match dure 90 minutes, divisé en deux mi-temps de 45 minutes.",
              "A match lasts 90 minutes, divided into two 45-minute halves.",
              "En cas d'égalité, des prolongations de 2×15 min et des tirs au but sont possibles.",
              "In case of a draw, 2×15 min extra time and penalty shootouts are possible.",
              "FIFA",
              ["football", "durée"]),
          q(
              "sp1_4",
              "Qu'est-ce que la CAN ?",
              "What is the AFCON?",
              [
                [
                  "Coupe d'Afrique des Nations de football",
                  "Africa Cup of Nations football"
                ],
                [
                  "Championnat Africain de Natation",
                  "African Swimming Championship"
                ],
                ["Coupe Africaine de Netball", "African Netball Cup"],
                ["Concours Athlétique National", "National Athletic Contest"]
              ],
              0,
              "La CAN est la plus grande compétition de football national en Afrique.",
              "AFCON is the largest national football competition in Africa.",
              "La CAF organise la CAN, qui se tient désormais tous les deux ans.",
              "CAF organizes AFCON, which is now held every two years.",
              "CAF",
              ["CAN", "football africain"]),
          q(
              "sp1_5",
              "Quel sport est pratiqué partout au Burkina Faso ?",
              "Which sport is practiced everywhere in Burkina Faso?",
              [
                ["Le football", "Football"],
                ["Le ski", "Skiing"],
                ["La natation", "Swimming"],
                ["Le hockey sur glace", "Ice hockey"]
              ],
              0,
              "Le football est pratiqué dans toutes les rues, quartiers et villages du pays.",
              "Football is played in all streets, neighborhoods and villages of the country.",
              "De nombreux joueurs burkinabè évoluent en Europe et notamment en France.",
              "Many Burkinabè players play in Europe, particularly in France.",
              "Culture sportive",
              ["football", "populaire"]),
          q(
              "sp1_6r",
              "Comment Sankara voyait-il le sport dans la révolution ?",
              "How did Sankara view sport in the revolution?",
              [
                [
                  "Le sport comme outil de santé populaire, de cohésion nationale et de fierté africaine",
                  "Sport as a tool of popular health, national cohesion and African pride"
                ],
                [
                  "Le sport comme distraction de la révolution",
                  "Sport as a distraction from the revolution"
                ],
                [
                  "Le sport comme réservé aux élites",
                  "Sport as reserved for elites"
                ],
                [
                  "Le sport comme uniquement militaire",
                  "Sport as only military"
                ]
              ],
              0,
              "Sankara encourageait la pratique sportive populaire comme moyen de forger un peuple fort et uni.",
              "Sankara encouraged popular sports practice as a way to forge a strong and united people.",
              "Il était lui-même sportif et pratiquait le jogging et le cyclisme.",
              "He was himself athletic and practiced jogging and cycling.",
              "Sport révolutionnaire",
              ["sport", "Sankara"]),
          q(
              "sp1_7r",
              "Quel sport collectif Sankara privilégiait-il pour forger l'esprit d'équipe révolutionnaire ?",
              "What team sport did Sankara favor to forge the revolutionary team spirit?",
              [
                [
                  "Le football comme sport populaire fédérateur pour toutes les couches sociales",
                  "Football as a popular unifying sport for all social classes"
                ],
                ["Le polo réservé aux élites", "Polo reserved for elites"],
                [
                  "La natation dans les piscines privées",
                  "Swimming in private pools"
                ],
                [
                  "Le golf comme symbole de réussite",
                  "Golf as a symbol of success"
                ]
              ],
              0,
              "Sankara voyait le football comme un sport du peuple capable de transcender les clivages sociaux.",
              "Sankara saw football as a people's sport capable of transcending social divisions.",
              "Il jouait lui-même au football avec ses soldats et ses ministres.",
              "He himself played football with his soldiers and ministers.",
              "Football populaire",
              ["football", "cohésion"]),
          q(
              "sp1_8r",
              "Quel sport traditionnel burkinabè consiste en des combats à mains nues ?",
              "What traditional Burkinabè sport consists of bare-handed combat?",
              [
                [
                  "La lutte traditionnelle (Simbo)",
                  "Traditional wrestling (Simbo)"
                ],
                ["Le judo", "Judo"],
                ["La boxe", "Boxing"],
                ["Le karaté", "Karate"]
              ],
              0,
              "La lutte traditionnelle (Simbo) est un sport ancestral très populaire dans de nombreuses communautés burkinabè.",
              "Traditional wrestling (Simbo) is an ancestral sport very popular in many Burkinabè communities.",
              "Les compétitions de lutte traditionnelle se tiennent lors des fêtes et cérémonies culturelles.",
              "Traditional wrestling competitions are held during cultural festivals and ceremonies.",
              "Sports traditionnels",
              ["lutte", "tradition"]),
          q(
              "sp1_9r",
              "Quel athlète burkinabè est devenu champion du monde de cyclisme ?",
              "Which Burkinabè athlete became world cycling champion?",
              [
                ["Mathieu Barro", "Mathieu Barro"],
                ["Idrissa Simporé", "Idrissa Simporé"],
                ["Dramane Dao", "Dramane Dao"],
                ["Blaise Compaoré", "Blaise Compaoré"]
              ],
              1,
              "Idrissa Simporé a représenté le Burkina Faso dans des compétitions cyclistes internationales majeures.",
              "Idrissa Simporé represented Burkina Faso in major international cycling competitions.",
              "Le cyclisme est populaire au Burkina Faso notamment lors du Tour du Faso.",
              "Cycling is popular in Burkina Faso especially during the Tour du Faso.",
              "Cyclisme burkinabè",
              ["cyclisme", "champion"]),
          q(
              "sp1_10r",
              "Quel club de football est le plus populaire à Ouagadougou ?",
              "Which football club is most popular in Ouagadougou?",
              [
                [
                  "ASFA-Yennenga (Association Sportive des Forces Armées)",
                  "ASFA-Yennenga (Armed Forces Sports Association)"
                ],
                ["Le Real Madrid Burkina", "Real Madrid Burkina"],
                ["L'Étoile Rouge de Ouaga", "The Red Star of Ouaga"],
                ["FC Ouagadougou United", "FC Ouagadougou United"]
              ],
              0,
              "L'ASFA-Yennenga est l'un des clubs de football les plus titrés et populaires au Burkina Faso.",
              "ASFA-Yennenga is one of the most successful and popular football clubs in Burkina Faso.",
              "Yennenga est aussi le nom de la princesse légendaire fondatrice de l'empire Mossi.",
              "Yennenga is also the name of the legendary princess founder of the Mossi empire.",
              "Football burkinabè",
              ["ASFA", "Yennenga"]),
        ]),
    Level(number: 2, title: "Sport et Société", isLocked: true, questions: [
      q(
          "sp2_1",
          "Quel rôle joue le sport dans le développement d'un pays ?",
          "What role does sport play in a country's development?",
          [
            [
              "Promotion de la santé, cohésion sociale et rayonnement international",
              "Promotion of health, social cohesion and international influence"
            ],
            ["Aucun rôle économique ou social", "No economic or social role"],
            [
              "Uniquement un divertissement pour riches",
              "Only entertainment for the wealthy"
            ],
            ["Division des communautés", "Division of communities"]
          ],
          0,
          "Le sport favorise la santé publique, l'unité nationale et le développement économique.",
          "Sport promotes public health, national unity and economic development.",
          "Les grands événements sportifs génèrent des milliards de dollars d'activité économique.",
          "Major sporting events generate billions of dollars of economic activity.",
          "Sport & développement",
          ["sport", "société"]),
      q(
          "sp2_2",
          "Qu'est-ce que l'athlétisme ?",
          "What is athletics?",
          [
            [
              "Ensemble de disciplines sportives incluant course, saut et lancer",
              "Set of sports disciplines including running, jumping and throwing"
            ],
            ["Un sport d'équipe uniquement", "A team sport only"],
            ["Un sport nautique", "A water sport"],
            ["Un art martial", "A martial art"]
          ],
          0,
          "L'athlétisme est l'un des sports les plus anciens, pratiqué aux Jeux Olympiques.",
          "Athletics is one of the oldest sports, practiced at the Olympic Games.",
          "Des athlètes africains dominent les épreuves de fond aux Jeux Olympiques.",
          "African athletes dominate long-distance events at the Olympic Games.",
          "Athlétisme",
          ["athlétisme", "olympique"]),
      q(
          "sp2_3",
          "Qu'est-ce que les Jeux Africains ?",
          "What are the African Games?",
          [
            [
              "Compétition multisports panafricaine organisée tous les 4 ans",
              "Pan-African multi-sport competition held every 4 years"
            ],
            [
              "Un championnat de football uniquement",
              "A football championship only"
            ],
            ["Les Jeux Olympiques africains", "The African Olympic Games"],
            ["Un festival culturel", "A cultural festival"]
          ],
          0,
          "Les Jeux Africains réunissent des athlètes de tout le continent.",
          "The African Games bring together athletes from across the continent.",
          "La première édition s'est tenue à Brazzaville au Congo en 1965.",
          "The first edition was held in Brazzaville, Congo in 1965.",
          "Sport africain",
          ["Jeux Africains", "compétition"]),
      q(
          "sp2_4",
          "Qu'est-ce que le fair-play ?",
          "What is fair play?",
          [
            [
              "Respect des règles, des adversaires et de l'esprit sportif",
              "Respect for rules, opponents and sporting spirit"
            ],
            ["Gagner à tout prix", "Winning at all costs"],
            ["Tricher discrètement", "Cheating discreetly"],
            ["Ignorer les arbitres", "Ignoring referees"]
          ],
          0,
          "Le fair-play est une valeur fondamentale du sport qui promeut le respect.",
          "Fair play is a fundamental sporting value that promotes respect.",
          "Le Comité International Olympique promeut le fair-play dans tous les sports.",
          "The International Olympic Committee promotes fair play in all sports.",
          "Éthique sportive",
          ["fair-play", "respect"]),
      q(
          "sp2_5",
          "Quel sport traditionnel est pratiqué au Burkina Faso ?",
          "Which traditional sport is practiced in Burkina Faso?",
          [
            ["La lutte traditionnelle", "Traditional wrestling"],
            ["Le curling", "Curling"],
            ["Le polo", "Polo"],
            ["L'escalade", "Climbing"]
          ],
          0,
          "La lutte traditionnelle est pratiquée dans de nombreuses communautés burkinabè.",
          "Traditional wrestling is practiced in many Burkinabè communities.",
          "Elle fait partie des fêtes et cérémonies culturelles importantes.",
          "It is part of important cultural festivals and ceremonies.",
          "Traditions sportives",
          ["lutte", "traditionnel"]),
      q(
          "sp2_6r",
          "Quelle compétition sportive importante Sankara a-t-il soutenue ?",
          "What important sporting competition did Sankara support?",
          [
            [
              "Le Tour du Faso, course cycliste symbolisant l'effort collectif et la fierté nationale",
              "The Tour du Faso, a cycling race symbolizing collective effort and national pride"
            ],
            ["Les Jeux Olympiques uniquement", "Only the Olympic Games"],
            [
              "La Coupe d'Afrique des Nations exclusivement",
              "The Africa Cup of Nations exclusively"
            ],
            ["Les championnats militaires", "Military championships"]
          ],
          0,
          "Le Tour du Faso, né sous la révolution, est devenu un symbole de la résistance et de la fierté burkinabè.",
          "The Tour du Faso, born under the revolution, became a symbol of Burkinabè resistance and pride.",
          "Il attire aujourd'hui des cyclistes africains et internationaux.",
          "It now attracts African and international cyclists.",
          "Tour du Faso",
          ["cyclisme", "Tour du Faso"]),
      q(
          "sp2_7r",
          "Comment Sankara liait-il sport et émancipation des femmes ?",
          "How did Sankara link sport and women's emancipation?",
          [
            [
              "Il encourageait les femmes à pratiquer le sport et à participer aux compétitions",
              "He encouraged women to practice sport and participate in competitions"
            ],
            [
              "Il interdisait aux femmes le sport",
              "He banned women from sport"
            ],
            [
              "Il réservait le sport aux hommes dans l'armée",
              "He reserved sport for men in the army"
            ],
            [
              "Il n'avait aucune politique sportive pour les femmes",
              "He had no sports policy for women"
            ]
          ],
          0,
          "La révolution promouvait le sport féminin comme partie intégrante de l'émancipation des femmes.",
          "The revolution promoted women's sport as an integral part of women's emancipation.",
          "Des équipes féminines de football et d'athlétisme furent créées sous la révolution.",
          "Women's football and athletics teams were created under the revolution.",
          "Sport féminin",
          ["femmes", "sport"]),
      q(
          "sp2_8r",
          "Quelle compétition cycliste internationale se tient au Burkina Faso chaque année ?",
          "What international cycling competition takes place in Burkina Faso each year?",
          [
            ["Le Tour du Faso", "The Tour du Faso"],
            ["Le Tour de France", "Tour de France"],
            ["La Vuelta Africaine", "African Vuelta"],
            ["Le Grand Prix de Ouagadougou", "Ouagadougou Grand Prix"]
          ],
          0,
          "Le Tour du Faso est une course cycliste internationale organisée chaque année au Burkina Faso.",
          "The Tour du Faso is an international cycling race organized annually in Burkina Faso.",
          "Le Tour du Faso attire des cyclistes de nombreux pays africains et du monde.",
          "The Tour du Faso attracts cyclists from many African countries and worldwide.",
          "Cyclisme",
          ["Tour du Faso", "cyclisme"]),
      q(
          "sp2_9r",
          "Quel est le meilleur résultat des Étalons du Burkina à la Coupe d'Afrique des Nations ?",
          "What is Burkina Faso's Étalons best result at the Africa Cup of Nations?",
          [
            ["Finaliste en 2013", "Runners-up in 2013"],
            ["Champion en 2012", "Champion in 2012"],
            ["Demi-finaliste en 2019", "Semi-finalist in 2019"],
            ["Premier tour uniquement", "First round only"]
          ],
          0,
          "Les Étalons du Burkina Faso ont atteint la finale de la CAN 2013, leur meilleur résultat historique.",
          "Burkina Faso's Étalons reached the final of AFCON 2013, their best historical result.",
          "En 2013, les Étalons ont perdu la finale contre le Nigeria.",
          "In 2013, the Étalons lost the final against Nigeria.",
          "Football burkinabè",
          ["CAN", "Étalons"]),
      q(
          "sp2_10r",
          "Quel Burkinabè a marqué l'histoire du cyclisme africain ?",
          "Which Burkinabè has marked the history of African cycling?",
          [
            [
              "Abdoulaye Barro, multiple champion d'Afrique",
              "Abdoulaye Barro, multiple African champion"
            ],
            [
              "Didier Traoré, médaillé olympique",
              "Didier Traoré, Olympic medallist"
            ],
            [
              "Lamine Coulibaly, recordman du monde",
              "Lamine Coulibaly, world record holder"
            ],
            [
              "Paul Sawadogo, champion du Tour de France",
              "Paul Sawadogo, Tour de France champion"
            ]
          ],
          0,
          "Abdoulaye Barro et d'autres cyclistes burkinabès ont brillé sur le circuit cycliste africain notamment au Tour du Faso.",
          "Abdoulaye Barro and other Burkinabè cyclists have shone on the African cycling circuit especially at the Tour du Faso.",
          "Le Tour du Faso, créé en 1987, est l'une des courses cyclistes les plus prestigieuses d'Afrique.",
          "The Tour du Faso, created in 1987, is one of Africa's most prestigious cycling races.",
          "Cyclisme",
          ["Tour du Faso", "Barro"]),
    ]),
    Level(
        number: 3,
        title: "Champions et Compétitions",
        isLocked: true,
        questions: [
          q(
              "sp3_1",
              "En quelle année les Étalons ont-ils atteint la finale de la CAN ?",
              "In what year did the Stallions reach the AFCON final?",
              [
                ["2013", "2013"],
                ["2010", "2010"],
                ["2017", "2017"],
                ["2021", "2021"]
              ],
              0,
              "En 2013, le Burkina Faso a atteint la finale de la CAN au Mali, perdant contre le Nigeria.",
              "In 2013, Burkina Faso reached the AFCON final in Mali, losing to Nigeria.",
              "Ce fut le meilleur résultat de l'équipe nationale dans l'histoire de la CAN.",
              "This was the national team's best result in AFCON history.",
              "Football burkinabè",
              ["CAN 2013", "Étalons"]),
          q(
              "sp3_2",
              "Qu'est-ce qu'un arbitre dans un match de football ?",
              "What is a referee in a football match?",
              [
                [
                  "Officiel chargé de faire respecter les règles du jeu",
                  "Official responsible for enforcing the rules of play"
                ],
                ["Un joueur remplaçant", "A substitute player"],
                ["Un spectateur spécial", "A special spectator"],
                ["Un entraîneur adjoint", "An assistant coach"]
              ],
              0,
              "L'arbitre est l'autorité suprême sur le terrain, assisté par deux arbitres de touche.",
              "The referee is the supreme authority on the field, assisted by two linesmen.",
              "La VAR (Video Assistant Referee) aide désormais les arbitres dans les grandes compétitions.",
              "VAR (Video Assistant Referee) now helps referees in major competitions.",
              "Règles FIFA",
              ["arbitre", "règles"]),
          q(
              "sp3_3",
              "Combien de fois l'Afrique a-t-elle organisé la Coupe du Monde de football ?",
              "How many times has Africa hosted the FIFA World Cup?",
              [
                [
                  "Une seule fois (2010, Afrique du Sud)",
                  "Once (2010, South Africa)"
                ],
                ["Jamais", "Never"],
                ["Deux fois", "Twice"],
                ["Trois fois", "Three times"]
              ],
              0,
              "L'Afrique du Sud a été le premier pays africain à organiser la Coupe du Monde en 2010.",
              "South Africa was the first African country to host the World Cup in 2010.",
              "Le Maroc organisera la Coupe du Monde 2030 avec l'Espagne et le Portugal.",
              "Morocco will co-host the 2030 World Cup with Spain and Portugal.",
              "Histoire du football",
              ["Coupe du Monde", "Afrique"]),
          q(
              "sp3_4",
              "Qu'est-ce que le basketball ?",
              "What is basketball?",
              [
                [
                  "Sport collectif où deux équipes de 5 marquent en envoyant un ballon dans un panier",
                  "Team sport where two teams of 5 score by shooting a ball into a basket"
                ],
                ["Sport de raquette", "A racket sport"],
                ["Sport de combat", "A combat sport"],
                ["Sport nautique", "A water sport"]
              ],
              0,
              "Le basketball est très populaire en Afrique de l'Ouest, notamment au Sénégal.",
              "Basketball is very popular in West Africa, particularly in Senegal.",
              "Plusieurs joueurs d'Afrique de l'Ouest évoluent en NBA.",
              "Several West African players play in the NBA.",
              "Basketball",
              ["basketball", "sport collectif"]),
          q(
              "sp3_5",
              "Quel est l'objectif principal du Comité International Olympique ?",
              "What is the main objective of the International Olympic Committee?",
              [
                [
                  "Organiser les Jeux Olympiques et promouvoir le sport mondial",
                  "Organize the Olympic Games and promote world sport"
                ],
                ["Gérer les équipes nationales", "Manage national teams"],
                ["Vendre des droits télévisés", "Sell television rights"],
                ["Former des arbitres", "Train referees"]
              ],
              0,
              "Le CIO organise les JO d'été et d'hiver tous les 4 ans sur des sites différents.",
              "The IOC organizes the Summer and Winter Olympics every 4 years at different locations.",
              "La devise olympique est 'Plus vite, Plus haut, Plus fort - Ensemble'.",
              "The Olympic motto is 'Faster, Higher, Stronger - Together'.",
              "Olympisme",
              ["CIO", "Jeux Olympiques"]),
          q(
              "sp3_6r",
              "Quel lien Sankara établissait-il entre sport et santé populaire ?",
              "What link did Sankara establish between sport and popular health?",
              [
                [
                  "Le sport était un moyen de maintenir la santé du peuple sans médicaments coûteux",
                  "Sport was a means of maintaining people's health without expensive medicines"
                ],
                [
                  "Le sport n'avait pas de lien avec la santé",
                  "Sport had no link to health"
                ],
                [
                  "Le sport était uniquement une distraction",
                  "Sport was only a distraction"
                ],
                [
                  "Le sport était réservé aux malades",
                  "Sport was reserved for the sick"
                ]
              ],
              0,
              "Sankara disait qu'un peuple sportif est un peuple sain, résistant et capable de défendre sa révolution.",
              "Sankara said that a sporting people is a healthy people, resistant and capable of defending its revolution.",
              "Il encourageait le jogging matinal et les activités physiques collectives.",
              "He encouraged morning jogging and collective physical activities.",
              "Sport et santé",
              ["santé", "sport"]),
          q(
              "sp3_7r",
              "Quel message Sankara envoyait-il en faisant du jogging avec ses ministres ?",
              "What message did Sankara send by jogging with his ministers?",
              [
                [
                  "L'humilité du dirigeant qui partage les efforts du peuple ordinaire",
                  "The humility of the leader who shares the efforts of ordinary people"
                ],
                [
                  "La supériorité physique des dirigeants",
                  "The physical superiority of leaders"
                ],
                [
                  "Un message militaire d'entraînement",
                  "A military training message"
                ],
                ["Un message religieux", "A religious message"]
              ],
              0,
              "Sankara faisait du jogging matinal en public, accessible à tous, montrant l'égalité entre dirigeants et peuple.",
              "Sankara jogged publicly in the morning, accessible to all, showing equality between leaders and people.",
              "Ce geste symbolisait le refus des privilèges et de la distance entre gouvernants et gouvernés.",
              "This gesture symbolized the refusal of privileges and distance between rulers and the ruled.",
              "Égalitarisme révolutionnaire",
              ["humilité", "jogging"]),
          q(
              "sp3_8r",
              "Quelle équipe féminine burkinabè a marqué l'histoire du sport national ?",
              "Which Burkinabè women's team has marked the history of national sport?",
              [
                [
                  "Les Étalons féminines de football",
                  "Women's Étalons football team"
                ],
                ["L'équipe féminine de handball", "Women's handball team"],
                ["L'équipe féminine de basketball", "Women's basketball team"],
                ["Les nageuses nationales", "National swimmers"]
              ],
              0,
              "Les Étalons féminines ont fait progresser le football féminin au Burkina Faso.",
              "The Women's Étalons have advanced women's football in Burkina Faso.",
              "Le sport féminin se développe progressivement au Burkina Faso avec le soutien des fédérations.",
              "Women's sport is gradually developing in Burkina Faso with the support of federations.",
              "Sport féminin",
              ["femmes", "football"]),
          q(
              "sp3_9r",
              "Quel sport d'équipe est populaire dans les lycées et universités burkinabès ?",
              "What team sport is popular in Burkinabè high schools and universities?",
              [
                ["Le basketball", "Basketball"],
                ["Le golf", "Golf"],
                ["Le polo", "Polo"],
                ["La natation", "Swimming"]
              ],
              0,
              "Le basketball est très populaire dans les établissements scolaires et universitaires du Burkina Faso.",
              "Basketball is very popular in Burkinabè schools and universities.",
              "Des ligues scolaires de basketball sont organisées dans toutes les grandes villes.",
              "School basketball leagues are organized in all major cities.",
              "Sports scolaires",
              ["basketball", "jeunesse"]),
          q(
              "sp3_10r",
              "Quel est le record de participation du Burkina Faso aux Jeux Olympiques ?",
              "What is Burkina Faso's record of participation in the Olympic Games?",
              [
                [
                  "Le pays participe depuis 1972 avec des athlètes dans plusieurs disciplines",
                  "The country has participated since 1972 with athletes in several disciplines"
                ],
                [
                  "Le Burkina n'a jamais participé aux JO",
                  "Burkina has never participated in the Olympics"
                ],
                [
                  "Le Burkina a remporté une médaille d'or",
                  "Burkina won a gold medal"
                ],
                [
                  "Le Burkina boycotte les JO depuis 2000",
                  "Burkina boycotts the Olympics since 2000"
                ]
              ],
              0,
              "Le Burkina Faso participe aux Jeux Olympiques depuis Munich 1972, principalement en athlétisme et sports de combat.",
              "Burkina Faso has participated in the Olympic Games since Munich 1972, mainly in athletics and combat sports.",
              "Le Burkina Faso a participé à tous les Jeux Olympiques depuis 1972 sauf en 1980.",
              "Burkina Faso has participated in all Olympic Games since 1972 except in 1980.",
              "Jeux Olympiques",
              ["JO", "athlétisme"]),
        ]),
    Level(number: 4, title: "Légendes du Sport", isLocked: true, questions: [
      q(
          "sp4_1",
          "Quelle est la meilleure performance des Étalons du Burkina Faso en CAN ?",
          "What is the best performance of the Burkinabè Stallions at AFCON?",
          [
            [
              "Finaliste de la CAN 2013 au Burkina Faso",
              "Finalist at the 2013 AFCON in Burkina Faso"
            ],
            ["Vainqueur de la CAN 2010", "Winner of the 2010 AFCON"],
            ["Demi-finaliste en 2019", "Semi-finalist in 2019"],
            ["Premier tour en 2021", "First round in 2021"]
          ],
          0,
          "Le Burkina Faso a atteint la finale de la CAN 2013, perdant face au Nigeria.",
          "Burkina Faso reached the final of the 2013 AFCON, losing to Nigeria.",
          "Aristide Bancé et Jonathan Pitroipa étaient les stars de cette équipe historique.",
          "Aristide Bancé and Jonathan Pitroipa were the stars of this historic team.",
          "Football",
          ["Étalons", "CAN"]),
      q(
          "sp4_2",
          "Quel sport est pratiqué lors du FESPACO sportif ?",
          "What sport is practiced during the sports FESPACO?",
          [
            [
              "Il n'y a pas de FESPACO sportif, le FESPACO est un festival de cinéma",
              "There is no sports FESPACO, FESPACO is a film festival"
            ],
            ["L'athlétisme", "Athletics"],
            ["La natation", "Swimming"],
            ["Le basketball", "Basketball"]
          ],
          0,
          "Le FESPACO est exclusivement un festival panafricain de cinéma, pas de sport.",
          "FESPACO is exclusively a pan-African film festival, not sports.",
          "Les événements sportifs majeurs au Burkina sont la CAN et les Jeux de la Francophonie.",
          "Major sporting events in Burkina are the AFCON and the Francophonie Games.",
          "Culture",
          ["FESPACO", "cinéma"]),
      q(
          "sp4_3",
          "Quel athlète burkinabè a participé aux Jeux Olympiques en athlétisme ?",
          "Which Burkinabè athlete participated in the Olympics in athletics?",
          [
            ["Marthe Koala en sprint", "Marthe Koala in sprint"],
            ["Un nageur olympique", "An Olympic swimmer"],
            ["Un boxeur médaillé", "A medal-winning boxer"],
            ["Un judoka champion", "A judo champion"]
          ],
          0,
          "Marthe Koala a représenté le Burkina Faso en sprint aux Jeux Olympiques.",
          "Marthe Koala represented Burkina Faso in sprint at the Olympic Games.",
          "Le Burkina Faso participe régulièrement aux Jeux Olympiques depuis 1972.",
          "Burkina Faso has regularly participated in the Olympic Games since 1972.",
          "Athlétisme",
          ["Koala", "Olympiques"]),
      q(
          "sp4_4",
          "Quel est le rôle du sport dans la cohésion sociale burkinabè ?",
          "What is the role of sport in Burkinabè social cohesion?",
          [
            [
              "Le sport unit les différentes ethnies et régions autour d'une identité nationale",
              "Sport unites different ethnicities and regions around a national identity"
            ],
            [
              "Le sport est source de divisions sociales",
              "Sport is a source of social divisions"
            ],
            ["Le sport n'a aucun rôle social", "Sport has no social role"],
            [
              "Le sport est réservé aux classes aisées",
              "Sport is reserved for wealthy classes"
            ]
          ],
          0,
          "Les victoires des Étalons rassemblent tous les Burkinabè au-delà des différences ethniques.",
          "The Stallions' victories bring together all Burkinabè beyond ethnic differences.",
          "Le sport scolaire est promu par le gouvernement pour la santé et la cohésion.",
          "School sport is promoted by the government for health and cohesion.",
          "Société",
          ["sport", "cohésion"]),
      q(
          "sp4_5",
          "Qu'est-ce que le Tour du Faso ?",
          "What is the Tour du Faso?",
          [
            [
              "La plus grande course cycliste d'Afrique de l'Ouest organisée au Burkina",
              "The largest cycling race in West Africa organized in Burkina"
            ],
            [
              "Un marathon annuel de Ouagadougou",
              "An annual marathon in Ouagadougou"
            ],
            ["Une randonnée touristique", "A tourist hike"],
            ["Un circuit automobile", "A racing circuit"]
          ],
          0,
          "Le Tour du Faso est une course cycliste par étapes créée en 1987, la plus importante d'Afrique de l'Ouest.",
          "The Tour du Faso is a stage cycling race created in 1987, the most important in West Africa.",
          "Des cyclistes du monde entier participent au Tour du Faso chaque année en novembre.",
          "Cyclists from around the world participate in the Tour du Faso every year in November.",
          "Cyclisme",
          ["Tour du Faso", "cyclisme"]),
      q(
          "sp4_6r",
          "Quel événement sportif africain Sankara voulait-il renforcer ?",
          "What African sporting event did Sankara want to strengthen?",
          [
            [
              "Les Jeux Africains comme vitrine du sport africain et de l'unité continentale",
              "The African Games as a showcase for African sport and continental unity"
            ],
            ["La Coupe du Monde en Europe", "The World Cup in Europe"],
            ["Les Jeux Olympiques en Amérique", "The Olympics in America"],
            ["Les championnats européens", "European championships"]
          ],
          0,
          "Sankara voyait les Jeux Africains comme un symbole de l'autonomie et de l'excellence africaine.",
          "Sankara saw the African Games as a symbol of African autonomy and excellence.",
          "Il voulait que l'Afrique organise ses propres compétitions sans dépendre de l'Occident.",
          "He wanted Africa to organize its own competitions without depending on the West.",
          "Sport africain",
          ["Jeux Africains", "Afrique"]),
      q(
          "sp4_7r",
          "Comment la révolution utilisait-elle les événements sportifs comme outils politiques ?",
          "How did the revolution use sporting events as political tools?",
          [
            [
              "Pour renforcer la conscience nationale, l'unité et la fierté révolutionnaire",
              "To strengthen national consciousness, unity and revolutionary pride"
            ],
            [
              "Pour distraire le peuple des problèmes politiques",
              "To distract the people from political problems"
            ],
            ["Pour enrichir les sportifs", "To enrich athletes"],
            [
              "Pour impressionner les puissances étrangères",
              "To impress foreign powers"
            ]
          ],
          0,
          "Les compétitions sportives sous Sankara servaient à renforcer la cohésion nationale et l'identité révolutionnaire.",
          "Sporting competitions under Sankara served to reinforce national cohesion and revolutionary identity.",
          "Les victoires sportives étaient célébrées comme des victoires de la révolution.",
          "Sporting victories were celebrated as victories of the revolution.",
          "Sport et politique",
          ["sport", "identité"]),
      q(
          "sp4_8r",
          "Quelle fédération sportive nationale gère le football au Burkina Faso ?",
          "Which national sports federation manages football in Burkina Faso?",
          [
            [
              "La Fédération Burkinabè de Football (FBF)",
              "Burkinabè Football Federation (BFF)"
            ],
            ["La FIFA directement", "FIFA directly"],
            ["Le Ministère des Sports", "Ministry of Sports"],
            ["La CEDEAO Football", "ECOWAS Football"]
          ],
          0,
          "La Fédération Burkinabè de Football (FBF) gère l'organisation du football national.",
          "The Burkinabè Football Federation (FBF) manages the organization of national football.",
          "La FBF est affiliée à la FIFA et à la CAF (Confédération Africaine de Football).",
          "BFF is affiliated with FIFA and CAF (Confederation of African Football).",
          "Football burkinabè",
          ["FBF", "fédération"]),
      q(
          "sp4_9r",
          "Quel sport burkinabè est pratiqué comme art martial et sport de combat ?",
          "What Burkinabè sport is practiced as a martial art and combat sport?",
          [
            ["Le Taekwondo", "Taekwondo"],
            ["Le cricket", "Cricket"],
            ["Le rugby", "Rugby"],
            ["La voile", "Sailing"]
          ],
          0,
          "Le Taekwondo est l'un des sports de combat les plus populaires au Burkina Faso.",
          "Taekwondo is one of the most popular combat sports in Burkina Faso.",
          "Des athlètes burkinabès ont participé aux Jeux Olympiques en Taekwondo.",
          "Burkinabè athletes have participated in the Olympic Games in Taekwondo.",
          "Sports de combat",
          ["taekwondo", "arts martiaux"]),
      q(
          "sp4_10r",
          "Quelle compétition panafricaine accueille les meilleurs athlètes du continent ?",
          "What Pan-African competition hosts the best athletes of the continent?",
          [
            ["Les Jeux Africains", "The African Games"],
            ["La Coupe du Monde Africaine", "The African World Cup"],
            [
              "Les Jeux Pan-Africains de Paris",
              "The Pan-African Games of Paris"
            ],
            ["Le Tournoi des Quatre Nations", "The Four Nations Tournament"]
          ],
          0,
          "Les Jeux Africains (anciennement Jeux Pan-Africains) réunissent les meilleurs athlètes du continent toutes disciplines confondues.",
          "The African Games (formerly Pan-African Games) bring together the best athletes of the continent across all disciplines.",
          "Le Burkina Faso envoie des délégations sportives aux Jeux Africains et y remporte des médailles.",
          "Burkina Faso sends sports delegations to the African Games and wins medals there.",
          "Compétitions africaines",
          ["Jeux Africains", "athlètes"]),
    ]),
    Level(number: 5, title: "Pro du Sport", isLocked: true, questions: [
      q(
          "sp5_1",
          "Qu'est-ce que le Tour du Faso et son importance ?",
          "What is the Tour du Faso and its importance?",
          [
            [
              "La plus grande course cycliste d'Afrique de l'Ouest créée en 1987",
              "The largest cycling race in West Africa created in 1987"
            ],
            [
              "Un marathon annuel de Ouagadougou",
              "An annual marathon in Ouagadougou"
            ],
            ["Une randonnée touristique", "A tourist hike"],
            ["Un circuit automobile", "A racing circuit"]
          ],
          0,
          "Le Tour du Faso est une course par étapes qui attire des cyclistes du monde entier en novembre.",
          "The Tour du Faso is a stage race that attracts cyclists from around the world in November.",
          "C'est l'événement sportif le plus médiatisé du Burkina Faso à l'international.",
          "It is the most media-covered sporting event from Burkina Faso internationally.",
          "Cyclisme",
          ["Tour du Faso", "cyclisme"]),
      q(
          "sp5_2",
          "Quel footballeur burkinabè est le plus connu à l'international ?",
          "Which Burkinabè footballer is best known internationally?",
          [
            [
              "Bertrand Traoré, qui a joué en Premier League et en Ligue 1",
              "Bertrand Traoré, who played in the Premier League and Ligue 1"
            ],
            ["Didier Drogba", "Didier Drogba"],
            ["Samuel Eto'o", "Samuel Eto'o"],
            ["Yaya Touré", "Yaya Touré"]
          ],
          0,
          "Bertrand Traoré a notamment joué à Chelsea, Lyon et Aston Villa.",
          "Bertrand Traoré played notably at Chelsea, Lyon and Aston Villa.",
          "Jonathan Pitroipa et Aristide Bancé sont aussi des figures du football burkinabè.",
          "Jonathan Pitroipa and Aristide Bancé are also figures of Burkinabè football.",
          "Football",
          ["Traoré", "football"]),
      q(
          "sp5_3",
          "Quel est l'objectif des Jeux de la Francophonie pour le Burkina Faso ?",
          "What is the objective of the Francophonie Games for Burkina Faso?",
          [
            [
              "Promouvoir le sport et la culture francophone et valoriser les athlètes burkinabè",
              "Promote sport and Francophone culture and showcase Burkinabè athletes"
            ],
            ["Remplacer les Jeux Olympiques", "Replace the Olympic Games"],
            [
              "Uniquement la compétition sportive professionnelle",
              "Only professional sports competition"
            ],
            [
              "Un événement politique francophone",
              "A Francophone political event"
            ]
          ],
          0,
          "Les Jeux de la Francophonie combinent compétitions sportives et culturelles dans l'espace francophone.",
          "The Francophonie Games combine sports and cultural competitions in the Francophone space.",
          "Le Burkina Faso y participe régulièrement et remporte des médailles en athlétisme.",
          "Burkina Faso regularly participates and wins medals in athletics.",
          "Francophonie",
          ["Jeux", "francophonie"]),
      q(
          "sp5_4",
          "Qu'est-ce que le sport scolaire au Burkina Faso ?",
          "What is school sport in Burkina Faso?",
          [
            [
              "Des compétitions scolaires et universitaires promouvant la santé et l'intégration sociale",
              "School and university competitions promoting health and social integration"
            ],
            [
              "Un programme réservé aux sportifs professionnels",
              "A program reserved for professional athletes"
            ],
            [
              "Une activité sans soutien institutionnel",
              "An activity without institutional support"
            ],
            ["Un programme uniquement urbain", "An only urban program"]
          ],
          0,
          "Le sport scolaire est organisé par la Fédération Nationale du Sport Scolaire et Universitaire (FASU).",
          "School sport is organized by the National School and University Sports Federation (FASU).",
          "Il permet de détecter les talents sportifs et de promouvoir la cohésion sociale.",
          "It helps detect sporting talents and promotes social cohesion.",
          "Sport scolaire",
          ["sport scolaire", "jeunesse"]),
      q(
          "sp5_5",
          "Comment le sport peut-il contribuer au développement du Burkina Faso ?",
          "How can sport contribute to the development of Burkina Faso?",
          [
            [
              "En créant des emplois, renforçant l'image du pays et promouvant la santé",
              "By creating jobs, strengthening the country's image and promoting health"
            ],
            [
              "Le sport n'a aucun impact sur le développement",
              "Sport has no impact on development"
            ],
            [
              "En remplaçant l'éducation formelle",
              "By replacing formal education"
            ],
            [
              "En augmentant uniquement les exportations",
              "By only increasing exports"
            ]
          ],
          0,
          "Les succès sportifs internationaux renforcent la fierté nationale et attirent des investissements.",
          "International sporting successes strengthen national pride and attract investments.",
          "L'infrastructure sportive créée pour les compétitions peut servir au développement local.",
          "Sports infrastructure created for competitions can serve local development.",
          "Développement",
          ["sport", "développement"]),
      q(
          "sp5_6r",
          "Quel athlète burkinabè incarne les valeurs de la révolution sankariste ?",
          "Which Burkinabè athlete embodies the values of the Sankarist revolution?",
          [
            [
              "Tout athlète qui représente le Burkina avec fierté, humilité et dépassement de soi",
              "Any athlete who represents Burkina with pride, humility and self-surpassing"
            ],
            ["Uniquement les champions olympiques", "Only Olympic champions"],
            [
              "Les sportifs professionnels riches",
              "Wealthy professional athletes"
            ],
            ["Les athlètes militaires uniquement", "Military athletes only"]
          ],
          0,
          "L'idéal sportif sankariste valorise l'effort collectif, l'humilité et le dépassement de soi plus que la victoire individuelle.",
          "The Sankarist sporting ideal values collective effort, humility and self-surpassing more than individual victory.",
          "Sankara disait que perdre avec honneur vaut mieux que gagner par la tricherie.",
          "Sankara said losing with honor is better than winning through cheating.",
          "Valeurs sportives",
          ["honneur", "sport"]),
      q(
          "sp5_7r",
          "Comment le Tour du Faso symbolise-t-il l'héritage de la révolution sankariste ?",
          "How does the Tour du Faso symbolize the legacy of the Sankarist revolution?",
          [
            [
              "Par son ancrage populaire, son accessibilité et son rôle fédérateur dans tout le pays",
              "Through its popular roots, accessibility and unifying role throughout the country"
            ],
            [
              "Par ses primes financières élevées",
              "Through its high financial prizes"
            ],
            ["Par sa dimension militaire", "Through its military dimension"],
            [
              "Par sa participation exclusivement étrangère",
              "Through exclusively foreign participation"
            ]
          ],
          0,
          "Le Tour du Faso traverse tout le Burkina, unit les régions et célèbre l'effort et la persévérance.",
          "The Tour du Faso crosses all of Burkina, unites regions and celebrates effort and perseverance.",
          "Il est né sous la révolution de 1983 et incarne l'esprit de dépassement sankariste.",
          "It was born under the 1983 revolution and embodies the Sankarist spirit of surpassing oneself.",
          "Tour du Faso",
          ["Tour du Faso", "héritage"]),
      q(
          "sp5_8r",
          "Quelle est la devise olympique adoptée par les athlètes burkinabès ?",
          "What is the Olympic motto adopted by Burkinabè athletes?",
          [
            ["Plus vite, plus haut, plus fort", "Faster, higher, stronger"],
            ["Citius, Altius, Fortius", "Citius, Altius, Fortius"],
            [
              "L'essentiel est de participer",
              "The most important thing is to participate"
            ],
            [
              "Toutes ces réponses sont correctes",
              "All these answers are correct"
            ]
          ],
          3,
          "La devise olympique Citius, Altius, Fortius (plus vite, plus haut, plus fort) est adoptée par tous les athlètes olympiques.",
          "The Olympic motto Citius, Altius, Fortius (faster, higher, stronger) is adopted by all Olympic athletes.",
          "Le Burkina Faso participe aux Jeux Olympiques depuis 1972.",
          "Burkina Faso has been participating in the Olympic Games since 1972.",
          "Olympisme",
          ["Jeux Olympiques", "devise"]),
      q(
          "sp5_9r",
          "Quel sport de raquette est pratiqué au niveau national au Burkina Faso ?",
          "What racket sport is practiced at national level in Burkina Faso?",
          [
            ["Le tennis", "Tennis"],
            ["Le tennis de table (ping-pong)", "Table tennis (ping-pong)"],
            ["Le badminton", "Badminton"],
            ["Tous ces sports", "All these sports"]
          ],
          3,
          "Le tennis, le tennis de table et le badminton sont tous pratiqués au niveau national au Burkina Faso.",
          "Tennis, table tennis and badminton are all practiced at national level in Burkina Faso.",
          "Des fédérations nationales gèrent chacun de ces sports au Burkina Faso.",
          "National federations manage each of these sports in Burkina Faso.",
          "Sports de raquette",
          ["tennis", "badminton"]),
      q(
          "sp5_10r",
          "Quelle importance a le sport pour la cohésion sociale au Burkina Faso ?",
          "What importance does sport have for social cohesion in Burkina Faso?",
          [
            [
              "Il rassemble les différentes communautés autour de valeurs communes",
              "It brings different communities together around common values"
            ],
            [
              "Il divise les communautés par rivalité",
              "It divides communities through rivalry"
            ],
            ["Il n'a aucun rôle social", "It has no social role"],
            ["Il est réservé à une élite", "It is reserved for an elite"]
          ],
          0,
          "Le sport contribue à la cohésion sociale en transcendant les différences ethniques, religieuses et sociales.",
          "Sport contributes to social cohesion by transcending ethnic, religious and social differences.",
          "Les matchs des Étalons rassemblent l'ensemble des Burkinabès dans un élan de fierté nationale.",
          "Étalons matches bring all Burkinabès together in a surge of national pride.",
          "Sport et société",
          ["cohésion", "identité"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  ACTUALITÉ
  // ════════════════════════════════════════════════
  "Actualité": [
    Level(
        number: 1,
        title: "Médias et Information",
        isLocked: false,
        questions: [
          q(
              "ac1_1",
              "Qu'est-ce qu'une source d'information fiable ?",
              "What is a reliable source of information?",
              [
                [
                  "Un média vérifié, transparent et citant ses sources",
                  "A verified, transparent media outlet citing its sources"
                ],
                [
                  "Un post anonyme sans source",
                  "An anonymous post without sources"
                ],
                ["Une rumeur non vérifiée", "An unverified rumor"],
                ["Un message publicitaire déguisé", "A disguised advertisement"]
              ],
              0,
              "Les sources fiables vérifient les faits, citent leurs sources et sont transparentes.",
              "Reliable sources fact-check, cite their sources and are transparent.",
              "La vérification des faits (fact-checking) est essentielle contre la désinformation.",
              "Fact-checking is essential against disinformation.",
              "Journalisme",
              ["fiabilité", "médias"]),
          q(
              "ac1_2",
              "Qu'est-ce que la désinformation ?",
              "What is disinformation?",
              [
                [
                  "Diffusion intentionnelle de fausses informations",
                  "Intentional spreading of false information"
                ],
                [
                  "Une émission de radio éducative",
                  "An educational radio show"
                ],
                [
                  "Un journal officiel gouvernemental",
                  "An official government newspaper"
                ],
                [
                  "Un réseau d'informations scientifiques",
                  "A scientific information network"
                ]
              ],
              0,
              "La désinformation est délibérée, contrairement à la mésinformation (non intentionnelle).",
              "Disinformation is deliberate, unlike misinformation (unintentional).",
              "Les réseaux sociaux facilitent la propagation virale de la désinformation.",
              "Social media facilitates the viral spread of disinformation.",
              "Médias & société",
              ["désinformation", "fake news"]),
          q(
              "ac1_3",
              "Qu'est-ce que la liberté de la presse ?",
              "What is freedom of the press?",
              [
                [
                  "Droit des médias d'informer sans censure gouvernementale",
                  "Right of media to inform without government censorship"
                ],
                [
                  "Un tarif réduit pour les journaux",
                  "A reduced rate for newspapers"
                ],
                ["Presse gratuite partout", "Free press everywhere"],
                [
                  "Monopole de l'État sur l'information",
                  "State monopoly on information"
                ]
              ],
              0,
              "La liberté de la presse est fondamentale pour une démocratie saine.",
              "Freedom of the press is fundamental to a healthy democracy.",
              "Reporters Sans Frontières publie chaque année un classement mondial.",
              "Reporters Without Borders publishes an annual world ranking.",
              "RSF",
              ["presse", "liberté"]),
          q(
              "ac1_4",
              "Que signifie 'fact-checking' ?",
              "What does 'fact-checking' mean?",
              [
                [
                  "Vérification de l'exactitude et de la véracité des informations",
                  "Verification of the accuracy and truthfulness of information"
                ],
                [
                  "Traduction automatique d'articles",
                  "Automatic translation of articles"
                ],
                [
                  "Publication accélérée d'actualités",
                  "Accelerated publication of news"
                ],
                [
                  "Censure des contenus controversés",
                  "Censorship of controversial content"
                ]
              ],
              0,
              "Le fact-checking vérifie les affirmations des médias et des réseaux sociaux.",
              "Fact-checking verifies claims made in media and social networks.",
              "Des organisations africaines comme Africa Check pratiquent le fact-checking.",
              "African organizations like Africa Check practice fact-checking.",
              "Journalisme moderne",
              ["fact-checking", "vérification"]),
          q(
              "ac1_5",
              "Qu'est-ce que le journalisme citoyen ?",
              "What is citizen journalism?",
              [
                [
                  "Pratique permettant aux citoyens de rapporter des événements en temps réel",
                  "Practice allowing citizens to report events in real time"
                ],
                [
                  "Remplacement total des journalistes",
                  "Total replacement of journalists"
                ],
                ["Financement des médias publics", "Funding of public media"],
                ["Interdiction des réseaux sociaux", "Banning of social media"]
              ],
              0,
              "Le journalisme citoyen complète les médias professionnels en couvrant des événements locaux.",
              "Citizen journalism complements professional media by covering local events.",
              "Les smartphones ont révolutionné le journalisme citoyen partout dans le monde.",
              "Smartphones have revolutionized citizen journalism worldwide.",
              "Médias participatifs",
              ["journalisme", "citoyen"]),
          q(
              "ac1_6r",
              "Pourquoi l'héritage de Sankara est-il encore d'actualité en Afrique ?",
              "Why is Sankara's legacy still relevant in Africa today?",
              [
                [
                  "Les défis qu'il combattait (corruption, dette, dépendance) sont toujours présents",
                  "The challenges he fought (corruption, debt, dependence) are still present"
                ],
                [
                  "Son héritage est dépassé et oublié",
                  "His legacy is outdated and forgotten"
                ],
                [
                  "Il n'était important que dans les années 1980",
                  "He was only important in the 1980s"
                ],
                [
                  "Son héritage se limite au Burkina",
                  "His legacy is limited to Burkina"
                ]
              ],
              0,
              "La corruption, la dette néocoloniale et la dépendance extérieure restent des fléaux actuels en Afrique.",
              "Corruption, neo-colonial debt and external dependence remain current scourges in Africa.",
              "Des mouvements de jeunesse africaine se réclament de l'héritage sankariste pour lutter contre ces maux.",
              "African youth movements claim the Sankarist legacy to fight these evils.",
              "Actualité africaine",
              ["Sankara", "actualité"]),
          q(
              "ac1_7r",
              "Quel procès historique lié à la RPP a eu lieu au Burkina ces dernières années ?",
              "What historic trial related to the RPP took place in Burkina in recent years?",
              [
                [
                  "Le procès des assassins de Thomas Sankara, conclu en 2022",
                  "The trial of Thomas Sankara's killers, concluded in 2022"
                ],
                ["Le procès des CDR", "The trial of the CDRs"],
                [
                  "Le procès des paysans de la révolution",
                  "The trial of the revolutionary peasants"
                ],
                ["Le procès des journalistes", "The trial of journalists"]
              ],
              0,
              "En 2022, Blaise Compaoré a été condamné par contumace pour l'assassinat de Sankara en 1987.",
              "In 2022, Blaise Compaoré was convicted in absentia for Sankara's assassination in 1987.",
              "Ce procès était attendu depuis 35 ans par la famille et les partisans de Sankara.",
              "This trial had been awaited for 35 years by Sankara's family and supporters.",
              "Justice historique",
              ["procès", "Sankara"]),
          q(
              "ac1_8r",
              "Qu'est-ce que Radio Burkina ?",
              "What is Radio Burkina?",
              [
                [
                  "La radio nationale publique du Burkina Faso",
                  "Burkina Faso's national public radio"
                ],
                [
                  "Une radio privée internationale",
                  "A private international radio"
                ],
                ["Une radio religieuse", "A religious radio"],
                ["Une radio communautaire locale", "A local community radio"]
              ],
              0,
              "Radio Burkina est la radio nationale publique du Burkina Faso, diffusant en français et en langues locales.",
              "Radio Burkina is Burkina Faso's national public radio, broadcasting in French and local languages.",
              "Radio Burkina a été créée en 1959 sous le nom de Radio Haute-Volta.",
              "Radio Burkina was created in 1959 under the name Radio Haute-Volta.",
              "Médias burkinabè",
              ["Radio Burkina", "médias"]),
          q(
              "ac1_9r",
              "Quelle est la principale agence de presse nationale au Burkina Faso ?",
              "What is the main national news agency in Burkina Faso?",
              [
                [
                  "Agence d'Information du Burkina (AIB)",
                  "Burkina Information Agency (AIB)"
                ],
                ["AFP Burkina", "AFP Burkina"],
                ["Reuters Afrique", "Reuters Africa"],
                ["Al Jazeera Burkina", "Al Jazeera Burkina"]
              ],
              0,
              "L'Agence d'Information du Burkina (AIB) est l'agence de presse nationale officielle du Burkina Faso.",
              "The Burkina Information Agency (AIB) is Burkina Faso's official national news agency.",
              "L'AIB diffuse des informations en français sur les événements nationaux.",
              "AIB distributes news in French on national events.",
              "Médias burkinabè",
              ["AIB", "agence de presse"]),
          q(
              "ac1_10r",
              "Quel est le rôle du Conseil Supérieur de la Communication (CSC) au Burkina Faso ?",
              "What is the role of the Superior Council of Communication (CSC) in Burkina Faso?",
              [
                [
                  "Réguler les médias audiovisuels et garantir la liberté de la presse",
                  "Regulate audiovisual media and guarantee press freedom"
                ],
                ["Produire des films burkinabè", "Produce Burkinabè films"],
                ["Gérer les abonnements TV", "Manage TV subscriptions"],
                [
                  "Censurer les journaux d'opposition",
                  "Censor opposition newspapers"
                ]
              ],
              0,
              "Le CSC est l'autorité de régulation des médias audiovisuels au Burkina Faso, veillant à l'équilibre et à la liberté de la presse.",
              "The CSC is the audiovisual media regulatory authority in Burkina Faso, ensuring balance and press freedom.",
              "Il attribue les fréquences radio et TV et veille au respect des règles déontologiques.",
              "It allocates radio and TV frequencies and ensures compliance with ethical rules.",
              "Régulation des médias",
              ["CSC", "presse"]),
        ]),
    Level(number: 2, title: "Enjeux Contemporains", isLocked: true, questions: [
      q(
          "ac2_1",
          "Qu'est-ce que le changement climatique ?",
          "What is climate change?",
          [
            [
              "Modification durable du climat mondial due principalement aux activités humaines",
              "Long-term change in global climate mainly due to human activities"
            ],
            [
              "Des variations météo quotidiennes normales",
              "Normal daily weather variations"
            ],
            ["Un phénomène uniquement naturel", "A purely natural phenomenon"],
            ["Des changements uniquement en hiver", "Changes only in winter"]
          ],
          0,
          "Le changement climatique se manifeste par des sécheresses, inondations et canicules.",
          "Climate change manifests through droughts, floods and heatwaves.",
          "Le Burkina Faso est très vulnérable avec des pluies de plus en plus imprévisibles.",
          "Burkina Faso is very vulnerable with increasingly unpredictable rains.",
          "GIEC",
          ["climat", "environnement"]),
      q(
          "ac2_2",
          "Qu'est-ce que la migration climatique ?",
          "What is climate migration?",
          [
            [
              "Déplacement de populations forcé par les effets du changement climatique",
              "Displacement of populations forced by the effects of climate change"
            ],
            ["Tourisme vers des pays chauds", "Tourism to warm countries"],
            [
              "Immigration économique volontaire",
              "Voluntary economic immigration"
            ],
            ["Déplacement de fonctionnaires", "Displacement of civil servants"]
          ],
          0,
          "Les sécheresses et inondations poussent des millions à quitter leurs terres.",
          "Droughts and floods push millions to leave their land.",
          "On estime à 216 millions le nombre de migrants climatiques d'ici 2050.",
          "It is estimated that there will be 216 million climate migrants by 2050.",
          "UNHCR",
          ["migration", "climat"]),
      q(
          "ac2_3",
          "Qu'est-ce que la paix et la sécurité au Sahel ?",
          "What is peace and security in the Sahel?",
          [
            [
              "Enjeux liés aux conflits armés, terrorisme et instabilité politique",
              "Issues related to armed conflicts, terrorism and political instability"
            ],
            ["Questions de tourisme régional", "Regional tourism issues"],
            ["Problèmes de transport aérien", "Air transport problems"],
            [
              "Débats sur les langues officielles",
              "Debates on official languages"
            ]
          ],
          0,
          "Le Sahel fait face à des défis sécuritaires complexes impliquant groupes armés non étatiques.",
          "The Sahel faces complex security challenges involving non-state armed groups.",
          "Des organisations comme le G5 Sahel cherchent à coordonner les réponses sécuritaires.",
          "Organizations like the G5 Sahel seek to coordinate security responses.",
          "Géopolitique",
          ["sécurité", "sahel"]),
      q(
          "ac2_4",
          "Qu'est-ce que la gouvernance numérique des médias ?",
          "What is digital media governance?",
          [
            [
              "Régulation des contenus en ligne pour protéger les droits et prévenir les abus",
              "Regulation of online content to protect rights and prevent abuses"
            ],
            ["Censure totale d'internet", "Total censorship of the internet"],
            [
              "Privatisation complète des médias",
              "Complete privatization of media"
            ],
            [
              "Obligation de payer pour tous les contenus",
              "Obligation to pay for all content"
            ]
          ],
          0,
          "La gouvernance numérique cherche l'équilibre entre liberté d'expression et protection.",
          "Digital governance seeks the balance between freedom of expression and protection.",
          "Des fake news ont causé des violences dans plusieurs pays africains.",
          "Fake news has caused violence in several African countries.",
          "Régulation numérique",
          ["gouvernance", "numérique"]),
      q(
          "ac2_5",
          "Qu'est-ce que l'aide humanitaire ?",
          "What is humanitarian aid?",
          [
            [
              "Assistance d'urgence aux populations touchées par crises et catastrophes",
              "Emergency assistance to populations affected by crises and disasters"
            ],
            ["Aide financière aux entreprises", "Financial aid to companies"],
            ["Prêts bancaires internationaux", "International bank loans"],
            ["Investissements militaires", "Military investments"]
          ],
          0,
          "L'aide humanitaire comprend nourriture, eau, abri et soins médicaux d'urgence.",
          "Humanitarian aid includes food, water, shelter and emergency medical care.",
          "Des millions de Burkinabè bénéficient d'aide humanitaire en raison de la crise sécuritaire.",
          "Millions of Burkinabè benefit from humanitarian aid due to the security crisis.",
          "OCHA / HCR",
          ["humanitaire", "aide"]),
      q(
          "ac2_6r",
          "Comment les jeunes africains utilisent-ils les réseaux sociaux pour diffuser l'héritage sankariste ?",
          "How do young Africans use social media to spread Sankara's legacy?",
          [
            [
              "Par des vidéos, podcasts et posts viraux diffusant ses discours et idées",
              "Through videos, podcasts and viral posts spreading his speeches and ideas"
            ],
            [
              "Les réseaux sociaux ignorent totalement Sankara",
              "Social media completely ignores Sankara"
            ],
            [
              "Les réseaux sociaux sont uniquement négatifs sur Sankara",
              "Social media is only negative about Sankara"
            ],
            [
              "Sankara est interdit sur les réseaux",
              "Sankara is banned on social networks"
            ]
          ],
          0,
          "Des millions de vues pour les discours de Sankara sur YouTube, Instagram et TikTok.",
          "Millions of views for Sankara's speeches on YouTube, Instagram and TikTok.",
          "Sa pensée touche particulièrement la jeunesse africaine qui cherche des modèles de dignité.",
          "His thought particularly touches African youth looking for models of dignity.",
          "Numérique et révolution",
          ["réseaux sociaux", "jeunesse"]),
      q(
          "ac2_7r",
          "Quelle actualité récente rappelle les combats de la RPP ?",
          "What recent news reminds us of the RPP's struggles?",
          [
            [
              "Le mouvement de souveraineté africaine et de reconfiguration des alliances au Sahel",
              "The African sovereignty movement and realignment of alliances in the Sahel"
            ],
            ["La mondialisation heureuse", "Happy globalization"],
            ["Le retour au colonialisme", "The return to colonialism"],
            ["La fin de la dette africaine", "The end of African debt"]
          ],
          0,
          "Les coups d'État au Mali, Burkina et Niger s'inscrivent dans une rhétorique de souveraineté héritée de Sankara.",
          "The coups in Mali, Burkina and Niger use a sovereignty rhetoric inherited from Sankara.",
          "Même si les méthodes diffèrent, le discours anti-dépendance rappelle Sankara.",
          "Even if methods differ, the anti-dependence discourse recalls Sankara.",
          "Géopolitique africaine",
          ["souveraineté", "Sahel"]),
      q(
          "ac2_8r",
          "Qu'est-ce que la Télévision Nationale du Burkina (TNB) ?",
          "What is the National Television of Burkina (TNB)?",
          [
            [
              "La chaîne de télévision publique nationale",
              "The national public television channel"
            ],
            ["Une chaîne privée", "A private channel"],
            [
              "Une chaîne sportive internationale",
              "An international sports channel"
            ],
            ["Une chaîne d'information continue", "A 24-hour news channel"]
          ],
          0,
          "La Télévision Nationale du Burkina (TNB) est la chaîne de télévision publique nationale.",
          "The National Television of Burkina (TNB) is the national public television channel.",
          "La TNB est diffusée sur tout le territoire national et dans la diaspora burkinabè.",
          "TNB is broadcast across the national territory and in the Burkinabè diaspora.",
          "Médias burkinabè",
          ["TNB", "télévision"]),
      q(
          "ac2_9r",
          "Comment les réseaux sociaux influencent-ils l'information au Burkina Faso ?",
          "How do social networks influence information in Burkina Faso?",
          [
            [
              "Ils permettent une diffusion rapide mais aussi la désinformation",
              "They enable rapid dissemination but also misinformation"
            ],
            ["Ils sont totalement fiables", "They are completely reliable"],
            ["Ils n'ont aucune influence", "They have no influence"],
            ["Ils sont interdits au Burkina", "They are banned in Burkina"]
          ],
          0,
          "Les réseaux sociaux permettent une diffusion rapide de l'information mais peuvent aussi propager des fausses nouvelles.",
          "Social networks enable rapid information dissemination but can also spread fake news.",
          "Le taux de pénétration d'Internet au Burkina Faso a fortement augmenté avec les smartphones.",
          "Internet penetration rate in Burkina Faso has strongly increased with smartphones.",
          "Médias numériques",
          ["réseaux sociaux", "désinformation"]),
      q(
          "ac2_10r",
          "Comment les Burkinabès de la diaspora restent-ils informés de l'actualité nationale ?",
          "How do Burkinabès in the diaspora stay informed about national news?",
          [
            [
              "Via les médias en ligne, réseaux sociaux et radio internationale",
              "Via online media, social networks and international radio"
            ],
            ["Uniquement par courrier postal", "Only by postal mail"],
            [
              "Ils ne suivent plus l'actualité burkinabè",
              "They no longer follow Burkinabè news"
            ],
            ["Par des ambassades uniquement", "Through embassies only"]
          ],
          0,
          "La diaspora burkinabè suit l'actualité via les sites d'info en ligne, réseaux sociaux et radio internationale comme RFI.",
          "The Burkinabè diaspora follows news via online news sites, social networks and international radio like RFI.",
          "La diaspora burkinabè représente une communauté importante notamment en Côte d'Ivoire, France et Italie.",
          "The Burkinabè diaspora represents an important community notably in Côte d'Ivoire, France and Italy.",
          "Diaspora",
          ["diaspora", "médias"]),
    ]),
    Level(
        number: 3,
        title: "Monde et Perspectives",
        isLocked: true,
        questions: [
          q(
              "ac3_1",
              "Qu'est-ce que la mondialisation ?",
              "What is globalization?",
              [
                [
                  "Intégration croissante des économies, cultures et sociétés à l'échelle mondiale",
                  "Growing integration of economies, cultures and societies worldwide"
                ],
                [
                  "Uniformisation totale des cultures",
                  "Total uniformization of cultures"
                ],
                ["Fermeture des frontières", "Closing of borders"],
                ["Fin des échanges commerciaux", "End of commercial exchanges"]
              ],
              0,
              "La mondialisation favorise échanges commerciaux, culturels et technologiques.",
              "Globalization promotes commercial, cultural and technological exchanges.",
              "Elle présente des opportunités mais aussi des défis pour les pays en développement.",
              "It presents opportunities but also challenges for developing countries.",
              "Économie mondiale",
              ["mondialisation", "échanges"]),
          q(
              "ac3_2",
              "Qu'est-ce que les Objectifs de Développement Durable (ODD) ?",
              "What are the Sustainable Development Goals (SDGs)?",
              [
                [
                  "17 objectifs mondiaux adoptés par l'ONU pour 2030",
                  "17 global goals adopted by the UN for 2030"
                ],
                ["Des lois nationales burkinabè", "Burkinabè national laws"],
                ["Un programme sportif africain", "An African sports program"],
                ["Des règles commerciales de l'OMC", "WTO trade rules"]
              ],
              0,
              "Les ODD couvrent pauvreté, santé, éducation, climat et paix à atteindre d'ici 2030.",
              "The SDGs cover poverty, health, education, climate and peace to be achieved by 2030.",
              "Le Burkina Faso s'est engagé à atteindre les ODD malgré ses défis.",
              "Burkina Faso has committed to achieving the SDGs despite its challenges.",
              "ONU",
              ["ODD", "développement"]),
          q(
              "ac3_3",
              "Qu'est-ce que la diplomatie ?",
              "What is diplomacy?",
              [
                [
                  "Art de gérer les relations entre États par la négociation et le dialogue",
                  "Art of managing relations between states through negotiation and dialogue"
                ],
                ["Gestion des conflits armés", "Management of armed conflicts"],
                [
                  "Commerce international uniquement",
                  "International trade only"
                ],
                ["Espionnage international", "International espionage"]
              ],
              0,
              "La diplomatie cherche à résoudre les différends et construire des coopérations.",
              "Diplomacy seeks to resolve disputes and build cooperation.",
              "Le Burkina Faso entretient des relations diplomatiques avec de nombreux pays.",
              "Burkina Faso maintains diplomatic relations with many countries.",
              "Relations internationales",
              ["diplomatie", "négociation"]),
          q(
              "ac3_4",
              "Qu'est-ce que la coopération internationale au développement ?",
              "What is international development cooperation?",
              [
                [
                  "Partenariats entre pays pour soutenir le développement économique et social",
                  "Partnerships between countries to support economic and social development"
                ],
                ["Aide militaire uniquement", "Military aid only"],
                [
                  "Invasion économique de pays faibles",
                  "Economic invasion of weak countries"
                ],
                [
                  "Imposition de politiques étrangères",
                  "Imposition of foreign policies"
                ]
              ],
              0,
              "La coopération internationale inclut aide financière, technique et humaine.",
              "International cooperation includes financial, technical and human aid.",
              "Des pays comme la France, l'UE et la Chine coopèrent avec le Burkina Faso.",
              "Countries like France, the EU and China cooperate with Burkina Faso.",
              "Relations internationales",
              ["coopération", "développement"]),
          q(
              "ac3_5",
              "Quel est le rôle des jeunes dans les défis actuels du monde ?",
              "What is the role of youth in today's world challenges?",
              [
                [
                  "Acteurs clés du changement social, environnemental et technologique",
                  "Key actors of social, environmental and technological change"
                ],
                [
                  "Observateurs passifs des décisions des adultes",
                  "Passive observers of adult decisions"
                ],
                ["Uniquement consommateurs de médias", "Only media consumers"],
                [
                  "Sans influence sur les politiques publiques",
                  "Without influence on public policies"
                ]
              ],
              0,
              "La jeunesse est moteur d'innovation, de mobilisation climatique et de transformation sociale.",
              "Youth is an engine of innovation, climate mobilization and social transformation.",
              "Des mouvements de jeunes comme Fridays for Future ont un impact mondial.",
              "Youth movements like Fridays for Future have a global impact.",
              "Société",
              ["jeunesse", "changement"]),
          q(
              "ac3_6r",
              "Quel mouvement de presse africain cite régulièrement l'héritage de Sankara ?",
              "What African press movement regularly cites Sankara's legacy?",
              [
                [
                  "La presse indépendante engagée qui défend la liberté d'expression et dénonce la corruption",
                  "Committed independent press that defends freedom of expression and denounces corruption"
                ],
                [
                  "La presse gouvernementale officielle",
                  "Official government press"
                ],
                ["Les médias étrangers uniquement", "Foreign media only"],
                ["La presse sportive", "Sports press"]
              ],
              0,
              "Des journalistes africains engagés se réclament de Norbert Zongo et de l'héritage sankariste de liberté de presse.",
              "Committed African journalists claim the legacy of Norbert Zongo and Sankara's press freedom heritage.",
              "La liberté de presse reste un combat quotidien en Afrique comme le défendait Sankara.",
              "Press freedom remains a daily struggle in Africa as Sankara defended it.",
              "Liberté de presse",
              ["presse", "Zongo"]),
          q(
              "ac3_7r",
              "Comment le procès Sankara de 2022 a-t-il résonné dans l'opinion africaine ?",
              "How did the 2022 Sankara trial resonate in African public opinion?",
              [
                [
                  "Comme un acte de justice historique longtemps attendu et un signal fort pour l'impunité",
                  "As a long-awaited historic act of justice and a strong signal against impunity"
                ],
                [
                  "Comme un événement sans importance",
                  "As an unimportant event"
                ],
                [
                  "Comme une injustice envers Compaoré",
                  "As an injustice against Compaoré"
                ],
                [
                  "Comme un détail politique mineur",
                  "As a minor political detail"
                ]
              ],
              0,
              "Le verdict de 2022 a été suivi avec émotion par des millions d'Africains qui attendaient cette justice.",
              "The 2022 verdict was followed with emotion by millions of Africans who awaited this justice.",
              "Il a renforcé l'idée que les crimes des dirigeants africains ne doivent pas rester impunis.",
              "It reinforced the idea that crimes of African leaders must not go unpunished.",
              "Justice africaine",
              ["procès", "2022"]),
          q(
              "ac3_8r",
              "Quelle crise majeure affecte le Burkina Faso depuis 2015 ?",
              "What major crisis has affected Burkina Faso since 2015?",
              [
                [
                  "La crise sécuritaire liée au terrorisme",
                  "The security crisis linked to terrorism"
                ],
                ["Une crise économique unique", "A unique economic crisis"],
                ["Une sécheresse prolongée", "A prolonged drought"],
                ["Une guerre civile totale", "A total civil war"]
              ],
              0,
              "Le Burkina Faso fait face à une grave crise sécuritaire liée aux groupes terroristes depuis 2015.",
              "Burkina Faso has been facing a serious security crisis linked to terrorist groups since 2015.",
              "La crise a provoqué le déplacement de millions de personnes à l'intérieur du pays.",
              "The crisis has caused the displacement of millions of people within the country.",
              "Crise sécuritaire",
              ["terrorisme", "sécurité"]),
          q(
              "ac3_9r",
              "Que sont les Personnes Déplacées Internes (PDI) au Burkina Faso ?",
              "What are Internally Displaced Persons (IDPs) in Burkina Faso?",
              [
                [
                  "Des personnes fuyant la violence dans leur propre pays",
                  "People fleeing violence within their own country"
                ],
                ["Des migrants économiques", "Economic migrants"],
                ["Des réfugiés étrangers", "Foreign refugees"],
                ["Des touristes bloqués", "Stranded tourists"]
              ],
              0,
              "Les PDI sont des personnes qui ont fui la violence et l'insécurité mais restent dans les frontières du Burkina Faso.",
              "IDPs are people who have fled violence and insecurity but remain within Burkina Faso's borders.",
              "On estime à plus de 2 millions le nombre de PDI au Burkina Faso en 2023.",
              "The number of IDPs in Burkina Faso in 2023 is estimated at more than 2 million.",
              "Crise humanitaire",
              ["PDI", "déplacés"]),
          q(
              "ac3_10r",
              "Quelle est la principale menace terroriste au Burkina Faso ?",
              "What is the main terrorist threat in Burkina Faso?",
              [
                [
                  "Les groupes djihadistes liés à JNIM et à l'EIGS",
                  "Jihadist groups linked to JNIM and ISGS"
                ],
                [
                  "Des rebelles séparatistes internes",
                  "Internal separatist rebels"
                ],
                ["Des pirates informatiques", "Computer hackers"],
                ["Des cartels de la drogue", "Drug cartels"]
              ],
              0,
              "Le JNIM (Jama'at Nusrat al-Islam wal-Muslimin) et l'EIGS (État Islamique au Grand Sahel) sont les principaux groupes terroristes actifs.",
              "JNIM (Jama'at Nusrat al-Islam wal-Muslimin) and ISGS (Islamic State in the Greater Sahel) are the main active terrorist groups.",
              "Ces groupes exploitent les tensions ethniques et la pauvreté pour recruter dans les zones rurales.",
              "These groups exploit ethnic tensions and poverty to recruit in rural areas.",
              "Sécurité nationale",
              ["JNIM", "terrorisme"]),
        ]),
    Level(number: 4, title: "Crises & Solutions", isLocked: true, questions: [
      q(
          "ac4_1",
          "Qu'est-ce que la crise sécuritaire au Burkina Faso ?",
          "What is the security crisis in Burkina Faso?",
          [
            [
              "Des attaques jihadistes affectant le nord, l'est et l'ouest du pays depuis 2015",
              "Jihadist attacks affecting the north, east and west of the country since 2015"
            ],
            ["Un conflit avec le Mali uniquement", "A conflict with Mali only"],
            ["Des élections contestées", "Contested elections"],
            ["Une crise économique uniquement", "Only an economic crisis"]
          ],
          0,
          "Des groupes armés liés à Al-Qaïda et à l'État islamique sévissent au Burkina Faso depuis 2015.",
          "Armed groups linked to Al-Qaeda and the Islamic State have been active in Burkina Faso since 2015.",
          "Des millions de personnes ont été déplacées par ce conflit.",
          "Millions of people have been displaced by this conflict.",
          "Sécurité",
          ["jihadiste", "sécurité"]),
      q(
          "ac4_2",
          "Qu'est-ce que l'Alliance des États du Sahel (AES) ?",
          "What is the Alliance of Sahel States (AES)?",
          [
            [
              "Une alliance entre le Burkina Faso, le Mali et le Niger formée en 2023",
              "An alliance between Burkina Faso, Mali and Niger formed in 2023"
            ],
            ["Un traité de paix avec la France", "A peace treaty with France"],
            [
              "Une organisation de l'Union Africaine",
              "An African Union organization"
            ],
            ["Un accord commercial régional", "A regional trade agreement"]
          ],
          0,
          "L'AES regroupe trois pays dirigés par des juves militaires ayant rompu avec la CEDEAO.",
          "The AES groups three countries led by military juntas that broke with ECOWAS.",
          "Les trois pays ont annoncé début 2024 leur retrait de la CEDEAO.",
          "The three countries announced their withdrawal from ECOWAS in early 2024.",
          "Géopolitique",
          ["AES", "Sahel"]),
      q(
          "ac4_3",
          "Qu'est-ce que les personnes déplacées internes (PDI) ?",
          "What are internally displaced persons (IDPs)?",
          [
            [
              "Des personnes fuyant des conflits à l'intérieur de leur propre pays",
              "People fleeing conflicts within their own country"
            ],
            ["Des réfugiés politiques", "Political refugees"],
            ["Des migrants économiques", "Economic migrants"],
            ["Des expatriés volontaires", "Voluntary expatriates"]
          ],
          0,
          "Le Burkina Faso compte plus de 2 millions de PDI suite à l'insécurité jihadiste.",
          "Burkina Faso has more than 2 million IDPs due to jihadist insecurity.",
          "Les PDI fuient vers les grandes villes comme Ouagadougou et Bobo-Dioulasso.",
          "IDPs flee to major cities like Ouagadougou and Bobo-Dioulasso.",
          "Crise humanitaire",
          ["PDI", "déplacés"]),
      q(
          "ac4_4",
          "Qu'est-ce que les Volontaires pour la Défense de la Patrie (VDP) ?",
          "What are the Volunteers for the Defense of the Homeland (VDP)?",
          [
            [
              "Des civils armés et formés pour aider les forces de sécurité burkinabè",
              "Armed and trained civilians to assist Burkinabè security forces"
            ],
            ["Un parti politique militaire", "A military political party"],
            ["Des soldats de l'armée régulière", "Regular army soldiers"],
            ["Des policiers municipaux", "Municipal police officers"]
          ],
          0,
          "Les VDP ont été créés en 2020 pour renforcer la lutte contre les groupes armés dans les zones rurales.",
          "VDPs were created in 2020 to strengthen the fight against armed groups in rural areas.",
          "Plus de 50 000 VDP ont été mobilisés dans tout le pays.",
          "More than 50,000 VDPs have been mobilized throughout the country.",
          "Défense",
          ["VDP", "sécurité"]),
      q(
          "ac4_5",
          "Comment le changement climatique affecte-t-il les conflits au Sahel ?",
          "How does climate change affect conflicts in the Sahel?",
          [
            [
              "Il aggrave les tensions en réduisant les ressources naturelles disponibles",
              "It worsens tensions by reducing available natural resources"
            ],
            [
              "Il n'a aucun lien avec les conflits",
              "It has no link with conflicts"
            ],
            [
              "Il réduit les conflits en favorisant l'agriculture",
              "It reduces conflicts by promoting agriculture"
            ],
            ["Il améliore la sécurité alimentaire", "It improves food security"]
          ],
          0,
          "La compétition pour les terres arables et l'eau aggrave les tensions entre éleveurs et agriculteurs.",
          "Competition for arable land and water worsens tensions between herders and farmers.",
          "La désertification pousse les populations à migrer, créant des conflits dans les zones d'accueil.",
          "Desertification pushes populations to migrate, creating conflicts in host areas.",
          "Climat",
          ["changement climatique", "conflits"]),
      q(
          "ac4_6r",
          "Quel débat actuel en Afrique rappelle le discours de Sankara sur la dette ?",
          "What current debate in Africa recalls Sankara's speech on debt?",
          [
            [
              "Le débat sur l'annulation de la dette africaine et la refonte du système financier international",
              "The debate on African debt cancellation and reform of the international financial system"
            ],
            [
              "Le débat sur les cryptomonnaies",
              "The debate on cryptocurrencies"
            ],
            [
              "Le débat sur les droits d'auteur musicaux",
              "The debate on musical copyrights"
            ],
            [
              "Le débat sur les frontières coloniales",
              "The debate on colonial borders"
            ]
          ],
          0,
          "Le discours de Sankara de 1987 sur la dette est régulièrement cité dans les négociations actuelles.",
          "Sankara's 1987 speech on debt is regularly cited in current negotiations.",
          "Il avait prévu que la dette serait utilisée comme outil de domination.",
          "He had predicted that debt would be used as a tool of domination.",
          "Debt africaine",
          ["dette", "actualité"]),
      q(
          "ac4_7r",
          "Comment le concept de Patrie ou Mort résonnet-il dans le Burkina d'aujourd'hui ?",
          "How does the concept of Fatherland or Death resonate in Burkina today?",
          [
            [
              "Il symbolise la résistance aux crises sécuritaires et la détermination à préserver la nation",
              "It symbolizes resistance to security crises and determination to preserve the nation"
            ],
            [
              "Il est oublié et sans résonance",
              "It is forgotten and without resonance"
            ],
            ["Il symbolise uniquement la guerre", "It symbolizes only war"],
            [
              "Il est interdit dans le Burkina actuel",
              "It is banned in current Burkina"
            ]
          ],
          0,
          "Face aux crises sécuritaires, de nombreux Burkinabè invoquent cet idéal de sacrifice pour la patrie.",
          "Facing security crises, many Burkinabè invoke this ideal of sacrifice for the homeland.",
          "L'idéal sankariste de défense populaire inspire les Volontaires pour la Défense de la Patrie (VDP).",
          "The Sankarist ideal of popular defense inspires the Volunteers for the Defense of the Homeland (VDP).",
          "Résistance nationale",
          ["résistance", "patrie"]),
      q(
          "ac4_8r",
          "Qu'est-ce que l'Alliance des États du Sahel (AES) ?",
          "What is the Alliance of Sahel States (AES)?",
          [
            [
              "Une alliance militaire et politique entre Burkina, Mali et Niger",
              "A military and political alliance between Burkina, Mali and Niger"
            ],
            [
              "Une organisation économique internationale",
              "An international economic organization"
            ],
            ["Un partenariat avec la France", "A partnership with France"],
            ["Une union douanière africaine", "An African customs union"]
          ],
          0,
          "L'AES est une alliance formée en 2023 par le Burkina Faso, le Mali et le Niger pour renforcer leur coopération.",
          "The AES is an alliance formed in 2023 by Burkina Faso, Mali and Niger to strengthen their cooperation.",
          "Les trois pays de l'AES ont tous connu des coups d'État militaires entre 2020 et 2022.",
          "The three AES countries all experienced military coups between 2020 and 2022.",
          "Géopolitique sahélienne",
          ["AES", "Mali", "Niger"]),
      q(
          "ac4_9r",
          "Qu'est-ce que la MINUSMA au Sahel ?",
          "What is MINUSMA in the Sahel?",
          [
            [
              "Une mission de maintien de la paix de l'ONU au Mali",
              "A UN peacekeeping mission in Mali"
            ],
            [
              "Un programme alimentaire international",
              "An international food program"
            ],
            ["Une force militaire française", "A French military force"],
            [
              "Un accord de paix entre pays du Sahel",
              "A peace agreement between Sahel countries"
            ]
          ],
          0,
          "La MINUSMA (Mission multidimensionnelle intégrée des Nations Unies pour la stabilisation au Mali) est une mission de paix de l'ONU.",
          "MINUSMA (United Nations Multidimensional Integrated Stabilization Mission in Mali) is a UN peace mission.",
          "La MINUSMA a été retirée du Mali en 2023 à la demande des autorités maliennes.",
          "MINUSMA was withdrawn from Mali in 2023 at the request of Malian authorities.",
          "Paix et sécurité",
          ["MINUSMA", "ONU"]),
      q(
          "ac4_10r",
          "Quelle est la politique du Burkina Faso vis-à-vis des partenaires internationaux depuis 2022 ?",
          "What is Burkina Faso's policy towards international partners since 2022?",
          [
            [
              "Diversification des partenariats, éloignement de la France, rapprochement avec la Russie",
              "Diversification of partnerships, distancing from France, rapprochement with Russia"
            ],
            [
              "Renforcement de tous les partenariats existants",
              "Strengthening all existing partnerships"
            ],
            ["Isolement diplomatique total", "Total diplomatic isolation"],
            [
              "Intégration complète dans l'Union Européenne",
              "Full integration into the European Union"
            ]
          ],
          0,
          "Depuis 2022, le Burkina a diversifié ses partenaires, demandé le départ des troupes françaises et s'est rapproché de la Russie.",
          "Since 2022, Burkina has diversified its partners, requested the departure of French troops and moved closer to Russia.",
          "Cette nouvelle orientation géopolitique s'inscrit dans la logique de souveraineté revendiquée par la junte militaire.",
          "This new geopolitical orientation is in line with the sovereignty logic claimed by the military junta.",
          "Géopolitique",
          ["France", "Russie"]),
    ]),
    Level(number: 5, title: "Analyste Politique", isLocked: true, questions: [
      q(
          "ac5_1",
          "Qu'est-ce que la liberté de la presse et son état au Burkina Faso ?",
          "What is freedom of the press and its state in Burkina Faso?",
          [
            [
              "Un droit fondamental dont l'exercice est fragilisé par la crise sécuritaire",
              "A fundamental right whose exercise is weakened by the security crisis"
            ],
            [
              "Une liberté totale et sans restriction",
              "A total and unrestricted freedom"
            ],
            [
              "Un droit inexistant au Burkina",
              "A non-existent right in Burkina"
            ],
            [
              "Un droit réservé aux médias étrangers",
              "A right reserved for foreign media"
            ]
          ],
          0,
          "Des journalistes ont été suspendus et des médias fermés au nom des impératifs sécuritaires.",
          "Journalists have been suspended and media outlets closed in the name of security imperatives.",
          "Reporters sans frontières classe le Burkina dans les pays à presse sous pression.",
          "Reporters Without Borders ranks Burkina among countries with a press under pressure.",
          "Presse",
          ["liberté presse", "journalisme"]),
      q(
          "ac5_2",
          "Qu'est-ce que la diplomatie du Burkina Faso avec la Russie ?",
          "What is Burkina Faso's diplomacy with Russia?",
          [
            [
              "Un rapprochement stratégique post-coup d'État incluant des coopérations militaires",
              "A post-coup strategic rapprochement including military cooperation"
            ],
            ["Un accord commercial uniquement", "Only a trade agreement"],
            ["Une alliance militaire formelle", "A formal military alliance"],
            ["Des relations inexistantes", "Non-existent relations"]
          ],
          0,
          "Le Burkina Faso s'est rapproché de la Russie après les coups d'État de 2022, réduisant l'influence française.",
          "Burkina Faso drew closer to Russia after the 2022 coups, reducing French influence.",
          "Le groupe Wagner (Afrika Corps) est présent au Burkina Faso pour la lutte anti-terroriste.",
          "The Wagner group (Afrika Corps) is present in Burkina Faso for counter-terrorism.",
          "Géopolitique",
          ["Russie", "diplomatie"]),
      q(
          "ac5_3",
          "Qu'est-ce que la désinformation et ses dangers au Burkina Faso ?",
          "What is disinformation and its dangers in Burkina Faso?",
          [
            [
              "La diffusion de fausses informations pouvant attiser les tensions et manipuler l'opinion",
              "The spread of false information that can inflame tensions and manipulate opinion"
            ],
            [
              "Un phénomène uniquement occidental",
              "A purely Western phenomenon"
            ],
            [
              "La critique légitime du gouvernement",
              "Legitimate criticism of the government"
            ],
            [
              "Un problème uniquement des réseaux sociaux étrangers",
              "A problem only of foreign social networks"
            ]
          ],
          0,
          "La désinformation sur les réseaux sociaux complique la gestion de la crise sécuritaire.",
          "Disinformation on social media complicates the management of the security crisis.",
          "Des cellules de vérification des faits (fact-checking) émergent au Burkina Faso.",
          "Fact-checking cells are emerging in Burkina Faso.",
          "Médias",
          ["désinformation", "fake news"]),
      q(
          "ac5_4",
          "Qu'est-ce que la transition politique et ses enjeux au Burkina Faso ?",
          "What is the political transition and its challenges in Burkina Faso?",
          [
            [
              "Le retour à un ordre constitutionnel civil après une période de gouvernement militaire",
              "The return to a civilian constitutional order after a period of military government"
            ],
            [
              "L'installation définitive d'un régime militaire",
              "The permanent establishment of a military regime"
            ],
            [
              "Des élections sans transition préalable",
              "Elections without prior transition"
            ],
            [
              "Un changement de Constitution uniquement",
              "Only a constitutional change"
            ]
          ],
          0,
          "La transition politique burkinabè vise un retour à l'ordre civil après les coups d'État de 2022.",
          "The Burkinabè political transition aims at a return to civilian order after the 2022 coups.",
          "La durée et les conditions de la transition font l'objet de débats nationaux et internationaux.",
          "The duration and conditions of the transition are subject to national and international debates.",
          "Politique",
          ["transition", "démocratie"]),
      q(
          "ac5_5",
          "Quel est l'enjeu de la sécurité alimentaire face aux crises actuelles au Burkina ?",
          "What is the food security challenge in the face of current crises in Burkina?",
          [
            [
              "Des millions de personnes en insécurité alimentaire à cause de l'insécurité et du climat",
              "Millions of people in food insecurity due to insecurity and climate"
            ],
            [
              "Le Burkina est autosuffisant alimentairement",
              "Burkina is food self-sufficient"
            ],
            [
              "Les crises n'affectent pas la production alimentaire",
              "Crises do not affect food production"
            ],
            ["Seules les villes sont touchées", "Only cities are affected"]
          ],
          0,
          "Plus de 3 millions de Burkinabè sont en situation d'insécurité alimentaire selon le PAM.",
          "More than 3 million Burkinabè are in food insecurity according to WFP.",
          "Les conflits ont fermé des milliers d'exploitations agricoles dans les zones affectées.",
          "Conflicts have closed thousands of farms in affected areas.",
          "Humanitaire",
          ["sécurité alimentaire", "crise"]),
      q(
          "ac5_6r",
          "Comment l'Alliance des États du Sahel (AES) s'inspire-t-elle de l'idéal sankariste ?",
          "How does the Alliance of Sahel States (AES) draw inspiration from the Sankarist ideal?",
          [
            [
              "Par son discours de souveraineté africaine et de refus des diktat extérieurs",
              "Through its discourse of African sovereignty and refusal of external dictates"
            ],
            [
              "Elle ne se réclame pas du tout de Sankara",
              "It does not claim Sankara at all"
            ],
            [
              "Elle applique strictement les politiques de Sankara",
              "It strictly applies Sankara's policies"
            ],
            [
              "Elle est financée par les héritiers de Sankara",
              "It is funded by Sankara's heirs"
            ]
          ],
          0,
          "Le discours souverainiste de l'AES rappelle la rhétorique sankariste anti-impérialiste.",
          "The AES's sovereigntist discourse recalls the Sankarist anti-imperialist rhetoric.",
          "Même si les pratiques diffèrent, le référentiel idéologique est partiellement sankariste.",
          "Even if practices differ, the ideological framework is partly Sankarist.",
          "Géopolitique sahélienne",
          ["AES", "Sankara"]),
      q(
          "ac5_7r",
          "Quel serait le regard de Sankara sur l'Afrique contemporaine ?",
          "What would Sankara's view be on contemporary Africa?",
          [
            [
              "Il dénoncerait la persistance de la corruption, de la dépendance et des inégalités",
              "He would denounce the persistence of corruption, dependence and inequalities"
            ],
            [
              "Il serait satisfait des progrès réalisés",
              "He would be satisfied with progress made"
            ],
            [
              "Il approuverait les coups d'État militaires actuels",
              "He would approve of current military coups"
            ],
            [
              "Il se réconcilierait avec le néocolonialisme",
              "He would reconcile himself with neocolonialism"
            ]
          ],
          0,
          "Les maux que Sankara combattait (corruption, dette, dépendance) sont encore présents 40 ans après sa mort.",
          "The evils Sankara fought (corruption, debt, dependence) are still present 40 years after his death.",
          "Son héritage reste une boussole pour ceux qui veulent une Afrique réellement libre et juste.",
          "His legacy remains a compass for those who want a truly free and just Africa.",
          "Héritage sankariste",
          ["héritage", "Afrique"]),
      q(
          "ac5_8r",
          "Quel est le rôle de la presse indépendante dans la démocratie burkinabè ?",
          "What is the role of the independent press in Burkinabè democracy?",
          [
            [
              "Informer les citoyens et contrôler le pouvoir",
              "Inform citizens and control power"
            ],
            [
              "Soutenir uniquement le gouvernement",
              "Support only the government"
            ],
            ["Diffuser de la propagande", "Spread propaganda"],
            ["Éviter les sujets politiques", "Avoid political subjects"]
          ],
          0,
          "Une presse libre et indépendante informe les citoyens et joue un rôle de contre-pouvoir essentiel.",
          "A free and independent press informs citizens and plays an essential counter-power role.",
          "Le Burkina Faso dispose de nombreux journaux, radios et sites d'information indépendants.",
          "Burkina Faso has many independent newspapers, radios and news sites.",
          "Liberté de la presse",
          ["presse libre", "démocratie"]),
      q(
          "ac5_9r",
          "Qu'est-ce que RSF (Reporters Sans Frontières) mesure concernant le Burkina Faso ?",
          "What does RSF (Reporters Without Borders) measure about Burkina Faso?",
          [
            [
              "La liberté de la presse et les conditions des journalistes",
              "Press freedom and journalists' conditions"
            ],
            ["La richesse économique", "Economic wealth"],
            ["La sécurité militaire", "Military security"],
            ["Le développement technologique", "Technological development"]
          ],
          0,
          "RSF publie chaque année un classement mondial de la liberté de la presse, incluant le Burkina Faso.",
          "RSF publishes an annual world press freedom ranking, including Burkina Faso.",
          "Le classement RSF prend en compte la sécurité des journalistes, l'indépendance des médias et d'autres critères.",
          "The RSF ranking takes into account journalist safety, media independence and other criteria.",
          "Liberté de la presse",
          ["RSF", "journalistes"]),
      q(
          "ac5_10r",
          "Qu'est-ce que la désinformation et comment la combattre au Burkina Faso ?",
          "What is disinformation and how to fight it in Burkina Faso?",
          [
            [
              "Des fausses informations délibérées combattues par le fact-checking et l'éducation aux médias",
              "Deliberate false information fought through fact-checking and media literacy"
            ],
            [
              "Des informations officielles erronées",
              "Incorrect official information"
            ],
            [
              "Des erreurs journalistiques involontaires",
              "Unintentional journalistic errors"
            ],
            [
              "Des critiques politiques légitimes",
              "Legitimate political criticism"
            ]
          ],
          0,
          "La désinformation est la diffusion volontaire de fausses informations, combattue par le fact-checking et la formation aux médias.",
          "Disinformation is the deliberate spreading of false information, fought through fact-checking and media literacy.",
          "Des plateformes comme Apanews et Benbere effectuent du fact-checking au Burkina Faso.",
          "Platforms like Apanews and Benbere perform fact-checking in Burkina Faso.",
          "Médias et vérité",
          ["désinformation", "fact-checking"]),
    ]),
  ],

  // ════════════════════════════════════════════════
  //  CULTURE
  // ════════════════════════════════════════════════
  "Culture": [
    Level(number: 1, title: "Arts et Patrimoine", isLocked: false, questions: [
      q(
          "cu1_1",
          "Qu'est-ce que le FESPACO ?",
          "What is FESPACO?",
          [
            [
              "Festival Panafricain du Cinéma et de la Télévision de Ouagadougou",
              "Pan-African Film and Television Festival of Ouagadougou"
            ],
            ["Festival de Sport et de Cuisine", "Sport and Cuisine Festival"],
            ["Forum Économique Sahélien", "Sahelian Economic Forum"],
            ["Fête des Sciences et Technologies", "Science and Technology Fair"]
          ],
          0,
          "Le FESPACO est le plus grand festival de cinéma africain, créé en 1969.",
          "FESPACO is the largest African film festival, created in 1969.",
          "Il se tient tous les deux ans à Ouagadougou et attire des cinéastes du monde entier.",
          "It is held every two years in Ouagadougou and attracts filmmakers from around the world.",
          "Culture burkinabè",
          ["FESPACO", "cinéma"]),
      q(
          "cu1_2",
          "Qu'est-ce que le SIAO ?",
          "What is SIAO?",
          [
            [
              "Salon International de l'Artisanat de Ouagadougou",
              "International Handicraft Fair of Ouagadougou"
            ],
            [
              "Syndicat International des Artistes",
              "International Artists Union"
            ],
            ["Service d'Information Africaine", "African Information Service"],
            ["Société d'Industrie Africaine", "African Industry Society"]
          ],
          0,
          "Le SIAO valorise l'artisanat africain et se tient tous les deux ans à Ouagadougou.",
          "SIAO promotes African handicrafts and is held every two years in Ouagadougou.",
          "Des artisans de plus de 30 pays africains y participent.",
          "Craftspeople from more than 30 African countries participate.",
          "Culture burkinabè",
          ["SIAO", "artisanat"]),
      q(
          "cu1_3",
          "Qu'est-ce qu'un patrimoine immatériel ?",
          "What is intangible heritage?",
          [
            [
              "Traditions, expressions culturelles, savoir-faire transmis oralement",
              "Traditions, cultural expressions, know-how transmitted orally"
            ],
            ["Un musée national uniquement", "A national museum only"],
            ["Une monnaie ancienne", "An old currency"],
            ["Un bâtiment classé", "A listed building"]
          ],
          0,
          "Le patrimoine immatériel inclut les pratiques sociales, rituels et expressions artistiques.",
          "Intangible heritage includes social practices, rituals and artistic expressions.",
          "L'UNESCO protège le patrimoine immatériel dans le monde entier.",
          "UNESCO protects intangible heritage worldwide.",
          "UNESCO",
          ["patrimoine", "culture"]),
      q(
          "cu1_4",
          "Quel instrument de musique est emblématique du Burkina Faso ?",
          "Which musical instrument is emblematic of Burkina Faso?",
          [
            ["Le balafon", "The balafon"],
            ["La guitare", "The guitar"],
            ["Le piano", "The piano"],
            ["La trompette", "The trumpet"]
          ],
          0,
          "Le balafon est un instrument à percussion à lames de bois, emblème culturel burkinabè.",
          "The balafon is a percussion instrument with wooden keys, a Burkinabè cultural emblem.",
          "Le balafon est inscrit au patrimoine immatériel de l'humanité par l'UNESCO.",
          "The balafon is inscribed on UNESCO's intangible cultural heritage list.",
          "Musique burkinabè",
          ["balafon", "musique"]),
      q(
          "cu1_5",
          "Qu'est-ce que la danse des masques au Burkina Faso ?",
          "What is the mask dance in Burkina Faso?",
          [
            [
              "Pratique culturelle et spirituelle liée aux rites de passage et cérémonies funèbres",
              "Cultural and spiritual practice linked to rites of passage and funeral ceremonies"
            ],
            ["Un spectacle touristique uniquement", "A tourist show only"],
            ["Une danse contemporaine", "A contemporary dance"],
            ["Un rituel interdit", "A forbidden ritual"]
          ],
          0,
          "Les masques représentent des esprits ancestraux et jouent un rôle central dans les rites.",
          "Masks represent ancestral spirits and play a central role in rituals.",
          "Les masques Bobo et Nuna du Burkina sont reconnus mondialement.",
          "Burkina's Bobo and Nuna masks are recognized worldwide.",
          "Traditions",
          ["masques", "danse"]),
      q(
          "cu1_6r",
          "Quelle politique culturelle Sankara a-t-il menée pour valoriser la culture burkinabè ?",
          "What cultural policy did Sankara pursue to promote Burkinabè culture?",
          [
            [
              "Il a promu l'artisanat local, les langues nationales et l'art révolutionnaire contre la domination culturelle étrangère",
              "He promoted local crafts, national languages and revolutionary art against foreign cultural domination"
            ],
            [
              "Il a interdit toute culture traditionnelle",
              "He banned all traditional culture"
            ],
            ["Il a imposé la culture française", "He imposed French culture"],
            [
              "Il n'avait aucune politique culturelle",
              "He had no cultural policy"
            ]
          ],
          0,
          "Sankara faisait du faso dan fani, de la musique burkinabè et des arts locaux des symboles de résistance culturelle.",
          "Sankara made faso dan fani, Burkinabè music and local arts symbols of cultural resistance.",
          "Il portait et promouvait le costume traditionnel dans toutes les cérémonies officielles.",
          "He wore and promoted traditional costume at all official ceremonies.",
          "Souveraineté culturelle",
          ["culture", "Sankara"]),
      q(
          "cu1_7r",
          "Comment Sankara utilisait-il la musique comme outil révolutionnaire ?",
          "How did Sankara use music as a revolutionary tool?",
          [
            [
              "Il composait et jouait de la musique pour diffuser les idéaux révolutionnaires",
              "He composed and played music to spread revolutionary ideals"
            ],
            [
              "Il interdisait la musique traditionnelle",
              "He banned traditional music"
            ],
            [
              "Il n'avait aucun intérêt pour la musique",
              "He had no interest in music"
            ],
            [
              "Il importait uniquement de la musique étrangère",
              "He only imported foreign music"
            ]
          ],
          0,
          "Sankara était guitariste et utilisait la musique pour mobiliser et conscientiser le peuple.",
          "Sankara was a guitarist and used music to mobilize and raise awareness among the people.",
          "Il a composé des chants révolutionnaires qui sont encore chantés aujourd'hui.",
          "He composed revolutionary songs that are still sung today.",
          "Musique révolutionnaire",
          ["musique", "Sankara"]),
      q(
          "cu1_8r",
          "Quel genre musical burkinabè mélange musique traditionnelle et moderne ?",
          "What Burkinabè musical genre mixes traditional and modern music?",
          [
            ["L'afrobeat burkinabè", "Burkinabè afrobeat"],
            ["Le reggae", "Reggae"],
            ["La musique mandingue modernisée", "Modernized Mandingo music"],
            ["Tous ces genres", "All these genres"]
          ],
          3,
          "Les artistes burkinabès mélangent souvent la musique mandingue, le reggae et l'afrobeat avec des instruments traditionnels.",
          "Burkinabè artists often mix Mandingo music, reggae and afrobeat with traditional instruments.",
          "Des artistes comme Victor Démé et Bil Aka Kora mélangent tradition et modernité.",
          "Artists like Victor Démé and Bil Aka Kora blend tradition and modernity.",
          "Musique burkinabè",
          ["musique", "tradition"]),
      q(
          "cu1_9r",
          "Qu'est-ce que la littérature orale au Burkina Faso ?",
          "What is oral literature in Burkina Faso?",
          [
            [
              "Les contes, légendes et épopées transmis oralement",
              "Tales, legends and epics transmitted orally"
            ],
            [
              "Des livres écrits en langues locales",
              "Books written in local languages"
            ],
            ["Des pièces de théâtre enregistrées", "Recorded plays"],
            ["Des émissions de radio", "Radio programs"]
          ],
          0,
          "La littérature orale comprend les contes, proverbes, épopées et légendes transmis de génération en génération.",
          "Oral literature includes tales, proverbs, epics and legends passed from generation to generation.",
          "Les griots sont les gardiens de la tradition orale burkinabè.",
          "Griots are the keepers of Burkinabè oral tradition.",
          "Littérature orale",
          ["conte", "griot"]),
      q(
          "cu1_10r",
          "Quel artiste burkinabè est internationalement reconnu pour sa musique engagée ?",
          "Which Burkinabè artist is internationally recognized for their committed music?",
          [
            ["Smockey (rappeur et activiste)", "Smockey (rapper and activist)"],
            ["Michael Jackson Burkina", "Michael Jackson Burkina"],
            ["Bob Marley du Sahel", "Bob Marley of the Sahel"],
            ["Amadou et Mariam (duo malien)", "Amadou and Mariam (Malian duo)"]
          ],
          0,
          "Smockey est un rappeur burkinabè reconnu mondialement pour sa musique engagée et son activisme politique.",
          "Smockey is a Burkinabè rapper recognized worldwide for his committed music and political activism.",
          "Il est l'un des fondateurs du mouvement Balai Citoyen qui a contribué à la chute de Compaoré en 2014.",
          "He is one of the founders of the Balai Citoyen movement that helped overthrow Compaoré in 2014.",
          "Musique engagée",
          ["Smockey", "rap"]),
    ]),
    Level(
        number: 2,
        title: "Sociétés et Traditions",
        isLocked: true,
        questions: [
          q(
              "cu2_1",
              "Quel est le rôle des griots dans la société africaine ?",
              "What is the role of griots in African society?",
              [
                [
                  "Gardiens de la mémoire orale, musiciens et conteurs traditionnels",
                  "Keepers of oral memory, musicians and traditional storytellers"
                ],
                ["Agents de sécurité", "Security officers"],
                ["Agriculteurs spécialisés", "Specialized farmers"],
                ["Administrateurs locaux", "Local administrators"]
              ],
              0,
              "Les griots transmettent l'histoire, les généalogies et les traditions orales.",
              "Griots transmit history, genealogies and oral traditions.",
              "Ils accompagnent les grandes cérémonies : mariages, funérailles, couronnements.",
              "They accompany major ceremonies: weddings, funerals, coronations.",
              "Culture africaine",
              ["griots", "tradition"]),
          q(
              "cu2_2",
              "Qu'est-ce que la gastronomie burkinabè ?",
              "What is Burkinabè gastronomy?",
              [
                [
                  "Cuisine riche basée sur mil, sorgho, ignames et sauces variées",
                  "Rich cuisine based on millet, sorghum, yams and varied sauces"
                ],
                ["Cuisine exclusivement de viande", "Exclusively meat cuisine"],
                ["Copie de la cuisine française", "Copy of French cuisine"],
                ["Cuisine sans épices", "Cuisine without spices"]
              ],
              0,
              "Le tô (pâte de mil ou sorgho) est le plat de base de la cuisine burkinabè.",
              "Tô (millet or sorghum paste) is the staple dish of Burkinabè cuisine.",
              "Le babenda et le riz gras sont aussi des plats traditionnels populaires.",
              "Babenda and riz gras are also popular traditional dishes.",
              "Gastronomie",
              ["cuisine", "tô"]),
          q(
              "cu2_3",
              "Qu'est-ce que la littérature orale africaine ?",
              "What is African oral literature?",
              [
                [
                  "Contes, épopées et proverbes transmis de génération en génération",
                  "Tales, epics and proverbs passed down from generation to generation"
                ],
                ["Des livres imprimés uniquement", "Printed books only"],
                ["De la poésie écrite en latin", "Poetry written in Latin"],
                ["Des bandes dessinées", "Comics"]
              ],
              0,
              "La littérature orale est un patrimoine immense incluant contes, légendes et proverbes.",
              "Oral literature is a vast heritage including tales, legends and proverbs.",
              "Des auteurs comme Amadou Hampâté Bâ ont transcrit ces traditions.",
              "Authors like Amadou Hampâté Bâ have transcribed these traditions.",
              "Littérature africaine",
              ["littérature", "orale"]),
          q(
              "cu2_4",
              "Qu'est-ce que le festival de Laongo au Burkina Faso ?",
              "What is the Laongo festival in Burkina Faso?",
              [
                [
                  "Festival international de sculpture sur granit",
                  "International granite sculpture festival"
                ],
                [
                  "Festival de musique électronique",
                  "Electronic music festival"
                ],
                ["Foire aux animaux", "Animal fair"],
                ["Compétition de cuisine", "Cooking competition"]
              ],
              0,
              "À Laongo, des sculpteurs du monde entier créent des œuvres sur les rochers de granit.",
              "At Laongo, sculptors from around the world create works on granite rocks.",
              "C'est l'un des sites artistiques les plus originaux d'Afrique de l'Ouest.",
              "It is one of the most original artistic sites in West Africa.",
              "Culture burkinabè",
              ["Laongo", "sculpture"]),
          q(
              "cu2_5",
              "Qu'est-ce que la mode africaine contemporaine ?",
              "What is contemporary African fashion?",
              [
                [
                  "Fusion de styles traditionnels et modernes utilisant tissus locaux comme le pagne",
                  "Fusion of traditional and modern styles using local fabrics like pagne"
                ],
                [
                  "Copie exclusivement des marques occidentales",
                  "Exclusive copying of Western brands"
                ],
                [
                  "Vêtements identiques partout en Afrique",
                  "Identical clothing throughout Africa"
                ],
                [
                  "Mode exclusivement réservée aux cérémonies",
                  "Fashion exclusively for ceremonies"
                ]
              ],
              0,
              "La mode africaine est un secteur créatif en plein essor mêlant tradition et modernité.",
              "African fashion is a booming creative sector blending tradition and modernity.",
              "Des designers burkinabè participent aux semaines de la mode internationales.",
              "Burkinabè designers participate in international fashion weeks.",
              "Mode",
              ["mode", "pagne"]),
          q(
              "cu2_6r",
              "Quel rôle le FESPACO jouait-il dans la vision culturelle de Sankara ?",
              "What role did FESPACO play in Sankara's cultural vision?",
              [
                [
                  "Un outil de rayonnement du cinéma africain et de promotion des cultures africaines",
                  "A tool for the spread of African cinema and promotion of African cultures"
                ],
                ["Une distraction inutile", "A useless distraction"],
                [
                  "Un festival uniquement occidental",
                  "An exclusively Western festival"
                ],
                [
                  "Un événement sans signification politique",
                  "An event without political significance"
                ]
              ],
              0,
              "Sankara voyait le FESPACO comme une arme culturelle pour libérer les esprits du colonialisme.",
              "Sankara saw FESPACO as a cultural weapon to free minds from colonialism.",
              "Il encourageait les cinéastes africains à raconter leurs propres histoires.",
              "He encouraged African filmmakers to tell their own stories.",
              "Cinéma africain",
              ["FESPACO", "cinéma"]),
          q(
              "cu2_7r",
              "Qu'est-ce que Sankara voulait dire par la décolonisation des esprits ?",
              "What did Sankara mean by the decolonization of minds?",
              [
                [
                  "Libérer les Africains de l'intériorisation de l'infériorité culturelle héritée du colonialisme",
                  "Free Africans from the internalization of cultural inferiority inherited from colonialism"
                ],
                [
                  "Expulser tous les Européens d'Afrique",
                  "Expel all Europeans from Africa"
                ],
                ["Interdire la langue française", "Ban the French language"],
                ["Fermer toutes les universités", "Close all universities"]
              ],
              0,
              "Sankara disait que la colonisation la plus dangereuse est celle des esprits qui se croient inférieurs.",
              "Sankara said that the most dangerous colonization is that of minds that believe themselves inferior.",
              "Il voulait que les Africains soient fiers de leur culture, leur langue et leur histoire.",
              "He wanted Africans to be proud of their culture, language and history.",
              "Décolonisation culturelle",
              ["esprits", "colonisation"]),
          q(
              "cu2_8r",
              "Qui est Norbert Zongo, figure emblématique de la presse burkinabè ?",
              "Who is Norbert Zongo, an emblematic figure of the Burkinabè press?",
              [
                [
                  "Un journaliste d'investigation assassiné en 1998",
                  "An investigative journalist assassinated in 1998"
                ],
                ["Un acteur de cinéma célèbre", "A famous film actor"],
                ["Un musicien traditionnel", "A traditional musician"],
                ["Un écrivain de romans policiers", "A crime novelist"]
              ],
              0,
              "Norbert Zongo était un journaliste et directeur de L'Indépendant, assassiné le 13 décembre 1998.",
              "Norbert Zongo was a journalist and director of L'Indépendant, assassinated on December 13, 1998.",
              "Son assassinat a déclenché une crise politique majeure au Burkina Faso.",
              "His assassination triggered a major political crisis in Burkina Faso.",
              "Presse burkinabè",
              ["Norbert Zongo", "journaliste"]),
          q(
              "cu2_9r",
              "Quelle est la tradition artisanale burkinabè la plus reconnue internationalement ?",
              "What is the most internationally recognized Burkinabè craft tradition?",
              [
                [
                  "La sculpture sur bois et bronze",
                  "Wood and bronze sculpture"
                ],
                ["La poterie industrielle", "Industrial pottery"],
                ["Les vêtements synthétiques", "Synthetic clothing"],
                ["L'architecture moderne", "Modern architecture"]
              ],
              0,
              "La sculpture sur bois et le travail du bronze sont les traditions artisanales burkinabès les plus reconnues.",
              "Wood sculpture and bronze work are the most recognized Burkinabè craft traditions.",
              "Les bronziers burkinabès exportent leurs œuvres dans le monde entier.",
              "Burkinabè bronze artists export their works worldwide.",
              "Artisanat",
              ["sculpture", "bronze"]),
          q(
              "cu2_10r",
              "Qu'est-ce que la princesse Yennenga symbolise dans la culture burkinabè ?",
              "What does Princess Yennenga symbolize in Burkinabè culture?",
              [
                [
                  "L'ancêtre fondatrice de l'empire Mossi et symbole de la femme courageuse",
                  "The founding ancestor of the Mossi empire and symbol of the courageous woman"
                ],
                ["Une reine actuelle du Burkina", "A current queen of Burkina"],
                ["Une héroïne de guerre moderne", "A modern war heroine"],
                [
                  "La déesse de la pluie dans la religion Mossi",
                  "The rain goddess in Mossi religion"
                ]
              ],
              0,
              "La princesse Yennenga est la figure légendaire fondatrice du peuple Mossi, symbole de courage et de féminité.",
              "Princess Yennenga is the legendary founding figure of the Mossi people, symbol of courage and femininity.",
              "L'Étalon d'Or du FESPACO est nommé en son honneur, récompensant le meilleur film africain.",
              "The FESPACO Golden Stallion is named in her honor, rewarding the best African film.",
              "Mythologie Mossi",
              ["Yennenga", "Mossi"]),
        ]),
    Level(number: 3, title: "Culture Mondiale", isLocked: true, questions: [
      q(
          "cu3_1",
          "Qu'est-ce que l'interculturalité ?",
          "What is interculturality?",
          [
            [
              "Interaction et échanges enrichissants entre différentes cultures",
              "Enriching interaction and exchanges between different cultures"
            ],
            [
              "Domination d'une culture sur les autres",
              "Domination of one culture over others"
            ],
            ["Isolation culturelle volontaire", "Voluntary cultural isolation"],
            [
              "Uniformisation de toutes les cultures",
              "Uniformization of all cultures"
            ]
          ],
          0,
          "L'interculturalité favorise le dialogue, la compréhension mutuelle et l'enrichissement.",
          "Interculturality promotes dialogue, mutual understanding and enrichment.",
          "Le Burkina Faso est un exemple de coexistence de plus de 60 groupes ethniques.",
          "Burkina Faso is an example of coexistence of more than 60 ethnic groups.",
          "Anthropologie",
          ["interculturalité", "diversité"]),
      q(
          "cu3_2",
          "Qu'est-ce que le panafricanisme culturel ?",
          "What is cultural Pan-Africanism?",
          [
            [
              "Mouvement promouvant l'unité et la fierté des peuples africains",
              "Movement promoting the unity and pride of African peoples"
            ],
            ["Partage d'une monnaie unique", "Sharing a single currency"],
            [
              "Fusion de tous les pays africains",
              "Merger of all African countries"
            ],
            [
              "Rejet de toutes influences extérieures",
              "Rejection of all external influences"
            ]
          ],
          0,
          "Le panafricanisme célèbre les cultures africaines et leur contribution à l'humanité.",
          "Pan-Africanism celebrates African cultures and their contribution to humanity.",
          "Des penseurs comme Cheikh Anta Diop ont défendu la grandeur des civilisations africaines.",
          "Thinkers like Cheikh Anta Diop defended the greatness of African civilizations.",
          "Philosophie africaine",
          ["panafricanisme", "unité"]),
      q(
          "cu3_3",
          "Qu'est-ce que la diversité culturelle ?",
          "What is cultural diversity?",
          [
            [
              "Richesse des différentes cultures humaines dans le monde",
              "Richness of different human cultures in the world"
            ],
            [
              "Uniformisation des pratiques mondiales",
              "Uniformization of global practices"
            ],
            [
              "Supériorité d'une culture sur les autres",
              "Superiority of one culture over others"
            ],
            ["Isolation culturelle", "Cultural isolation"]
          ],
          0,
          "La diversité culturelle est une ressource pour l'humanité à préserver.",
          "Cultural diversity is a resource for humanity to be preserved.",
          "L'UNESCO a adopté une convention pour la protection de la diversité culturelle.",
          "UNESCO adopted a convention for the protection of cultural diversity.",
          "UNESCO",
          ["diversité", "cultures"]),
      q(
          "cu3_4",
          "Qu'est-ce que la créolisation culturelle ?",
          "What is cultural creolization?",
          [
            [
              "Mélange et fusion de cultures différentes créant quelque chose de nouveau",
              "Blending and fusion of different cultures creating something new"
            ],
            [
              "Domination d'une culture principale",
              "Domination of a main culture"
            ],
            [
              "Disparition des cultures minoritaires",
              "Disappearance of minority cultures"
            ],
            [
              "Retour aux seules traditions ancestrales",
              "Return to ancestral traditions only"
            ]
          ],
          0,
          "La créolisation crée de nouvelles formes culturelles à partir de mélanges.",
          "Creolization creates new cultural forms from blends.",
          "La musique afrobeat est un exemple de créolisation culturelle.",
          "Afrobeat music is an example of cultural creolization.",
          "Anthropologie culturelle",
          ["créolisation", "mélange"]),
      q(
          "cu3_5",
          "Quel est l'impact du cinéma africain sur la représentation des cultures africaines ?",
          "What is the impact of African cinema on the representation of African cultures?",
          [
            [
              "Il offre une vision authentique et diverse de l'Afrique par les Africains",
              "It offers an authentic and diverse vision of Africa by Africans"
            ],
            ["Il copie uniquement Hollywood", "It only copies Hollywood"],
            [
              "Il montre uniquement les problèmes africains",
              "It only shows African problems"
            ],
            [
              "Il est peu influent mondialement",
              "It has little global influence"
            ]
          ],
          0,
          "Le cinéma africain combat les stéréotypes et valorise les cultures du continent.",
          "African cinema fights stereotypes and promotes the continent's cultures.",
          "Des réalisateurs burkinabè comme Gaston Kaboré sont reconnus mondialement.",
          "Burkinabè directors like Gaston Kaboré are recognized worldwide.",
          "Cinéma africain",
          ["cinéma", "représentation"]),
      q(
          "cu3_6r",
          "Comment Sankara valorisait-il la littérature orale africaine ?",
          "How did Sankara value African oral literature?",
          [
            [
              "Comme un trésor culturel à préserver et diffuser pour forger l'identité nationale",
              "As a cultural treasure to preserve and spread to forge national identity"
            ],
            [
              "Comme une littérature inférieure à l'écrit",
              "As a literature inferior to written work"
            ],
            ["Comme un obstacle au progrès", "As an obstacle to progress"],
            [
              "Comme un élément à remplacer par la littérature française",
              "As an element to replace with French literature"
            ]
          ],
          0,
          "Sankara valorisait les griots, conteurs et gardiens de la mémoire orale comme piliers de l'identité africaine.",
          "Sankara valued griots, storytellers and keepers of oral memory as pillars of African identity.",
          "Il disait : notre histoire est riche, elle mérite d'être racontée par nous-mêmes.",
          "He said: our history is rich, it deserves to be told by ourselves.",
          "Littérature orale",
          ["griot", "mémoire"]),
      q(
          "cu3_7r",
          "Quelle relation Sankara avait-il avec les artistes burkinabè ?",
          "What relationship did Sankara have with Burkinabè artists?",
          [
            [
              "Il les considérait comme des soldats de la révolution culturelle et les soutenait",
              "He considered them soldiers of the cultural revolution and supported them"
            ],
            [
              "Il les persécutait comme ennemis de la révolution",
              "He persecuted them as enemies of the revolution"
            ],
            [
              "Il ignorait complètement les artistes",
              "He completely ignored artists"
            ],
            [
              "Il exportait les artistes à l'étranger",
              "He exported artists abroad"
            ]
          ],
          0,
          "Sankara voyait les artistes comme des vecteurs essentiels de la conscience révolutionnaire.",
          "Sankara saw artists as essential vectors of revolutionary consciousness.",
          "Des musiciens, peintres et réalisateurs burkinabè ont fleuri pendant la révolution.",
          "Burkinabè musicians, painters and filmmakers flourished during the revolution.",
          "Art révolutionnaire",
          ["artistes", "culture"]),
      q(
          "cu3_8r",
          "Quelle ethnie burkinabè est connue pour ses masques rituels colorés ?",
          "Which Burkinabè ethnic group is known for its colorful ritual masks?",
          [
            ["Les Bwa (Bobo)", "The Bwa (Bobo)"],
            ["Les Mossi", "The Mossi"],
            ["Les Peul", "The Fulani"],
            ["Les Gourmantché", "The Gourmantché"]
          ],
          0,
          "Les Bwa (ou Bobo) sont célèbres pour leurs spectaculaires masques rituels en bois peints de couleurs vives.",
          "The Bwa (or Bobo) are famous for their spectacular ritual masks in wood painted in bright colors.",
          "Ces masques sont utilisés lors de cérémonies initiatiques et rituels agricoles.",
          "These masks are used during initiation ceremonies and agricultural rituals.",
          "Traditions ethniques",
          ["masques", "Bwa"]),
      q(
          "cu3_9r",
          "Qu'est-ce que le Poro, rituel traditionnel burkinabè ?",
          "What is Poro, a traditional Burkinabè ritual?",
          [
            [
              "Un rituel d'initiation des jeunes dans certaines sociétés",
              "An initiation ritual for young people in certain societies"
            ],
            ["Un festival de musique", "A music festival"],
            ["Un rite funéraire", "A funeral rite"],
            ["Une cérémonie de mariage", "A wedding ceremony"]
          ],
          0,
          "Le Poro est un rituel d'initiation pratiqué dans certaines sociétés du sud-ouest du Burkina Faso.",
          "Poro is an initiation ritual practiced in certain societies of southwest Burkina Faso.",
          "Ces rituels d'initiation marquent le passage de l'enfance à l'âge adulte.",
          "These initiation rituals mark the transition from childhood to adulthood.",
          "Rites traditionnels",
          ["Poro", "initiation"]),
      q(
          "cu3_10r",
          "Qu'est-ce que le bogolan, tissu traditionnel du Burkina Faso et du Mali ?",
          "What is bogolan, a traditional fabric from Burkina Faso and Mali?",
          [
            [
              "Un tissu teint avec de la boue fermentée créant des motifs géométriques",
              "A fabric dyed with fermented mud creating geometric patterns"
            ],
            ["Un tissu synthétique importé", "An imported synthetic fabric"],
            [
              "Un tissu réservé aux cérémonies funèbres",
              "A fabric reserved for funeral ceremonies"
            ],
            ["Un type de tissu industriel", "A type of industrial fabric"]
          ],
          0,
          "Le bogolan est un tissu traditionnel peint avec de la boue fermentée riche en tannins, créant des motifs géométriques.",
          "Bogolan is a traditional fabric painted with fermented mud rich in tannins, creating geometric patterns.",
          "Ce tissu est valorisé par des créateurs de mode africains contemporains comme symbole d'identité culturelle.",
          "This fabric is valued by contemporary African fashion designers as a symbol of cultural identity.",
          "Artisanat textil",
          ["bogolan", "tissu"]),
    ]),
    Level(
        number: 4,
        title: "Expressions Artistiques",
        isLocked: true,
        questions: [
          q(
              "cu4_1",
              "Quel artiste burkinabè de renommée internationale chante le blues mandingue ?",
              "Which internationally renowned Burkinabè artist sings Mandingo blues?",
              [
                ["Victor Démé", "Victor Démé"],
                ["Youssou N'Dour", "Youssou N'Dour"],
                ["Angelique Kidjo", "Angelique Kidjo"],
                ["Salif Keïta", "Salif Keïta"]
              ],
              0,
              "Victor Démé est un chanteur burkinabè de blues mandingue reconnu en Europe et en Amérique.",
              "Victor Démé is a Burkinabè Mandingo blues singer recognized in Europe and America.",
              "Il a été découvert tardivement mais a connu un succès mondial après 50 ans.",
              "He was discovered late but achieved worldwide success after age 50.",
              "Musique",
              ["Démé", "blues"]),
          q(
              "cu4_2",
              "Qu'est-ce que la peinture sous-verre en Afrique de l'Ouest ?",
              "What is reverse glass painting in West Africa?",
              [
                [
                  "Une technique artistique populaire représentant scènes du quotidien et religieuses",
                  "A popular artistic technique depicting everyday and religious scenes"
                ],
                ["Une technique industrielle", "An industrial technique"],
                ["Un art réservé aux musées", "An art reserved for museums"],
                [
                  "Une technique importée de Chine uniquement",
                  "A technique imported from China only"
                ]
              ],
              0,
              "La peinture sous-verre est très présente au Burkina Faso et au Sénégal.",
              "Reverse glass painting is very present in Burkina Faso and Senegal.",
              "Cette technique offre des couleurs vives et des contours précis très appréciés.",
              "This technique offers bright colors and precise outlines that are highly appreciated.",
              "Art",
              ["peinture", "art populaire"]),
          q(
              "cu4_3",
              "Qu'est-ce que le théâtre Récréâtrales de Ouagadougou ?",
              "What is the Récréâtrales theater festival in Ouagadougou?",
              [
                [
                  "Un festival international de théâtre africain en plein air",
                  "An international open-air African theater festival"
                ],
                ["Un festival de cinéma", "A film festival"],
                ["Un salon du livre", "A book fair"],
                ["Un festival de musique", "A music festival"]
              ],
              0,
              "Les Récréâtrales valorisent la création théâtrale africaine contemporaine.",
              "Récréâtrales promotes contemporary African theatrical creation.",
              "Ce festival se déroule dans des espaces ouverts à Ouagadougou tous les deux ans.",
              "This festival takes place in open spaces in Ouagadougou every two years.",
              "Théâtre",
              ["Récréâtrales", "théâtre"]),
          q(
              "cu4_4",
              "Qu'est-ce que le hip-hop engagé au Burkina Faso ?",
              "What is engaged hip-hop in Burkina Faso?",
              [
                [
                  "Un mouvement musical abordant les problèmes politiques et sociaux",
                  "A musical movement addressing political and social problems"
                ],
                [
                  "Un divertissement sans engagement",
                  "Entertainment without engagement"
                ],
                [
                  "Une musique importée sans adaptation locale",
                  "Imported music without local adaptation"
                ],
                [
                  "Un genre uniquement pour les jeunes riches",
                  "A genre only for wealthy youth"
                ]
              ],
              0,
              "Des rappeurs comme Smockey et Sams'K le Jah ont utilisé le hip-hop pour l'engagement politique.",
              "Rappers like Smockey and Sams'K le Jah used hip-hop for political engagement.",
              "Le hip-hop burkinabè chante la résistance, la corruption et l'identité africaine.",
              "Burkinabè hip-hop sings about resistance, corruption and African identity.",
              "Musique",
              ["hip-hop", "engagement"]),
          q(
              "cu4_5",
              "Qu'est-ce que la mode africaine burkinabè contemporaine ?",
              "What is contemporary Burkinabè African fashion?",
              [
                [
                  "Une fusion de tissus traditionnels et de coupes modernes",
                  "A fusion of traditional fabrics and modern cuts"
                ],
                [
                  "Une copie de la haute couture parisienne",
                  "A copy of Parisian haute couture"
                ],
                [
                  "L'abandon total des tissus locaux",
                  "Complete abandonment of local fabrics"
                ],
                ["Un déclin de la mode locale", "Decline of local fashion"]
              ],
              0,
              "Des créateurs burkinabè conjuguent faso dan fani et design contemporain pour des collections originales.",
              "Burkinabè designers combine faso dan fani and contemporary design for original collections.",
              "La mode africaine burkinabè est présentée dans des salons internationaux.",
              "Burkinabè African fashion is presented at international exhibitions.",
              "Mode",
              ["mode africaine", "créateurs"]),
          q(
              "cu4_6r",
              "Comment Sankara envisageait-il la relation entre culture africaine et modernité ?",
              "How did Sankara envision the relationship between African culture and modernity?",
              [
                [
                  "Une modernité africaine ancrée dans les valeurs culturelles propres, non une copie de l'Occident",
                  "An African modernity rooted in own cultural values, not a copy of the West"
                ],
                [
                  "L'abandon total des cultures traditionnelles",
                  "Total abandonment of traditional cultures"
                ],
                [
                  "La copie servile des modèles occidentaux",
                  "Servile copying of Western models"
                ],
                [
                  "Le rejet de toute modernité",
                  "The rejection of all modernity"
                ]
              ],
              0,
              "Sankara voulait une Afrique moderne qui reste elle-même, fière de sa culture tout en s'ouvrant au monde.",
              "Sankara wanted a modern Africa that remains itself, proud of its culture while opening to the world.",
              "Il portait le faso dan fani dans les réunions internationales pour affirmer cette identité.",
              "He wore faso dan fani at international meetings to affirm this identity.",
              "Modernité africaine",
              ["culture", "modernité"]),
          q(
              "cu4_7r",
              "Quel héritage culturel de Sankara influence le FESPACO aujourd'hui ?",
              "What cultural legacy of Sankara influences FESPACO today?",
              [
                [
                  "L'engagement pour un cinéma africain souverain, critique et au service des peuples",
                  "The commitment to a sovereign, critical African cinema serving the peoples"
                ],
                [
                  "Une vision commerciale du cinéma",
                  "A commercial vision of cinema"
                ],
                [
                  "Un cinéma de propagande uniquement",
                  "Only a propaganda cinema"
                ],
                [
                  "Un festival fermé aux cinéastes étrangers",
                  "A festival closed to foreign filmmakers"
                ]
              ],
              0,
              "Le FESPACO porte encore l'idéal sankariste d'un cinéma africain libre, diversifié et engagé.",
              "FESPACO still carries the Sankarist ideal of a free, diverse and committed African cinema.",
              "Idrissa Ouédraogo et d'autres cinéastes s'inscrivent dans cette tradition.",
              "Idrissa Ouédraogo and other filmmakers are part of this tradition.",
              "Cinéma africain",
              ["FESPACO", "cinéma"]),
          q(
              "cu4_8r",
              "Quel auteur burkinabè est connu pour ses romans sur la société africaine contemporaine ?",
              "Which Burkinabè author is known for novels about contemporary African society?",
              [
                ["Monique Ilboudo", "Monique Ilboudo"],
                ["Ahmadou Kourouma", "Ahmadou Kourouma"],
                ["Chinua Achebe", "Chinua Achebe"],
                ["Wole Soyinka", "Wole Soyinka"]
              ],
              0,
              "Monique Ilboudo est une auteure burkinabè reconnue pour ses romans traitant des droits des femmes et de la société africaine.",
              "Monique Ilboudo is a recognized Burkinabè author known for novels dealing with women's rights and African society.",
              "Elle est aussi militante des droits humains et ancienne ministre.",
              "She is also a human rights activist and former minister.",
              "Littérature burkinabè",
              ["Ilboudo", "roman"]),
          q(
              "cu4_9r",
              "Qu'est-ce que la peinture sous verre burkinabè ?",
              "What is Burkinabè glass painting?",
              [
                [
                  "Une technique artistique traditionnelle peignant sur du verre",
                  "A traditional artistic technique of painting on glass"
                ],
                ["Un style de peinture murale", "A mural painting style"],
                ["Une technique de photographie", "A photography technique"],
                ["Un art numérique", "A digital art"]
              ],
              0,
              "La peinture sous verre est une technique artistique populaire au Burkina Faso héritée de traditions artistiques africaines.",
              "Glass painting is a popular artistic technique in Burkina Faso inherited from African artistic traditions.",
              "Cette technique est particulièrement développée à Bobo-Dioulasso.",
              "This technique is particularly developed in Bobo-Dioulasso.",
              "Arts visuels",
              ["peinture", "verre"]),
          q(
              "cu4_10r",
              "Qu'est-ce que le festival FITMO à Ouagadougou ?",
              "What is the FITMO festival in Ouagadougou?",
              [
                [
                  "Festival International de Théâtre et de Marionnettes de Ouagadougou",
                  "International Theatre and Puppet Festival of Ouagadougou"
                ],
                [
                  "Festival International de Tir et Musique de l'Ouest",
                  "International Shooting and Music Festival of the West"
                ],
                [
                  "Forum International des Technologies Mobiles",
                  "International Mobile Technologies Forum"
                ],
                [
                  "Festival d'Innovations Technologiques et Médicales",
                  "Festival of Technological and Medical Innovations"
                ]
              ],
              0,
              "Le FITMO est un festival international de théâtre et marionnettes qui se tient à Ouagadougou, valorisant les arts vivants africains.",
              "FITMO is an international theatre and puppet festival held in Ouagadougou, showcasing African performing arts.",
              "Ce festival attire des troupes de théâtre de tout le continent africain et d'Europe.",
              "This festival attracts theatre groups from across the African continent and Europe.",
              "Arts vivants",
              ["FITMO", "théâtre"]),
        ]),
    Level(number: 5, title: "Expert Culturel", isLocked: true, questions: [
      q(
          "cu5_1",
          "Quel est l'héritage culturel de Thomas Sankara au Burkina Faso ?",
          "What is Thomas Sankara's cultural legacy in Burkina Faso?",
          [
            [
              "Un héritage de dignité, de panafricanisme et de fierté culturelle toujours vivant",
              "A living legacy of dignity, pan-Africanism and cultural pride"
            ],
            ["Un héritage uniquement militaire", "Only a military legacy"],
            [
              "Un héritage contesté et rejeté",
              "A contested and rejected legacy"
            ],
            [
              "Un héritage sans influence sur la jeunesse",
              "A legacy with no influence on youth"
            ]
          ],
          0,
          "Sankara a promu le port du faso dan fani, la culture locale et l'autonomie culturelle africaine.",
          "Sankara promoted the wearing of faso dan fani, local culture and African cultural autonomy.",
          "Son image orne les murs d'Ouagadougou et inspire les mouvements de jeunesse africains.",
          "His image adorns the walls of Ouagadougou and inspires African youth movements.",
          "Héritage",
          ["Sankara", "culture"]),
      q(
          "cu5_2",
          "Qu'est-ce que la littérature burkinabè et ses auteurs phares ?",
          "What is Burkinabè literature and its key authors?",
          [
            [
              "Une littérature francophone riche avec des auteurs comme Nazi Boni et Norbert Zongo",
              "A rich French-language literature with authors like Nazi Boni and Norbert Zongo"
            ],
            ["Une littérature inexistante", "A non-existent literature"],
            ["Uniquement de la littérature orale", "Only oral literature"],
            [
              "Une littérature uniquement en anglais",
              "A literature only in English"
            ]
          ],
          0,
          "Nazi Boni est le premier romancier burkinabè avec Crépuscule des temps anciens (1962).",
          "Nazi Boni is the first Burkinabè novelist with Crépuscule des temps anciens (1962).",
          "Des auteurs contemporains comme Monique Ilboudo abordent les droits des femmes.",
          "Contemporary authors like Monique Ilboudo address women's rights.",
          "Littérature",
          ["littérature", "auteurs"]),
      q(
          "cu5_3",
          "Qu'est-ce que le Musée National du Burkina Faso ?",
          "What is the National Museum of Burkina Faso?",
          [
            [
              "Le principal musée préservant l'héritage culturel et historique du pays à Ouagadougou",
              "The main museum preserving the country's cultural and historical heritage in Ouagadougou"
            ],
            [
              "Un musée d'art contemporain uniquement",
              "Only a contemporary art museum"
            ],
            ["Un musée colonial français", "A French colonial museum"],
            [
              "Un musée virtuel sans collections physiques",
              "A virtual museum without physical collections"
            ]
          ],
          0,
          "Le Musée National abrite plus de 6 000 objets allant de la préhistoire à nos jours.",
          "The National Museum houses more than 6,000 objects from prehistory to the present.",
          "Il est un lieu de référence pour comprendre les 60 ethnies du Burkina Faso.",
          "It is a reference place to understand Burkina Faso's 60 ethnic groups.",
          "Patrimoine",
          ["musée", "patrimoine"]),
      q(
          "cu5_4",
          "Quel est l'apport de la femme burkinabè dans la création artistique ?",
          "What is the contribution of Burkinabè women in artistic creation?",
          [
            [
              "Des artistes, écrivaines et cinéastes qui enrichissent la création nationale",
              "Artists, writers and filmmakers who enrich national creation"
            ],
            ["Un rôle marginal dans les arts", "A marginal role in the arts"],
            [
              "Une participation uniquement à l'artisanat",
              "Participation only in crafts"
            ],
            [
              "Un rôle absent de la création culturelle",
              "An absent role in cultural creation"
            ]
          ],
          0,
          "Des femmes comme Monique Ilboudo en littérature et Fanta Nacro au cinéma marquent la culture burkinabè.",
          "Women like Monique Ilboudo in literature and Fanta Nacro in cinema mark Burkinabè culture.",
          "L'artisanat est dominé par les femmes burkinabè qui transmettent ce savoir-faire.",
          "Crafts are dominated by Burkinabè women who transmit this know-how.",
          "Femmes",
          ["femmes", "arts"]),
      q(
          "cu5_5",
          "Comment la culture burkinabè rayonne-t-elle en Afrique et dans le monde ?",
          "How does Burkinabè culture radiate in Africa and the world?",
          [
            [
              "Via le FESPACO, le SIAO, la musique et les artistes reconnus internationalement",
              "Via FESPACO, SIAO, music and internationally recognized artists"
            ],
            [
              "La culture burkinabè est uniquement locale",
              "Burkinabè culture is only local"
            ],
            [
              "Uniquement via les musiciens de la diaspora",
              "Only through diaspora musicians"
            ],
            [
              "Elle n'a aucun rayonnement international",
              "It has no international reach"
            ]
          ],
          0,
          "Le FESPACO et le SIAO sont des événements mondiaux qui attirent des participants de dizaines de pays.",
          "FESPACO and SIAO are world events that attract participants from dozens of countries.",
          "Des artistes burkinabè comme Victor Démé sont appréciés sur tous les continents.",
          "Burkinabè artists like Victor Démé are appreciated on all continents.",
          "Rayonnement",
          ["FESPACO", "rayonnement"]),
      q(
          "cu5_6r",
          "Comment l'héritage culturel de Sankara transcende-t-il les frontières africaines ?",
          "How does Sankara's cultural legacy transcend African borders?",
          [
            [
              "Par ses discours, sa musique et son exemple qui inspirent des mouvements dans le monde entier",
              "Through his speeches, music and example that inspire movements worldwide"
            ],
            [
              "Il n'a eu aucun impact hors du Burkina",
              "He had no impact outside Burkina"
            ],
            [
              "Son influence se limite à l'Afrique de l'Ouest",
              "His influence is limited to West Africa"
            ],
            [
              "Son héritage est uniquement politique",
              "His legacy is only political"
            ]
          ],
          0,
          "Des portraits de Sankara apparaissent en Amérique latine, en Europe et dans le monde entier.",
          "Portraits of Sankara appear in Latin America, Europe and around the world.",
          "Il est devenu une figure universelle de la résistance contre l'oppression et l'injustice.",
          "He has become a universal figure of resistance against oppression and injustice.",
          "Rayonnement mondial",
          ["monde", "Sankara"]),
      q(
          "cu5_7r",
          "Que signifie l'expression sankariste la patrie ou la mort, nous vaincrons dans le contexte culturel actuel ?",
          "What does the Sankarist expression fatherland or death we will win mean in the current cultural context?",
          [
            [
              "Un appel à défendre sa culture, son identité et sa souveraineté contre toute domination",
              "A call to defend one's culture, identity and sovereignty against all domination"
            ],
            ["Un appel à la guerre militaire", "A call to military war"],
            ["Un slogan vide de sens", "An empty slogan"],
            ["Un message de désespoir", "A message of despair"]
          ],
          0,
          "Dans le contexte actuel, cette devise inspire la résistance culturelle et politique contre le néocolonialisme.",
          "In the current context, this motto inspires cultural and political resistance against neocolonialism.",
          "Des artistes africains s'en inspirent pour créer des oeuvres de résistance culturelle.",
          "African artists draw inspiration from it to create works of cultural resistance.",
          "Résistance culturelle",
          ["résistance", "culture"]),
      q(
          "cu5_8r",
          "Qu'est-ce que le festival MICA au Burkina Faso ?",
          "What is the MICA festival in Burkina Faso?",
          [
            [
              "Marché International des Cultures Artisanales",
              "International Market of Craft Cultures"
            ],
            [
              "Festival de Musique International",
              "International Music Festival"
            ],
            [
              "Marché International des Céréales Africaines",
              "International Market of African Cereals"
            ],
            [
              "Mouvement Islamique de Culture Africaine",
              "Islamic Movement of African Culture"
            ]
          ],
          0,
          "Le MICA est le Marché International des Cultures Artisanales organisé au Burkina Faso pour promouvoir l'artisanat africain.",
          "MICA is the International Market of Craft Cultures organized in Burkina Faso to promote African crafts.",
          "Le MICA attire des artisans de toute l'Afrique et du monde.",
          "MICA attracts craftspeople from across Africa and the world.",
          "Culture et artisanat",
          ["MICA", "artisanat"]),
      q(
          "cu5_9r",
          "Quelle est la langue nationale la plus parlée au Burkina Faso ?",
          "What is the most spoken national language in Burkina Faso?",
          [
            ["Le Mooré (Mooré)", "Mooré"],
            ["Le Dioula", "Dioula"],
            ["Le Fulfuldé", "Fulfuldé"],
            ["Le Gourmanchéma", "Gourmanchéma"]
          ],
          0,
          "Le Mooré est la langue nationale la plus parlée au Burkina Faso, langue du peuple Mossi.",
          "Mooré is the most spoken national language in Burkina Faso, language of the Mossi people.",
          "Le Mooré est parlé par environ 50% de la population, principalement dans le Plateau Central.",
          "Mooré is spoken by about 50% of the population, mainly in the Central Plateau.",
          "Langues nationales",
          ["Mooré", "langue"]),
      q(
          "cu5_10r",
          "Comment la culture burkinabè influence-t-elle la mode africaine contemporaine ?",
          "How does Burkinabè culture influence contemporary African fashion?",
          [
            [
              "Par les tissus traditionnels, motifs et le SIAO salon international de l'artisanat",
              "Through traditional fabrics, patterns and the SIAO international crafts fair"
            ],
            [
              "Elle n'a aucune influence sur la mode",
              "It has no influence on fashion"
            ],
            [
              "Uniquement par les vêtements militaires",
              "Only through military clothing"
            ],
            [
              "Par des marques de luxe européennes",
              "Through European luxury brands"
            ]
          ],
          0,
          "Les tissus burkinabès, le SIAO et les créateurs locaux contribuent à l'essor d'une mode africaine authentique.",
          "Burkinabè fabrics, SIAO and local designers contribute to the rise of authentic African fashion.",
          "Le SIAO (Salon International de l'Artisanat de Ouagadougou) est l'une des plus grandes foires d'artisanat africain.",
          "SIAO (International Crafts Fair of Ouagadougou) is one of the largest African crafts fairs.",
          "Mode africaine",
          ["SIAO", "mode"]),
    ]),
  ],
};

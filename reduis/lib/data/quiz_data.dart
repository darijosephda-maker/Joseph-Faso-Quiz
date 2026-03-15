// lib/data/quiz_data.dart
import '../models/question.dart';
import '../models/level.dart';

final Map<String, List<Level>> allQuizData = {
  "Histoire": [
    // NIVEAU 1 : LES BASES DE LA RÉVOLUTION
    Level(
      number: 1,
      title: "Les Fondements",
      isLocked: false,
      questions: [
        Question(
          id: "h1_q1",
          title: {
            "fr":
                "En quelle année la Haute-Volta est-elle devenue le Burkina Faso ?",
            "en": "In what year did Upper Volta become Burkina Faso?",
          },
          options: [
            {"fr": "1983", "en": "1983"},
            {"fr": "1984", "en": "1984"},
            {"fr": "1987", "en": "1987"},
            {"fr": "1960", "en": "1960"},
          ],
          correctIndex: 1,
          explanation: {
            "fr":
                "C'est le 4 août 1984, lors du premier anniversaire de la Révolution.",
            "en":
                "It was on August 4, 1984, during the first anniversary of the Revolution.",
          },
          didYouKnow: {
            "fr": "Le nom 'Burkina Faso' combine deux langues locales.",
            "en": "The name 'Burkina Faso' combines two local languages.",
          },
          source: "Histoire nationale / archives",
          tags: ["nom", "révolution"],
          date: "1984-08-04",
        ),
        Question(
          id: "h1_q2",
          title: {
            "fr": "Que signifie 'Burkina Faso' ?",
            "en": "What does 'Burkina Faso' mean?",
          },
          options: [
            {"fr": "Pays de la Révolution", "en": "Land of Revolution"},
            {"fr": "Terre de savane", "en": "Savannah land"},
            {"fr": "Patrie des hommes intègres", "en": "Land of upright men"},
            {"fr": "Le pays des ancêtres", "en": "Land of ancestors"},
          ],
          correctIndex: 2,
          explanation: {
            "fr": "Mélange de Mooré (Burkina) et de Dioula (Faso).",
            "en": "A mix of Mooré (Burkina) and Dioula (Faso).",
          },
          didYouKnow: {
            "fr": "'Burkina' signifie 'hommes intègres' en Mooré.",
            "en": "'Burkina' means 'upright men' in Mooré.",
          },
          source: "Dictionnaires locaux",
          tags: ["langue", "étymologie"],
          date: "1960",
        ),
      ],
    ),

    // NIVEAU 2 : LES GRANDS CHANGEMENTS
    Level(
      number: 2,
      title: "La Reconstruction",
      questions: [
        Question(
          id: "h2_q1",
          title: {
            "fr":
                "Quel est l'objectif principal des politiques de reconstruction post-révolution?",
            "en":
                "What is the main objective of post-revolution reconstruction policies?",
          },
          options: [
            {
              "fr": "Renforcer les institutions et relancer l'économie",
              "en": "Strengthen institutions and revive the economy",
            },
            {"fr": "Réduire la population", "en": "Reduce the population"},
            {
              "fr": "Isoler le pays du monde",
              "en": "Isolate the country from the world",
            },
            {"fr": "Privatiser toutes les terres", "en": "Privatize all lands"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "La reconstruction vise en général à stabiliser les institutions, la sécurité et l'économie.",
            "en":
                "Reconstruction generally aims to stabilize institutions, security and the economy.",
          },
          didYouKnow: {
            "fr":
                "Les plans de reconstruction incluent souvent des réformes institutionnelles.",
            "en": "Reconstruction plans often include institutional reforms.",
          },
          source: "Synthèse historique",
          tags: ["reconstruction", "politiques"],
          date: "1985",
        ),
        Question(
          id: "h2_q2",
          title: {
            "fr":
                "Quel indicateur est souvent utilisé pour mesurer la reprise économique?",
            "en": "Which indicator is often used to measure economic recovery?",
          },
          options: [
            {"fr": "Le PIB", "en": "GDP"},
            {"fr": "La longueur des routes", "en": "Road length"},
            {"fr": "Le nombre de fêtes", "en": "Number of festivals"},
            {"fr": "La couleur du drapeau", "en": "Flag color"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Le PIB (produit intérieur brut) est un indicateur courant de la santé économique.",
            "en": "GDP is a common indicator of economic health.",
          },
          didYouKnow: {
            "fr": "Le PIB ne capture pas toujours le bien-être social complet.",
            "en": "GDP does not always capture full social well-being.",
          },
          source: "Économie de base",
          tags: ["économie", "PIB"],
          date: "2023",
        ),
        // Ajout: question récente de niveau 2
        Question(
          id: "h2_q3",
          title: {
            "fr":
                "Quel rôle jouent les leaders civiques dans la reconstruction?",
            "en": "What role do civic leaders play in reconstruction?",
          },
          options: [
            {
              "fr": "Faciliter la réconciliation et la participation citoyenne",
              "en": "Facilitate reconciliation and citizen participation",
            },
            {"fr": "Diriger l'armée uniquement", "en": "Only lead the army"},
            {
              "fr": "Créer des barrières commerciales",
              "en": "Create trade barriers",
            },
            {
              "fr": "Changer le drapeau national",
              "en": "Change the national flag",
            },
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Les leaders civiques encouragent la réconciliation et la participation à la reconstruction.",
            "en":
                "Civic leaders encourage reconciliation and participation in reconstruction.",
          },
          didYouKnow: {
            "fr":
                "La société civile peut aider à tenir les institutions responsables.",
            "en": "Civil society can help hold institutions accountable.",
          },
          source: "Analyses civiques",
          tags: ["société civile", "réconciliation"],
          date: "2024",
        ),
      ],
    ),

    // NIVEAU 3 : Événements et mémoire
    Level(
      number: 3,
      title: "Événements récents et mémoire",
      isLocked: false,
      questions: [
        Question(
          id: "h3_q1",
          title: {
            "fr":
                "Quelle journée nationale commémore l'indépendance de nombreux pays africains?",
            "en":
                "Which national day commemorates independence in many African countries?",
          },
          options: [
            {"fr": "Jour de l'Indépendance", "en": "Independence Day"},
            {"fr": "Fête du Travail", "en": "Labor Day"},
            {"fr": "Fête nationale des musées", "en": "National Museums Day"},
            {"fr": "Jour de la Paix", "en": "Peace Day"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "La Journée de l'Indépendance célèbre la date d'accession à l'indépendance pour chaque pays.",
            "en":
                "Independence Day celebrates each country's date of independence.",
          },
          didYouKnow: {
            "fr": "Les dates et traditions varient d'un pays à l'autre.",
            "en": "Dates and traditions vary by country.",
          },
          source: "Archives nationales",
          tags: ["commémoration", "indépendance"],
          date: "2023",
        ),
        Question(
          id: "h3_q2",
          title: {
            "fr":
                "Quel type de document officialise les symboles nationaux (drapeau, hymne)?",
            "en":
                "What type of document formalizes national symbols (flag, anthem)?",
          },
          options: [
            {"fr": "La Constitution ou les lois", "en": "Constitution or laws"},
            {"fr": "Un contrat privé", "en": "A private contract"},
            {"fr": "Un bulletin municipal", "en": "A municipal bulletin"},
            {"fr": "Une affiche publique", "en": "A public poster"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Les symboles nationaux sont souvent définis et protégés par la Constitution ou des lois spécifiques.",
            "en":
                "National symbols are often defined and protected by the constitution or specific laws.",
          },
          didYouKnow: {
            "fr": "Les symboles servent à l'unité nationale.",
            "en": "Symbols serve national unity.",
          },
          source: "Textes officiels",
          tags: ["symboles", "constitution"],
          date: "2021",
        ),
        Question(
          id: "h3_q3",
          title: {
            "fr": "Quel est l'objectif d'une commémoration nationale?",
            "en": "What is the purpose of a national commemoration?",
          },
          options: [
            {
              "fr": "Rappeler un événement et renforcer la mémoire collective",
              "en": "Recall an event and strengthen collective memory",
            },
            {"fr": "Vendre des produits souvenirs", "en": "Sell souvenirs"},
            {"fr": "Changer la monnaie", "en": "Change the currency"},
            {"fr": "Réorganiser les frontières", "en": "Reorganize borders"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Les commémorations visent à rappeler des événements importants et à transmettre des leçons historiques.",
            "en":
                "Commemorations aim to recall important events and pass on historical lessons.",
          },
          didYouKnow: {
            "fr":
                "Elles peuvent aussi rassembler la population autour de valeurs partagées.",
            "en": "They can also bring people together around shared values.",
          },
          source: "Histoire civique",
          tags: ["mémoire", "commémoration"],
          date: "2020",
        ),
        // Ajout: question sur mémoire locale
        Question(
          id: "h3_q4",
          title: {
            "fr": "Pourquoi conserver des archives historiques?",
            "en": "Why preserve historical archives?",
          },
          options: [
            {
              "fr": "Pour comprendre le passé et guider le futur",
              "en": "To understand the past and guide the future",
            },
            {"fr": "Pour décorer les bâtiments", "en": "To decorate buildings"},
            {"fr": "Pour augmenter les impôts", "en": "To raise taxes"},
            {
              "fr": "Pour réduire l'alphabétisation",
              "en": "To reduce literacy",
            },
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Les archives préservent la mémoire et permettent la recherche et l'éducation.",
            "en": "Archives preserve memory and enable research and education.",
          },
          didYouKnow: {
            "fr":
                "Les archives peuvent être numériques pour meilleure accessibilité.",
            "en": "Archives can be digitized for better accessibility.",
          },
          source: "Musées et bibliothèques",
          tags: ["archives", "mémoire"],
          date: "2019",
        ),
      ],
    ),
  ],

  "Économie": [
    Level(
      number: 1,
      title: "Indicateurs et Ressources",
      isLocked: false,
      questions: [
        Question(
          id: "e1_q1",
          title: {
            "fr": "Quelle est la monnaie officielle du Burkina Faso?",
            "en": "What is the official currency of Burkina Faso?",
          },
          options: [
            {"fr": "Franc CFA", "en": "CFA franc"},
            {"fr": "Euro", "en": "Euro"},
            {"fr": "Dollar américain", "en": "US dollar"},
            {"fr": "Livre sterling", "en": "Pound sterling"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Le Burkina Faso utilise le Franc CFA (XOF) en tant que monnaie commune à plusieurs pays d'Afrique de l'Ouest.",
            "en":
                "Burkina Faso uses the CFA franc (XOF) as a common currency in several West African countries.",
          },
          didYouKnow: {
            "fr": "Le Franc CFA est arrimé à l'euro via des accords régionaux.",
            "en":
                "The CFA franc is pegged to the euro via regional agreements.",
          },
          source: "Banque centrale/Informations publiques",
          tags: ["monnaie", "économie"],
          date: "2023",
        ),
        Question(
          id: "e1_q2",
          title: {
            "fr":
                "Quel secteur emploie traditionnellement le plus grand nombre de personnes?",
            "en":
                "Which sector traditionally employs the largest number of people?",
          },
          options: [
            {"fr": "Agriculture", "en": "Agriculture"},
            {"fr": "Technologie", "en": "Technology"},
            {"fr": "Finance", "en": "Finance"},
            {"fr": "Tourisme", "en": "Tourism"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "L'agriculture reste le principal employeur dans de nombreux pays d'Afrique de l'Ouest.",
            "en":
                "Agriculture remains the main employer in many West African countries.",
          },
          didYouKnow: {
            "fr":
                "Les cultures vivrières et l'élevage sont centraux pour l'économie rurale.",
            "en": "Food crops and livestock are central to the rural economy.",
          },
          source: "Rapports économiques",
          tags: ["emploi", "agriculture"],
          date: "2022",
        ),
        // Ajouts: questions économiques supplémentaires
        Question(
          id: "e1_q3",
          title: {
            "fr": "Qu'est-ce que le PIB par habitant mesure?",
            "en": "What does GDP per capita measure?",
          },
          options: [
            {
              "fr": "La production moyenne par personne",
              "en": "Average production per person",
            },
            {"fr": "La température moyenne", "en": "Average temperature"},
            {"fr": "Le nombre de parcs", "en": "Number of parks"},
            {"fr": "Le nombre d'hôtels", "en": "Number of hotels"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Le PIB par habitant divise le PIB total par la population pour donner une moyenne.",
            "en":
                "GDP per capita divides total GDP by the population to give an average.",
          },
          didYouKnow: {
            "fr": "Il ne capture pas toujours la distribution des richesses.",
            "en": "It doesn't always capture wealth distribution.",
          },
          source: "Données macroéconomiques",
          tags: ["PIB", "mesure"],
          date: "2023",
        ),
        Question(
          id: "e1_q4",
          title: {
            "fr": "Qu'est-ce qu'une exportation?",
            "en": "What is an export?",
          },
          options: [
            {
              "fr": "Un produit vendu à l'étranger",
              "en": "A product sold abroad",
            },
            {
              "fr": "Un produit acheté localement",
              "en": "A product bought locally",
            },
            {"fr": "Un service gratuit", "en": "A free service"},
            {"fr": "Une taxe interne", "en": "A domestic tax"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Les exportations sont des biens ou services vendus à des pays étrangers.",
            "en": "Exports are goods or services sold to foreign countries.",
          },
          didYouKnow: {
            "fr": "Les exportations influencent la balance commerciale.",
            "en": "Exports influence the trade balance.",
          },
          source: "Commerce extérieur",
          tags: ["commerce", "export"],
          date: "2022",
        ),
        Question(
          id: "e1_q5",
          title: {
            "fr": "Qu'est-ce que l'inflation?",
            "en": "What is inflation?",
          },
          options: [
            {"fr": "Hausse générale des prix", "en": "General rise in prices"},
            {"fr": "Baisse des salaires", "en": "Drop in wages"},
            {"fr": "Augmentation des parcs", "en": "Increase in parks"},
            {"fr": "Stabilisation des taux", "en": "Stabilization of rates"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "L'inflation correspond à la hausse généralisée des prix dans une économie.",
            "en":
                "Inflation refers to the general increase in prices in an economy.",
          },
          didYouKnow: {
            "fr":
                "Les banques centrales suivent l'inflation pour ajuster la politique monétaire.",
            "en": "Central banks monitor inflation to adjust monetary policy.",
          },
          source: "Économie de base",
          tags: ["inflation", "économie"],
          date: "2023",
        ),
        Question(
          id: "e1_q6",
          title: {
            "fr": "Que signifie 'balance commerciale' ?",
            "en": "What does 'trade balance' mean?",
          },
          options: [
            {
              "fr": "Différence entre exportations et importations",
              "en": "Difference between exports and imports",
            },
            {"fr": "Nombre d'habitants", "en": "Number of inhabitants"},
            {
              "fr": "Niveau des réserves d'eau",
              "en": "Level of water reserves",
            },
            {"fr": "Années de mandat", "en": "Years of mandate"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "La balance commerciale calcule la différence entre ce qu'un pays vend et achète à l'étranger.",
            "en":
                "The trade balance calculates the difference between what a country sells and buys abroad.",
          },
          didYouKnow: {
            "fr": "Un excédent indique plus d'exportations que d'importations.",
            "en": "A surplus indicates more exports than imports.",
          },
          source: "Commerce extérieur",
          tags: ["commerce", "balance"],
          date: "2022",
        ),
      ],
    ),
  ],

  "Citoyenneté": [
    Level(
      number: 1,
      title: "Institutions et Fonctionnement",
      isLocked: false,
      questions: [
        Question(
          id: "c1_q1",
          title: {
            "fr": "Quelle institution rédige et adopte la Constitution?",
            "en": "Which institution drafts and adopts the Constitution?",
          },
          options: [
            {"fr": "Le Parlement", "en": "The Parliament"},
            {
              "fr": "Le Conseil Constitutionnel",
              "en": "The Constitutional Council",
            },
            {
              "fr": "Une assemblée constituante",
              "en": "A constituent assembly",
            },
            {"fr": "Le Gouvernement seul", "en": "The Government alone"},
          ],
          correctIndex: 2,
          explanation: {
            "fr":
                "Une Constitution est souvent adoptée par une assemblée constituante élue ou spécialement mandatée.",
            "en":
                "A constitution is often adopted by an elected or specially mandated constituent assembly.",
          },
          didYouKnow: {
            "fr":
                "Les Constitutions peuvent être réécrites pour moderniser les institutions.",
            "en": "Constitutions can be rewritten to modernize institutions.",
          },
          source: "Référence civique",
          tags: ["institutions", "civique"],
          date: "2020",
        ),
        Question(
          id: "c1_q2",
          title: {
            "fr":
                "Quelle est la durée habituelle d'un mandat présidentiel dans de nombreux pays africains ?",
            "en":
                "What is the typical length of a presidential term in many African countries?",
          },
          options: [
            {"fr": "2 ans", "en": "2 years"},
            {"fr": "4 à 7 ans", "en": "4 to 7 years"},
            {"fr": "10 ans", "en": "10 years"},
            {"fr": "Mandat à vie", "en": "Life term"},
          ],
          correctIndex: 1,
          explanation: {
            "fr":
                "Beaucoup de pays ont des mandats de 4 ou 5 ans, parfois renouvelables.",
            "en":
                "Many countries have 4- or 5-year terms, sometimes renewable.",
          },
          didYouKnow: {
            "fr":
                "Des réformes récentes ont modifié la durée des mandats dans certains pays.",
            "en": "Recent reforms have changed term lengths in some countries.",
          },
          source: "Synthèse civique",
          tags: ["mandat", "réformes"],
          date: "2022",
        ),
        // Ajouts: questions citoyenneté
        Question(
          id: "c1_q3",
          title: {
            "fr": "Qu'est-ce que le suffrage universel?",
            "en": "What is universal suffrage?",
          },
          options: [
            {
              "fr": "Le droit de vote pour tous les citoyens adultes",
              "en": "The right to vote for all adult citizens",
            },
            {"fr": "Un impôt national", "en": "A national tax"},
            {"fr": "Un type de monnaie", "en": "A type of currency"},
            {"fr": "Un festival culturel", "en": "A cultural festival"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Le suffrage universel garantit le droit de vote à la plupart des citoyens adultes.",
            "en":
                "Universal suffrage grants voting rights to most adult citizens.",
          },
          didYouKnow: {
            "fr":
                "Le suffrage peut être direct ou indirect selon les systèmes.",
            "en": "Suffrage can be direct or indirect depending on systems.",
          },
          source: "Civique de base",
          tags: ["vote", "droit"],
          date: "2018",
        ),
        Question(
          id: "c1_q4",
          title: {
            "fr": "Quel est le rôle principal d'un parlement?",
            "en": "What is the main role of a parliament?",
          },
          options: [
            {
              "fr": "Faire les lois et représenter les citoyens",
              "en": "Make laws and represent citizens",
            },
            {"fr": "Gérer les hôpitaux", "en": "Run hospitals"},
            {
              "fr": "Organiser des compétitions sportives",
              "en": "Organize sports competitions",
            },
            {
              "fr": "Peindre les bâtiments publics",
              "en": "Paint public buildings",
            },
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Le parlement débat et vote les lois, et contrôle parfois le gouvernement.",
            "en":
                "Parliament debates and votes laws, and may oversee the government.",
          },
          didYouKnow: {
            "fr": "Les parlements peuvent être bicaméraux ou monocaméraux.",
            "en": "Parliaments can be bicameral or unicameral.",
          },
          source: "Institutions civiques",
          tags: ["parlement", "lois"],
          date: "2019",
        ),
        Question(
          id: "c1_q5",
          title: {
            "fr": "Qu'est-ce qu'une gouvernance transparente?",
            "en": "What is transparent governance?",
          },
          options: [
            {
              "fr": "Gestion claire et responsabilité des décideurs",
              "en": "Clear management and accountability of decision-makers",
            },
            {
              "fr": "Secrets d'État permanents",
              "en": "Permanent state secrets",
            },
            {"fr": "Absence de lois", "en": "Absence of laws"},
            {"fr": "Interdiction des médias", "en": "Banning of media"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "La gouvernance transparente implique responsabilité et accès à l'information.",
            "en":
                "Transparent governance involves accountability and access to information.",
          },
          didYouKnow: {
            "fr": "La transparence favorise la confiance citoyenne.",
            "en": "Transparency fosters citizen trust.",
          },
          source: "Civique",
          tags: ["gouvernance", "transparence"],
          date: "2021",
        ),
        Question(
          id: "c1_q6",
          title: {
            "fr": "Que signifie 'séparation des pouvoirs'?",
            "en": "What does 'separation of powers' mean?",
          },
          options: [
            {
              "fr":
                  "Répartition des fonctions entre législatif, exécutif et judiciaire",
              "en":
                  "Distribution of functions among legislative, executive and judicial",
            },
            {
              "fr": "Regrouper tous les pouvoirs au même organe",
              "en": "Consolidating all powers in one body",
            },
            {"fr": "Suppression du parlement", "en": "Abolition of parliament"},
            {
              "fr": "Un seul parti obligatoire",
              "en": "A single party mandatory",
            },
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "La séparation des pouvoirs évite la concentration du pouvoir.",
            "en": "Separation of powers prevents concentration of authority.",
          },
          didYouKnow: {
            "fr": "C'est un principe fondamental des démocraties modernes.",
            "en": "It's a fundamental principle of modern democracies.",
          },
          source: "Institutions",
          tags: ["pouvoirs", "démocratie"],
          date: "2019",
        ),
      ],
    ),
  ],

  "Symboles": [
    Level(
      number: 1,
      title: "Drapeau, Hymne et Emblèmes",
      isLocked: false,
      questions: [
        Question(
          id: "s1_q1",
          title: {
            "fr": "Que représente généralement un drapeau national?",
            "en": "What does a national flag usually represent?",
          },
          options: [
            {
              "fr": "L'identité et les valeurs du pays",
              "en": "The identity and values of the country",
            },
            {"fr": "Un code postal", "en": "A postal code"},
            {"fr": "Un type de nourriture", "en": "A type of food"},
            {"fr": "Un véhicule officiel", "en": "An official vehicle"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Le drapeau symbolise souvent l'histoire, la culture et les valeurs nationales.",
            "en":
                "The flag often symbolizes history, culture and national values.",
          },
          didYouKnow: {
            "fr": "Les couleurs peuvent avoir des significations précises.",
            "en": "Colors can have specific meanings.",
          },
          source: "Textes officiels",
          tags: ["drapeau", "symbole"],
          date: "2021",
        ),
        Question(
          id: "s1_q2",
          title: {
            "fr": "Qu'est-ce qu'un hymne national?",
            "en": "What is a national anthem?",
          },
          options: [
            {
              "fr": "Un chant officiel qui honore la nation",
              "en": "An official song that honors the nation",
            },
            {"fr": "Un document juridique", "en": "A legal document"},
            {"fr": "Une fête privée", "en": "A private celebration"},
            {"fr": "Un type de monnaie", "en": "A type of currency"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "L'hymne national est un chant officiel joué lors de cérémonies.",
            "en":
                "The national anthem is an official song played during ceremonies.",
          },
          didYouKnow: {
            "fr":
                "Les hymnes ont souvent été adoptés lors d'événements historiques.",
            "en": "Anthems were often adopted during historical events.",
          },
          source: "Culture nationale",
          tags: ["hymne", "symbole"],
          date: "2020",
        ),
      ],
    ),
  ],

  // Nouveaux thèmes
  "Santé": [
    Level(
      number: 1,
      title: "Santé Publique",
      isLocked: false,
      questions: [
        Question(
          id: "sante_q1",
          title: {
            "fr":
                "Quelle pratique aide à prévenir la transmission des maladies?",
            "en": "Which practice helps prevent disease transmission?",
          },
          options: [
            {
              "fr": "Se laver les mains régulièrement",
              "en": "Washing hands regularly",
            },
            {"fr": "Ignorer les symptômes", "en": "Ignoring symptoms"},
            {
              "fr": "Partager les médicaments sans avis",
              "en": "Sharing medicines without advice",
            },
            {
              "fr": "Fumer dans les lieux publics",
              "en": "Smoking in public places",
            },
          ],
          correctIndex: 0,
          explanation: {
            "fr": "L'hygiène des mains réduit la transmission d'infections.",
            "en": "Hand hygiene reduces spread of infections.",
          },
          didYouKnow: {
            "fr":
                "Le lavage des mains est l'une des mesures de santé publique les plus efficaces.",
            "en":
                "Handwashing is one of the most effective public health measures.",
          },
          source: "OMS",
          tags: ["santé", "prévention"],
          date: "2022",
        ),
      ],
    ),
  ],

  "Culture": [
    Level(
      number: 1,
      title: "Patrimoine et Arts",
      isLocked: false,
      questions: [
        Question(
          id: "culture_q1",
          title: {
            "fr": "Qu'est-ce qu'un patrimoine immatériel?",
            "en": "What is intangible heritage?",
          },
          options: [
            {
              "fr": "Traditions, coutumes et savoir-faire",
              "en": "Traditions, customs and know-how",
            },
            {
              "fr": "Un bâtiment historique uniquement",
              "en": "A historic building only",
            },
            {"fr": "Une monnaie nationale", "en": "A national currency"},
            {"fr": "Un parc d'attractions", "en": "An amusement park"},
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Le patrimoine immatériel inclut les pratiques sociales et traditions.",
            "en":
                "Intangible heritage includes social practices and traditions.",
          },
          didYouKnow: {
            "fr":
                "L'UNESCO protège certains éléments du patrimoine immatériel.",
            "en": "UNESCO protects some elements of intangible heritage.",
          },
          source: "UNESCO",
          tags: ["culture", "patrimoine"],
          date: "2021",
        ),
      ],
    ),
  ],

  "Géographie": [
    Level(
      number: 1,
      title: "Relief & Climats",
      isLocked: false,
      questions: [
        Question(
          id: "geo_q1",
          title: {
            "fr": "Quel est le plus grand fleuve d'Afrique de l'Ouest?",
            "en": "What is the largest river in West Africa?",
          },
          options: [
            {"fr": "Le Niger", "en": "The Niger"},
            {"fr": "Le Nil", "en": "The Nile"},
            {"fr": "Le Congo", "en": "The Congo"},
            {"fr": "Le Zambèze", "en": "The Zambezi"},
          ],
          correctIndex: 0,
          explanation: {
            "fr": "Le Niger est un des grands fleuves de l'Afrique de l'Ouest.",
            "en": "The Niger is one of West Africa's major rivers.",
          },
          didYouKnow: {
            "fr": "Le fleuve traverse plusieurs pays d'Afrique de l'Ouest.",
            "en": "The river crosses several West African countries.",
          },
          source: "Géographie régionale",
          tags: ["géographie", "fleuve"],
          date: "2020",
        ),
      ],
    ),
  ],

  "Technologie": [
    Level(
      number: 1,
      title: "Tech & Innovation",
      isLocked: false,
      questions: [
        Question(
          id: "tech_q1",
          title: {
            "fr": "Qu'est-ce que l'inclusion numérique?",
            "en": "What is digital inclusion?",
          },
          options: [
            {
              "fr": "Accès aux outils numériques et compétences associées",
              "en": "Access to digital tools and associated skills",
            },
            {
              "fr": "Un nouveau type de monnaie",
              "en": "A new type of currency",
            },
            {
              "fr": "Une technologie agricole spécifique",
              "en": "A specific agricultural technology",
            },
            {"fr": "Un festival de musique", "en": "A music festival"},
          ],
          correctIndex: 0,
          explanation: {
            "fr": "L'inclusion numérique vise à réduire la fracture numérique.",
            "en": "Digital inclusion aims to reduce the digital divide.",
          },
          didYouKnow: {
            "fr":
                "Les programmes d'inclusion incluent formation et accès internet.",
            "en": "Inclusion programs include training and internet access.",
          },
          source: "Tech & société",
          tags: ["tech", "inclusion"],
          date: "2024",
        ),
      ],
    ),
  ],

  "Sports": [
    Level(
      number: 1,
      title: "Règles & Événements",
      isLocked: false,
      questions: [
        Question(
          id: "sport_q1",
          title: {
            "fr": "Combien de joueurs par équipe sur le terrain au football?",
            "en": "How many players per team on the field in football?",
          },
          options: [
            {"fr": "11", "en": "11"},
            {"fr": "5", "en": "5"},
            {"fr": "7", "en": "7"},
            {"fr": "15", "en": "15"},
          ],
          correctIndex: 0,
          explanation: {
            "fr": "Le football se joue à 11 contre 11 sur le terrain.",
            "en": "Football is played 11 vs 11 on the field.",
          },
          didYouKnow: {
            "fr": "Le football est le sport le plus populaire mondialement.",
            "en": "Football is the most popular sport worldwide.",
          },
          source: "Sport & règles",
          tags: ["sport", "football"],
          date: "2021",
        ),
      ],
    ),
  ],

  "Actualité": [
    Level(
      number: 1,
      title: "Faits Récents",
      isLocked: false,
      questions: [
        Question(
          id: "actu_q1",
          title: {
            "fr": "Qu'est-ce qu'une source d'information fiable?",
            "en": "What is a reliable source of information?",
          },
          options: [
            {
              "fr": "Un média vérifié et transparent",
              "en": "A verified and transparent media outlet",
            },
            {
              "fr": "Un post anonyme sans source",
              "en": "An anonymous post without sources",
            },
            {"fr": "Une rumeur non vérifiée", "en": "An unverified rumor"},
            {
              "fr": "Un message publicitaire déguisé",
              "en": "A disguised advertisement",
            },
          ],
          correctIndex: 0,
          explanation: {
            "fr":
                "Les sources fiables vérifient les faits et citent leurs sources.",
            "en": "Reliable sources fact-check and cite sources.",
          },
          didYouKnow: {
            "fr":
                "La vérification des faits est essentielle pour lutter contre la désinformation.",
            "en": "Fact-checking is essential to fight misinformation.",
          },
          source: "Journalisme",
          tags: ["actualité", "médias"],
          date: "2024",
        ),
      ],
    ),
  ],
};

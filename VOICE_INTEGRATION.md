# 🎤 Intégration Vocale — Faso Quiz v4.0

## Ce qui a été ajouté

### 1. TTS — Synthèse Vocale (🔊)
- **Bouton 🔊** à côté de chaque question (lit la question + toutes les options)
- **Bouton 🔊** à côté de chaque option de réponse (lit cette option seule)
- **Bouton 🔊** à côté de l'explication après réponse
- Langue automatique : français ou anglais selon la langue de l'app
- Vitesse : 0.48 (naturelle)
- Clique à nouveau pour arrêter la lecture

### 2. STT — Reconnaissance Vocale (🎤)
- **Bouton rouge 🎤 "Répondre à voix haute"** sous les options
- Le panneau vocal s'ouvre avec un micro pulsant
- L'app écoute pendant 8 secondes
- **La transcription s'affiche en temps réel**
- **Matching intelligent** :
  - Dites **A, B, C ou D** → sélection directe
  - Dites un **mot-clé** de la réponse → matching textuel
- Vibrations haptiques : sélection + bonne/mauvaise réponse

## Dépendances ajoutées
```yaml
flutter_tts: ^4.0.2          # Text-to-Speech
speech_to_text: ^6.6.0       # Speech-to-Text
```

## Permissions requises

### Android (AndroidManifest.xml)
```xml
<uses-permission android:name="android.permission.RECORD_AUDIO"/>
<uses-permission android:name="android.permission.INTERNET"/>
```

### iOS (Info.plist)
```xml
<key>NSSpeechRecognitionUsageDescription</key>
<string>...</string>
<key>NSMicrophoneUsageDescription</key>
<string>...</string>
```

## Installation
```bash
flutter pub get
flutter run
```

## Notes
- Le TTS fonctionne **100% hors ligne** (voix du système)
- Le STT nécessite **internet** sur Android (Google Speech)
- Sur iOS, le STT utilise le moteur Apple (peut fonctionner offline)
- L'app demande automatiquement la permission micro au premier usage

# Détection de masque avec CNN (Convolutional Neural Network) en utilisant MATLAB

Ce projet est mon mémoire de fin d'année du Master en Réseaux et Télécommunications à l'Université Abde Rahmane Mira Bejaia. L'objectif principal du projet est de développer un système de détection de masque facial utilisant le réseau de neurones convolutifs (CNN).

## Fonctionnalités principales

- `Facedetecttest.m` : Fichier MATLAB pour tester la détection de visages avec le modèle CNN entraîné.
- `training.m` : Fichier MATLAB pour l'entraînement du modèle CNN à partir d'un ensemble de données d'images de visages portant ou ne portant pas de masque.
- `gen_net.mat` : Modèle CNN pré-entraîné pour la détection de masque.
- `Facedettest.m` : Fichier MATLAB pour tester la détection de visages avec l'algorithme de Viola Jones.

## Contenu du projet

- `memoire.pdf` : Version PDF de mon mémoire décrivant en détail le processus de développement du système de détection de masque.
- `memoire.ppt` : Présentation PowerPoint résumant les principaux aspects et résultats du projet.
- `Article_Rohan_Gupta.pdf` : Article en PDF écrit par Rohan Gupta qui explique en détail le code et les concepts utilisés dans ce projet.
- `basedonnees1` : Dossier contenant une base de données d'images utilisée pour l'entraînement et les tests, comprenant trois sous-dossiers :
  - `masque` : Images de personnes portant un masque.
  - `nomasque` : Images de personnes ne portant pas de masque.
  - `masqueincorrect` : Images de personnes portant un masque de manière incorrecte.

## Ressources supplémentaires

- [Article sur la détection de visages avec l'algorithme de Viola-Jones](https://towardsdatascience.com/the-intuition-behind-facial-detection-the-viola-jones-algorithm-29d9106b6999) : Cet article écrit par Rohan Gupta fournit une explication détaillée de l'algorithme de Viola-Jones utilisé dans ce projet.

## Instructions d'utilisation

1. Assurez-vous d'avoir MATLAB installé sur votre ordinateur.
2. Exécutez le fichier `Facedetecttest.m` pour tester la détection de masque à l'aide du modèle CNN.
3. Utilisez le fichier `training.m` pour re-entraîner le modèle CNN avec vos propres données si nécessaire.
4. Exécutez le fichier `Facedettest.m` pour tester la détection de visages avec l'algorithme de Viola Jones.

## Contact Info

👤 **Melissa Mazir**

- GitHub: [@melybee-07](https://github.com/melybee-07)
- Twitter: [@mazir_melissa](https://twitter.com/mazir_melissa)
- LinkedIn: [melissa mazir](https://www.linkedin.com/in/melissa-mazir-172574223/) 

N'hésitez pas à explorer les différents fichiers et à les utiliser selon vos besoins. Si vous avez des questions ou des commentaires, n'hésitez pas à me contacter.

# README

## présentation :

L'application sera une version minimaliste (mais fonctionnelle, c'est le plus important) d'Eventbrite, un site qui propose plein d'événements que tu peux rejoindre. Les événements ne concernent qu'une seule ville, la ville où tu te trouves.

Nous avons créer une base de données, composée de 3 models: User, Event, Attendance (table réunissant les events et les utilisateurs qui participent aux events)

Les attributs qui composent la table User: email, description, first_name, last_name

Les attributs qui composent la table Event:start_date, duration, title, description, price, location

Les attributs qui composent la table Attendance:, user_id, event_id

## Fonctionnement : 

Faire un `rails db:create`et ensuite `rails db:migrate` pour migrer les DB. Pour les tests juste run la commande `rspec`. Enjoy ;)

## team :

By Maxime Smolis et Jonathan Lutz. 

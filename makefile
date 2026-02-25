# Lance tous les services en arrière-plan
up:
	docker-compose up --build -d

# Arrête tout et nettoie
clean:
	docker-compose down -v

# Affiche ce que fait ton code (DVC) en temps réel
logs:
	docker-compose logs -f pipeline

# Lance les tests de validation de l'exercice
tests:
	docker-compose up --build tests

.PHONY: up clean logs tests
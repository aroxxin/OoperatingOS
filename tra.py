from googletrans import Translator

# Inicjalizacja tłumacza
translator = Translator()

# Tekst do przetłumaczenia
text = input("Wpisz tekst do przetłumaczenia: ")

# Wykonanie tłumaczenia
translated = translator.translate(text, dest='en')  # Zmiana 'en' na inny język, jeśli chcesz przetłumaczyć na inny język

# Wyświetlenie przetłumaczonego tekstu
print("Przetłumaczony tekst:", translated.text)



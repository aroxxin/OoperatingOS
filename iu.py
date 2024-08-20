import pygame
import os
import sys

# Inicjalizacja Pygame
pygame.mixer.init()

# Funkcje odtwarzacza
def play_song(song):
    pygame.mixer.music.load(song)
    pygame.mixer.music.play()
    print(f'Odtwarzanie: {song}')

def pause_song():
    pygame.mixer.music.pause()
    print('Pauza')

def resume_song():
    pygame.mixer.music.unpause()
    print('Wznowienie')

def stop_song():
    pygame.mixer.music.stop()
    print('Zatrzymano')

def list_songs(directory):
    songs = [f for f in os.listdir(directory) if f.endswith('.mp3')]
    return songs

# Główna funkcja
def main():
    if len(sys.argv) < 2:
        print("Użycie: python music_player.py <katalog_z_muzyką>")
        sys.exit(1)

    music_dir = sys.argv[1]
    if not os.path.isdir(music_dir):
        print(f"Nie znaleziono katalogu: {music_dir}")
        sys.exit(1)

    songs = list_songs(music_dir)
    if not songs:
        print("Brak plików MP3 w katalogu.")
        sys.exit(1)

    current_song_index = 0
    play_song(os.path.join(music_dir, songs[current_song_index]))

    while True:
        command = input("Komenda (play, pause, resume, stop, next, prev, exit): ").strip().lower()

        if command == "play":
            play_song(os.path.join(music_dir, songs[current_song_index]))
        elif command == "pause":
            pause_song()
        elif command == "resume":
            resume_song()
        elif command == "stop":
            stop_song()
        elif command == "next":
            current_song_index = (current_song_index + 1) % len(songs)
            play_song(os.path.join(music_dir, songs[current_song_index]))
        elif command == "prev":
            current_song_index = (current_song_index - 1) % len(songs)
            play_song(os.path.join(music_dir, songs[current_song_index]))
        elif command == "exit":
            stop_song()
            break
        else:
            print("Nieznana komenda!")

if __name__ == "__main__":
    main()

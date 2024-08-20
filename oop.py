import cv2
import tkinter as tk
from tkinter import filedialog
from tkinter import messagebox

class VideoPlayer:
    def __init__(self, window, window_title):
        self.window = window
        self.window.title(window_title)

        # Przycisk do wczytania wideo
        self.btn_open = tk.Button(window, text="Otwórz wideo", width=20, command=self.open_file)
        self.btn_open.pack(pady=20)

        # Przycisk do odtwarzania wideo
        self.btn_play = tk.Button(window, text="Odtwórz", width=20, command=self.play_video)
        self.btn_play.pack(pady=20)

        # Przycisk do zatrzymania odtwarzania
        self.btn_stop = tk.Button(window, text="Zatrzymaj", width=20, command=self.stop_video)
        self.btn_stop.pack(pady=20)

        self.video_file = None
        self.is_playing = False

        self.window.mainloop()

    def open_file(self):
        self.video_file = filedialog.askopenfilename(
            title="Wybierz plik wideo",
            filetypes=[("Pliki wideo", "*.mp4 *.avi *.mov *.mkv")]
        )

    def play_video(self):
        if self.video_file:
            self.is_playing = True
            cap = cv2.VideoCapture(self.video_file)

            while self.is_playing:
                ret, frame = cap.read()
                if not ret:
                    break

                cv2.imshow("Odtwarzacz wideo", frame)

                # Przerwij pętlę odtwarzania po naciśnięciu 'q'
                if cv2.waitKey(30) & 0xFF == ord('q'):
                    break

            cap.release()
            cv2.destroyAllWindows()
        else:
            messagebox.showwarning("Brak pliku", "Nie wybrano żadnego pliku wideo!")

    def stop_video(self):
        self.is_playing = False

if __name__ == "__main__":
    root = tk.Tk()
    app = VideoPlayer(root, "Zaawansowany Odtwarzacz Wideo")

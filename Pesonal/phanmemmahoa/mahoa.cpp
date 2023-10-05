#include <SDL2/SDL.h>
#include <iostream>

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

SDL_Window* gWindow = nullptr;
SDL_Renderer* gRenderer = nullptr;

bool InitializeSDL() {
	if (SDL_Init(SDL_INIT_VIDEO) < 0) {
		std::cerr << "SDL initialization failed: " << SDL_GetError() << std::endl;
		return false;
	}

	gWindow = SDL_CreateWindow("Button Example", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
	if (gWindow == nullptr) {
		std::cerr << "Window creation failed: " << SDL_GetError() << std::endl;
		return false;
	}

	gRenderer = SDL_CreateRenderer(gWindow, -1, SDL_RENDERER_ACCELERATED);
	if (gRenderer == nullptr) {
		std::cerr << "Renderer creation failed: " << SDL_GetError() << std::endl;
		return false;
	}

	return true;
}

void CloseSDL() {
	SDL_DestroyRenderer(gRenderer);
	SDL_DestroyWindow(gWindow);
	SDL_Quit();
}

int main(int argc, char* argv[]) {
	if (!InitializeSDL()) {
		return -1;
	}

	bool quit = false;
	SDL_Event e;

	while (!quit) {
		while (SDL_PollEvent(&e) != 0) {
			if (e.type == SDL_QUIT) {
				quit = true;
			}

			// Xử lý sự kiện khi người dùng nhấn chuột
			if (e.type == SDL_MOUSEBUTTONDOWN) {
				int mouseX, mouseY;
				SDL_GetMouseState(&mouseX, &mouseY);

				// Kiểm tra xem chuột có nằm trong vùng của nút không
				if (mouseX >= 200 && mouseX <= 400 && mouseY >= 200 && mouseY <= 300) {
					std::cout << "Button Clicked!" << std::endl;
				}
			}
		}

		// Xóa màn hình và vẽ nút
		SDL_SetRenderDrawColor(gRenderer, 255, 255, 255, 255);
		SDL_RenderClear(gRenderer);

		SDL_Rect buttonRect = {200, 200, 200, 100};
		SDL_SetRenderDrawColor(gRenderer, 0, 0, 255, 255); // Màu nền xanh
		SDL_RenderFillRect(gRenderer, &buttonRect); // Vẽ nút

		SDL_RenderPresent(gRenderer); // Hiển thị nút lên màn hình
	}

	CloseSDL();
	return 0;
}

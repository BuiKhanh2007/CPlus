#include <SDL2/SDL.h>
#include <string>
#include <iostream>

int main(int argc,char* argv[])
{
	const int SCREEN_WIDTH = 800;
	const int SCREEN_HEIGHT = 600;
	//const std::string WInDOW_TITLE = "Phan mem ma hoa BuiKhanh";
	
	if (SDL_Init(SDL_INIT_VIDEO)<0)
	{
		std::cout<<"error";
		return -1;
	}
	else std::cout<<"ok";
	
	SDL_Window* window = SDL_CreateWindow("Ma hoa by BUIKHANH",SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
	if (window==nullptr)
	{
		std::cout<<"error";
	}
	else std::cout<<"fine\n";

	
	SDL_Renderer* renderer = SDL_CreateRenderer(window,-1, SDL_RENDERER_ACCELERATED);
	if (renderer==nullptr)
	{
		std::cout<<"error";
	}
	else std::cout<<"okle";

	SDL_Event e;

	bool run = true;
	while (run)
	{
		while (SDL_PollEvent(&e)!=0)
		{
			if (e.type==SDL_QUIT)
			{
				run=false;
			}
		}

		SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
		SDL_RenderClear(renderer);
		SDL_RenderPresent(renderer);

	}


	SDL_DestroyRenderer(renderer);
	SDL_DestroyWindow(window);
	SDL_Quit();
	

	return 0;
}

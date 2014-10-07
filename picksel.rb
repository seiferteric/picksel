require 'sdl'


src_w = 640
src_h = 480
src_d = 16

SDL.init SDL::INIT_VIDEO
@screen = SDL::setVideoMode src_w,src_h,src_d, SDL::SWSURFACE|SDL::ANYFORMAT


def pixel(x, y, c=@screen.map_rgb(255, 0, 0))
    @screen.put_pixel(x, y, c)
    @screen.updateRect(0, 0, 0, 0)
end
def color(r, g, b)
    return @screen.map_rgb(r, g, b)
end

def window(width, height, depth=16)
    @screen = SDL::setVideoMode width,height,depth, SDL::SWSURFACE|SDL::ANYFORMAT
end

def wait
    while event = SDL::Event.wait
        case event
        when SDL::Event::Quit
          exit
        when SDL::Event::KeyDown
          exit if event.sym == SDL::Key::ESCAPE
        end
    end
end



This seems to work very well when removing white pixels from transparent png

    convert image -fuzz XX% -fill red -opaque white result

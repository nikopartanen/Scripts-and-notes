I needed to convert images to a specific CMYK profile without Photoshop. This seems to work, kind of.

    brew install imagemagick --with-little-cms
    convert image.jpg -colorspace CMYK -profile "CoatedFOGRA39.icc" image.jpg

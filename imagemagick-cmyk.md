I needed to convert images to a specific CMYK profile without Photoshop. This seems to work, kind of.

    brew reinstall imagemagick --with-little-cms --with-little-cms2
    convert image.jpg -colorspace CMYK -profile "CoatedFOGRA39.icc" image.jpg

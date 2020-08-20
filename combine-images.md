Image processing notes.

```
convert image.jpg -resize 1660x1240 -background white -gravity center -extent 1680x1260 ad-with_pad.jpg

convert image-analysed.jpg -resize 1660x1240 -background white -gravity center -extent 1680x1260 ad-analysed-with_pad.jpg

convert image-analysed-labels.jpg -resize 1660x1240 -background white -gravity center -extent 1680x1260 ad-analysed-labels-with_pad.jpg

convert image-analysed-web.jpg -resize 1660x1240 -background white -gravity center -extent 1680x1260 ad-analysed-web-with_pad.jpg

convert \( ad-with_pad.jpg ad-analysed-with_pad.jpg -append \) \( ad-analysed-labels-with_pad.jpg ad-analysed-web-with_pad.jpg -append \) +append collage.jpg

identify test.jpg

convert result.jpg -resize 2856x1610 result-resized.jpg

convert features.jpg -resize 2856x1610 -background white -gravity center -extent 2896x1650 features-with_pad.jpg
convert result.jpg -resize 2856x1610 -background white -gravity center -extent 2896x1650 result-with_pad.jpg

# Manual cropping in this point

# This puts images side by side

#convert features.jpg -resize 2384x1415 -background white -gravity center -extent 2404x1435 features-with_pad.jpg
#convert result.jpg -resize 2384x1415 -background white -gravity center -extent 2404x1435 result-with_pad.jpg

convert \( features-with_pad.jpg result-with_pad.jpg +append \) collage.jpg

convert collage.jpg -resize 4734x1398 -background white -gravity center -extent 4764x1428 collage-with_pad.jpg

```

This put some images to right boxes:

```

convert \( box_face.jpg box_entities.jpg +append \) box_above.jpg

# later pixels are the size of wanted image
# -gravity has plenty of values in style south, north etc.
convert box_emotions.jpg -resize 760x651 -background white -gravity center -extent 771x904 box_emotions-center.jpg

convert \( box_categories.jpg box_emotions-center.jpg +append \) box_below.jpg

convert \( box_above.jpg box_below.jpg -append \) box_full.jpg
```

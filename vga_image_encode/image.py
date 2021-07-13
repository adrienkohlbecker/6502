from PIL import Image
import struct
import os

# Options to set up
file = "fluffy.jpg"
dither = True
disablePreview = os.getenv('DISABLE_PREVIEW', None)

WIDTH = 160
HEIGHT = 120

# Palette code based off of https://stackoverflow.com/a/29438149/2303432

# Generate palette
palette = []

for r in [0, 85, 170, 255]:
  for g in [0, 85, 170, 255]:
    for b in [0, 85, 170, 255]:
      palette.append(r)
      palette.append(g)
      palette.append(b)

palimage = Image.new("P", (64, 64))
palimage.putpalette(palette * 4)

# Load image
image = Image.open(file)

# Resize image (cropping and resizing as needed without stretching)
horiz = image.width > image.height
ratio = float(image.width) / float(image.height)
newSize = (int(ratio * HEIGHT) if horiz else WIDTH, int((1 / ratio) * WIDTH) if not horiz else HEIGHT)
resized = image.resize(newSize)

topLeft = (int((resized.width - WIDTH) / 2) if horiz else 0, int((resized.height - HEIGHT) / 2) if not horiz else 0)
crop = (topLeft[0], topLeft[1], topLeft[0] + WIDTH, topLeft[1] + HEIGHT)
cropped = resized.crop(crop)

# Quantize image (convert to color palette)
quant = cropped.im.convert("P", 1 if dither else 0, palimage.im)
pixels = image._new(quant).load()

# If enabled, show a preview of the final image
if not disablePreview:
  image._new(quant).show()

# Write binary file for EEPROM
out_file = open(file.replace('png', 'bin').replace('jpg', 'bin'), "wb")

for y in range(128):
  for x in range(256):
    try:
      out_file.write(struct.pack("B", pixels[x, y]))
    except IndexError:
      out_file.write(struct.pack("B", 0))

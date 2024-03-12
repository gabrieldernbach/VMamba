import numpy as np
from pathlib import Path
from PIL import Image

for split in ["train", "val", "test"]:
    for i in range(2000):
        target = np.random.randint(1, 5, size=1)
        img = np.random.randint(low=0, high=255, size=(224, 224, 3)).astype("uint8")
        img = Image.fromarray(img)
        path = Path(f"dataset/{split}/{target}")
        path.mkdir(exist_ok=True, parents=True)
        img.save(f"{path}/{i}.jpg")

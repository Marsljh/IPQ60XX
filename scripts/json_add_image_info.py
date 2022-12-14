#!/usr/bin/env python3

from os import getenv
from pathlib import Path
from sys import argv
import hashlib
import json

if len(argv) != 2:
    print("ERROR: JSON info script requires output arg")
    exit(1)

json_path = Path(argv[1])
bin_dir = Path(getenv("BIN_DIR"))
image_file = bin_dir / getenv("IMAGE_NAME")

if not image_file.is_file():
    print("Skip JSON creation for non existing image ", image_file)
    exit(0)


def get_titles():
    return [{"title": getenv("DEVICE_TITLE")}]


device_id = getenv("DEVICE_ID")
image_hash = hashlib.sha256(image_file.read_bytes()).hexdigest()

image_info = {
    "metadata_version": 1,
    "target": "{}/{}".format(getenv("TARGET"), getenv("SUBTARGET")),
    "version_code": getenv("VERSION_CODE"),
    "version_number": getenv("VERSION_NUMBER"),
    "source_date_epoch": int(getenv("SOURCE_DATE_EPOCH")),
    "profiles": {
        device_id: {
            "image_prefix": getenv("IMAGE_PREFIX"),
            "images": [
                {
                    "type": getenv("IMAGE_TYPE"),
                    "filesystem": getenv("IMAGE_FILESYSTEM"),
                    "name": getenv("IMAGE_NAME"),
                    "sha256": image_hash,
                }
            ],
            "device_packages": getenv("DEVICE_PACKAGES").split(),
            "supported_devices": getenv("SUPPORTED_DEVICES").split(),
            "titles": get_titles(),
        }
    },
}

json_path.write_text(json.dumps(image_info, separators=(",", ":")))

import os

PROJECT_ROOT = os.path.realpath(os.path.dirname(os.path.realpath(__file__)) + "/../")
ROOT_DIR = PROJECT_ROOT

VERSION_PARTS = {
    k: int(v) for k, v in (l.split("=") for l in open(ROOT_DIR + "/VERSION"))
}
VERSION_MAJOR = VERSION_PARTS["VERSION_MAJOR"]
VERSION_MINOR = VERSION_PARTS["VERSION_MINOR"]
VERSION_PATCH = VERSION_PARTS["VERSION_PATCH"]
VERSION = str(VERSION_MAJOR) + "." + str(VERSION_MINOR) + "." + str(VERSION_PATCH)
doc:
    devcontainer templates generate-docs -p src/

build:
    bash ./.github/actions/smoke-test/build.sh coco

test:
    bash ./.github/actions/smoke-test/test.sh coco

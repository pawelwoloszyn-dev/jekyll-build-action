# Jekyll action
[![License](https://img.shields.io/badge/%E2%9A%96%EF%B8%8F-CC%20BY%204.0-brightgreen)](https://creativecommons.org/licenses/by/4.0)

This action provides just Jekyll and some basic build tools ([Alpine's `build-base`](https://pkgs.alpinelinux.org/package/v3.3/main/x86/build-base)).
It's based on the [jekyll/minimal:latest](https://github.com/envygeeks/jekyll-docker) [Docker](https://docker.com) image and the [jerryjvl/jekyll-build-action](https://github.com/jerryjvl/jekyll-build-action).

## Usage
```yaml
jobs:
  jekyll:
    name: Build and store Jekyll site
    runs-on: ubuntu-latest
    steps:
      - name: Checkout 📥
        uses: actions/checkout@v2.3.4
        with:
          lfs: true
          fetch-depth: 1

      - name: Build ⚙️
        uses: vivi90/jekyll-minimal-action@v1.1.0
        with:
          command: jekyll build

      - name: Store 📦
        uses: actions/upload-artifact@v2.2.4
        if: success()
        with:
          name: site
          path: _site
```
Just use the `command` option as you like:
 - `jekyll build --trace`
 - `jekyll serve`
 - and so on..

## Contribution
Please feel free to create issues and/or pull requests.

## License
This project is free software under the terms of the CC BY 4.0 license.
For more details please see the LICENSE file or: [Creative Commons](http://creativecommons.org/licenses/by/4.0)

*The licenses of the installed components may differ.*

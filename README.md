# Technology Robotix Society &middot; [![Build Status](https://travis-ci.org/Robotix/Robotix.github.io.svg?branch=master)](https://travis-ci.org/Robotix/Robotix.github.io)

### About
Project is built on top of [Jekyll](http://jekyllrb.com/) - simple, blog-aware, static site generator. Jekyll also happens to be the engine behind GitHub Pages, which means we use Jekyll to host our website from GitHub’s servers for free. [Learn more about Jekyll](http://jekyllrb.com/).

### Features
* Easy to setup
* Simple and responsive design
* SEO friendly


### Quick-start guide
1. [Fork](https://github.com/Robotix/Robotix.github.io/fork) this repo
2. Clone locally
3. Update ```_config.yml```
4. Select what content blocks do you need
5. Push changes to ```gh-pages``` branch
6. Enjoy your awesome Robotix site at ```http://[your github name].github.io/```

## Local development

Check if you have [all requirements for local environment](http://jekyllrb.com/docs/installation/).
To install all development dependencies install [Bundler](http://bundler.io/).
```bash
    gem install bundler
```
and run next command from root folder:

```bash
  bundle install --path vendor/bundle
```

To start Jekyll run:
```bash
    bundle exec jekyll serve -w --incremental -b ""
```

**NOTE:** in this mode all changes to html and data files will be automatically regenerated, but after changing ```_config.yml``` you have to restart server.

### Resource optimizations (optional)

You can optimize images and minify css and javascript automatically (for now only on Windows).
But for Mac OS users available amazing tool - [imageoptim](https://imageoptim.com/).
Optimize all images by running this script from `/automation/images/` folder:
```bash
    all_image_optimization.bat -d -jtran -pout -pquant -optip -gsicle -svgo
```

To minify CSS and JS run `minify_js.bat` (for Windows) and `minify_js.sh` (for Linux and MacOS) from `/automation/minifying/` folder:
```bash
    minify_js.bat
```

### Used libraries
* [Bootstrap](https://github.com/twbs/bootstrap)
* [Animate.css](https://github.com/daneden/animate.css)
* [Waves](https://github.com/publicis-indonesia/Waves)
* [jquery.appear](https://github.com/bas2k/jquery.appear)
* [jQuery countTo Plugin](https://github.com/mhuggins/jquery-countTo)
* [Typed.js](https://github.com/mattboldt/typed.js)
* [Sticky-kit](https://github.com/leafo/sticky-kit)

### Contributors
* Aditya Narayan
* Abhinav Jain
* Jaydeep Godbole
* Kushal Kedia
* Kshitiz Khandelwal
* Manad Mishra
* Manav Kapadnis
* Pranit Bauva
* Rohit Ner
* Samar Pratap Singh
* Shivang Agrawal
* Shubhika Garg
* Sourish Ghosh


# PostgREST documentation https://postgrest.org/

PostgREST docs use the reStructuredText format, check this [cheatsheet](https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst) to get acquainted with it.


## Install Dependencies
```bash
  brew unlink python && brew link python@3.10;
  pip3 --version;
  # pip 21.3.1 from /usr/local/lib/python3.10/site-packages/pip (python 3.10)

  pip3 install docutils;
  pip3 install sphinx-rtd-theme;
  pip3 install sphinx-tabs;
  pip3 install sphinx_copybutton;

  pip3 install sphinx-intl;
  pip3 install sphinx-autobuild;
  pip3 install livereload;
```

## Run Live Preview
```bash
python3 livereload_docs.py livereload;
# Serving on http://127.0.0.1:5500
```

## Setup Sphinx-intl
https://www.sphinx-doc.org/en/master/usage/advanced/intl.html
```bash
sphinx-build -b gettext . _build/gettext;
# Generate the pot files

sphinx-intl update -p _build/gettext -l zh_CN;
# Generate zh_CN po files from pot

```
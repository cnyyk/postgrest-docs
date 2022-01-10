# PostgREST Documentation https://postgrest.org
# PostgREST 文档（简体中文） https://postgrest.org/zh_CN/stable

PostgREST docs use the reStructuredText format, check this [cheatsheet](https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst) to get acquainted with it.
<br />
PostgREST 文档使用 reStructuredText 格式，可查看 [速查表](https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst) 来熟悉它。


## Install Dependencies / 安装依赖
```bash
brew unlink python && brew link python@3.10;

python3 --version
# Python 3.10.1
pip3 --version;
# pip 21.3.1 from /usr/local/lib/python3.10/site-packages/pip (python 3.10)

pip3 install docutils;
pip3 install sphinx-rtd-theme;
pip3 install sphinx-tabs;
pip3 install sphinx_copybutton;

pip3 install sphinx-intl;
pip3 install livereload;
pip3 install sphinx-autobuild;
ln -s /usr/local/Cellar/python@3.10/3.10.1/Frameworks/Python.framework/Versions/3.10/bin/sphinx-autobuild /usr/local/bin/sphinx-autobuild;
# To avoid command not found error
```
## Setup Sphinx-intl / 设置 Sphinx-intl
https://www.sphinx-doc.org/en/master/usage/advanced/intl.html
```bash
sphinx-build -b gettext . _build/gettext;
# Generate the pot files

sphinx-intl update -p _build/gettext -l zh_CN;
# Generate zh_CN po files from pot
```
## Live Preview / 实时预览
```bash
# python3 livereload_docs.py livereload;
# Serving on http://127.0.0.1:5500
# NOT RELOAD WHEN MO FILES UPDATED

/usr/local/opt/python@3.10/bin/sphinx-autobuild -b html . _build;
/usr/local/opt/python@3.10/bin/sphinx-autobuild . _build;
# Serving on http://127.0.0.1:8000
# WORKS PERFECTLY, AUTO REFRESH BROWSER WHEN MO FILES UPDATED.
```
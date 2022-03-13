# PostgREST Documentation https://postgrest.org
# PostgREST 文档（简体中文） https://postgrest.org/zh_CN/stable

PostgREST docs use the reStructuredText format, check this [cheatsheet](https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst) to get acquainted with it.
<br />
PostgREST 文档使用 reStructuredText 格式，可查看 [速查表](https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst) 来熟悉它。

## Install Dependencies / 安装依赖
```bash
brew unlink python@3.9 && brew link python@3.10

python3 --version
# Python 3.10.1
pip3 --version
# pip 21.3.1 from /usr/local/lib/python3.10/site-packages/pip (python 3.10)

brew install sphinx-doc
# FOR ZSH USER
echo 'export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"' >> ~/.zshrc;
# FOR BASH USER
echo 'export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"' >> ~/.bash_profile;
sphinx-build --version
# sphinx-build 4.3.2

# Could not import extension sphinx_tabs.tabs (exception: No module named 'sphinx_tabs')
pip3 install sphinx-tabs sphinx_copybutton sphinx-rtd-theme

sphinx-build -b html . _build
# Running Sphinx v4.3.2
# build succeeded.
# The HTML pages are in _build.

pip3 install sphinx-intl;
pip3 install sphinx-autobuild;
ln -s /usr/local/Cellar/python@3.10/3.10.1/Frameworks/Python.framework/Versions/3.10/bin/sphinx-autobuild /usr/local/bin/sphinx-autobuild;
# TO AVOID COMMAND NOT FOUND ERROR
```

## Setup Sphinx-intl / 设置 Sphinx-intl
https://www.sphinx-doc.org/en/master/usage/advanced/intl.html
```bash
sphinx-build -b gettext . _build/gettext;
# GENERATE POT FILES

sphinx-intl update -p _build/gettext -l zh_CN;
# GENERATE ZH_CN PO FILES FROM POT
# Not Changed: locales/zh_CN/LC_MESSAGES/tutorials.po
# Not Changed: locales/zh_CN/LC_MESSAGES/api.po
# Not Changed: locales/zh_CN/LC_MESSAGES/admin.po
# Not Changed: locales/zh_CN/LC_MESSAGES/how-tos.po
# Not Changed: locales/zh_CN/LC_MESSAGES/ecosystem.po
# Not Changed: locales/zh_CN/LC_MESSAGES/schema_structure.po
# Not Changed: locales/zh_CN/LC_MESSAGES/releases.po
# Not Changed: locales/zh_CN/LC_MESSAGES/configuration.po
# Not Changed: locales/zh_CN/LC_MESSAGES/index.po
# Not Changed: locales/zh_CN/LC_MESSAGES/install.po
# Not Changed: locales/zh_CN/LC_MESSAGES/auth.po
# Not Changed: locales/zh_CN/LC_MESSAGES/schema_cache.po
```
## Live Preview / 实时预览
```bash
# python3 livereload_docs.py livereload;
# Serving on http://127.0.0.1:5500
# NOT RELOAD WHEN MO FILES UPDATED

sphinx-autobuild -b html . _build;
sphinx-autobuild . _build;
# Serving on http://127.0.0.1:8000
# WORKS PERFECTLY, AUTO REFRESH BROWSER WHEN MO FILES UPDATED.
```
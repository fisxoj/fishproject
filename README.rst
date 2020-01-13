===========
Fishproject
===========

This is my template for generating new common lisp systems using `quickproject <https://github.com/xach/quickproject>`_.  It generates a ``travis.yml`` file for CI and tests using `rove <https://github.com/fukamachi/rove>`_.  It contains a documentation generation step using travis' github pages deployer, which requires setting the ``GITHUB_TOKEN`` or ``PAGES_TOKEN`` environment variable in the build, and only builds docs on merges to the master branch, so you'll need to set the variable or the build will probably fail.

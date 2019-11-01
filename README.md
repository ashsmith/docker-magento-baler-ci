# ashsmith/magento-baler-ci:alpha

This docker image contains a built version the alpha release of [magento/baler](https://github.com/magento/baler). This is designed to be used within a CI environment such as circleci.

In addition to baler, the image contains PHP 7.2, and most php extensions you'll need for a typical Magento 2.3.x installation. On top of this we have installed: git, git-crypt, and rsync as us

A full list of what php extensions are installed is available on our base PHP docker image here: [playsportsgroup/docker-php](https://github.com/playsportsgroup/docker-php#what-php-extensions-come-out-of-the-box).

For usage instructions of baler, refer to the baler repository itself: [magento/baler](https://github.com/magento/baler).

To see an example of usage within circleci, see the examples directory.

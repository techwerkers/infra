# EspoCRM for Techwerkers

All thing EspoCRM

## Customizations

This is a PHP app, and PHP apps like to store some things on disk which can make life a bit harder than that of
traditional containers. As such, there is an initContianer which will mount the customizations.tar.gz archive, and
extract the contents over /var/www/html/custom. That means customizations.tar.gz needs to be kept up to date.

Notes:

- Make sure to update customizations.tar.gz if ever editing files in customizations/
- Be aware that the files here will overwrite the values on the disk in the container (e.g. default values)
- Be aware that files are not removed from the container, you will need to do that manually.

To create/update the archive:

```sh
tar -czvf customizations.tar.gz customizations/custom
```

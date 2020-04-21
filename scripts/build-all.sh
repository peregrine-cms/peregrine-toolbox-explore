echo ==== building peregrine =============================

cd /peregrine/peregrine-cms
mvn clean install -PautoInstallPackage
mvn clean
cd /peregrine/themeclean-flex
mvn clean install -PautoInstallPackage
mvn clean

echo ==== /building peregrine ============================


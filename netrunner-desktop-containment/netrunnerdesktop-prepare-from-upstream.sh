mkdir netrunnerdesktop
org=$PWD
dir=$(mktemp -d)
cd $dir
git clone git://anongit.kde.org/plasma-desktop.git
cd plasma-desktop
git checkout $1
mv containments/desktop $org/netrunnerdesktop/src
cd $org
rm -rf $dir
cd $org/netrunnerdesktop
rm -rf src/plugins
curl https://paste.kde.org/pqbtebdjg/vwtdue/raw > CMakeLists.txt
curl https://paste.kde.org/pjklr0d9b/cx9qtc/raw > src/package/metadata.desktop
cd src
curl https://paste.kde.org/pgjzwaltx/fesj84/raw | patch -p3
find . -type f -print0 | xargs -0 sed -i 's/add_subdirectory(plugins)//g'
find . -type f -name CMakeLists.txt -print0 | xargs -0 sed -i 's/desktopcontainment/netrunnerdesktop/g'
find . -type f -print0 | xargs -0 sed -i 's/org\.kde\.plasma\.folder/org.kde.netrunnerdesktop/g'
find . -type f -print0 | xargs -0 sed -i 's/isFolder:.*/isFolder: true/g'
cd ..

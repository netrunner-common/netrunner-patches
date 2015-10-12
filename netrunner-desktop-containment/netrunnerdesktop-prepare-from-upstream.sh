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
curl https://paste.kde.org/pqbtebdjg/vwtdue/raw > CMakeLists.txt
curl https://paste.kde.org/pdfgyfhfp/ze9xmk/raw > src/package/metadata.desktop
cd src
curl https://paste.kde.org/pgjzwaltx/fesj84/raw | patch -p3
find . -type f -print0 | xargs -0 sed -i 's/desktopcontainment/netrunnerdesktop/g'
find . -type f -print0 | xargs -0 sed -i 's/desktopplugin/netrunnerdesktopplugin/g'
find . -type f -print0 | xargs -0 sed -i 's/folderplugin/netrunnerfolderplugin/g'
find . -type f -print0 | xargs -0 sed -i 's/org\.kde\.plasma\.folder/org.kde.netrunnerdesktop/g'
cd ..
mv src/plugins/desktop/desktopplugin.h src/plugins/desktop/netrunnerdesktopplugin.h
mv src/plugins/desktop/desktopplugin.cpp src/plugins/desktop/netrunnerdesktopplugin.cpp
mv src/plugins/folder/folderplugin.h src/plugins/folder/netrunnerfolderplugin.h
mv src/plugins/folder/folderplugin.cpp src/plugins/folder/netrunnerfolderplugin.cpp

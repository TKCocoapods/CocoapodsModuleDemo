PROJECT=TKCPBasket
NAME=BasketFxStatic
OUT=../${PROJECT}/Frameworks

rm -fr build
rm -fr ${OUT}/${NAME}.framework
mkdir -p ${OUT}

xcodebuild -project ${NAME}.xcodeproj -sdk iphoneos
cp -fr build/Release-iphoneos/${NAME}.framework ${OUT}/${NAME}.framework
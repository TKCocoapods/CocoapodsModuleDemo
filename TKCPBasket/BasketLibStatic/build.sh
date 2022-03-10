PROJECT=TKCPBasket
NAME=BasketLibStatic
OUT=../${PROJECT}/Libraries/${NAME}

rm -fr build
rm -fr ${OUT}
mkdir ${OUT}

xcodebuild -project ${NAME}.xcodeproj -sdk iphoneos
lipo -create\
    build/Release-iphoneos/lib${NAME}.a\
    -output ${OUT}/lib${NAME}.a
cp ${NAME}/*.h ${OUT}/
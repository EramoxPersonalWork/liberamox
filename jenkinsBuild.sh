JK_SRV_WABLE="$HOME/app-root/data"

GTEST_LIB_FOLDER="$JK_SRV_WABLE/usr/local/lib"
GTEST_INCLUDE_FOLDER="$JK_SRV_WABLE/compilation/googletest/googletest/include"

echo $GTEST_INCLUDE_FOLDER

sh runBuild.sh " \
-DCONTINUOUS_INTEGRATION_BUILD=ON \
-DBUILD_LIB_TEST=ON \
-DGTEST_ROOT=$GTEST_LIB_FOLDER \
-DGTEST_INCLUDE_DIR=$GTEST_INCLUDE_FOLDER \
"
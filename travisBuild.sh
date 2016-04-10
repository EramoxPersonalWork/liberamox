sh ./runBuild.sh "-DCONTINUOUS_INTEGRATION_BUILD=ON -DBUILD_LIB_TEST=ON"
build_success=$?
sh ./runTest.sh
test_success=$?

if [ $build_success -eq 0]
then
	if [ $test_success -eq 0 ]
	then
		exit 0
	fi
else
	exit 1
fi

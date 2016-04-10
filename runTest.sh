echo "Starting test"

run_ctest=1
run_gtest=1

# moving to test folder
cd liberamox/build/testing

# Cmake Test
if [ $run_ctest -eq 1 ]; then
echo "Running CTest:"
ctest
fi

# Google test
if [ $run_gtest -eq 1 ]; then
echo "Running GTest:"
./completetestlib
fi

cd -
echo "Test Finished"

exit 0

if [ "$1" == "" ]
then
	echo "no parameter, executing all";
	run_ctest=1;
	run_gtest=1;
else
	if [ "$1" == "--gtest" ]
	then
		run_gtest=1;
	elif [ "$1" == "--ctest" ]
	then
		run_ctest=1;
	fi
fi


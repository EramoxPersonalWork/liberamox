echo "Starting test"

TEST_EXE="gtestexe"
REPORT_XML="gtestreport.xml"
REPORT_FOLDER="../"

# moving to test folder
cd liberamox/build/testing

# Google test
echo "Running GTest:"
./$TEST_EXE --gtest_output=xml:$REPORT_FOLDER$REPORT_XML
res_gtest=$?

cd -
echo "Test Finished"

exit $res_gtest


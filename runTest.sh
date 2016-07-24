echo "Starting test"

TEST_FOLDER="liberamox/build/testing"
TEST_EXE="gtestexe"
REPORT_XML="gtestreport.xml"
REPORT_FOLDER="liberamox/build"

# Look at http://stackoverflow.com/questions/11540633/using-gtest-in-jenkins

# Google test
echo "Running GTest:"
$TEST_FOLDER/$TEST_EXE --gtest_output=xml:$REPORT_FOLDER/$REPORT_XML
res_gtest=$?

echo "Test Finished"


exit $res_gtest


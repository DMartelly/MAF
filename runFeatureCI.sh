pwd
npx preprocessor packages/$1 --packageLocation test
cd packages/$1
shift
node ../../node_modules/@cucumber/cucumber/bin/cucumber-js  cucumber-js $* --require "test/**/*.js" tmp/test
result=$?
cd -
exit $result


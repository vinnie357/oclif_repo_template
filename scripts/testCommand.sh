function testCommand {
#!/bin/bash
# example: testCommand config
# check $1 for value
# else run all tests
if [ -z ${1+x} ];
    then file='*';
    else file=$1;
fi
npx nyc --extension .ts mocha --require ts-node/register --timeout 5000 --forbid-only \"test/**/${file}.test.ts\"
}

# "test": "npx nyc --extension .ts mocha --require ts-node/register --timeout 5000 --forbid-only \"test/**/*.test.ts\"",

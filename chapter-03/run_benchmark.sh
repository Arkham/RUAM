#! /bin/bash

set -e
eval "$(rbenv init -)"

TIMES=10

echo "1.8.7"
rbenv shell 1.8.7-p371
time ruby benchmark.rb $TIMES

echo "1.9.2"
rbenv shell 1.9.2-p320
time ruby benchmark.rb $TIMES

echo "1.9.3"
rbenv shell 1.9.3-p448
time ruby benchmark.rb $TIMES

echo "2.0.0"
rbenv shell 2.0.0-p353
time ruby benchmark.rb $TIMES

echo "2.1.0"
rbenv shell 2.1.0
time ruby benchmark.rb $TIMES


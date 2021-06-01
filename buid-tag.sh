#!/bin/bash
ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extras=+q --java-kinds=+l  --python-kinds=-i
CSCOPE_DIR="$PWD/cscope"
 
if [ ! -d "$CSCOPE_DIR" ]; then
mkdir "$CSCOPE_DIR"
fi
 
echo "Finding files ..."
find "$PWD" -name '*.[ch]' \
-o -name '*.cpp' \
-o -name '*.cc' \
-o -name '*.hpp' \
-o -name '*.py' \
-o -name '*.java' \
> "$CSCOPE_DIR/cscope.files"
 
echo "Adding files to cscope db: $PWD/cscope.db ..."
cscope -b -i "$CSCOPE_DIR/cscope.files"
 
export CSCOPE_DB="$PWD/cscope.out"
echo "Exported CSCOPE_DB to: '$CSCOPE_DB'"

cat keys.h | grep "define KEY" | grep -v "^//" | tr -s ' ' | cut -d" " -f2,4 | awk '{ print $2 " " $1}' | sort | grep -v -e '^[[:space:]]*$'> keys.txt

cat layout.h | grep "SHIFT_MASK" | grep -v "_BITS" | grep -v "^//" | tr -s ' ' | cut -d" " -f2,3 | awk '{ print $2 " " $1}' | grep -v -e '^[[:space:]]*$'> keys_shifted.txt
cat layout.h | grep -v "SHIFT_MASK" | grep -v "_BITS" | grep -v "ALTGR_MASK" | grep -v "^//" | tr -s ' ' | cut -d" " -f2,3 | awk '{ print $2 " " $1}' | grep -v "^0" | grep -v -e '^[[:space:]]*$'> keys_unshifted.txt

cat layout.h | grep "ALTGR_MASK" | grep -v "_BITS" | grep -v "^//" | tr -s ' ' | cut -d" " -f2,3 | awk '{ print $2 " " $1}' | grep -v -e '^[[:space:]]*$'> keys_altgr.txt

cat layout.h | grep "DIAERESIS_BITS" | grep "SHIFT_MASK" | grep -v "^//" | tr -s ' '| cut -d" " -f2,5 | awk '{ print $2 " " $1}' | grep -v -e '^[[:space:]]*$' > keys_diaeresis_shifted.txt
cat layout.h | grep "DIAERESIS_BITS" | grep -v "SHIFT_MASK" | grep -v "^//" | tr -s ' '| cut -d" " -f2,5 | awk '{ print $2 " " $1}' | grep -v -e '^[[:space:]]*$' > keys_diaeresis_unshifted.txt

cat layout.h | grep "CIRCUMFLEX_BITS" | grep "SHIFT_MASK" | grep -v "^//" | tr -s ' '| cut -d" " -f2,5 | awk '{ print $2 " " $1}' | grep -v -e '^[[:space:]]*$' > keys_circumflex_shifted.txt
cat layout.h | grep "CIRCUMFLEX_BITS" | grep -v "SHIFT_MASK" | grep -v "^//" | tr -s ' '| cut -d" " -f2,5 | awk '{ print $2 " " $1}' | grep -v -e '^[[:space:]]*$' > keys_circumflex_unshifted.txt

ruby parse.rb

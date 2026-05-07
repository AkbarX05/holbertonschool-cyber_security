ps -u "$1" -F | grep -vE "(\s+0\s+0\s+)"

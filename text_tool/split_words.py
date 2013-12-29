#!/usr/bin/env python

import sys
import re

def process_file(file_name):
    src_fd = open(file_name)
    dst_fd = open(file_name + '.hmtl', 'w')
    for line in src_fd:
        tagged_line = re.sub(r'(\w+)',r'<a>\1</a>', line)
        dst_fd.write(tagged_line)
    src_fd.close()
    dst_fd.close()

if __name__ == '__main__':
    process_file(sys.argv[1])

#!/usr/bin/env python
import os

PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)


def remove_file(filepath):
    os.remove(os.path.join(PROJECT_DIRECTORY, filepath))


if __name__ == '__main__':
    
    remove_file('ans/.keep')
    remove_file('bib/.keep')
    remove_file('buro/.keep')
    remove_file('code/.keep')
    remove_file('data/.keep')
    remove_file('docs/.keep')
    remove_file('eval/.keep')
    remove_file('extra/.keep')
    remove_file('results/.keep')
    remove_file('slides/.keep')


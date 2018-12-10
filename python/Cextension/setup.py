from distutils.core import setup, Extension

module1 = Extension("exmod"
            , include_dirs = ['/usr/include']
#            , libraries = ['pthreads']
            , sources = ['exmodmodule.c'])


setup  (name = 'exmod',
        version = '1.0',
        description = 'example',
        author = 'JosephBingham',
        url = 'TBD',
        ext_modules=[module1]
       )
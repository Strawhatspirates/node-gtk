{
  "targets": [
    {
      "target_name": "nodegtk",
      "include_dirs" : [
                "<!(node -e \"require('nan')\")"
       ],
       "conditions": [
                           ['OS=="linux"', {
                                'libraries': ['<!@(pkg-config --libs gtk+-3.0)'],
                                'cflags': [ '<!@(pkg-config --cflags gtk+-3.0)' ],
                                'cflags_cc': [ '<!@(pkg-config --cflags gtk+-3.0)' ],
                                }]
                ],
              "sources": ["nodegtk.cpp","Gwindow.cpp"]
    }
  ]
}

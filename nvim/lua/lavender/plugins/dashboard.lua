local db = require('dashboard')
local home = os.getenv('HOME')
local config = home .. '.config'

db.custom_header = {
  [[  {                               ]],
  [[    {   }                         ]],
  [[     }_{ __{                      ]],
  [[  .-{   }   }-.                   ]],
  [[ (   }     {   )                  ]],
  [[ |`-.._____..-'|                  ]],
  [[ |             ;--.               ]],
  [[ |            (__  \              ]],
  [[ |             | )  )             ]],
  [[ |             |/  /              ]],
  [[ |             /  /   -Lavender-  ]],
  [[ |            (  /                ]],
  [[ \             y'                 ]],
  [[  `-.._____..-'                   ]],
}

db.header_pad = 1;
db.center_pad = 5;
db.footer_pad = 5;

db.custom_center = {
  {
    icon = '   ',
    desc = 'File File                     ',
    command = 'Telescope find_files',
    shortcut = 'SPC f f',
  },
}

db.custom_footer = {"Don't worry if it doesn't work right. If everything did, you'd be out of a job."}
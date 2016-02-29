class sudo::sudosupport {
  include sudo
  
    sudo::conf { 'kaloyanp':
         priority => 10,
         content  => 'kaloyanp ALL=(ALL) NOPASSWD: ALL',
        }
    sudo::conf { 'rostislavt':
         priority => 10,
         content  => 'rostislavt ALL=(ALL) NOPASSWD: ALL',
        }
         sudo::conf { 'nikolab':
         priority => 10,
         content  => 'nikolab ALL=(ALL) NOPASSWD: ALL',
        }
}
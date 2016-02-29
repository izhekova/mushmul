class sudo::sudodevs {
  include sudo
  
  sudo::conf { 'mihailm':
    priority => 10,
    content  => 'mihailm ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'aleksandart':
    priority => 10,
    content  => 'aleksandart ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'tihomirk':
    priority => 10,
    content  => 'tihomirk ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'danield':
    priority => 10,
    content  => 'danield ALL=(ALL) NOPASSWD: ALL',
  }
  sudo::conf { 'tomislavp':
    priority => 10,
    content  => 'tomislavp ALL=(ALL) NOPASSWD: ALL',
  }
    sudo::conf { 'filkab':
    priority => 10,
    content  => 'filkab ALL=(ALL) NOPASSWD: ALL',
  }
    sudo::conf { 'garethf':
    priority => 10,
    content  => 'garethf ALL=(ALL) NOPASSWD: ALL',
  }
    sudo::conf { 'pawelm':
    priority => 10,
    content  => 'pawelm ALL=(ALL) NOPASSWD: ALL',
  }
    sudo::conf { 'martint':
    priority => 10,
    content  => 'martint ALL=(ALL) NOPASSWD: ALL',
  }
  
}


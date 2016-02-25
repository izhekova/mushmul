class sudo::sudousers {
  include sudo

  sudo::conf { 'irenaz':
    priority => 10,
    content  => 'irenaz ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'flauret':
    priority => 10,
    content  => 'flauret ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'daniely':
    priority => 10,
    content  => 'daniely ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'radostinad':
    priority => 10,
    content  => 'radostinad ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'davidm':
    priority => 10,
    content  => 'davidm ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'nikolayg':
    priority => 10,
    content  => 'nikolayg ALL=(ALL) NOPASSWD: ALL',
  }
}

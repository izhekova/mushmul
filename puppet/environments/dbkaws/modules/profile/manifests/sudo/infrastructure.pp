class profile::sudo::infrastructure {
    sudo::conf { 'irenaz':
        priority         => 10,
        content          => 'irenaz ALL=(ALL) NOPASSWD: ALL',
    }
    sudo::conf { 'flauret':
        priority         => 10,
        content          => 'flauret ALL=(ALL) NOPASSWD: ALL',
    }
    sudo::conf { 'daniely':
         priority         => 10,
         content          => 'daniely ALL=(ALL) NOPASSWD: ALL',
    }
    sudo::conf { 'radostinad':
         priority         => 10,
         content          => 'radostinad ALL=(ALL) NOPASSWD: ALL',
    }
    sudo::conf { 'nikolai':
        priority         => 10,
        content          => 'nikolai ALL=(ALL) NOPASSWD: ALL',
    }
}

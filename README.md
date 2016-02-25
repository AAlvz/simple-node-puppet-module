Simple Node Puppet module
=========================

This is a simple module to install Node un a quick and easy way.

Usage
-----

Just call the class, for example in your default node:

`manifests/site.pp`

```
node default {
 class { 'aalvz_node': }
}
```

The same, using hiera it would be:
```
---
classes:
  - aalvz_node
```

Improvements
------------

Currently this will install Node 0.10 and upgrade npm to its latest version.

Feel free to open any issue/pull-request if you see useful improvements.
K.I.S.S.

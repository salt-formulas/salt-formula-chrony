==================================
chrony
==================================

Network time synchronisation services.
More info: https://chrony.tuxfamily.org/

Sample pillars
==============

Chrony client
------------
Sample pillar



.. code-block:: yaml

  chrony:
    client:
      enabled: true
      strata:
      - ntp.cesnet.cz prefer
      driftfile: /var/lib/chrony/drift
      keyfile: etc/chrony.keys
      commandkey: 1
      logchange: 0.5
      logdir: /var/log/chrony
      dumponexit: true
      dumpdir: /var/lib/chrony
      rtconutc: true
      local:  stratum 10
      maxupdateskew: 100.0
      log:
        - tracking
        - measurements
        - statistics

Chrony server
------------
.. code-block:: yaml

  chrony:
    server:
      enabled: true
      bind:
        address: 0.0.0.0



Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-chrony/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-chrony

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net

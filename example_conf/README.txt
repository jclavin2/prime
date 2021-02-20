We provide several example configurations and scripts to switch between them.
As described in Spire's main README.txt, Spire requires several different
configuration files, and parts of Spire must currently be recompiled when these
files are changed.

The provided conf_6 configuration corresponds the default configuration of
Spire 1.3.

Each example configuration directory (e.g. conf_4, conf_6, conf_3+3+3+3)
includes the following:
scada_def.h           : Main Spire configuration (common/def.h)
config.json           : PLC/RTU configuration (config/config.json)
prime_def.h           : Prime configuration (prime/src/def.h)
address.config        : Prime replica IP addresses (prime/bin/address.config)
spines_address.config : Prime Spines daemon IP addresses
                        (prime/bin/spines_address.config)
spines_ext.conf       : Configuration for external Spines network
                        (spines/daemon/spines_ext.conf)
spines_int.conf       : Configuration for internal Spines network
                        (spines/daemon/spines_int.conf)

The script install.sh takes a configuration directory as a commandline argument
and copies the files from that directory to the correct locations within Spire.
Usage: ./install_conf.sh <conf_dir>
Options:
  -h : print help and exit

The script recompile.sh recompiles the necessary parts of Spire to reflect
changes in scada_def.h and prime_def.h
Usage: ./recompile.sh
Options:
  -h : print help and exit

Note that if the total number of replicas (or clients) is increased, you will
also need to re-run Prime's gen_keys program to create keys for the additional
replicas (or clients).
(from top-level Spire directory, cd prime/bin; ./gen_keys).

The README.txt in each configuration directory specifies the example IP address
we chose for each system component. You may need to update the IP addresses in
the provided configuration files to match your own environment.

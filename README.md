# antlr4 appliance

The usual way of running this is as follows:

```
$ docker run -v `pwd`:`pwd` -w `pwd` -u `id -u`:`id -g` <tagged-container-name> antlr4 <antlr options>
```

so, if you're using the version maintained by Vlinder Software/rlc, the `<tagged-container-name>` would be vlinder/antlr4:

```
$ docker run -v `pwd`:`pwd` -w `pwd` -u `id -u`:`id -g` vlinder/antlr4 antlr4 <antlr options>
```

The container also provides a grun script to test grammars, and a deploy script to deploy the C++ runtime, to make it easier to integrate into your own projects (e.g. as a subproject). The deploy script takes one argument, -o, to know where to put the output:

```
$ docker run -v `pwd`:`pwd` -w `pwd` -u `id -u`:`id -g` vlinder/antlr4 deploy -o antlr4
```


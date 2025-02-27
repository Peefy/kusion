## kusion env

Print Kusion environment information

### Synopsis

Env prints Kusion environment information.

 By default env prints information as a shell script (on Windows, a batch file). If one or more variable names is given as arguments, env prints the value of each named variable on its own line.

 The --json flag prints the environment in JSON format instead of as a shell script.

 For more about environment variables, see "kusion env -h".

```
kusion env [flags]
```

### Examples

```
  # Print Kusion environment information
  kusion env
  
  # Print Kusion environment information as JSON format
  kusion env --json
```

### Options

```
  -h, --help   help for env
      --json   Print the environment in JSON format
```

### SEE ALSO

* [kusion](kusion.md)	 - Kusion manages the Kubernetes cluster by code

###### Auto generated by spf13/cobra on 11-Jul-2023

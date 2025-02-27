## kusion deps

Show KCL file dependency information

### Synopsis

Show the KCL file dependency information in the current directory or the specified workdir. By default, it will list all the KCL files that are dependent on the given package path.

```
kusion deps [WORKDIR] [flags]
```

### Examples

```
  # List all the KCL files that are dependent by the given focus paths
  kusion deps --focus path/to/focus1 --focus path/to/focus2
  
  # List all the projects that depend on the given focus paths
  kusion deps --direct down --focus path/to/focus1 --focus path/to/focus2
  
  # List all the stacks that depend on the given focus paths
  kusion deps --direct down --focus path/to/focus1 --focus path/to/focus2 --only stack
  
  # List all the projects that depend on the given focus paths, ignoring some paths from entrance files in each stack
  kusion deps --direct down --focus path/to/focus1 --focus path/to/focus2 --ignore path/to/ignore
```

### Options

```
      --direct string    项目信息的输出格式。可选值：json、yaml、tree、human (default "up")
      --focus strings    Paths to focus on to inspect. It cannot be empty and each path needs to be a valid relative path from the workdir
  -h, --help             help for deps
      --ignore strings   File paths to ignore when filtering the affected stacks/projects. Each path needs to be a valid relative path from the workdir. If not set, no paths will be ignored.
      --only string      Direct is set to "down", "only" means only the downstream project/stack list will be output. Valid values: project, stack. Defaults to project (default "project")
```

### SEE ALSO

* [kusion](kusion.md)	 - Kusion manages the Kubernetes cluster by code

###### Auto generated by spf13/cobra on 11-Jul-2023

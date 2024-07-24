# nix-config

## Intro

My Nix configuration based on flakes.

## Structure

The config is split up into two different configuration folders, one of them are used for host specific configuration
the other is used for applications that I use on more than one machine and as such is not host specific.

The structure is supposed to make it easy for me to add my Macbook to the configuration in the future.

A visual representation of the structure can be viewed below:

```
├──  hosts     # The different host configurations, such as configuration.nix and hardware-configuration.nix, these configurations are host specific
├──  modules   # Home manager applications, such as my terminal and text editor, these are not host specific
```

## TO-DO

- [ ] Add configuration for Macbook
- [ ] Configuration cleanup

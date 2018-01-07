# Phpmd Gitamine Plugin

## Requirements

* php >= 7.1
* phpmd
* Linux/Mac
* Gitamine

## Installation

```bash
gitamine install git4min3/gitamine-phpmd    
```

## Configuration

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    phpmd: ~    
```

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    phpmd:
      bin: bin/phpmd      #default phpmd
      rulesets: naming    # default unusedcode,codesize,controversial,design,naming 
```

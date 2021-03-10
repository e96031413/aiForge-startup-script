# aiForge-startup-script
A repository contains my personal script to install frequently used linux, python package, and conda env file

## Usage

**For shell script:**
```
sh start_new_forge.sh
```

**For conda:**
```
conda env create -f aiForgeEnv.yml
```

### Environment for [tfvaegan](https://github.com/akshitac8/tfvaegan)
```
cd aiForge-startup-script/TF-VAEGAN
conda env create -f tfvaegan.yml
```

### Environment for [BBN](https://github.com/Megvii-Nanjing/BBN)
```
cd aiForge-startup-script/BBN
conda env create -f BBN-WCL.yml
```

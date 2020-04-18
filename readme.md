# Create a Custom image using packer

Contains examples to build gen2 Custom images for Azure GPU skus (e.g  ND40rs_v2 or NC24rs_v2)

# Prerequisites
You have the azurehpc and azhpc-images github repositories. The installation scripts references in the packer templates come from these repositiories
```
git clone git@github.com:Azure/azurehpc.git
git clone git@github.com:Azure/azhpc-images.git
```

# Procedure

1. Download packer from https://www.packer.io/downloads.html

2. Edit the packer templates, replace \<NOT-SET\> with appropriate values and give full paths to scripts (e.g replace </full/path/to/script.sh> with the full path)

3. Build custom image with packer using a packer template

To build a Custom image base on CentOS-HPC 7.7 (gen2) and installing the Nvidia drivers
```
packer build ndrsv2_centos-hpc-7.7_gen2_nvidia.json
```

To build a Custom image base on CentOS 7.7 (gen2) and installing the Mellanox OFED IB and Nvidia drivers
```
packer build ndrsv2_centos-7.7_gen2_ib_nvidia.json
```

4. If there are no errors you should see your Custom image in the resource group you specified in the packer template

# Verification

Deploy GPU sku (e.g ND40rs_v2).

Verify IB is up and enabled
```
ifconfig
```

Verify GPU's are working
```
nvidia-smi
```


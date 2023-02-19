#!/bin/sh

cd ~/
git clone "https://github.com/derrian-distro/LoRA_Easy_Training_Scripts" >> /dev/null
cp ~/sdtools/run_training*.sh ~/sd-scripts
cp ~/sdtools/default_config.yaml "~/.cache/default_config.yaml" >> /dev/null

cp ~/LoRA_Easy_Training_Scripts/*.py ~/sd-scripts 
cp ~/LoRA_Easy_Training_Scripts/installables/requirements_startup.txt ~/sd-scripts

cd ~/sd-scripts

echo installation complete, to run the program, first edit ~/sd-scripts/lora_train_command_line.py

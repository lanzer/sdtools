#!/bin/sh

# This script is still work in progress.  One some drivers are still causing issues
cd ~/
echo cloning required repos and moving files
git clone "https://github.com/kohya-ss/sd-scripts" >> /dev/null
git clone "https://github.com/derrian-distro/LoRA_Easy_Training_Scripts" >> /dev/null
cp ~/sdtools/run_training*.sh ~/sd-scripts
cp ~/LoRA_Easy_Training_Scripts/*.py ~/sd-scripts 
cp ~/LoRA_Easy_Training_Scripts/installables/requirements_startup.txt ~/sd-scripts
cd sd-scripts
echo creating python venv
python -m venv venv
source ~/sd-scripts/venv/bin/activate

echo installing dependancies, this may take a while
echo installing torch
# pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url "https://download.pytorch.org/whl/cu116" >> /dev/null
pip install torch torchvision >> /dev/null

echo installing other dependancies
pip install --upgrade -r requirements.txt >> /dev/null

echo installing xformers
pip install -U -I --no-deps "https://github.com/C43H66N12O12S2/stable-diffusion-webui/releases/download/linux/xformers-0.0.14.dev0-cp310-cp310-linux_x86_64.whl" >> /dev/null

cp ~/sdtools/default_config.yaml "~/.cache/default_config.yaml" >> /dev/null

echo installation complete, to run the program, first edit ~/sd-scripts/lora_train_command_line.py

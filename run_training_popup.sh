#!/bin/sh
echo Starting popup training...
source ~/stable-diffusion-webui/venv/bin/activate
accelerate launch lora_train_popup.py

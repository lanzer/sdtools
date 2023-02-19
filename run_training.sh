#!/bin/sh
echo Starting command_line training...
source ~/stable-diffusion-webui/venv/bin/activate
accelerate launch lora_train_command_line.py

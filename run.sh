#!/bin/sh
# código run.sh, deve ser rodado na pasta DDPG-Keras-Torcs/ !!!
cp *.* ../gym_torcs
cd ../gym_torcs
python ddpg.py


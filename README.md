# APAI-Docker

Backup branch for those for which the other images do not work. 

Prerequisites:

1. VSCode
2. Docker desktop
3. Dev Containers extension for VSCode
4. This repository

## Container build

1. Open the current folder in a terminal (bash) and open VSCode (code .).
2. Once the new windows opens, click on the pop-up "rebuild in container".
3. Let VSCode install create the container for you
4. Open a new terminal inside the containerized VSCode

## Container testing

PULP-SDK:

1. Go into the tests/pulp/ folder
2. Run "make all run"
3. You should see and Hello World.

PyTorch:

1. Open the file present in tests/pytorch/ folder (test.ipynb) into your editor
2. Run the block of code.
3. The first time, VSCode will ask to install iPython and select the kernel. Select the gvsoc-env enviroment to run the ipython.
4. Enjoy your results!

cd 2_hydra_configuration
python script.py
python script.py optimizer=adamw
python script.py model=linear
python script.py --multirun optimizer=adamw model=linear,mlp,cnn,vit

python script.py optimizer=sgd   optimizer.momentum=0.1  # okay:  sets momentum to 0.1 and runs
python script.py optimizer=sgd  +optimizer.momentum=0.1  # error: Could not append to config. An item is already at 'optimizer.momentum'.
python script.py optimizer=adam  optimizer.momentum=0.1  # error: Could not override 'optimizer.momentum'.
python script.py optimizer=adam +optimizer.momentum=0.1  # error: TypeError("Adam.__init__() got an unexpected keyword argument 'momentum'")

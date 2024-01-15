curl -O https://packages.confluent.io/archive/7.5/confluent-7.5.3.tar.gz

tar xzf confluent-7.5.3.tar.gz

export CONFLUENT_HOME=${HOME}/confluent-7.5.3 && echo "export CONFLUENT_HOME=$CONFLUENT_HOME" >> ~/.bashrc

echo "export PATH=$CONFLUENT_HOME/bin:${PATH}" >> ~/.bashrc

~/confluent-7.5.3/bin/confluent completion bash | sudo tee /etc/bash_completion.d/confluent && echo "source /etc/bash_completion.d/confluent" >> ~/.bashrc && source ~/.bashrc
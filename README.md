# ansible-testing

This repo is made for performing tests on ansible in order to develop personal skills and enhance performances on IAM.


##How to run it
You need to install virtuallbox, and create two virtualmachines: 1 Redhat and 1 debian.
Then you need to add your controller public ssh key into the authorized ssh keys on the virtualmachines.

once done, you can run a playbook using this command:

ansible-playbook playbooks/create_file.yaml -i inventory.yaml

# python-env

*Vagrant + Docker*

**OS:** Ubuntu 16.04

**Editors:** vim, nano

**Python Versions:** 2.7+, 3.5+

**Python Tools:** pip, pip3, virtualenv, pyenv, pylint

#### **git clone this directory**

### Vagrant

	vagrant up
	vagrant ssh

### Docker

	docker build -t $USER .
	docker run -it $USER /bin/bash

### Additional Notes

	# Run jupyter notebook with typical data science tools
	docker run -d -p 8080:8080 jupyter/datascience-notebook

File: README.md

# Deutsch
## Projektziele
Dieses Projekt verfolgt das Ziel, mit ein paar wenigen Klicks eine echten Kubernetes Cluster aufzusetzen.

VirtualBox and Vagrant müssen auf Deinem Rechner installiert sein.

Der Cluster besteht zunächst aus:
* einem Master Node
* zwei Worker Nodes

Die Nodes werden als VirtualBox VMs erstellt, die in einem Host-Only Netzwerk miteinander verbunden sind.
Provisioniert und verwaltet werden sie von Vagrant.

## Aktivitäten
03.11.2018
Umstellung auf Docker-CE.
Es wird jetzt explizit das Docker-CE Repository eingebunden.
Das alte Repo wurde nicht mehr gepflegt, sodass eine veraltete Version von Docker installiert wurde.

Flannel Overlay Netzwerk
Hier hat sich die Systematik geändert.
Laut Dokumentation wird Flannel jetzt über eine andere URL konfiguriert.
Die alte Methode hat zu Netzwerkproblemen im Node geführt.

# English
## Goals
This project consists of a couple of Vagrantfiles that help you setting up a Kubernetes Cluster consisting
of one Master Node and two Worker Nodes within a Host-Only network.

You need to have VirtualBox and Vagrant installed.

The cluster consists of
* one master node
* two worker nodes

Nodes will be created as VirtualBox VMs. The will be running in a Host-Only Network.
They will be managed and provisiond by Vagrant.

## Activities
03.11.2018
Migration to Docker-CE.
We now explicitly bind the Docker-CE Repository
The old Repo is no longer active and provides an old Version of Docker.

Flannel Overlay Netzwerk
According to the Kubernetes documentation, Flannel is now configured by providing a new URL.
The old URL produced network errors leading to the master node never reaching "read" state.


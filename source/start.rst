===========
Quick Start
===========

The OVA server is deployed in this address https://api.openvisionapi.com, To give it a quick try, visit the client repository:

https://github.com/openvisionapi/ova-client

installation
============

Clone the ova-server repository:
::

    $ git clone https://github.com/openvisionapi/ova-server

Setup a local enviroment using tensorflow lite as backend framework
::

    $ make setup-tensorflow-lite

Downlond yolov4 model for object detection
::

    $ ./cli.py download --model=yolov4 --framework=tensorflow_lite --hardware=cpu

.. Note::
    Check this page to see the list of supported models
    :doc:`models`

Running
=======
Run the ova-server:
::

    $ make run

Download the official client
::
    $ git clone https://github.com/openvisionapi/ova-client
    $ cd ova-client
    $ make setup
    $ source .venv/bin/activate
    $ DETECTION_URL=http://localhost:8000/api/v1/detection ./ova_client.py detection images/cat.jpeg

.. note::
    For more information about the ova-client check
    https://github.com/openvisionapi/client

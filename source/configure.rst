=============
Configuration
=============

The API configuration options are defined in ``api/config/api/config.py``

:``ML_FRAMEWORK``: the deep learning framework to use. The Supported values are ``tensorflow``, ``tensorflow_lite``

:``ML_HARDWARE``: the hardware accelertor to use. The supported values are ``cpu``, ``gpu``,  ``edgetpu``

:``MODELS_FOLDER``: Path to the directory containings the models.

:``DETECTION_MODELS``: A list of the detection models to load. The default is ``yolov4``

:``MAX_IMAGE_SIZE``: Max size of the input image. The default is ``4 MB``

:``DETECTION_RATE_LIMIT``: Rate limit for the detection endpoint

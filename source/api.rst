=================
API Documentation
=================


Object Detection API
====================
Server
::

    https://api.openvisionapi.com


Request

::

    # POST /api/v1/detection

    ## Headers

    {
      'Content-type': 'multipart/form-data; boundary=---BOUNDARY'
    }

    ## Body

    -----BOUNDARY
    Content-Disposition: form-data; name="model"
    yolov4
    -----BOUNDARY
    Content-Disposition: form-data; name="image"; filename="image.jpg"
    Content-Type: image/jpeg
    /9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
    HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
    MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAABAAEDASIA
    AhEBAxEB/8QAFQABAQAAAAAAAAAAAAAAAAAAAAf/xAAUEAEAAAAAAAAAAAAAAAAAAAAA/8QAFAEB
    AAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/AL+AD//Z
    -----BOUNDARY


Response

::

    {
        'description': 'Detected objects',
        'predictions': [
            {
                'bbox': {'x1': 442, 'x2': 982, 'y1': 199, 'y2': 1270},
                'label': 'cat',
                'score': '0.93'
            }
        ],
    }

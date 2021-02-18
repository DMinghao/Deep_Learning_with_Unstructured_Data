# Deep_Learning_with_Unstructured_Data

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FDMinghao%2FDeep_Learning_with_Unstructured_Data&count_bg=%23F81C1C&title_bg=%231E2330&icon=skyliner.svg&icon_color=%23F81C1C&title=Repo+View+Count&edge_flat=true)](https://hits.seeyoufarm.com)

## Getting Started

### Using Virtual Environment

- create virtual env

    ```bash
    $ python -m venv venv
    ```
- run virtual env
    - Windows
    ```bash
    $ venv\Scripts\activate.bat
    ```
    - Mac / Linux
    ```bash
    $ source venv/bin/activate
    ```
- exit virtual env
    ```bash 
    $ deactivate 
    ```

### Requirements 

- General Requirements 
    ```
    Java        == 1.8 
    Gephi       >= 0.92
    Python      >= 3.7
    Docker      (Optional)
    Graphviz    (Optional)
    ```
- Python Requirments 
    ```
    Jupyter     >= 1.0.0
    NetworkX    >= 2.5
    Matplotlib  >= 3.3.4
    Graph-Tool  >= 2.37     (See Install Guide)
    Keras       >= 2.4.3
    TensorFlow  >= 2.3.1  
        # for CUDA10 --> 2.3.1
        # for CUDA11 --> 2.4
    tqdm        >= 4.56.2   (Optional)
    pydot       >= 1.4.2    (Optional)
    ```
    Install python requirements 
    ```bash
    $ pip install -r requirements.txt
    ```
    [Install Graph-Tool](./Use_GraphTool/README.md)


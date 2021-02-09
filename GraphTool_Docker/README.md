# Graph-Tool Getting Started
[[TOC]]
- [Docker   (GNU/Linux | MacOS | Windows)](#docker-gnulinux--macos--windows)
- [Conda    (GNU/Linux | MacOS)](#conda-gnulinux--macos)
- [MacOS](#macos)
- [Linux](#linux)
- [Google CoLab](#google-colab)
- [Source](#source)

## Docker (GNU/Linux | MacOS | Windows)

### Install
1. Install [Docker](https://www.docker.com/) for your machine 
   - [Docker Desktop for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)
   - [Docker Desktop for MacOS](https://hub.docker.com/editions/community/docker-ce-desktop-mac)
   - [Docker Linux Engine](https://hub.docker.com/search?q=&type=edition&offering=community&operating_system=linux) 
2. Start Docker 
3. (Optional) Change port and token in the `.config` file

### Using Graph-Tool
1. Run the following command: 
   - Windows : `.\GraphTool_Docker\startGraphtool.sh`
   - Linux | MacOS : `source ./GraphTool_Docker/startGraphtool.sh`
   
   > **[IMPORTANT]** Keep the terminal alive while working
2. A Jupyter kernel link will be provided. 
   > default link: http://localhost:8888/?token=1234
   - Paste the link in a browser to access Jupyter Dashboard 
   - The same link can also be used for connecting external Notebook 
3. **[IMPORTANT]** When finished, be sure to **download** your work instead of saving it if you are using Notebook from Jupyter Dashboard. 
4. Use <kbd>CTRL</kbd>+<kbd>C</kbd> or <kbd>⌘</kbd>+<kbd>C</kbd>to shutdown Jupyter kernel from the terminal
5. Await for the terminal to terminate Docker container 

## Conda (GNU/Linux | MacOS)

Install in a new environment
```
conda create --name gt -c conda-forge graph-tool
conda activate gt
conda install -n gt -c conda-forge ipython jupyter
```

Install in an existing environment (Not Recommended)
```
conda install -c conda-forge graph-tool
```
> [Note] While installing new packages to an environment where graph-tool is present, it's recommended to include `-c conda-forge` flag in all installation command. 

## MacOS

- Homebrew `brew install graph-tool`

- Macports `port install py-graph-tool`

## Linux 

- Arch `pikaur -S python-graph-tool`

- Gentoo `emerge graph-tool`

- Debian & Ubuntu 
  
   Supported distribution: `bullseye, buster, sid, bionic, eoan, focal, groovy`
   ```
   deb [ arch=amd64 ] https://downloads.skewed.de/apt YOUR_DISTRIBUTION main
   apt-key adv --keyserver keys.openpgp.org --recv-key 612DEFB798507F25
   apt-get update
   apt-get install python3-graph-tool
   ```

## Google CoLab

Run following code in a cell
```
!echo "deb http://downloads.skewed.de/apt bionic main" >> /etc/apt/sources.list
!apt-key adv --keyserver keys.openpgp.org --recv-key 612DEFB798507F25
!apt-get update
!apt-get install python3-graph-tool python3-cairo python3-matplotlib
```

## Source 
[graph-tool](https://git.skewed.de/count0/graph-tool)
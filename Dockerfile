FROM jupyter/scipy-notebook

MAINTAINER Hugo Moreau <hugo.moreau@epita.fr>

USER root

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb &&   \
    dpkg -i packages-microsoft-prod.deb &&                                                      \
    apt-get install -fy apt-transport-https &&                                                  \
    apt-get update &&                                                                           \
    apt-get install -fy dotnet-sdk-3.1 &&                                                       \
    dotnet tool install -g dotnet-try &&                                                        \
    export PATH="$PATH:~/.dotnet/tools" &&                                                      \
    dotnet try jupyter install

WORKDIR $HOME/work

COPY script.py .script.py

ENV PATH="${PATH}:/home/jovyan/.dotnet/tools"
ENV JUP_PASSWD="12345"

CMD jupyter notebook --no-browser --port=8888 --allow-root --NotebookApp.password=$(./.script.py)

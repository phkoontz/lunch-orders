for file in includes/*.mdpp; do echo \!INCLUDE \""$file"\" >> README.mdpp; done

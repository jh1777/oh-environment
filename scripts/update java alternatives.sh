sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_101/bin/javac 1
sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_101/bin/java 1

sudo update-alternatives --config javac
sudo update-alternatives --config java

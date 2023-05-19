# commands
sudo apt update
sudo apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-11-jdk wget 
sudo apt --fix-broken install
sudo add-apt-repository ppa:linuxuprising/libpng12
sudo apt update
sudo apt install libpng12-0
# workspace setup
mkdir -p Android/sdk
sudo nano /etc/environment
	ANDROID_SDK_ROOT /home/<username>/</Path/to/Android/sdk>

# Android sdk setup
mkdir -p .android && touch .android/repositories.cfg
wget -O sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
// https://gist.github.com/Ashok-Varma/6b5864c1e444a3f1b61158254a43c4bc get updated url from this 
unzip sdk-tools.zip && rm sdk-tools.zip
mv tools Android/sdk/tools
cd </Path/to/Android/sdk>/tools/bin && yes | ./sdkmanager --licenses
cd </Path/to/Android/sdk>/tools/bin &&sudo ./sdkmanager "build-tools;29.0.2" "patcher;v4" "platform-tools" "platforms;android-29" "sources;android-29"

# commandline tools
wget -O sdk-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip

export ANDROID_SDK_ROOT="/Path/to/Android/cmdline-tools/bin

</Path/to/Android/sdk>/tools/bin/sdkmanager --install "cmdline-tools;latest" 

# add path to .bashrc

export PATH=$PAHT:</Path/to/Android/sdk>/tools/bin:</Path/to/Android/sdk>/tools:</Path/to/Android/sdk>/platform-tools

flutter doctor -v
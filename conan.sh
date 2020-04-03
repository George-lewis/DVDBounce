if [ ! -d conan ]; then	
	printf "Conan directory does not exist -- creating\n"
	mkdir conan
fi

read -p "About to add two repositories to Conan, press enter to continue.."
conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan
conan remote add darcamo https://api.bintray.com/conan/darcamo/cppsim
printf "Repositories 'bincrafters' and 'darcamo' added"

cd conan
conan install .. --build missing

if [ $? -eq 0 ]; then
	echo "Dependencies installed successfully\n"
else
	echo "Conan encountered an error\n"
fi

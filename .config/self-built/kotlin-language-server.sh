git clone --depth 1 --filter=blob:none https://github.com/fwcd/kotlin-language-server.git
cd ./kotlin-language-server || return
./gradlew :server:installDist
mv ./server/build/install/server/bin/kotlin-language-server ~/.self-built/bin
cd ../
rm -rf ./kotlin-language-server ./.gradle

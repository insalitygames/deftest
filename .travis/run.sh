
# http://d.defold.com/archive/5ca3dd134cc960c35ecefe12f6dc81a48f212d40/engine/linux/dmengine_headless
# http://d.defold.com/archive/5ca3dd134cc960c35ecefe12f6dc81a48f212d40/bob/bob.jar

# {"version": "1.2.89", "sha1": "5ca3dd134cc960c35ecefe12f6dc81a48f212d40"}
SHA1=$(curl -s http://d.defold.com/stable/info.json | sed 's/.*sha1": "\(.*\)".*/\1/')
echo $SHA1

DMENGINE_URL="http://d.defold.com/archive/${SHA1}/engine/linux/dmengine_headless"
BOB_URL="http://d.defold.com/archive/${SHA1}/bob/bob.jar"

echo "Downloading ${DMENGINE_URL}"
curl -o dmengine_headless ${DMENGINE_URL}
chmod +x dmengine_headless

echo "Downloading ${BOB_URL}"
curl -o bob.jar ${BOB_URL}

ls -la

echo "Running bob.jar"
java -jar bob.jar --debug build

echo "Starting dmengine_headless"
ls -la
pwd
./dmengine_headless
dmengine_headless
${TRAVIS_BUILD_DIR}/dmengine_headless
FOO=$(pwd)
${FOO}/dmengine_headless

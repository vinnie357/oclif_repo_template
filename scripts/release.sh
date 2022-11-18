function release {
    # release 0.0.1
    # update package.json
    # update user-agent header in index.ts
    version=${1:-"0.0.1"}
    npm install && \
    npm run build && \
    npm run prepack && \
    # binary
    # npm install -g pkg
    mkdir -p dist/bin
    mkdir -p dist/bin/$version
    npx pkg . -t node14-linux-x64,node14-macos-x64,node14-win-x64 -o dist/bin/$version/mycli
    # npx pkg . -o dist/bin/mycli
    mkdir -p releases
    tar -cvzf releases/mycli-$version.tar.gz dist/bin/$version
    npm run postpack
    # rm -rf dist/bin/$version
    #cheating
    #npm install && npm run build && npm run prepack && npx oclif pack tarballs
    # npm run postpack
    echo "local release done"
}

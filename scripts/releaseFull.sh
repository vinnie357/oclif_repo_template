function releaseFull {
    version=${1:-"0.0.1"}
    npm install && \
    npm run build && \
    npm run test  && \
    npm run posttest && \
    npm run lint && \
    npm run prepack && \
    # pack CLI into debian package
    npx oclif pack deb
    # pack CLI into macOS .pkg
    npx oclif pack macos
    # packages oclif CLI into tarballs
    npx oclif pack tarballs
    # create windows installer from oclif CLI
    npx oclif  pack win
    # binary
    # npm install -g pkg
    mkdir -p dist/bin
    mkdir -p dist/bin/$version
    npx pkg . -t node14-linux-x64,node14-macos-x64,node14-win-x64 -o dist/bin/$version/mycli
    # npx pkg . -o dist/bin/mycli
    mkdir -p releases
    tar -cvzf releases/mycli-$version.tar.gz dist/bin/$version
    npm run postpack
    #cheating
    #npm install && npm run build && npm run prepack && npx oclif pack tarballs
    # npm run postpack
    echo "local release done"
}

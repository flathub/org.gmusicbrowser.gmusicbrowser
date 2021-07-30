# gmusicbrowser Flatpack Manifest

To maintain this flatpak, clone this repo, run the update.sh script and commit any changes. The update.sh script polls the [official gmusicbrowser github repo](https://github.com/squentin/gmusicbrowser) for the latest commit. If the latest commit has changed, say the maintainer has pushed a new commit to the official gmusicbrowser repo, then the script will update the flatpak manifest in this repo to point to the latest commit. 

Commiting the changes will then trigger an automated build by flathub's systems. The new version should then be available on flathub within a few hours. 

### To build
`flatpak-builder build-dir org.gmusicbrowser.gmusicbrowser.json`

### To Test run
`flatpak-builder --run build-dir org.gmusicbrowser.gmusicbrowser.json gmusicbrowser`

### To Package
`flatpak-builder --repo=repo --force-clean build-dir org.gmusicbrowser.gmusicbrowser.json`


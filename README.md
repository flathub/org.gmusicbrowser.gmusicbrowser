# gmusicbrowser Flatpack Manifest

The gmusicbrowser flatpack manifest is maintained by an automated script. Every day at 00:00 UTC, the script polls the official gmusicbrowser github repo for the latest commit. If the latest commit has changed, say the maintainer has pushed a new commit to the official gmusicbrowser repo, then the script will update the flatpak manifest in this repo to point to the latest commit, and then commit the changed manifest back to this repo. That commit will then trigger an automated build by flathub's systems. The new version should then be available on flathub within a few hours. 

All that to say, by automated scripting, the gmusicbrowser flathub will automatically update to the latest version of the official gmusicbrowser github repo.

### To build
`flatpak-builder build-dir org.gmusicbrowser.gmusicbrowser.json`

### To Test run
`flatpak-builder --run build-dir org.gmusicbrowser.gmusicbrowser.json gmusicbrowser`

### To Package
`flatpak-builder --repo=repo --force-clean build-dir org.gmusicbrowser.gmusicbrowser.json`


IFS=$'\n' FILES=( $(git diff --name-only --cached) )

if [ "${#FILES[@]}" -ne 0 ]; then
	nix run github:NixOS/nixpkgs/release-21.11#legacyPackages.x86_64-darwin.haskellPackages.fourmolu -- --mode inplace "${FILES[@]}"
	git add "${FILES[@]}"
fi

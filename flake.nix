{

  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.default = 
      with import nixpkgs { system = "x86_64-linux"; };
      pkgs.mkShellNoCC {
      packages = with nixpkgs; [
      		zola
		hugo
	];
      };

  };
}

{ pkgs }: {
	deps = [
        pkgs.rubyPackages_3_0.railties
        pkgs.ruby
        pkgs.solargraph
        pkgs.rufo
	];
}
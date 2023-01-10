{
  "description" = "My machine configuration!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # wezterm.url = "github:dpjungmin/wezterm";
    # nvim.url = "github:dpjungmin/nvim";
  };

  outputs = { self, nixpkgs, home-manager, darwin, ... }@inputs:
    let

      username = "jm";
      nixpkgsConfig = {
        allowUnfree = true;
      };
      stateVersion = "22.11";
      overlays = with inputs; [
        # wezterm.overlay
        # nvim.overlay
      ];

    in {

      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        # pkgs = nixpkgs.legayPackages.x86_64-linux;
    pkgs = import nixpkgs {
      system = "x86_64-linux";
      config = nixpkgsConfig;
      overlays = overlays;
    };
    extraSpecialArgs = { inherit inputs; };
        modules = [
          ./home.nix
      ({ ... }: {
        programs.home-manager.enable = true;
        targets.genericLinux.enable = true;
        home = {
          stateVersion = stateVersion;
          username = username;
          homeDirectory = "/home/${username}";
        };
      })
        ];
      };

      darwinConfiguration.hz = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
    specialArgs = { inherit inputs; };
    modules = [
      ({ pkgs, ... }: {
        nixpkgs.config = nixpkgsConfig;
        nixpkgs.overlay = overlays;
        users.users.${username} = {
          home = "/Users/${username}";
          shell = pkgs.fish;
        };
        nix = {
          package = pkgs.nixFlakes;
          settings = {
            allowed-users = [ username ];
        experimental-features = [ "nix-command" "flakes" ];
          };
        };
      })

      home-manager.darwinModules {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          users.${username} = import ./home.nix;
        };
      }
    ];
      };

    };
}

{ config, lib, pkgs, modulesPath, ... }:
{
  imports =
    [ (modulesPath + "/profiles/qemu-guest.nix")
    ];
  boot.initrd.availableKernelModules = [ "ahci" "xhci_pci" "virtio_pci" "sr_mod" "virtio_blk" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";
  boot.loader.grub.useOSProber = true;

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/1b5fe957-c170-47ca-af87-6229f172c438";
      fsType = "ext4";
    };
  swapDevices = [ ];
  networking.useDHCP = lib.mkDefault true;
  networking.hostName = "vether";
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}

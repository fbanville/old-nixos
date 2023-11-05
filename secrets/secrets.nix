let
  satori = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC609j82ORpQXMDXNTutkOomdwPWw3bdHSWDE7haKJxEtZxJYI1O1lC0bC39njRwuRHowBWDmDI/d3c+qkvr+4CrsXejNaRi9YXeHQei2YccH1ugdvkE588rvmaHOggNXErekCUa+T1XXtZ9OWhN4RZ1ExlrrD/xBCSbr5FL74ZCXDII4F6AO+MraloO91i37mU9AttLrJSu2+JAE/CFKppPiYDTO91CuQkAdZf1w93ggy7Gj5cdmyW0DYXboS+f0b9FYDtJ/Qno5IoOh98A9e3dJZ4uf/mb43EOsiV115qPHNqnUa8iBEa7x9xNAAtMKr//EL4ROj0vB+yq84Ot/K1";
  systems = [ satori ];
in
{
  "secret1.age".publicKeys = [ systems ];
}

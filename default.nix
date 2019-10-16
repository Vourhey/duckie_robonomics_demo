{ stdenv
, mkRosPackage
, robonomics_comm
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "duckie_robonomics_demo";
  version = "0.1.0";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm ];

  meta = with stdenv.lib; {
    description = "Duckie bot on Robonomics";
    homepage = http://github.com/vourhey/duckie_robonomics_demo;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}

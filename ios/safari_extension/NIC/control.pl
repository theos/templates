my ($package_prefix) = NIC->variable("PACKAGENAME") =~ /^([^.]+.[^.]+)/;

NIC->variable("PACKAGEPREFIX") = $package_prefix;

NIC->variable("PARENTPROJECTNAME") = "";

while(NIC->variable("PARENTPROJECTNAME") eq "") {
	NIC->variable("PARENTPROJECTNAME") = NIC->prompt("PROJ", "Name of associated app (required)");
}
NIC->variable("PARENTPROJECTNAME") = "";

while(NIC->variable("PARENTPROJECTNAME") eq "") {
	NIC->variable("PARENTPROJECTNAME") = NIC->prompt("PROJ", "Name of parent project (required)");
}
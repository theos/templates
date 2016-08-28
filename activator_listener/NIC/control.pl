my $default_kill = "SpringBoard";

NIC->variable("KILL_RULE") = "";

my $kill_apps = NIC->prompt("KILL_APPS", "List of applications to terminate upon installation (space-separated, '-' for none)", {default => $default_kill});
if($kill_apps ne "-") {
	my @apps = split(/\s+/, $kill_apps);
	my @commands = map {"killall -9 $_"} @apps;
	NIC->variable("KILL_RULE") = "after-install::\n\tinstall.exec \"".join("; ", @commands)."\"";
}

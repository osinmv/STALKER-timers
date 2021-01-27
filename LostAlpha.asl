state ("XR_3DA")
{
	 bool Loading: "XR_3DA.exe", 0xA8420;
	 bool presskey: "XR_3DA.exe", 0xA73AC;
	 bool plashka: "xrGame.dll", 0x6A8C42;
}	

isLoading
{
	return !current.Loading || current.presskey || current.plashka;
}
startup
{
	settings.Add("fix", false, "Low PC Fix (false splitting, etc)");
	refreshRate = 60;
}
init
{
	if(settings["fix"]){
		refreshRate = 40;
	}
}
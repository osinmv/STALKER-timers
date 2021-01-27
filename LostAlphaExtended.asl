state ("XR_3DA")
{
	 bool Loading: "XR_3DA.exe", 0xA8430;
	 bool presskey: "XR_3DA.exe", 0xA73BC;
	 bool plashka: "xrGame.dll", 0x6AED86;
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
Fn = getTitle()
dir= getDirectory("image")
DirPath = dir + Fn
s = 1;
t = nSlices();
i = t;
startSlice1 = s;
endSlice1 = i;
startSlice2 = s+i;
endSlice2 = 2*i;
startSlice3 = s+(2*i);
endSlice3 = 3*i;
startSlice4 = s+(3*i);
endSlice4 = 4*i;
  open(DirPath);
compositetitle=getTitle();
selectWindow(compositetitle);
//run("Channels Tool...");
run("Cyan");
//run("Brightness/Contrast...");
//run("Channels Tool...");
Stack.setChannel(1);
run("Enhance Contrast", "saturated=0.35");
run("Rotate 90 Degrees Right");
run("Properties...", "channels=1 slices="+i+" frames=1 unit=um pixel_width=0.3250000 pixel_height=0.3250000 voxel_depth=3.4000000");
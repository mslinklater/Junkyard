// Serialise out the state of the vehicle to current file

fileHandle = file_text_open_write(working_directory + filenameCurrent);

var numParts = instance_number(oPartRoot);

ds_list_create();

file_text_close(fileHandle);

// create the physics constraints
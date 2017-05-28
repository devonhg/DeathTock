var q = show_question("Are you sure you want to wipe your data?");

if( q ){
    file_delete("save_data.ini");
}

game_end();

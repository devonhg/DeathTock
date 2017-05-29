/*
    This script initiations globals for the project.
*/

//deathdate is to be an array containing each date piece of the day of death. 
global.version = "0.1.4";
global.version_rank = "indev";
global.menu_open = false; 
global.days_left = scr_calculate_days_left(); 
global.qdb = -1;//Quote Database
global.qod = "";//The quote of the day
//global.pms = "";


//Enqueries
global.update_day = -1;
global.update_month = -1; 
global.update_year = -1; 
global.update_pms = -1; 

//global.first_run = false; 

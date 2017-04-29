#define scr_edit_dd_day
global.update_day = get_integer_async("Please Enter Day", global.deathdate[2]);

#define scr_edit_dd_month
global.update_month = get_integer_async("Please Enter Month", global.deathdate[1]);

#define scr_edit_dd_year
global.update_year = get_integer_async("Please Enter Year", global.deathdate[0]);
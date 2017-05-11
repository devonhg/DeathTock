#define scr_quote_database
///scr_quote_database();

scr_add_quote( "A gem cannot be polished without friction, nor a man perfected without trials." ,"Confucius")
scr_add_quote( "An investment in knowledge pays the best interest." ,"Benjamin Franklin")
scr_add_quote( "Enjoy present pleasures in such a way as not to injure future ones.", "Seneca")
scr_add_quote( "Expecting is the greatest impediment to living. In anticipation of tomorrow, it loses today." ,"Seneca")
scr_add_quote( "Failure is part of the process of success. People who avoid failure also avoid success." ,"Robert T. Kiyosaki")
scr_add_quote( "He who has a why to live can bear almost any how." ,"Friedrich Nietzsche")
scr_add_quote( "If one does not know to which port one is sailing, no wind is favorable.", "Seneca")
scr_add_quote( "If you realize that you're the problem, then you can change yourself, learn something and grow wiser." , "Robert T. Kiyosaki")
scr_add_quote( "Life's like a play: it's not the length, but the excellence of the acting that matters." ,"Seneca")
scr_add_quote( "Luck is where opportunity meets preparation." ,"Seneca")
scr_add_quote( "Miss the audience’s heart as a filmmaker, and the only wallet that gets hit will be your own." ,"Peter Guber")
scr_add_quote( "Seven words stand above all, you can't win if you don't play." , "Neil Strauss")
scr_add_quote( "The doer alone learneth." ,"Friedrich Nietzsche")
scr_add_quote( "There is always risk, so learn to manage risk instead of avoiding it.", "Robert T. Kiyosaki")
scr_add_quote( "To fly one day must first learn to stand and walk and run and climb and dance; one cannot fly into flying." ,"Friedrich Nietzsche")
scr_add_quote( "We are more often frightened than hurt; and we suffer more from imagination than from reality." ,"Seneca")
scr_add_quote( "We hear only those questions for which we are in a position to find answers." ,"Friedrich Nietzsche")
scr_add_quote( "Wherever there is a human being, there is an opportunity for a kindness.", "Seneca")
scr_add_quote( "Without continual growth and progress, such words as improvement, achievement, and success have no meaning." ,"Benjamin Franklin")
scr_add_quote( "Workers work hard enough to not be fired, and owners pay just enough so that workers won't quit." , "Robert T. Kiyosaki")
scr_add_quote( "You act like mortals in all that you fear, and like immortals in all that you desire" ,"Seneca")



#define scr_add_quote
///scr_add_quote( "quote", "author" );
/*
    Add a quote to the quote database. 
*/
if(is_array( global.qdb )){
    //show_message("Is Array");
    var _count = array_length_1d(global.qdb);
    global.qdb[_count] = string( argument[0] ) + " -" + string(argument[1]);
}else{
    //show_message("Not Array");
    global.qdb[0] = string( argument[0] ) + " -" + string(argument[1]);
}
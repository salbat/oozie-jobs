cities = load 'cities_small.txt' as (name:chararray, state:chararray, population:int);
california_cities = FILTER cities by (state=='CA');
small_california_cities = FILTER california_cities by (population < 200000);
store small_california_cities into 'oozie_output';
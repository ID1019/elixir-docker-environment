echo "all is well, all is good"


echo "all ready, please open the container bash in seperate tab"
echo "step 1:run \"docker exec -it ead_elixir_\"number of container\" bash\""
echo "step 2: go to the folder of the exs file in container bash"
echo "step 3: run \"elixir your-script-name.exs\""
echo "step 4: enjoy the lightweight elixir setup :)"

echo "how to run an iex session:"
echo "run \"docker exec -it ead_elixir_\"number of container\" iex \""

echo "get on working with elixir :)"

echo "Author: Murat Eksi"
echo "License: MIT" 

until iex
do
    echo "Waiting iex session to boot"
    sleep 2;
done
# Dockerizer Elixir Development Environment

This repository is built for the course ID1019 at KTH. The intended usage is for learning purposes, but can also be easily scaled to production whenever needed. Feel free to use it and if you think that something is missing or could be done much better, please contact me.

## Usage

### Step 1

#### Docker 

What is Docker? https://en.wikipedia.org/wiki/Docker_(software)

Install Docker by following the instructions at https://www.docker.com/get-started.

### Step 2

#### `git clone https://github.com/murikarox/ead.git`

Clone this repository to your own workspace.

#### `cd ead`

Change directory to the repository folder.

### Step 3

This setup of dockerized Elixir uses a Makefile for easy usage. In order to be able to use the Makefile, you don't need to do anything else on unix based systems. However, on Windows, you need to install GNUWIN and add the path of the bin directory to your PATH in environment variables of the host machine. If you are using an unix based system, you can skip to the step 4.

#### GNUWIN

Go to http://gnuwin32.sourceforge.net/packages/make.htm and from the download section click on the setup link of the "Complete Package". After downloading and installing GNUWIN, you need to add the `gnuwin\bin` folder to your PATH. This folder is dependent on where you install GNUWIN, so you need to go into your system folders and find the bin folder at the path you told the installer to install the GNUWIN at. 

To add the PATH, right click on "My Computer" in explorer and select "properties". Then select "Environment Variables" and click on PATH to edit it in the opened window. You can click on "New" and just paste the PATH of the bin folder and click OK afterwards,

You can now use GNUWIN in powershell or CMD.


### Step 4

#### `make`

Once in the folder of this repository, just run this command and it will automatically compose the docker container, assuming that you have followed throughly until this point.

### Step 5

You can now work easily using the commands below.

## Good To Know

### `make`

Default command for make is to compose the container and open the Elixir iex session.

### `make start`

It has the functionality as `make` and can be used to open the Elixir iex session.

### `make sh`

This command can be used to open a bash session inside the container to be able to run a specific exs file by typing
`elixir script-name.exs` in the bash session.

### `make status`

This can be used to see the active Docker container at that moment

### `make stop`

This can be used to stop the Docker container.

# Important Notice

This image also has a built in bash on top of the elixir-alpine. This helps us to have the ability of going through our files inside the container and run any script easily inside the elixir environment while also benefitting from the lightweight release of the elixir-alpine. 

Full release is 1 GB and this way, we only run the environment with a setup of 90 MBs by only having the things we really need to be able to run exs files. We can also add more functionality whenever needed.

## Contributing

1. Fork it (<https://github.com/murikarox/base-setup-drd.git/fork>)
2. Create your feature branch (`git checkout -b feature/something`)
3. Commit your changes (`git commit -am 'Added Something`)
4. Push to the branch (`git push origin feature/something`)
5. Create a new Pull Request

## Contributors

Murat Eksi – info@murateksi.com  
Simone Stefani

## License
[MIT](https://choosealicense.com/licenses/mit/)

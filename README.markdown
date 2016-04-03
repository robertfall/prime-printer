# Prime Number Printer
## Requirements 
This application was tested against Ruby 2.2.2. To ensure maximum compatibility run the application against Ruby 2.2.2.

## Installation
To install the application clone `https://github.com/robertfall/prime-printer.git` into a folder. 

Navigate to the installation folder and run `./bin/prime-printer`.

The application uses the system Ruby found at `/usr/bin/ruby`. To run the application with a different instance of Ruby run `ruby bin/tweeter` from the installation directory.

## Usage
`prime-printer [Number of Primes]`

Passing a single argument to the prime-printer program will change the number of rows and columns the program prints. The argument needs to be a positive integer.

##
The program makes use of the Sieve of Eratosthenes method to generate prime numbers. More information can be found [here](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes).

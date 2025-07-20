//Requires a Cargo.toml as follows:
/*
[package]
name = "Guessing Game"
version = "0.1.1"
authors = ["tayondw"]
edition = "2021"

# See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html

[dependencies]
rand = "0.8.3"
*/

use std::io;
use rand::Rng;

fn main() {
    // generates a random positive integer from 1-10, inclusive
    let secret_number: u8 = rand::thread_rng().gen_range(1..11);

    loop {
        println!("What's your guess?");
        let mut user_guess: String = String::new();
        io::stdin()
            .read_line(&mut user_guess)
            .expect("Error encountered while getting the user input.");

        let user_number: u8 = match user_guess.trim().parse() {
            Ok(x) => x,
            Err(_) => {
                println!(
                    "Invalid. You must input positive integers within the range 1-10 only, inclusive."
                );
                continue;
            }
        };

        // checking the user's guess
        if user_number > secret_number {
            println!("Too big!");
        } else if user_number < secret_number {
            println!("Too small!");
        } else {
            println!("You win!");
            break;
        }
    }
}

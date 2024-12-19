import random
import math

# Function to generate a checkerboard.txt file with random colors
def generate_random_checkerboard_file(min_n=2, max_n=100, filename="checkerboard.txt"):
    # Generate a list of perfect squares within the range [min_n, max_n]
    possible_values = [i ** 2 for i in range(int(math.sqrt(min_n)), int(math.sqrt(max_n)) + 1) if i ** 2 <= max_n]
    n = random.choice(possible_values)

    with open(filename, "w") as f:
        f.write(f"{n}\n")  # Write the number of squares
        for _ in range(n):
            # Generate random RGB values for each square (values between 0 and 255)
            r = random.randint(0, 255)
            g = random.randint(0, 255)
            b = random.randint(0, 255)
            f.write(f"{r},{g},{b}\n")

    print(f"File '{filename}' with {n} squares and random colors created.")

# Example usage: Generate a checkerboard.txt file with a random perfect square number of squares
generate_random_checkerboard_file(min_n=2000, max_n=10000)
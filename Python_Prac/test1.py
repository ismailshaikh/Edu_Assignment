# Create three strings
string1 = "Hello, World!"
string2 = "Mohammed Ismail"
string3 = " Let's learn Python with Ismail "

# 1. Length
length1 = len(string1)
print("Length of string1:", length1)

# 2a. Change to lowercase
lowercase_string2 = string2.lower()
print("Lowercase string2:", lowercase_string2)

# 2b. Change to uppercase
uppercase_string3 = string3.upper()
print("Uppercase string3:", uppercase_string3)

# 3. Replace character
new_string1 = string1.replace("o", "a")
print("New string1:", new_string1)

# 4. Split into substrings by spaces
substrings_string3 = string3.split()
print("Substrings of string3:", substrings_string3)

# 5. Capitalize first letter only
capitalized_string2 = string2.capitalize()
print("Capitalized string2:", capitalized_string2)

# 6a. Remove spaces from both ends
trimmed_string3 = string3.strip()
print("Trimmed string3:", trimmed_string3)

# 6b. Remove spaces from the left end
left_trimmed_string1 = string1.lstrip()
print("Left-trimmed string1:", left_trimmed_string1)

# 7. Find index of a character
index2 = string2.index("a")
print("Index of 'a' in string2:", index2)

# 8. Show use of format
formatted_string = "Today is {}, {} {}.".format("July 9, 2023", "a", "Wednesday")
print("Formatted string:", formatted_string)

# 9. Demonstrate Indexing and Slicing
print("Character at index 3 in string1:", string1[3])
print("Substring from index 7 to 12 in string3:", string3[7:13])

nano homework.sh
# Exercise 1: What is your home directory? What files/folders exist in your home directory? Navigate to it and then navigate back to your notes.

# Find your home directory
echo $HOME

# List files and folders in your home directory
ls $HOME

# Navigate to your home directory
cd $HOME

# Navigate back to your previous directory (assumed to be your notes directory)
cd -

# Exercise 2: Where does the following command take you? How does it work?
# This command takes you three levels up from your home directory.
cd ~/../../..

# Exercise 3: Read the manual page of ls. What does the a flag do? What does the l flag do?
# Read the manual page of ls
man ls

# The a flag (-a) lists all files including hidden files (those starting with .).
# The l flag (-l) lists files in long format, showing detailed information like permissions, number of links, owner, group, size, and timestamp.

# Exercise 4: Create a new file with the touch command, for instance touch myfile.txt. Run stat myfile.txt. What information do you get?
# Create a new file
touch myfile.txt

# Run stat on the file
stat myfile.txt

# Exercise 5: Run ls and from there list select a file. Now run ls -l to display the details of the files, showing that it has been created or updated. What information does it give you regarding the myfile.txt and your selected file?
# List files
ls

# Select a file (assuming myfile.txt is selected) and show detailed information
ls -l myfile.txt

# Exercise 6: Add the following line "This line is my first line" to myfile.txt. Then run cat myfile.txt to show the line is added.
# Add the line to myfile.txt
echo "This line is my first line" > myfile.txt

# Show the content of myfile.txt
cat myfile.txt

# Exercise 7: Run touch myfile.txt then run ls -l myfile.txt. Does the timestamp for the file myfile.txt get updated? Show the output.
# Update the timestamp of myfile.txt
touch myfile.txt

# Show the details of myfile.txt
ls -l myfile.txt

chmod +x homework.sh
./homework.sh

clear
echo "Enter the source file:"
read fnm
echo "The file content in reverse order:\n"
rev $fnm | tac
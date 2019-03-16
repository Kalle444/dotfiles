working_dir=$PWD

echo "Working directory" $working_dir

echo "Installing bash_profile"
ln -sv $working_dir/bash_profile ~/.bash_profile

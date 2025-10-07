function m
    if [ -f ./xmake.lua ]
        xmake project -k compile_commands
        xmake $argv
    end
end

function ma
end

function mr
end

function mc
    xmake clean
end

function mn
    if [ "$argv[2]" = cpp ]
        xmake create -l c++ $argv[1]
        cd $argv[1]

        echo "
target('$argv[1]')
set_kind('binary')
add_files('src/*.cpp')
" > ./xmake.lua
    else
        xmake create -l $argv[2] $argv[1]
        cd $argv[1]

        echo "
target('$argv[1]')
set_kind('binary')
add_files('src/*.c')
" > ./xmake.lua
    end

    echo "int main() {}" > ./src/main.$argv[2]
end

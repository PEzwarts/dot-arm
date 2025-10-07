function m
    for file in (find . -maxdepth 2 -type f);
        if [ (file $file | grep "ELF") ];
            $file
        end
    end
end

function ma
    if [ ! $(pwd | grep "subprojects") ];
        if [ ! -d ./subprojects ];
            mkdir ./subprojects
        end
    end

    meson wrap install $argv[1]

#     cd ./subprojects
#     touch $argv[2].wrap
#
#     echo "
# [wrap-git]
# url = https://github.com/$argv[1].git
# revision = head
# " > ./$argv[2].wrap
end

function mr
end

function mc
    meson compile -C build
end

function mn
    mkdir $argv[1]
    cd $argv[1]

    meson init --language=$argv[2] --name=$argv[1]
    meson setup build

    echo "int main() {}" > ./$argv[1].$argv[2]
end

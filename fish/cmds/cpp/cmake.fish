function m
    for file in (find . -maxdepth 2 -type f);
        if [ (file $file | grep "ELF") ];
            $file
        end
    end
end

function ma
end

function mr
end

function mc
end

function mn
end

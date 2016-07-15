cheatsheet do
    title 'Git'
    docset_file_name 'Git'
    keyword 'git'
    category do
        id 'stash'
        entry do
            name 'Stash untracked files'
            notes <<-'END'
            ```
            git stash save -u
            ```
            END
        end
    end
    category do
        id 'rebase'
        entry do
            name 'Run a test against each commit'
            notes <<-'END'
            ```
            git rebase -i --exec "make test" master
            ```
            END
        end
    end
end


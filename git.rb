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
        entry do
            name 'Break up an old commit'
            notes <<-'END'
            Steps:

                1. `git rebase -i master`

                2. Change "pick" to "edit"

                3. `git reset HEAD~`

                4. "git add, git commit"

                5. `git rebase --continue`
            END
		end
    end
end


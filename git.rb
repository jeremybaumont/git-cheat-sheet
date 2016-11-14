cheatsheet do
    title 'Git'
    docset_file_name 'Git'
    keyword 'git'
    category do
        id 'ignore'
        entry do
            name 'Ignore locally'
            notes <<-'END'
            add to `.git/info/exclude`
            END
        end
    end
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
    category do
        id 'creating new branches'
        entry do
            name 'Create an orphaned branch'
            notes <<-'END'
            ```
            git checkout --orphan mybranch
            git rm -rf .
            ...
            git commit -m 'initial commit'

            ```
            END
        end
    end
    category do
        id 'tags'
        entry do
            name 'add a tag'
            command 'git tag -a tagname'
        end
        entry do
            name 'push tag'
            command 'git push origin tagname'
        end
    end
    category do
        id 'diff'
        entry do
            name 'List changed files'
            notes <<-'END'
            ```
            git diff --name-only master
            ```
            END
        end
    end
end


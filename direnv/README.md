# direnv
direnv stuff used in repo folders where special versions of tools are needed

This particular example contains terraform-docs v0.11.2.

```bash
terraform-docs version
# output
terraform-docs version 0.11.2 bd351fc darwin/amd64 BuildDate: 2021-02-22T23:52:49Z
```

1. install direnv and hook into bash, see https://direnv.net/
2. copy this repo's .direnv folder to your git repo folder
3. run command 'direnv allow' to create hook for the git repo folder

If using VSCode on MacOS, you can stage files but you will not be able to use VSCode "commit" checkbox as it will use the system level terraform-docs version. If your intent is to use a different terraform-docs version as this example is intended to do, then you will need to run your commit from CLI instead of the VSCode GUI checkbox.

Example...
```bash
git commit -m "test commit"
```

This will kick off a commit, if you have pre-commit installed with hooks then other actions will be performed like formatting, and then terraform-docs v0.11.2 will also be used to build docs like inputs, outputs, providers, and more. Once committed via CLI, VSCode no longer has any staged changes. VSCode will instead show new changes to be synced with origin repo!

Enjoy!

## dotfiles
My setup dotfiles

## deploy
```
curl -L raw.github.com/koooge/dotfiles/master/install.sh | bash
```


## GPG
```sh
git config --global user.name koooge
git config --global user.email koooooge@gmail.com
git config --global user.signingkey 341D76B5D0FD8E4E

gpg --import <path/to/sec.pem>
```

#### sec.pem

```sh
gpg -a --export-secret-key koooooge@gmail.com > sec.pem
```

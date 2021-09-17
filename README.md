# README

## Getting things ready
* **System dependencies**
  * rvm (or other ruby version manager) is advised
  * nvm (or other node version manager) is advised

* **Ruby/Node version**
  * rvm (or other ruby version manager) is advised
    [rvm](https://rvm.io/rvm/install)

    ```bash
    curl -sSL get.rvm.io | bash -s stable
    rvm requirements
    rvm list known
    rvm install 2.5.8
    echo 'gem: --no-document' > ~/.gemrc
    gem install bundler --no-document
    ```
  * nvm (or other node version manager) is advised
    [nvm](https://github.com/nvm-sh/nvm)

    ```bash
    export NODE_VERSION="v14.15.1"
    echo "$NODE_VERSION" > .nvmrc
    curl --silent -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    #nvm install
    nvm --version
    node --version
    npm install --global yarn
    yarn --version
    ```

* **Configuration**
  * `bundle install`
* **Database creation**
  * `rails db:setup`
* **test suite**
  * `rails test`
* **Development**
  * `rails s`
  * go to http://localhost:3000
* **API**
  * `rails routes`

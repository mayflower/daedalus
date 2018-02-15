{ buildNodePackage, removePrefixes, stdenv }:
allDeps: buildNodePackage rec {
      name = "daedalus";
      version = "0.9.0";
      src = removePrefixes [
        "node_modules"
      ] ./.;
      nodeBuildInputs = let
        a = allDeps;
        in [
          a."babel-plugin-transform-runtime@6.23.0"
          a."babel-preset-stage-0@6.22.0"
          a."json-loader@0.5.4"
          a."eslint-plugin-jsx-a11y@2.2.3"
          a."eslint-plugin-promise@2.0.1"
          a."eslint-formatter-pretty@1.1.0"
          a."spectron@3.7.2"
          a."resolve-url@0.2.1"
          a."webpack-dev-middleware@1.10.1"
          a."electron-store@1.3.0"
          a."react-dom@15.4.2"
          a."file-loader@0.9.0"
          a."react-svg-inline@2.0.0"
          a."postcss-modules-values@1.2.2"
          a."babel-plugin-transform-async-to-module-method@6.22.0"
          a."eslint-plugin-import@1.16.0"
          a."extract-text-webpack-plugin@1.0.1"
          a."es6-error@4.0.2"
          a."mobx-react-devtools@4.2.11"
          a."babel-preset-es2015@6.24.0"
          a."electron-packager@9.1.0"
          a."babel-plugin-add-module-exports@0.2.1"
          a."devtron@1.4.0"
          a."raw-loader@0.5.1"
          a."node-libs-browser@1.1.1"
          a."react-intl-translations-manager@4.0.1"
          a."babel-preset-react-optimize@1.0.1"
          a."babel-polyfill@6.23.0"
          a."electron@1.7.11"
          a."moment@2.18.1"
          a."blakejs@1.0.1"
          a."mobx@3.1.7"
          a."unorm@1.4.1"
          a."babel-preset-react-hmre@1.1.1"
          a."postcss@5.2.16"
          a."react-dropzone@3.12.2"
          a."web3@1.0.0-beta.30"
          a."faker@4.1.0"
          a."babel-cli@6.24.0"
          a."route-parser@0.0.5"
          a."cross-env@3.2.4"
          a."concurrently@3.4.0"
          a."react-polymorph@0.5.4"
          a."sass-loader@4.1.1"
          a."validator@6.3.0"
          a."eslint-import-resolver-webpack@0.6.0"
          a."electron-inspector@0.1.4"
          a."winston@2.3.1"
          a."webpack-hot-middleware@2.17.1"
          a."babel-plugin-transform-async-to-generator@6.22.0"
          a."eslint@3.18.0"
          a."react@15.4.2"
          a."bip39@2.3.0"
          a."react-addons-css-transition-group@15.4.2"
          a."asar@0.12.4"
          a."qrcode.react@0.6.1"
          a."pbkdf2@3.0.14"
          a."mkdirp@0.5.1"
          a."html-loader@0.4.5"
          a."bs58@4.0.1"
          a."eslint-plugin-flowtype-errors@1.5.0"
          a."electron-debug@1.1.0"
          a."boiler-room-custodian@0.4.3"
          a."safe-buffer@5.1.1"
          a."babel-plugin-transform-decorators-legacy@1.3.4"
          a."mobx-react@4.1.5"
          a."babel-loader@6.4.1"
          a."webpack-merge@0.14.1"
          a."babel-register@6.24.0"
          a."react-css-themr@2.0.0"
          a."babel-plugin-lodash@3.2.11"
          a."nodemon@1.11.0"
          a."electron-rebuild@1.6.0"
          a."babel-preset-react@6.23.0"
          a."babel-eslint@7.2.1"
          a."fbjs-scripts@0.7.1"
          a."css-loader@0.25.0"
          a."react-router@3.0.3"
          a."winston-papertrail@1.0.4"
          a."mobx-react-form@1.32.2"
          a."eslint-config-airbnb@12.0.0"
          a."postcss-modules@0.5.2"
          a."node-sass@3.13.1"
          a."babel-plugin-webpack-loaders@0.8.0"
          a."url-loader@0.5.8"
          a."flow-bin@0.59.0"
          a."humanize-duration@3.12.0"
          a."webpack-validator@2.3.0"
          a."babel-plugin-react-intl@2.3.1"
          a."express@4.15.2"
          a."mobx-react-router@3.1.2"
          a."classnames@2.2.5"
          a."electron-devtools-installer@2.2.1"
          a."del@2.2.2"
          a."pdf.js-extract@0.0.5"
          a."lodash@4.17.4"
          a."eslint-loader@1.7.0"
          a."bignumber.js@4.0.0"
          a."recharts@1.0.0-alpha.4"
          a."webdriverio@4.9.10"
          a."minimist@1.2.0"
          a."cucumber@3.1.0"
          a."chai@4.1.2"
          a."aes-js@2.1.1"
          a."style-loader@0.13.2"
          a."markdown-loader@2.0.0"
          a."react-markdown@2.5.0"
          a."react-intl@2.2.3"
          a."react-copy-to-clipboard@4.2.3"
          a."babel-core@6.24.0"
          a."source-map-support@0.4.14"
          a."electron-log@2.0.2"
          a."react-number-format@1.1.2"
          a."babel-plugin-dev-expression@0.2.1"
          a."eslint-plugin-react@6.10.3"
          a."css-modules-require-hook@4.0.6"
          a."@kadira/storybook@2.35.3"
          a."webpack@1.14.0"
          a."happypack@4.0.0-beta.2"
        ];
      meta = {
        description = "Cryptocurrency Wallet";
        license = "";
        homepage = "";
      };
    }

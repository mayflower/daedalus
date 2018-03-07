{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? [], overrides ? {}}:

rec { pkgs = {

  "7zip@0.0.6" = nodeEnv.buildYarnPackage {
            packageName = "7zip";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/7zip/-/7zip-0.0.6.tgz";
              sha1 = "9cafb171af82329490353b4816f03347aa150a30";
            };
            dependencies = {};
            seen = [ "7zip@0.0.6" ];
            };
  "@kadira/react-split-pane@1.4.7" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/react-split-pane";
            version = "1.4.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/react-split-pane/-/react-split-pane-1.4.7.tgz";
              sha1 = "6d753d4a9fe62fe82056e323a6bcef7f026972b5";
            };
            dependencies = {};
            seen = [ "@kadira/react-split-pane@1.4.7" ];
            };
  "@kadira/storybook-addon-actions@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/storybook-addon-actions";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/storybook-addon-actions/-/storybook-addon-actions-1.1.1.tgz";
              sha1 = "5053485583fadea413710d6405454dc168a7efc7";
            };
            dependencies = {
              "deep-equal@1.0.1" = pkgs."deep-equal@1.0.1";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "react-inspector@1.1.2" = pkgs."react-inspector@1.1.2";
            };
            seen = [ "@kadira/storybook-addon-actions@1.1.1" ];
            };
  "@kadira/storybook-addon-links@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/storybook-addon-links";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/storybook-addon-links/-/storybook-addon-links-1.0.1.tgz";
              sha1 = "566136a8020b60f82f146ef37d93b0c86de969d8";
            };
            dependencies = {};
            seen = [ "@kadira/storybook-addon-links@1.0.1" ];
            };
  "@kadira/storybook-addons@1.6.1" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/storybook-addons";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/storybook-addons/-/storybook-addons-1.6.1.tgz";
              sha1 = "e84923d298b38c7c1231ddebc219dfb87b2858a6";
            };
            dependencies = {};
            seen = [ "@kadira/storybook-addons@1.6.1" ];
            };
  "@kadira/storybook-channel-postmsg@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/storybook-channel-postmsg";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/storybook-channel-postmsg/-/storybook-channel-postmsg-2.0.1.tgz";
              sha1 = "2a9065bf0647c940b8f9a3a7342a3e12e321af72";
            };
            dependencies = {
              "@kadira/storybook-channel@1.1.0" = pkgs."@kadira/storybook-channel@1.1.0";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
            };
            seen = [ "@kadira/storybook-channel-postmsg@2.0.1" ];
            };
  "@kadira/storybook-channel@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/storybook-channel";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/storybook-channel/-/storybook-channel-1.1.0.tgz";
              sha1 = "806d1cdf2498d11cce09871a6fd27bbb41ed3564";
            };
            dependencies = {};
            seen = [ "@kadira/storybook-channel@1.1.0" ];
            };
  "@kadira/storybook-ui@3.10.1" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/storybook-ui";
            version = "3.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/storybook-ui/-/storybook-ui-3.10.1.tgz";
              sha1 = "d0ab3b00fce419fff11c45d386104e74765f953c";
            };
            dependencies = {
              "@kadira/react-split-pane@1.4.7" = pkgs."@kadira/react-split-pane@1.4.7";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "deep-equal@1.0.1" = pkgs."deep-equal@1.0.1";
              "events@1.1.1" = pkgs."events@1.1.1";
              "fuzzysearch@1.0.3" = pkgs."fuzzysearch@1.0.3";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "keycode@2.1.8" = pkgs."keycode@2.1.8";
              "lodash.pick@4.4.0" = pkgs."lodash.pick@4.4.0";
              "mantra-core@1.7.0" = pkgs."mantra-core@1.7.0";
              "podda@1.2.2" = pkgs."podda@1.2.2";
              "qs@6.2.0" = pkgs."qs@6.2.0";
              "react-fuzzy@0.3.3" = pkgs."react-fuzzy@0.3.3";
              "react-inspector@1.1.2" = pkgs."react-inspector@1.1.2";
              "react-komposer@2.0.0" = pkgs."react-komposer@2.0.0";
              "react-modal@1.6.5" = pkgs."react-modal@1.6.5";
              "redux@3.6.0" = pkgs."redux@3.6.0";
            };
            seen = [ "@kadira/storybook-ui@3.10.1" ];
            };
  "@kadira/storybook@2.35.3" = nodeEnv.buildYarnPackage {
            packageName = "@kadira/storybook";
            version = "2.35.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@kadira/storybook/-/storybook-2.35.3.tgz";
              sha1 = "8106195e1733623baf60db6adaa678dc29285d12";
            };
            dependencies = {
              "@kadira/react-split-pane@1.4.7" = pkgs."@kadira/react-split-pane@1.4.7";
              "@kadira/storybook-addon-actions@1.1.1" = pkgs."@kadira/storybook-addon-actions@1.1.1";
              "@kadira/storybook-addon-links@1.0.1" = pkgs."@kadira/storybook-addon-links@1.0.1";
              "@kadira/storybook-addons@1.6.1" = pkgs."@kadira/storybook-addons@1.6.1";
              "@kadira/storybook-channel-postmsg@2.0.1" = pkgs."@kadira/storybook-channel-postmsg@2.0.1";
              "@kadira/storybook-ui@3.10.1" = pkgs."@kadira/storybook-ui@3.10.1";
              "airbnb-js-shims@1.0.1" = pkgs."airbnb-js-shims@1.0.1";
              "autoprefixer@6.6.1" = pkgs."autoprefixer@6.6.1";
              "babel-core@6.21.0" = pkgs."babel-core@6.21.0";
              "babel-loader@6.2.10" = pkgs."babel-loader@6.2.10";
              "babel-plugin-react-docgen@1.4.2" = pkgs."babel-plugin-react-docgen@1.4.2";
              "babel-preset-react-app@1.0.0" = pkgs."babel-preset-react-app@1.0.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "case-sensitive-paths-webpack-plugin@1.1.4" = pkgs."case-sensitive-paths-webpack-plugin@1.1.4";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "common-tags@1.4.0" = pkgs."common-tags@1.4.0";
              "configstore@2.1.0" = pkgs."configstore@2.1.0";
              "css-loader@0.26.1" = pkgs."css-loader@0.26.1";
              "express@4.14.0" = pkgs."express@4.14.0";
              "file-loader@0.9.0" = pkgs."file-loader@0.9.0";
              "find-cache-dir@0.1.1" = pkgs."find-cache-dir@0.1.1";
              "json-loader@0.5.4" = pkgs."json-loader@0.5.4";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "json5@0.5.1" = pkgs."json5@0.5.1";
              "lodash.pick@4.4.0" = pkgs."lodash.pick@4.4.0";
              "postcss-loader@1.1.0" = pkgs."postcss-loader@1.1.0";
              "qs@6.2.0" = pkgs."qs@6.2.0";
              "react-modal@1.6.5" = pkgs."react-modal@1.6.5";
              "redux@3.6.0" = pkgs."redux@3.6.0";
              "request@2.79.0" = pkgs."request@2.79.0";
              "serve-favicon@2.3.2" = pkgs."serve-favicon@2.3.2";
              "shelljs@0.7.6" = pkgs."shelljs@0.7.6";
              "style-loader@0.13.1" = pkgs."style-loader@0.13.1";
              "url-loader@0.5.7" = pkgs."url-loader@0.5.7";
              "uuid@2.0.3" = pkgs."uuid@2.0.3";
              "webpack@1.14.0" = pkgs."webpack@1.14.0";
              "webpack-dev-middleware@1.9.0" = pkgs."webpack-dev-middleware@1.9.0";
              "webpack-hot-middleware@2.15.0" = pkgs."webpack-hot-middleware@2.15.0";
            };
            seen = [ "@kadira/storybook@2.35.3" ];
            };
  "@types/node@7.0.55" = nodeEnv.buildYarnPackage {
            packageName = "@types/node";
            version = "7.0.55";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@types/node/-/node-7.0.55.tgz";
              sha1 = "7bb6215ff9425a1d714106be9f0d3e0e28829288";
            };
            dependencies = {};
            seen = [ "@types/node@7.0.55" ];
            };
  "@yarnpkg/lockfile@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "@yarnpkg/lockfile";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@yarnpkg/lockfile/-/lockfile-1.0.0.tgz";
              sha1 = "33d1dbb659a23b81f87f048762b35a446172add3";
            };
            dependencies = {};
            seen = [ "@yarnpkg/lockfile@1.0.0" ];
            };
  "abab@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "abab";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/abab/-/abab-1.0.3.tgz";
              sha1 = "b81de5f7274ec4e756d797cd834f303642724e5d";
            };
            dependencies = {};
            seen = [ "abab@1.0.3" ];
            };
  "abbrev@1.0.9" = nodeEnv.buildYarnPackage {
            packageName = "abbrev";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/abbrev/-/abbrev-1.0.9.tgz";
              sha1 = "91b4792588a7738c25f35dd6f63752a2f8776135";
            };
            dependencies = {};
            seen = [ "abbrev@1.0.9" ];
            };
  "accepts@1.3.3" = nodeEnv.buildYarnPackage {
            packageName = "accepts";
            version = "1.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/accepts/-/accepts-1.3.3.tgz";
              sha1 = "c3ca7434938648c3e0d9c1e328dd68b622c284ca";
            };
            dependencies = {
              "mime-types@2.1.13" = pkgs."mime-types@2.1.13";
              "negotiator@0.6.1" = pkgs."negotiator@0.6.1";
            };
            seen = [ "accepts@1.3.3" ];
            };
  "accessibility-developer-tools@2.11.0" = nodeEnv.buildYarnPackage {
            packageName = "accessibility-developer-tools";
            version = "2.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/accessibility-developer-tools/-/accessibility-developer-tools-2.11.0.tgz";
              sha1 = "2b669c802671672aed5c61c42a782082a2fc7d2c";
            };
            dependencies = {};
            seen = [ "accessibility-developer-tools@2.11.0" ];
            };
  "acorn-globals@1.0.9" = nodeEnv.buildYarnPackage {
            packageName = "acorn-globals";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn-globals/-/acorn-globals-1.0.9.tgz";
              sha1 = "55bb5e98691507b74579d0513413217c380c54cf";
            };
            dependencies = {
              "acorn@2.7.0" = pkgs."acorn@2.7.0";
            };
            seen = [ "acorn-globals@1.0.9" ];
            };
  "acorn-jsx@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "acorn-jsx";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-3.0.1.tgz";
              sha1 = "afdf9488fb1ecefc8348f6fb22f464e32a58b36b";
            };
            dependencies = {
              "acorn@3.3.0" = pkgs."acorn@3.3.0";
            };
            seen = [ "acorn-jsx@3.0.1" ];
            };
  "acorn@5.5.1" = nodeEnv.buildYarnPackage {
            packageName = "acorn";
            version = "5.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn/-/acorn-5.5.1.tgz";
              sha1 = "84e05a9ea0acbe131227da50301e62464dc9c1d8";
            };
            dependencies = {};
            seen = [ "acorn@5.5.1" ];
            };
  "aes-js@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "aes-js";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aes-js/-/aes-js-2.1.1.tgz";
              sha1 = "68989763bbade2a39172ea48f4953d1272ff38a7";
            };
            dependencies = {};
            seen = [ "aes-js@2.1.1" ];
            };
  "airbnb-js-shims@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "airbnb-js-shims";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/airbnb-js-shims/-/airbnb-js-shims-1.0.1.tgz";
              sha1 = "7d5a7d772c8c6fdeb624ea3cef62506091b180b5";
            };
            dependencies = {
              "array-includes@3.0.2" = pkgs."array-includes@3.0.2";
              "es5-shim@4.5.9" = pkgs."es5-shim@4.5.9";
              "es6-shim@0.35.2" = pkgs."es6-shim@0.35.2";
              "object.entries@1.0.4" = pkgs."object.entries@1.0.4";
              "object.getownpropertydescriptors@2.0.3" = pkgs."object.getownpropertydescriptors@2.0.3";
              "object.values@1.0.4" = pkgs."object.values@1.0.4";
              "string.prototype.padend@3.0.0" = pkgs."string.prototype.padend@3.0.0";
              "string.prototype.padstart@3.0.0" = pkgs."string.prototype.padstart@3.0.0";
            };
            seen = [ "airbnb-js-shims@1.0.1" ];
            };
  "ajv-keywords@1.5.0" = nodeEnv.buildYarnPackage {
            packageName = "ajv-keywords";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-1.5.0.tgz";
              sha1 = "c11e6859eafff83e0dafc416929472eca946aa2c";
            };
            dependencies = {};
            seen = [ "ajv-keywords@1.5.0" ];
            };
  "ajv@5.5.2" = nodeEnv.buildYarnPackage {
            packageName = "ajv";
            version = "5.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ajv/-/ajv-5.5.2.tgz";
              sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
            };
            dependencies = {
              "co@4.6.0" = pkgs."co@4.6.0";
              "fast-deep-equal@1.1.0" = pkgs."fast-deep-equal@1.1.0";
              "fast-json-stable-stringify@2.0.0" = pkgs."fast-json-stable-stringify@2.0.0";
              "json-schema-traverse@0.3.1" = pkgs."json-schema-traverse@0.3.1";
            };
            seen = [ "ajv@5.5.2" ];
            };
  "align-text@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "align-text";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/align-text/-/align-text-0.1.4.tgz";
              sha1 = "0cd90a561093f35d0a99256c22b7069433fad117";
            };
            dependencies = {
              "kind-of@3.1.0" = pkgs."kind-of@3.1.0";
              "longest@1.0.1" = pkgs."longest@1.0.1";
              "repeat-string@1.6.1" = pkgs."repeat-string@1.6.1";
            };
            seen = [ "align-text@0.1.4" ];
            };
  "alphanum-sort@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "alphanum-sort";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/alphanum-sort/-/alphanum-sort-1.0.2.tgz";
              sha1 = "97a1119649b211ad33691d9f9f486a8ec9fbe0a3";
            };
            dependencies = {};
            seen = [ "alphanum-sort@1.0.2" ];
            };
  "amdefine@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "amdefine";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/amdefine/-/amdefine-1.0.1.tgz";
              sha1 = "4a5282ac164729e93619bcfd3ad151f817ce91f5";
            };
            dependencies = {};
            seen = [ "amdefine@1.0.1" ];
            };
  "ansi-escapes@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "ansi-escapes";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-3.0.0.tgz";
              sha1 = "ec3e8b4e9f8064fc02c3ac9b65f1c275bda8ef92";
            };
            dependencies = {};
            seen = [ "ansi-escapes@3.0.0" ];
            };
  "ansi-html@0.0.7" = nodeEnv.buildYarnPackage {
            packageName = "ansi-html";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-html/-/ansi-html-0.0.7.tgz";
              sha1 = "813584021962a9e9e6fd039f940d12f56ca7859e";
            };
            dependencies = {};
            seen = [ "ansi-html@0.0.7" ];
            };
  "ansi-regex@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "ansi-regex";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-3.0.0.tgz";
              sha1 = "ed0317c322064f79466c02966bddb605ab37d998";
            };
            dependencies = {};
            seen = [ "ansi-regex@3.0.0" ];
            };
  "ansi-styles@3.2.1" = nodeEnv.buildYarnPackage {
            packageName = "ansi-styles";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.1.tgz";
              sha1 = "41fbb20243e50b12be0f04b8dedbf07520ce841d";
            };
            dependencies = {
              "color-convert@1.9.1" = pkgs."color-convert@1.9.1";
            };
            seen = [ "ansi-styles@3.2.1" ];
            };
  "ansi@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "ansi";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi/-/ansi-0.3.1.tgz";
              sha1 = "0c42d4fb17160d5a9af1e484bace1c66922c1b21";
            };
            dependencies = {};
            seen = [ "ansi@0.3.1" ];
            };
  "any-promise@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "any-promise";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/any-promise/-/any-promise-1.3.0.tgz";
              sha1 = "abc6afeedcea52e809cdc0376aed3ce39635d17f";
            };
            dependencies = {};
            seen = [ "any-promise@1.3.0" ];
            };
  "anymatch@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "anymatch";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/anymatch/-/anymatch-1.3.0.tgz";
              sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
            };
            dependencies = {
              "arrify@1.0.1" = pkgs."arrify@1.0.1";
              "micromatch@2.3.11" = pkgs."micromatch@2.3.11";
            };
            seen = [ "anymatch@1.3.0" ];
            };
  "aproba@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "aproba";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aproba/-/aproba-1.0.4.tgz";
              sha1 = "2713680775e7614c8ba186c065d4e2e52d1072c0";
            };
            dependencies = {};
            seen = [ "aproba@1.0.4" ];
            };
  "archiver-utils@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "archiver-utils";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/archiver-utils/-/archiver-utils-1.3.0.tgz";
              sha1 = "e50b4c09c70bf3d680e32ff1b7994e9f9d895174";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "lazystream@1.0.0" = pkgs."lazystream@1.0.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "normalize-path@2.0.1" = pkgs."normalize-path@2.0.1";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "archiver-utils@1.3.0" ];
            };
  "archiver@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "archiver";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/archiver/-/archiver-2.1.1.tgz";
              sha1 = "ff662b4a78201494a3ee544d3a33fe7496509ebc";
            };
            dependencies = {
              "archiver-utils@1.3.0" = pkgs."archiver-utils@1.3.0";
              "async@2.6.0" = pkgs."async@2.6.0";
              "buffer-crc32@0.2.13" = pkgs."buffer-crc32@0.2.13";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "tar-stream@1.5.2" = pkgs."tar-stream@1.5.2";
              "zip-stream@1.2.0" = pkgs."zip-stream@1.2.0";
            };
            seen = [ "archiver@2.1.1" ];
            };
  "are-we-there-yet@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "are-we-there-yet";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/are-we-there-yet/-/are-we-there-yet-1.1.2.tgz";
              sha1 = "80e470e95a084794fe1899262c5667c6e88de1b3";
            };
            dependencies = {
              "delegates@1.0.0" = pkgs."delegates@1.0.0";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "are-we-there-yet@1.1.2" ];
            };
  "argparse@1.0.9" = nodeEnv.buildYarnPackage {
            packageName = "argparse";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/argparse/-/argparse-1.0.9.tgz";
              sha1 = "73d83bc263f86e97f8cc4f6bae1b0e90a7d22c86";
            };
            dependencies = {
              "sprintf-js@1.0.3" = pkgs."sprintf-js@1.0.3";
            };
            seen = [ "argparse@1.0.9" ];
            };
  "arr-diff@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "arr-diff";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-2.0.0.tgz";
              sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
            };
            dependencies = {
              "arr-flatten@1.0.1" = pkgs."arr-flatten@1.0.1";
            };
            seen = [ "arr-diff@2.0.0" ];
            };
  "arr-flatten@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "arr-flatten";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/arr-flatten/-/arr-flatten-1.0.1.tgz";
              sha1 = "e5ffe54d45e19f32f216e91eb99c8ce892bb604b";
            };
            dependencies = {};
            seen = [ "arr-flatten@1.0.1" ];
            };
  "array-differ@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "array-differ";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-differ/-/array-differ-1.0.0.tgz";
              sha1 = "eff52e3758249d33be402b8bb8e564bb2b5d4031";
            };
            dependencies = {};
            seen = [ "array-differ@1.0.0" ];
            };
  "array-equal@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "array-equal";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-equal/-/array-equal-1.0.0.tgz";
              sha1 = "8c2a5ef2472fd9ea742b04c77a75093ba2757c93";
            };
            dependencies = {};
            seen = [ "array-equal@1.0.0" ];
            };
  "array-find-index@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "array-find-index";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-find-index/-/array-find-index-1.0.2.tgz";
              sha1 = "df010aa1287e164bbda6f9723b0a96a1ec4187a1";
            };
            dependencies = {};
            seen = [ "array-find-index@1.0.2" ];
            };
  "array-find@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "array-find";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-find/-/array-find-1.0.0.tgz";
              sha1 = "6c8e286d11ed768327f8e62ecee87353ca3e78b8";
            };
            dependencies = {};
            seen = [ "array-find@1.0.0" ];
            };
  "array-flatten@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "array-flatten";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-flatten/-/array-flatten-1.1.1.tgz";
              sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
            };
            dependencies = {};
            seen = [ "array-flatten@1.1.1" ];
            };
  "array-includes@3.0.2" = nodeEnv.buildYarnPackage {
            packageName = "array-includes";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-includes/-/array-includes-3.0.2.tgz";
              sha1 = "7c867b4d1235c2b5687c874f3344bff4e002beba";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "es-abstract@1.6.1" = pkgs."es-abstract@1.6.1";
            };
            seen = [ "array-includes@3.0.2" ];
            };
  "array-index@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "array-index";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-index/-/array-index-1.0.0.tgz";
              sha1 = "ec56a749ee103e4e08c790b9c353df16055b97f9";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "es6-symbol@3.1.0" = pkgs."es6-symbol@3.1.0";
            };
            seen = [ "array-index@1.0.0" ];
            };
  "array-union@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "array-union";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-union/-/array-union-1.0.2.tgz";
              sha1 = "9a34410e4f4e3da23dea375be5be70f24778ec39";
            };
            dependencies = {
              "array-uniq@1.0.3" = pkgs."array-uniq@1.0.3";
            };
            seen = [ "array-union@1.0.2" ];
            };
  "array-uniq@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "array-uniq";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-uniq/-/array-uniq-1.0.3.tgz";
              sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
            };
            dependencies = {};
            seen = [ "array-uniq@1.0.3" ];
            };
  "array-unique@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "array-unique";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.2.1.tgz";
              sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
            };
            dependencies = {};
            seen = [ "array-unique@0.2.1" ];
            };
  "array.prototype.find@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "array.prototype.find";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array.prototype.find/-/array.prototype.find-2.0.1.tgz";
              sha1 = "1557f888df6c57e4d1256f20852d687a25b51fde";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "es-abstract@1.6.1" = pkgs."es-abstract@1.6.1";
            };
            seen = [ "array.prototype.find@2.0.1" ];
            };
  "arrify@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "arrify";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/arrify/-/arrify-1.0.1.tgz";
              sha1 = "898508da2226f380df904728456849c1501a4b0d";
            };
            dependencies = {};
            seen = [ "arrify@1.0.1" ];
            };
  "asap@2.0.5" = nodeEnv.buildYarnPackage {
            packageName = "asap";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asap/-/asap-2.0.5.tgz";
              sha1 = "522765b50c3510490e52d7dcfe085ef9ba96958f";
            };
            dependencies = {};
            seen = [ "asap@2.0.5" ];
            };
  "asar@0.12.4" = nodeEnv.buildYarnPackage {
            packageName = "asar";
            version = "0.12.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asar/-/asar-0.12.4.tgz";
              sha1 = "2dd3f116882eab8c0f23b754792a82a7d9fce171";
            };
            dependencies = {
              "chromium-pickle-js@0.2.0" = pkgs."chromium-pickle-js@0.2.0";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "cuint@0.2.2" = pkgs."cuint@0.2.2";
              "glob@6.0.4" = pkgs."glob@6.0.4";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "mksnapshot@0.3.0" = pkgs."mksnapshot@0.3.0";
              "tmp@0.0.28" = pkgs."tmp@0.0.28";
            };
            seen = [ "asar@0.12.4" ];
            };
  "asn1.js@4.9.1" = nodeEnv.buildYarnPackage {
            packageName = "asn1.js";
            version = "4.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asn1.js/-/asn1.js-4.9.1.tgz";
              sha1 = "48ba240b45a9280e94748990ba597d216617fd40";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "minimalistic-assert@1.0.0" = pkgs."minimalistic-assert@1.0.0";
            };
            seen = [ "asn1.js@4.9.1" ];
            };
  "asn1@0.2.3" = nodeEnv.buildYarnPackage {
            packageName = "asn1";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asn1/-/asn1-0.2.3.tgz";
              sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
            };
            dependencies = {};
            seen = [ "asn1@0.2.3" ];
            };
  "assert-plus@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "assert-plus";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-1.0.0.tgz";
              sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
            };
            dependencies = {};
            seen = [ "assert-plus@1.0.0" ];
            };
  "assert@1.4.1" = nodeEnv.buildYarnPackage {
            packageName = "assert";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assert/-/assert-1.4.1.tgz";
              sha1 = "99912d591836b5a6f5b345c0f07eefc08fc65d91";
            };
            dependencies = {
              "util@0.10.3" = pkgs."util@0.10.3";
            };
            seen = [ "assert@1.4.1" ];
            };
  "assertion-error-formatter@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "assertion-error-formatter";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assertion-error-formatter/-/assertion-error-formatter-2.0.1.tgz";
              sha1 = "6bbdffaec8e2fa9e2b0eb158bfe353132d7c0a9b";
            };
            dependencies = {
              "diff@3.5.0" = pkgs."diff@3.5.0";
              "pad-right@0.2.2" = pkgs."pad-right@0.2.2";
              "repeat-string@1.6.1" = pkgs."repeat-string@1.6.1";
            };
            seen = [ "assertion-error-formatter@2.0.1" ];
            };
  "assertion-error@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "assertion-error";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assertion-error/-/assertion-error-1.0.2.tgz";
              sha1 = "13ca515d86206da0bac66e834dd397d87581094c";
            };
            dependencies = {};
            seen = [ "assertion-error@1.0.2" ];
            };
  "ast-types@0.9.6" = nodeEnv.buildYarnPackage {
            packageName = "ast-types";
            version = "0.9.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ast-types/-/ast-types-0.9.6.tgz";
              sha1 = "102c9e9e9005d3e7e3829bf0c4fa24ee862ee9b9";
            };
            dependencies = {};
            seen = [ "ast-types@0.9.6" ];
            };
  "async-each@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "async-each";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async-each/-/async-each-1.0.1.tgz";
              sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
            };
            dependencies = {};
            seen = [ "async-each@1.0.1" ];
            };
  "async-foreach@0.1.3" = nodeEnv.buildYarnPackage {
            packageName = "async-foreach";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async-foreach/-/async-foreach-0.1.3.tgz";
              sha1 = "36121f845c0578172de419a97dbeb1d16ec34542";
            };
            dependencies = {};
            seen = [ "async-foreach@0.1.3" ];
            };
  "async-limiter@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "async-limiter";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async-limiter/-/async-limiter-1.0.0.tgz";
              sha1 = "78faed8c3d074ab81f22b4e985d79e8738f720f8";
            };
            dependencies = {};
            seen = [ "async-limiter@1.0.0" ];
            };
  "async@2.6.0" = nodeEnv.buildYarnPackage {
            packageName = "async";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-2.6.0.tgz";
              sha1 = "61a29abb6fcc026fea77e56d1c6ec53a795951f4";
            };
            dependencies = {
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "async@2.6.0" ];
            };
  "asynckit@0.4.0" = nodeEnv.buildYarnPackage {
            packageName = "asynckit";
            version = "0.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
              sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
            };
            dependencies = {};
            seen = [ "asynckit@0.4.0" ];
            };
  "atob@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "atob";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/atob/-/atob-1.1.3.tgz";
              sha1 = "95f13629b12c3a51a5d215abdce2aa9f32f80773";
            };
            dependencies = {};
            seen = [ "atob@1.1.3" ];
            };
  "attr-accept@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "attr-accept";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/attr-accept/-/attr-accept-1.1.0.tgz";
              sha1 = "b5cd35227f163935a8f1de10ed3eba16941f6be6";
            };
            dependencies = {};
            seen = [ "attr-accept@1.1.0" ];
            };
  "author-regex@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "author-regex";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/author-regex/-/author-regex-1.0.0.tgz";
              sha1 = "d08885be6b9bbf9439fe087c76287245f0a81450";
            };
            dependencies = {};
            seen = [ "author-regex@1.0.0" ];
            };
  "autoprefixer@6.6.1" = nodeEnv.buildYarnPackage {
            packageName = "autoprefixer";
            version = "6.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/autoprefixer/-/autoprefixer-6.6.1.tgz";
              sha1 = "11a4077abb4b313253ec2f6e1adb91ad84253519";
            };
            dependencies = {
              "browserslist@1.5.2" = pkgs."browserslist@1.5.2";
              "caniuse-db@1.0.30000604" = pkgs."caniuse-db@1.0.30000604";
              "normalize-range@0.1.2" = pkgs."normalize-range@0.1.2";
              "num2fraction@1.2.2" = pkgs."num2fraction@1.2.2";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "autoprefixer@6.6.1" ];
            };
  "aws-sign2@0.7.0" = nodeEnv.buildYarnPackage {
            packageName = "aws-sign2";
            version = "0.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.7.0.tgz";
              sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
            };
            dependencies = {};
            seen = [ "aws-sign2@0.7.0" ];
            };
  "aws4@1.6.0" = nodeEnv.buildYarnPackage {
            packageName = "aws4";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws4/-/aws4-1.6.0.tgz";
              sha1 = "83ef5ca860b2b32e4a0deedee8c771b9db57471e";
            };
            dependencies = {};
            seen = [ "aws4@1.6.0" ];
            };
  "babel-cli@6.24.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-cli";
            version = "6.24.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-cli/-/babel-cli-6.24.0.tgz";
              sha1 = "a05ffd210dca0c288a26d5319c5ac8669a265ad0";
            };
            dependencies = {
              "babel-core@6.26.0" = pkgs."babel-core@6.26.0";
              "babel-polyfill@6.26.0" = pkgs."babel-polyfill@6.26.0";
              "babel-register@6.26.0" = pkgs."babel-register@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "convert-source-map@1.3.0" = pkgs."convert-source-map@1.3.0";
              "fs-readdir-recursive@1.0.0" = pkgs."fs-readdir-recursive@1.0.0";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "output-file-sync@1.1.2" = pkgs."output-file-sync@1.1.2";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "slash@1.0.0" = pkgs."slash@1.0.0";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
              "v8flags@2.0.11" = pkgs."v8flags@2.0.11";
            };
            seen = [ "babel-cli@6.24.0" ];
            };
  "babel-code-frame@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-code-frame";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-code-frame/-/babel-code-frame-6.26.0.tgz";
              sha1 = "63fd43f7dc1e3bb7ce35947db8fe369a3f58c74b";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "js-tokens@3.0.2" = pkgs."js-tokens@3.0.2";
            };
            seen = [ "babel-code-frame@6.26.0" ];
            };
  "babel-core@6.24.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-core";
            version = "6.24.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-core/-/babel-core-6.24.0.tgz";
              sha1 = "8f36a0a77f5c155aed6f920b844d23ba56742a02";
            };
            dependencies = {
              "babel-code-frame@6.26.0" = pkgs."babel-code-frame@6.26.0";
              "babel-generator@6.26.1" = pkgs."babel-generator@6.26.1";
              "babel-helpers@6.24.1" = pkgs."babel-helpers@6.24.1";
              "babel-messages@6.23.0" = pkgs."babel-messages@6.23.0";
              "babel-register@6.26.0" = pkgs."babel-register@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "babylon@6.14.1" = pkgs."babylon@6.14.1";
              "convert-source-map@1.3.0" = pkgs."convert-source-map@1.3.0";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "json5@0.5.1" = pkgs."json5@0.5.1";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "private@0.1.6" = pkgs."private@0.1.6";
              "slash@1.0.0" = pkgs."slash@1.0.0";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "babel-core@6.24.0" ];
            };
  "babel-eslint@7.2.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-eslint";
            version = "7.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-eslint/-/babel-eslint-7.2.1.tgz";
              sha1 = "079422eb73ba811e3ca0865ce87af29327f8c52f";
            };
            dependencies = {
              "babel-code-frame@6.26.0" = pkgs."babel-code-frame@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "babylon@6.18.0" = pkgs."babylon@6.18.0";
            };
            seen = [ "babel-eslint@7.2.1" ];
            };
  "babel-generator@6.26.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-generator";
            version = "6.26.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-generator/-/babel-generator-6.26.1.tgz";
              sha1 = "1844408d3b8f0d35a404ea7ac180f087a601bd90";
            };
            dependencies = {
              "babel-messages@6.23.0" = pkgs."babel-messages@6.23.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "detect-indent@4.0.0" = pkgs."detect-indent@4.0.0";
              "jsesc@1.3.0" = pkgs."jsesc@1.3.0";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
              "source-map@0.5.7" = pkgs."source-map@0.5.7";
              "trim-right@1.0.1" = pkgs."trim-right@1.0.1";
            };
            seen = [ "babel-generator@6.26.1" ];
            };
  "babel-helper-bindify-decorators@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-bindify-decorators";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-bindify-decorators/-/babel-helper-bindify-decorators-6.24.1.tgz";
              sha1 = "14c19e5f142d7b47f19a52431e52b1ccbc40a330";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-bindify-decorators@6.24.1" ];
            };
  "babel-helper-builder-binary-assignment-operator-visitor@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-builder-binary-assignment-operator-visitor";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-builder-binary-assignment-operator-visitor/-/babel-helper-builder-binary-assignment-operator-visitor-6.24.1.tgz";
              sha1 = "cce4517ada356f4220bcae8a02c2b346f9a56664";
            };
            dependencies = {
              "babel-helper-explode-assignable-expression@6.24.1" = pkgs."babel-helper-explode-assignable-expression@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-builder-binary-assignment-operator-visitor@6.24.1" ];
            };
  "babel-helper-builder-react-jsx@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-builder-react-jsx";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-builder-react-jsx/-/babel-helper-builder-react-jsx-6.26.0.tgz";
              sha1 = "39ff8313b75c8b65dceff1f31d383e0ff2a408a0";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
            };
            seen = [ "babel-helper-builder-react-jsx@6.26.0" ];
            };
  "babel-helper-call-delegate@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-call-delegate";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-call-delegate/-/babel-helper-call-delegate-6.24.1.tgz";
              sha1 = "ece6aacddc76e41c3461f88bfc575bd0daa2df8d";
            };
            dependencies = {
              "babel-helper-hoist-variables@6.24.1" = pkgs."babel-helper-hoist-variables@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-call-delegate@6.24.1" ];
            };
  "babel-helper-define-map@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-define-map";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-define-map/-/babel-helper-define-map-6.26.0.tgz";
              sha1 = "a5f56dab41a25f97ecb498c7ebaca9819f95be5f";
            };
            dependencies = {
              "babel-helper-function-name@6.24.1" = pkgs."babel-helper-function-name@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
            };
            seen = [ "babel-helper-define-map@6.26.0" ];
            };
  "babel-helper-explode-assignable-expression@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-explode-assignable-expression";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-explode-assignable-expression/-/babel-helper-explode-assignable-expression-6.24.1.tgz";
              sha1 = "f25b82cf7dc10433c55f70592d5746400ac22caa";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-explode-assignable-expression@6.24.1" ];
            };
  "babel-helper-explode-class@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-explode-class";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-explode-class/-/babel-helper-explode-class-6.24.1.tgz";
              sha1 = "7dc2a3910dee007056e1e31d640ced3d54eaa9eb";
            };
            dependencies = {
              "babel-helper-bindify-decorators@6.24.1" = pkgs."babel-helper-bindify-decorators@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-explode-class@6.24.1" ];
            };
  "babel-helper-function-name@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-function-name";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-function-name/-/babel-helper-function-name-6.24.1.tgz";
              sha1 = "d3475b8c03ed98242a25b48351ab18399d3580a9";
            };
            dependencies = {
              "babel-helper-get-function-arity@6.24.1" = pkgs."babel-helper-get-function-arity@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-function-name@6.24.1" ];
            };
  "babel-helper-get-function-arity@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-get-function-arity";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-get-function-arity/-/babel-helper-get-function-arity-6.24.1.tgz";
              sha1 = "8f7782aa93407c41d3aa50908f89b031b1b6853d";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-get-function-arity@6.24.1" ];
            };
  "babel-helper-hoist-variables@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-hoist-variables";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-hoist-variables/-/babel-helper-hoist-variables-6.24.1.tgz";
              sha1 = "1ecb27689c9d25513eadbc9914a73f5408be7a76";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-hoist-variables@6.24.1" ];
            };
  "babel-helper-is-react-class@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-is-react-class";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-is-react-class/-/babel-helper-is-react-class-1.0.0.tgz";
              sha1 = "ef6f3678b05c76dbdeedadead7af98c2724d8431";
            };
            dependencies = {};
            seen = [ "babel-helper-is-react-class@1.0.0" ];
            };
  "babel-helper-optimise-call-expression@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-optimise-call-expression";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-optimise-call-expression/-/babel-helper-optimise-call-expression-6.24.1.tgz";
              sha1 = "f7a13427ba9f73f8f4fa993c54a97882d1244257";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-optimise-call-expression@6.24.1" ];
            };
  "babel-helper-regex@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-regex";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-regex/-/babel-helper-regex-6.26.0.tgz";
              sha1 = "325c59f902f82f24b74faceed0363954f6495e72";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
            };
            seen = [ "babel-helper-regex@6.26.0" ];
            };
  "babel-helper-remap-async-to-generator@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-remap-async-to-generator";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-remap-async-to-generator/-/babel-helper-remap-async-to-generator-6.24.1.tgz";
              sha1 = "5ec581827ad723fecdd381f1c928390676e4551b";
            };
            dependencies = {
              "babel-helper-function-name@6.24.1" = pkgs."babel-helper-function-name@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-remap-async-to-generator@6.24.1" ];
            };
  "babel-helper-replace-supers@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-replace-supers";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-replace-supers/-/babel-helper-replace-supers-6.24.1.tgz";
              sha1 = "bf6dbfe43938d17369a213ca8a8bf74b6a90ab1a";
            };
            dependencies = {
              "babel-helper-optimise-call-expression@6.24.1" = pkgs."babel-helper-optimise-call-expression@6.24.1";
              "babel-messages@6.23.0" = pkgs."babel-messages@6.23.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-helper-replace-supers@6.24.1" ];
            };
  "babel-helpers@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helpers";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helpers/-/babel-helpers-6.24.1.tgz";
              sha1 = "3471de9caec388e5c850e597e58a26ddf37602b2";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
            };
            seen = [ "babel-helpers@6.24.1" ];
            };
  "babel-loader@6.4.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-loader";
            version = "6.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-loader/-/babel-loader-6.4.1.tgz";
              sha1 = "0b34112d5b0748a8dcdbf51acf6f9bd42d50b8ca";
            };
            dependencies = {
              "find-cache-dir@0.1.1" = pkgs."find-cache-dir@0.1.1";
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "babel-loader@6.4.1" ];
            };
  "babel-messages@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-messages";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-messages/-/babel-messages-6.23.0.tgz";
              sha1 = "f3cdf4703858035b2a2951c6ec5edf6c62f2630e";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-messages@6.23.0" ];
            };
  "babel-plugin-add-module-exports@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-add-module-exports";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-add-module-exports/-/babel-plugin-add-module-exports-0.2.1.tgz";
              sha1 = "9ae9a1f4a8dc67f0cdec4f4aeda1e43a5ff65e25";
            };
            dependencies = {};
            seen = [ "babel-plugin-add-module-exports@0.2.1" ];
            };
  "babel-plugin-check-es2015-constants@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-check-es2015-constants";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-check-es2015-constants/-/babel-plugin-check-es2015-constants-6.22.0.tgz";
              sha1 = "35157b101426fd2ffd3da3f75c7d1e91835bbf8a";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-check-es2015-constants@6.22.0" ];
            };
  "babel-plugin-dev-expression@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-dev-expression";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-dev-expression/-/babel-plugin-dev-expression-0.2.1.tgz";
              sha1 = "d4a7beefefbb50e3f2734990a82a2486cf9eb9ee";
            };
            dependencies = {};
            seen = [ "babel-plugin-dev-expression@0.2.1" ];
            };
  "babel-plugin-lodash@3.2.11" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-lodash";
            version = "3.2.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-lodash/-/babel-plugin-lodash-3.2.11.tgz";
              sha1 = "21c8fdec9fe1835efaa737873e3902bdd66d5701";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-plugin-lodash@3.2.11" ];
            };
  "babel-plugin-react-docgen@1.4.2" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-react-docgen";
            version = "1.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-react-docgen/-/babel-plugin-react-docgen-1.4.2.tgz";
              sha1 = "04c02133b84b6cc182d35de2162f15764da03e7c";
            };
            dependencies = {
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "react-docgen@2.13.0" = pkgs."react-docgen@2.13.0";
            };
            seen = [ "babel-plugin-react-docgen@1.4.2" ];
            };
  "babel-plugin-react-intl@2.3.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-react-intl";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-react-intl/-/babel-plugin-react-intl-2.3.1.tgz";
              sha1 = "3d43912e824da005e08e8e8239d5ba784374bb00";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "intl-messageformat-parser@1.2.0" = pkgs."intl-messageformat-parser@1.2.0";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
            };
            seen = [ "babel-plugin-react-intl@2.3.1" ];
            };
  "babel-plugin-react-transform@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-react-transform";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-react-transform/-/babel-plugin-react-transform-2.0.2.tgz";
              sha1 = "515bbfa996893981142d90b1f9b1635de2995109";
            };
            dependencies = {
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-plugin-react-transform@2.0.2" ];
            };
  "babel-plugin-syntax-async-functions@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-async-functions";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-async-functions/-/babel-plugin-syntax-async-functions-6.13.0.tgz";
              sha1 = "cad9cad1191b5ad634bf30ae0872391e0647be95";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-async-functions@6.13.0" ];
            };
  "babel-plugin-syntax-async-generators@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-async-generators";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-async-generators/-/babel-plugin-syntax-async-generators-6.13.0.tgz";
              sha1 = "6bc963ebb16eccbae6b92b596eb7f35c342a8b9a";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-async-generators@6.13.0" ];
            };
  "babel-plugin-syntax-class-constructor-call@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-class-constructor-call";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-class-constructor-call/-/babel-plugin-syntax-class-constructor-call-6.18.0.tgz";
              sha1 = "9cb9d39fe43c8600bec8146456ddcbd4e1a76416";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-class-constructor-call@6.18.0" ];
            };
  "babel-plugin-syntax-class-properties@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-class-properties";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-class-properties/-/babel-plugin-syntax-class-properties-6.13.0.tgz";
              sha1 = "d7eb23b79a317f8543962c505b827c7d6cac27de";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-class-properties@6.13.0" ];
            };
  "babel-plugin-syntax-decorators@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-decorators";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-decorators/-/babel-plugin-syntax-decorators-6.13.0.tgz";
              sha1 = "312563b4dbde3cc806cee3e416cceeaddd11ac0b";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-decorators@6.13.0" ];
            };
  "babel-plugin-syntax-do-expressions@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-do-expressions";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-do-expressions/-/babel-plugin-syntax-do-expressions-6.13.0.tgz";
              sha1 = "5747756139aa26d390d09410b03744ba07e4796d";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-do-expressions@6.13.0" ];
            };
  "babel-plugin-syntax-dynamic-import@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-dynamic-import";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-dynamic-import/-/babel-plugin-syntax-dynamic-import-6.18.0.tgz";
              sha1 = "8d6a26229c83745a9982a441051572caa179b1da";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-dynamic-import@6.18.0" ];
            };
  "babel-plugin-syntax-exponentiation-operator@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-exponentiation-operator";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-exponentiation-operator/-/babel-plugin-syntax-exponentiation-operator-6.13.0.tgz";
              sha1 = "9ee7e8337290da95288201a6a57f4170317830de";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-exponentiation-operator@6.13.0" ];
            };
  "babel-plugin-syntax-export-extensions@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-export-extensions";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-export-extensions/-/babel-plugin-syntax-export-extensions-6.13.0.tgz";
              sha1 = "70a1484f0f9089a4e84ad44bac353c95b9b12721";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-export-extensions@6.13.0" ];
            };
  "babel-plugin-syntax-flow@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-flow";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-flow/-/babel-plugin-syntax-flow-6.18.0.tgz";
              sha1 = "4c3ab20a2af26aa20cd25995c398c4eb70310c8d";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-flow@6.18.0" ];
            };
  "babel-plugin-syntax-function-bind@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-function-bind";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-function-bind/-/babel-plugin-syntax-function-bind-6.13.0.tgz";
              sha1 = "48c495f177bdf31a981e732f55adc0bdd2601f46";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-function-bind@6.13.0" ];
            };
  "babel-plugin-syntax-jsx@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-jsx";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-jsx/-/babel-plugin-syntax-jsx-6.18.0.tgz";
              sha1 = "0af32a9a6e13ca7a3fd5069e62d7b0f58d0d8946";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-jsx@6.18.0" ];
            };
  "babel-plugin-syntax-object-rest-spread@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-object-rest-spread";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-object-rest-spread/-/babel-plugin-syntax-object-rest-spread-6.13.0.tgz";
              sha1 = "fd6536f2bce13836ffa3a5458c4903a597bb3bf5";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-object-rest-spread@6.13.0" ];
            };
  "babel-plugin-syntax-trailing-function-commas@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-trailing-function-commas";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-trailing-function-commas/-/babel-plugin-syntax-trailing-function-commas-6.22.0.tgz";
              sha1 = "ba0360937f8d06e40180a43fe0d5616fff532cf3";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-trailing-function-commas@6.22.0" ];
            };
  "babel-plugin-transform-async-generator-functions@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-async-generator-functions";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-generator-functions/-/babel-plugin-transform-async-generator-functions-6.24.1.tgz";
              sha1 = "f058900145fd3e9907a6ddf28da59f215258a5db";
            };
            dependencies = {
              "babel-helper-remap-async-to-generator@6.24.1" = pkgs."babel-helper-remap-async-to-generator@6.24.1";
              "babel-plugin-syntax-async-generators@6.13.0" = pkgs."babel-plugin-syntax-async-generators@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-async-generator-functions@6.24.1" ];
            };
  "babel-plugin-transform-async-to-generator@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-async-to-generator";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-to-generator/-/babel-plugin-transform-async-to-generator-6.22.0.tgz";
              sha1 = "194b6938ec195ad36efc4c33a971acf00d8cd35e";
            };
            dependencies = {
              "babel-helper-remap-async-to-generator@6.24.1" = pkgs."babel-helper-remap-async-to-generator@6.24.1";
              "babel-plugin-syntax-async-functions@6.13.0" = pkgs."babel-plugin-syntax-async-functions@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-async-to-generator@6.22.0" ];
            };
  "babel-plugin-transform-async-to-module-method@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-async-to-module-method";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-to-module-method/-/babel-plugin-transform-async-to-module-method-6.22.0.tgz";
              sha1 = "19c51f18407a74cc5d83098a297e57ab5cfdd008";
            };
            dependencies = {
              "babel-helper-remap-async-to-generator@6.24.1" = pkgs."babel-helper-remap-async-to-generator@6.24.1";
              "babel-plugin-syntax-async-functions@6.13.0" = pkgs."babel-plugin-syntax-async-functions@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-async-to-module-method@6.22.0" ];
            };
  "babel-plugin-transform-class-constructor-call@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-class-constructor-call";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-class-constructor-call/-/babel-plugin-transform-class-constructor-call-6.24.1.tgz";
              sha1 = "80dc285505ac067dcb8d6c65e2f6f11ab7765ef9";
            };
            dependencies = {
              "babel-plugin-syntax-class-constructor-call@6.18.0" = pkgs."babel-plugin-syntax-class-constructor-call@6.18.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
            };
            seen = [ "babel-plugin-transform-class-constructor-call@6.24.1" ];
            };
  "babel-plugin-transform-class-properties@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-class-properties";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-class-properties/-/babel-plugin-transform-class-properties-6.24.1.tgz";
              sha1 = "6a79763ea61d33d36f37b611aa9def81a81b46ac";
            };
            dependencies = {
              "babel-helper-function-name@6.24.1" = pkgs."babel-helper-function-name@6.24.1";
              "babel-plugin-syntax-class-properties@6.13.0" = pkgs."babel-plugin-syntax-class-properties@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
            };
            seen = [ "babel-plugin-transform-class-properties@6.24.1" ];
            };
  "babel-plugin-transform-decorators-legacy@1.3.4" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-decorators-legacy";
            version = "1.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-decorators-legacy/-/babel-plugin-transform-decorators-legacy-1.3.4.tgz";
              sha1 = "741b58f6c5bce9e6027e0882d9c994f04f366925";
            };
            dependencies = {
              "babel-plugin-syntax-decorators@6.13.0" = pkgs."babel-plugin-syntax-decorators@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-plugin-transform-decorators-legacy@1.3.4" ];
            };
  "babel-plugin-transform-decorators@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-decorators";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-decorators/-/babel-plugin-transform-decorators-6.24.1.tgz";
              sha1 = "788013d8f8c6b5222bdf7b344390dfd77569e24d";
            };
            dependencies = {
              "babel-helper-explode-class@6.24.1" = pkgs."babel-helper-explode-class@6.24.1";
              "babel-plugin-syntax-decorators@6.13.0" = pkgs."babel-plugin-syntax-decorators@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-decorators@6.24.1" ];
            };
  "babel-plugin-transform-do-expressions@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-do-expressions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-do-expressions/-/babel-plugin-transform-do-expressions-6.22.0.tgz";
              sha1 = "28ccaf92812d949c2cd1281f690c8fdc468ae9bb";
            };
            dependencies = {
              "babel-plugin-syntax-do-expressions@6.13.0" = pkgs."babel-plugin-syntax-do-expressions@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-do-expressions@6.22.0" ];
            };
  "babel-plugin-transform-es2015-arrow-functions@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-arrow-functions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-arrow-functions/-/babel-plugin-transform-es2015-arrow-functions-6.22.0.tgz";
              sha1 = "452692cb711d5f79dc7f85e440ce41b9f244d221";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-arrow-functions@6.22.0" ];
            };
  "babel-plugin-transform-es2015-block-scoped-functions@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-block-scoped-functions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-block-scoped-functions/-/babel-plugin-transform-es2015-block-scoped-functions-6.22.0.tgz";
              sha1 = "bbc51b49f964d70cb8d8e0b94e820246ce3a6141";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-block-scoped-functions@6.22.0" ];
            };
  "babel-plugin-transform-es2015-block-scoping@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-block-scoping";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-block-scoping/-/babel-plugin-transform-es2015-block-scoping-6.26.0.tgz";
              sha1 = "d70f5299c1308d05c12f463813b0a09e73b1895f";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
            };
            seen = [ "babel-plugin-transform-es2015-block-scoping@6.26.0" ];
            };
  "babel-plugin-transform-es2015-classes@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-classes";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-classes/-/babel-plugin-transform-es2015-classes-6.24.1.tgz";
              sha1 = "5a4c58a50c9c9461e564b4b2a3bfabc97a2584db";
            };
            dependencies = {
              "babel-helper-define-map@6.26.0" = pkgs."babel-helper-define-map@6.26.0";
              "babel-helper-function-name@6.24.1" = pkgs."babel-helper-function-name@6.24.1";
              "babel-helper-optimise-call-expression@6.24.1" = pkgs."babel-helper-optimise-call-expression@6.24.1";
              "babel-helper-replace-supers@6.24.1" = pkgs."babel-helper-replace-supers@6.24.1";
              "babel-messages@6.23.0" = pkgs."babel-messages@6.23.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-classes@6.24.1" ];
            };
  "babel-plugin-transform-es2015-computed-properties@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-computed-properties";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-computed-properties/-/babel-plugin-transform-es2015-computed-properties-6.24.1.tgz";
              sha1 = "6fe2a8d16895d5634f4cd999b6d3480a308159b3";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-computed-properties@6.24.1" ];
            };
  "babel-plugin-transform-es2015-destructuring@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-destructuring";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.23.0.tgz";
              sha1 = "997bb1f1ab967f682d2b0876fe358d60e765c56d";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-destructuring@6.23.0" ];
            };
  "babel-plugin-transform-es2015-duplicate-keys@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-duplicate-keys";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-duplicate-keys/-/babel-plugin-transform-es2015-duplicate-keys-6.24.1.tgz";
              sha1 = "73eb3d310ca969e3ef9ec91c53741a6f1576423e";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-duplicate-keys@6.24.1" ];
            };
  "babel-plugin-transform-es2015-for-of@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-for-of";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-for-of/-/babel-plugin-transform-es2015-for-of-6.23.0.tgz";
              sha1 = "f47c95b2b613df1d3ecc2fdb7573623c75248691";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-for-of@6.23.0" ];
            };
  "babel-plugin-transform-es2015-function-name@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-function-name";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-function-name/-/babel-plugin-transform-es2015-function-name-6.24.1.tgz";
              sha1 = "834c89853bc36b1af0f3a4c5dbaa94fd8eacaa8b";
            };
            dependencies = {
              "babel-helper-function-name@6.24.1" = pkgs."babel-helper-function-name@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-function-name@6.24.1" ];
            };
  "babel-plugin-transform-es2015-literals@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-literals";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-literals/-/babel-plugin-transform-es2015-literals-6.22.0.tgz";
              sha1 = "4f54a02d6cd66cf915280019a31d31925377ca2e";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-literals@6.22.0" ];
            };
  "babel-plugin-transform-es2015-modules-amd@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-amd";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-amd/-/babel-plugin-transform-es2015-modules-amd-6.24.1.tgz";
              sha1 = "3b3e54017239842d6d19c3011c4bd2f00a00d154";
            };
            dependencies = {
              "babel-plugin-transform-es2015-modules-commonjs@6.26.0" = pkgs."babel-plugin-transform-es2015-modules-commonjs@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-amd@6.24.1" ];
            };
  "babel-plugin-transform-es2015-modules-commonjs@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-commonjs";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-commonjs/-/babel-plugin-transform-es2015-modules-commonjs-6.26.0.tgz";
              sha1 = "0d8394029b7dc6abe1a97ef181e00758dd2e5d8a";
            };
            dependencies = {
              "babel-plugin-transform-strict-mode@6.24.1" = pkgs."babel-plugin-transform-strict-mode@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-commonjs@6.26.0" ];
            };
  "babel-plugin-transform-es2015-modules-systemjs@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-systemjs";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-systemjs/-/babel-plugin-transform-es2015-modules-systemjs-6.24.1.tgz";
              sha1 = "ff89a142b9119a906195f5f106ecf305d9407d23";
            };
            dependencies = {
              "babel-helper-hoist-variables@6.24.1" = pkgs."babel-helper-hoist-variables@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-systemjs@6.24.1" ];
            };
  "babel-plugin-transform-es2015-modules-umd@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-umd";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-umd/-/babel-plugin-transform-es2015-modules-umd-6.24.1.tgz";
              sha1 = "ac997e6285cd18ed6176adb607d602344ad38468";
            };
            dependencies = {
              "babel-plugin-transform-es2015-modules-amd@6.24.1" = pkgs."babel-plugin-transform-es2015-modules-amd@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-umd@6.24.1" ];
            };
  "babel-plugin-transform-es2015-object-super@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-object-super";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-object-super/-/babel-plugin-transform-es2015-object-super-6.24.1.tgz";
              sha1 = "24cef69ae21cb83a7f8603dad021f572eb278f8d";
            };
            dependencies = {
              "babel-helper-replace-supers@6.24.1" = pkgs."babel-helper-replace-supers@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-object-super@6.24.1" ];
            };
  "babel-plugin-transform-es2015-parameters@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-parameters";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.24.1.tgz";
              sha1 = "57ac351ab49caf14a97cd13b09f66fdf0a625f2b";
            };
            dependencies = {
              "babel-helper-call-delegate@6.24.1" = pkgs."babel-helper-call-delegate@6.24.1";
              "babel-helper-get-function-arity@6.24.1" = pkgs."babel-helper-get-function-arity@6.24.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-parameters@6.24.1" ];
            };
  "babel-plugin-transform-es2015-shorthand-properties@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-shorthand-properties";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-shorthand-properties/-/babel-plugin-transform-es2015-shorthand-properties-6.24.1.tgz";
              sha1 = "24f875d6721c87661bbd99a4622e51f14de38aa0";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-shorthand-properties@6.24.1" ];
            };
  "babel-plugin-transform-es2015-spread@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-spread";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-spread/-/babel-plugin-transform-es2015-spread-6.22.0.tgz";
              sha1 = "d6d68a99f89aedc4536c81a542e8dd9f1746f8d1";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-spread@6.22.0" ];
            };
  "babel-plugin-transform-es2015-sticky-regex@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-sticky-regex";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-sticky-regex/-/babel-plugin-transform-es2015-sticky-regex-6.24.1.tgz";
              sha1 = "00c1cdb1aca71112cdf0cf6126c2ed6b457ccdbc";
            };
            dependencies = {
              "babel-helper-regex@6.26.0" = pkgs."babel-helper-regex@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-sticky-regex@6.24.1" ];
            };
  "babel-plugin-transform-es2015-template-literals@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-template-literals";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-template-literals/-/babel-plugin-transform-es2015-template-literals-6.22.0.tgz";
              sha1 = "a84b3450f7e9f8f1f6839d6d687da84bb1236d8d";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-template-literals@6.22.0" ];
            };
  "babel-plugin-transform-es2015-typeof-symbol@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-typeof-symbol";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-typeof-symbol/-/babel-plugin-transform-es2015-typeof-symbol-6.23.0.tgz";
              sha1 = "dec09f1cddff94b52ac73d505c84df59dcceb372";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-es2015-typeof-symbol@6.23.0" ];
            };
  "babel-plugin-transform-es2015-unicode-regex@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-unicode-regex";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-unicode-regex/-/babel-plugin-transform-es2015-unicode-regex-6.24.1.tgz";
              sha1 = "d38b12f42ea7323f729387f18a7c5ae1faeb35e9";
            };
            dependencies = {
              "babel-helper-regex@6.26.0" = pkgs."babel-helper-regex@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "regexpu-core@2.0.0" = pkgs."regexpu-core@2.0.0";
            };
            seen = [ "babel-plugin-transform-es2015-unicode-regex@6.24.1" ];
            };
  "babel-plugin-transform-es3-member-expression-literals@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es3-member-expression-literals";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es3-member-expression-literals/-/babel-plugin-transform-es3-member-expression-literals-6.8.0.tgz";
              sha1 = "180796863e2eddc4b48561d0c228369b05b722e2";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es3-member-expression-literals@6.8.0" ];
            };
  "babel-plugin-transform-es3-property-literals@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es3-property-literals";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es3-property-literals/-/babel-plugin-transform-es3-property-literals-6.8.0.tgz";
              sha1 = "8e7cc50cfe060b7c487ae33c501a4f659133bade";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es3-property-literals@6.8.0" ];
            };
  "babel-plugin-transform-exponentiation-operator@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-exponentiation-operator";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-exponentiation-operator/-/babel-plugin-transform-exponentiation-operator-6.24.1.tgz";
              sha1 = "2ab0c9c7f3098fa48907772bb813fe41e8de3a0e";
            };
            dependencies = {
              "babel-helper-builder-binary-assignment-operator-visitor@6.24.1" = pkgs."babel-helper-builder-binary-assignment-operator-visitor@6.24.1";
              "babel-plugin-syntax-exponentiation-operator@6.13.0" = pkgs."babel-plugin-syntax-exponentiation-operator@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-exponentiation-operator@6.24.1" ];
            };
  "babel-plugin-transform-export-extensions@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-export-extensions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-export-extensions/-/babel-plugin-transform-export-extensions-6.22.0.tgz";
              sha1 = "53738b47e75e8218589eea946cbbd39109bbe653";
            };
            dependencies = {
              "babel-plugin-syntax-export-extensions@6.13.0" = pkgs."babel-plugin-syntax-export-extensions@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-export-extensions@6.22.0" ];
            };
  "babel-plugin-transform-flow-strip-types@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-flow-strip-types";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-flow-strip-types/-/babel-plugin-transform-flow-strip-types-6.22.0.tgz";
              sha1 = "84cb672935d43714fdc32bce84568d87441cf7cf";
            };
            dependencies = {
              "babel-plugin-syntax-flow@6.18.0" = pkgs."babel-plugin-syntax-flow@6.18.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-flow-strip-types@6.22.0" ];
            };
  "babel-plugin-transform-function-bind@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-function-bind";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-function-bind/-/babel-plugin-transform-function-bind-6.22.0.tgz";
              sha1 = "c6fb8e96ac296a310b8cf8ea401462407ddf6a97";
            };
            dependencies = {
              "babel-plugin-syntax-function-bind@6.13.0" = pkgs."babel-plugin-syntax-function-bind@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-function-bind@6.22.0" ];
            };
  "babel-plugin-transform-object-rest-spread@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-object-rest-spread";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-object-rest-spread/-/babel-plugin-transform-object-rest-spread-6.26.0.tgz";
              sha1 = "0f36692d50fef6b7e2d4b3ac1478137a963b7b06";
            };
            dependencies = {
              "babel-plugin-syntax-object-rest-spread@6.13.0" = pkgs."babel-plugin-syntax-object-rest-spread@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-object-rest-spread@6.26.0" ];
            };
  "babel-plugin-transform-react-constant-elements@6.9.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-constant-elements";
            version = "6.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-constant-elements/-/babel-plugin-transform-react-constant-elements-6.9.1.tgz";
              sha1 = "125b86d96cb322e2139b607fd749ad5fbb17f005";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-react-constant-elements@6.9.1" ];
            };
  "babel-plugin-transform-react-display-name@6.25.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-display-name";
            version = "6.25.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-display-name/-/babel-plugin-transform-react-display-name-6.25.0.tgz";
              sha1 = "67e2bf1f1e9c93ab08db96792e05392bf2cc28d1";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-react-display-name@6.25.0" ];
            };
  "babel-plugin-transform-react-inline-elements@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-inline-elements";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-inline-elements/-/babel-plugin-transform-react-inline-elements-6.8.0.tgz";
              sha1 = "fc2d8fec1f2f87e5c4961ac367610039f325bbe6";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-react-inline-elements@6.8.0" ];
            };
  "babel-plugin-transform-react-jsx-self@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-jsx-self";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx-self/-/babel-plugin-transform-react-jsx-self-6.22.0.tgz";
              sha1 = "df6d80a9da2612a121e6ddd7558bcbecf06e636e";
            };
            dependencies = {
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-react-jsx-self@6.22.0" ];
            };
  "babel-plugin-transform-react-jsx-source@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-jsx-source";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx-source/-/babel-plugin-transform-react-jsx-source-6.22.0.tgz";
              sha1 = "66ac12153f5cd2d17b3c19268f4bf0197f44ecd6";
            };
            dependencies = {
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-react-jsx-source@6.22.0" ];
            };
  "babel-plugin-transform-react-jsx@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-jsx";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx/-/babel-plugin-transform-react-jsx-6.24.1.tgz";
              sha1 = "840a028e7df460dfc3a2d29f0c0d91f6376e66a3";
            };
            dependencies = {
              "babel-helper-builder-react-jsx@6.26.0" = pkgs."babel-helper-builder-react-jsx@6.26.0";
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-react-jsx@6.24.1" ];
            };
  "babel-plugin-transform-react-pure-class-to-function@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-pure-class-to-function";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-pure-class-to-function/-/babel-plugin-transform-react-pure-class-to-function-1.0.1.tgz";
              sha1 = "32a649c97d653250b419cfd1489331b0290d9ee4";
            };
            dependencies = {
              "babel-helper-is-react-class@1.0.0" = pkgs."babel-helper-is-react-class@1.0.0";
            };
            seen = [ "babel-plugin-transform-react-pure-class-to-function@1.0.1" ];
            };
  "babel-plugin-transform-react-remove-prop-types@0.2.11" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-remove-prop-types";
            version = "0.2.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-remove-prop-types/-/babel-plugin-transform-react-remove-prop-types-0.2.11.tgz";
              sha1 = "05eb7cc4670d6506d801680576589c7abcd51b00";
            };
            dependencies = {};
            seen = [ "babel-plugin-transform-react-remove-prop-types@0.2.11" ];
            };
  "babel-plugin-transform-regenerator@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-regenerator";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-regenerator/-/babel-plugin-transform-regenerator-6.26.0.tgz";
              sha1 = "e0703696fbde27f0a3efcacf8b4dca2f7b3a8f2f";
            };
            dependencies = {
              "regenerator-transform@0.10.1" = pkgs."regenerator-transform@0.10.1";
            };
            seen = [ "babel-plugin-transform-regenerator@6.26.0" ];
            };
  "babel-plugin-transform-runtime@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-runtime";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-runtime/-/babel-plugin-transform-runtime-6.23.0.tgz";
              sha1 = "88490d446502ea9b8e7efb0fe09ec4d99479b1ee";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-runtime@6.23.0" ];
            };
  "babel-plugin-transform-strict-mode@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-strict-mode";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-strict-mode/-/babel-plugin-transform-strict-mode-6.24.1.tgz";
              sha1 = "d5faf7aa578a65bbe591cf5edae04a0c67020758";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
            };
            seen = [ "babel-plugin-transform-strict-mode@6.24.1" ];
            };
  "babel-plugin-webpack-loaders@0.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-webpack-loaders";
            version = "0.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-webpack-loaders/-/babel-plugin-webpack-loaders-0.8.0.tgz";
              sha1 = "1ec5255e2c9de8d5226c58a099890d935a876065";
            };
            dependencies = {
              "babel-preset-es2015@6.18.0" = pkgs."babel-preset-es2015@6.18.0";
              "babel-preset-stage-0@6.16.0" = pkgs."babel-preset-stage-0@6.16.0";
              "babel-register@6.18.0" = pkgs."babel-register@6.18.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "babylon@6.14.1" = pkgs."babylon@6.14.1";
              "colors@1.1.2" = pkgs."colors@1.1.2";
              "enhanced-resolve@2.3.0" = pkgs."enhanced-resolve@2.3.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
            };
            seen = [ "babel-plugin-webpack-loaders@0.8.0" ];
            };
  "babel-polyfill@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-polyfill";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-polyfill/-/babel-polyfill-6.23.0.tgz";
              sha1 = "8364ca62df8eafb830499f699177466c3b03499d";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "core-js@2.4.1" = pkgs."core-js@2.4.1";
              "regenerator-runtime@0.10.1" = pkgs."regenerator-runtime@0.10.1";
            };
            seen = [ "babel-polyfill@6.23.0" ];
            };
  "babel-preset-env@0.0.6" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-env";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-env/-/babel-preset-env-0.0.6.tgz";
              sha1 = "cda63a020069098fad12272a7a447a7c5bafb3c8";
            };
            dependencies = {
              "babel-plugin-check-es2015-constants@6.8.0" = pkgs."babel-plugin-check-es2015-constants@6.8.0";
              "babel-plugin-syntax-trailing-function-commas@6.20.0" = pkgs."babel-plugin-syntax-trailing-function-commas@6.20.0";
              "babel-plugin-transform-async-to-generator@6.16.0" = pkgs."babel-plugin-transform-async-to-generator@6.16.0";
              "babel-plugin-transform-es2015-arrow-functions@6.8.0" = pkgs."babel-plugin-transform-es2015-arrow-functions@6.8.0";
              "babel-plugin-transform-es2015-block-scoped-functions@6.8.0" = pkgs."babel-plugin-transform-es2015-block-scoped-functions@6.8.0";
              "babel-plugin-transform-es2015-block-scoping@6.21.0" = pkgs."babel-plugin-transform-es2015-block-scoping@6.21.0";
              "babel-plugin-transform-es2015-classes@6.18.0" = pkgs."babel-plugin-transform-es2015-classes@6.18.0";
              "babel-plugin-transform-es2015-computed-properties@6.8.0" = pkgs."babel-plugin-transform-es2015-computed-properties@6.8.0";
              "babel-plugin-transform-es2015-destructuring@6.19.0" = pkgs."babel-plugin-transform-es2015-destructuring@6.19.0";
              "babel-plugin-transform-es2015-duplicate-keys@6.8.0" = pkgs."babel-plugin-transform-es2015-duplicate-keys@6.8.0";
              "babel-plugin-transform-es2015-for-of@6.18.0" = pkgs."babel-plugin-transform-es2015-for-of@6.18.0";
              "babel-plugin-transform-es2015-function-name@6.9.0" = pkgs."babel-plugin-transform-es2015-function-name@6.9.0";
              "babel-plugin-transform-es2015-literals@6.8.0" = pkgs."babel-plugin-transform-es2015-literals@6.8.0";
              "babel-plugin-transform-es2015-modules-amd@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-amd@6.18.0";
              "babel-plugin-transform-es2015-modules-commonjs@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-commonjs@6.18.0";
              "babel-plugin-transform-es2015-modules-systemjs@6.19.0" = pkgs."babel-plugin-transform-es2015-modules-systemjs@6.19.0";
              "babel-plugin-transform-es2015-modules-umd@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-umd@6.18.0";
              "babel-plugin-transform-es2015-object-super@6.8.0" = pkgs."babel-plugin-transform-es2015-object-super@6.8.0";
              "babel-plugin-transform-es2015-parameters@6.21.0" = pkgs."babel-plugin-transform-es2015-parameters@6.21.0";
              "babel-plugin-transform-es2015-shorthand-properties@6.18.0" = pkgs."babel-plugin-transform-es2015-shorthand-properties@6.18.0";
              "babel-plugin-transform-es2015-spread@6.8.0" = pkgs."babel-plugin-transform-es2015-spread@6.8.0";
              "babel-plugin-transform-es2015-sticky-regex@6.8.0" = pkgs."babel-plugin-transform-es2015-sticky-regex@6.8.0";
              "babel-plugin-transform-es2015-template-literals@6.8.0" = pkgs."babel-plugin-transform-es2015-template-literals@6.8.0";
              "babel-plugin-transform-es2015-typeof-symbol@6.18.0" = pkgs."babel-plugin-transform-es2015-typeof-symbol@6.18.0";
              "babel-plugin-transform-es2015-unicode-regex@6.11.0" = pkgs."babel-plugin-transform-es2015-unicode-regex@6.11.0";
              "babel-plugin-transform-exponentiation-operator@6.8.0" = pkgs."babel-plugin-transform-exponentiation-operator@6.8.0";
              "babel-plugin-transform-regenerator@6.21.0" = pkgs."babel-plugin-transform-regenerator@6.21.0";
              "browserslist@1.5.2" = pkgs."browserslist@1.5.2";
            };
            seen = [ "babel-preset-env@0.0.6" ];
            };
  "babel-preset-es2015@6.24.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-es2015";
            version = "6.24.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-es2015/-/babel-preset-es2015-6.24.0.tgz";
              sha1 = "c162d68b1932696e036cd3110dc1ccd303d2673a";
            };
            dependencies = {
              "babel-plugin-check-es2015-constants@6.22.0" = pkgs."babel-plugin-check-es2015-constants@6.22.0";
              "babel-plugin-transform-es2015-arrow-functions@6.22.0" = pkgs."babel-plugin-transform-es2015-arrow-functions@6.22.0";
              "babel-plugin-transform-es2015-block-scoped-functions@6.22.0" = pkgs."babel-plugin-transform-es2015-block-scoped-functions@6.22.0";
              "babel-plugin-transform-es2015-block-scoping@6.26.0" = pkgs."babel-plugin-transform-es2015-block-scoping@6.26.0";
              "babel-plugin-transform-es2015-classes@6.24.1" = pkgs."babel-plugin-transform-es2015-classes@6.24.1";
              "babel-plugin-transform-es2015-computed-properties@6.24.1" = pkgs."babel-plugin-transform-es2015-computed-properties@6.24.1";
              "babel-plugin-transform-es2015-destructuring@6.23.0" = pkgs."babel-plugin-transform-es2015-destructuring@6.23.0";
              "babel-plugin-transform-es2015-duplicate-keys@6.24.1" = pkgs."babel-plugin-transform-es2015-duplicate-keys@6.24.1";
              "babel-plugin-transform-es2015-for-of@6.23.0" = pkgs."babel-plugin-transform-es2015-for-of@6.23.0";
              "babel-plugin-transform-es2015-function-name@6.24.1" = pkgs."babel-plugin-transform-es2015-function-name@6.24.1";
              "babel-plugin-transform-es2015-literals@6.22.0" = pkgs."babel-plugin-transform-es2015-literals@6.22.0";
              "babel-plugin-transform-es2015-modules-amd@6.24.1" = pkgs."babel-plugin-transform-es2015-modules-amd@6.24.1";
              "babel-plugin-transform-es2015-modules-commonjs@6.26.0" = pkgs."babel-plugin-transform-es2015-modules-commonjs@6.26.0";
              "babel-plugin-transform-es2015-modules-systemjs@6.24.1" = pkgs."babel-plugin-transform-es2015-modules-systemjs@6.24.1";
              "babel-plugin-transform-es2015-modules-umd@6.24.1" = pkgs."babel-plugin-transform-es2015-modules-umd@6.24.1";
              "babel-plugin-transform-es2015-object-super@6.24.1" = pkgs."babel-plugin-transform-es2015-object-super@6.24.1";
              "babel-plugin-transform-es2015-parameters@6.24.1" = pkgs."babel-plugin-transform-es2015-parameters@6.24.1";
              "babel-plugin-transform-es2015-shorthand-properties@6.24.1" = pkgs."babel-plugin-transform-es2015-shorthand-properties@6.24.1";
              "babel-plugin-transform-es2015-spread@6.22.0" = pkgs."babel-plugin-transform-es2015-spread@6.22.0";
              "babel-plugin-transform-es2015-sticky-regex@6.24.1" = pkgs."babel-plugin-transform-es2015-sticky-regex@6.24.1";
              "babel-plugin-transform-es2015-template-literals@6.22.0" = pkgs."babel-plugin-transform-es2015-template-literals@6.22.0";
              "babel-plugin-transform-es2015-typeof-symbol@6.23.0" = pkgs."babel-plugin-transform-es2015-typeof-symbol@6.23.0";
              "babel-plugin-transform-es2015-unicode-regex@6.24.1" = pkgs."babel-plugin-transform-es2015-unicode-regex@6.24.1";
              "babel-plugin-transform-regenerator@6.26.0" = pkgs."babel-plugin-transform-regenerator@6.26.0";
            };
            seen = [ "babel-preset-es2015@6.24.0" ];
            };
  "babel-preset-es2016@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-es2016";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-es2016/-/babel-preset-es2016-6.16.0.tgz";
              sha1 = "c7daf5feedeee99c867813bdf0d573d94ca12812";
            };
            dependencies = {
              "babel-plugin-transform-exponentiation-operator@6.8.0" = pkgs."babel-plugin-transform-exponentiation-operator@6.8.0";
            };
            seen = [ "babel-preset-es2016@6.16.0" ];
            };
  "babel-preset-es2017@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-es2017";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-es2017/-/babel-preset-es2017-6.16.0.tgz";
              sha1 = "536c6287778a758948ddd092b466b6ef50b786fa";
            };
            dependencies = {
              "babel-plugin-syntax-trailing-function-commas@6.20.0" = pkgs."babel-plugin-syntax-trailing-function-commas@6.20.0";
              "babel-plugin-transform-async-to-generator@6.16.0" = pkgs."babel-plugin-transform-async-to-generator@6.16.0";
            };
            seen = [ "babel-preset-es2017@6.16.0" ];
            };
  "babel-preset-fbjs@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-fbjs";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-fbjs/-/babel-preset-fbjs-1.0.0.tgz";
              sha1 = "c972e5c9b301d4ec9e7971f4aec3e14ac017a8b0";
            };
            dependencies = {
              "babel-plugin-check-es2015-constants@6.8.0" = pkgs."babel-plugin-check-es2015-constants@6.8.0";
              "babel-plugin-syntax-flow@6.18.0" = pkgs."babel-plugin-syntax-flow@6.18.0";
              "babel-plugin-syntax-object-rest-spread@6.13.0" = pkgs."babel-plugin-syntax-object-rest-spread@6.13.0";
              "babel-plugin-syntax-trailing-function-commas@6.20.0" = pkgs."babel-plugin-syntax-trailing-function-commas@6.20.0";
              "babel-plugin-transform-class-properties@6.16.0" = pkgs."babel-plugin-transform-class-properties@6.16.0";
              "babel-plugin-transform-es2015-arrow-functions@6.8.0" = pkgs."babel-plugin-transform-es2015-arrow-functions@6.8.0";
              "babel-plugin-transform-es2015-block-scoped-functions@6.8.0" = pkgs."babel-plugin-transform-es2015-block-scoped-functions@6.8.0";
              "babel-plugin-transform-es2015-block-scoping@6.21.0" = pkgs."babel-plugin-transform-es2015-block-scoping@6.21.0";
              "babel-plugin-transform-es2015-classes@6.18.0" = pkgs."babel-plugin-transform-es2015-classes@6.18.0";
              "babel-plugin-transform-es2015-computed-properties@6.8.0" = pkgs."babel-plugin-transform-es2015-computed-properties@6.8.0";
              "babel-plugin-transform-es2015-destructuring@6.19.0" = pkgs."babel-plugin-transform-es2015-destructuring@6.19.0";
              "babel-plugin-transform-es2015-for-of@6.18.0" = pkgs."babel-plugin-transform-es2015-for-of@6.18.0";
              "babel-plugin-transform-es2015-literals@6.8.0" = pkgs."babel-plugin-transform-es2015-literals@6.8.0";
              "babel-plugin-transform-es2015-modules-commonjs@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-commonjs@6.18.0";
              "babel-plugin-transform-es2015-object-super@6.8.0" = pkgs."babel-plugin-transform-es2015-object-super@6.8.0";
              "babel-plugin-transform-es2015-parameters@6.21.0" = pkgs."babel-plugin-transform-es2015-parameters@6.21.0";
              "babel-plugin-transform-es2015-shorthand-properties@6.18.0" = pkgs."babel-plugin-transform-es2015-shorthand-properties@6.18.0";
              "babel-plugin-transform-es2015-spread@6.8.0" = pkgs."babel-plugin-transform-es2015-spread@6.8.0";
              "babel-plugin-transform-es2015-template-literals@6.8.0" = pkgs."babel-plugin-transform-es2015-template-literals@6.8.0";
              "babel-plugin-transform-es3-member-expression-literals@6.8.0" = pkgs."babel-plugin-transform-es3-member-expression-literals@6.8.0";
              "babel-plugin-transform-es3-property-literals@6.8.0" = pkgs."babel-plugin-transform-es3-property-literals@6.8.0";
              "babel-plugin-transform-flow-strip-types@6.21.0" = pkgs."babel-plugin-transform-flow-strip-types@6.21.0";
              "babel-plugin-transform-object-rest-spread@6.16.0" = pkgs."babel-plugin-transform-object-rest-spread@6.16.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "babel-preset-fbjs@1.0.0" ];
            };
  "babel-preset-flow@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-flow";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-flow/-/babel-preset-flow-6.23.0.tgz";
              sha1 = "e71218887085ae9a24b5be4169affb599816c49d";
            };
            dependencies = {
              "babel-plugin-transform-flow-strip-types@6.22.0" = pkgs."babel-plugin-transform-flow-strip-types@6.22.0";
            };
            seen = [ "babel-preset-flow@6.23.0" ];
            };
  "babel-preset-latest@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-latest";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-latest/-/babel-preset-latest-6.16.0.tgz";
              sha1 = "5b87e19e250bb1213f13af4ec9dc7a51d53f388d";
            };
            dependencies = {
              "babel-preset-es2015@6.18.0" = pkgs."babel-preset-es2015@6.18.0";
              "babel-preset-es2016@6.16.0" = pkgs."babel-preset-es2016@6.16.0";
              "babel-preset-es2017@6.16.0" = pkgs."babel-preset-es2017@6.16.0";
            };
            seen = [ "babel-preset-latest@6.16.0" ];
            };
  "babel-preset-react-app@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-react-app";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react-app/-/babel-preset-react-app-1.0.0.tgz";
              sha1 = "e7613500859d96f177ba7a38a3ed0a923ee50da8";
            };
            dependencies = {
              "babel-plugin-transform-class-properties@6.16.0" = pkgs."babel-plugin-transform-class-properties@6.16.0";
              "babel-plugin-transform-es2015-destructuring@6.16.0" = pkgs."babel-plugin-transform-es2015-destructuring@6.16.0";
              "babel-plugin-transform-es2015-parameters@6.17.0" = pkgs."babel-plugin-transform-es2015-parameters@6.17.0";
              "babel-plugin-transform-object-rest-spread@6.16.0" = pkgs."babel-plugin-transform-object-rest-spread@6.16.0";
              "babel-plugin-transform-react-constant-elements@6.9.1" = pkgs."babel-plugin-transform-react-constant-elements@6.9.1";
              "babel-plugin-transform-react-jsx-self@6.11.0" = pkgs."babel-plugin-transform-react-jsx-self@6.11.0";
              "babel-plugin-transform-react-jsx-source@6.9.0" = pkgs."babel-plugin-transform-react-jsx-source@6.9.0";
              "babel-plugin-transform-regenerator@6.16.1" = pkgs."babel-plugin-transform-regenerator@6.16.1";
              "babel-plugin-transform-runtime@6.15.0" = pkgs."babel-plugin-transform-runtime@6.15.0";
              "babel-preset-env@0.0.6" = pkgs."babel-preset-env@0.0.6";
              "babel-preset-latest@6.16.0" = pkgs."babel-preset-latest@6.16.0";
              "babel-preset-react@6.16.0" = pkgs."babel-preset-react@6.16.0";
              "babel-runtime@6.11.6" = pkgs."babel-runtime@6.11.6";
            };
            seen = [ "babel-preset-react-app@1.0.0" ];
            };
  "babel-preset-react-hmre@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-react-hmre";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react-hmre/-/babel-preset-react-hmre-1.1.1.tgz";
              sha1 = "d216e60cb5b8d4c873e19ed0f54eaff1437bc492";
            };
            dependencies = {
              "babel-plugin-react-transform@2.0.2" = pkgs."babel-plugin-react-transform@2.0.2";
              "react-transform-catch-errors@1.0.2" = pkgs."react-transform-catch-errors@1.0.2";
              "react-transform-hmr@1.0.4" = pkgs."react-transform-hmr@1.0.4";
              "redbox-react@1.3.3" = pkgs."redbox-react@1.3.3";
            };
            seen = [ "babel-preset-react-hmre@1.1.1" ];
            };
  "babel-preset-react-optimize@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-react-optimize";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react-optimize/-/babel-preset-react-optimize-1.0.1.tgz";
              sha1 = "c23509fba7cbc76d7de7050e7d26bcd22bc304e8";
            };
            dependencies = {
              "babel-plugin-transform-react-constant-elements@6.9.1" = pkgs."babel-plugin-transform-react-constant-elements@6.9.1";
              "babel-plugin-transform-react-inline-elements@6.8.0" = pkgs."babel-plugin-transform-react-inline-elements@6.8.0";
              "babel-plugin-transform-react-pure-class-to-function@1.0.1" = pkgs."babel-plugin-transform-react-pure-class-to-function@1.0.1";
              "babel-plugin-transform-react-remove-prop-types@0.2.11" = pkgs."babel-plugin-transform-react-remove-prop-types@0.2.11";
            };
            seen = [ "babel-preset-react-optimize@1.0.1" ];
            };
  "babel-preset-react@6.23.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-react";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react/-/babel-preset-react-6.23.0.tgz";
              sha1 = "eb7cee4de98a3f94502c28565332da9819455195";
            };
            dependencies = {
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-plugin-transform-react-display-name@6.25.0" = pkgs."babel-plugin-transform-react-display-name@6.25.0";
              "babel-plugin-transform-react-jsx@6.24.1" = pkgs."babel-plugin-transform-react-jsx@6.24.1";
              "babel-plugin-transform-react-jsx-self@6.22.0" = pkgs."babel-plugin-transform-react-jsx-self@6.22.0";
              "babel-plugin-transform-react-jsx-source@6.22.0" = pkgs."babel-plugin-transform-react-jsx-source@6.22.0";
              "babel-preset-flow@6.23.0" = pkgs."babel-preset-flow@6.23.0";
            };
            seen = [ "babel-preset-react@6.23.0" ];
            };
  "babel-preset-stage-0@6.22.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-0";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-0/-/babel-preset-stage-0-6.22.0.tgz";
              sha1 = "707eeb5b415da769eff9c42f4547f644f9296ef9";
            };
            dependencies = {
              "babel-plugin-transform-do-expressions@6.22.0" = pkgs."babel-plugin-transform-do-expressions@6.22.0";
              "babel-plugin-transform-function-bind@6.22.0" = pkgs."babel-plugin-transform-function-bind@6.22.0";
              "babel-preset-stage-1@6.24.1" = pkgs."babel-preset-stage-1@6.24.1";
            };
            seen = [ "babel-preset-stage-0@6.22.0" ];
            };
  "babel-preset-stage-1@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-1";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-1/-/babel-preset-stage-1-6.24.1.tgz";
              sha1 = "7692cd7dcd6849907e6ae4a0a85589cfb9e2bfb0";
            };
            dependencies = {
              "babel-plugin-transform-class-constructor-call@6.24.1" = pkgs."babel-plugin-transform-class-constructor-call@6.24.1";
              "babel-plugin-transform-export-extensions@6.22.0" = pkgs."babel-plugin-transform-export-extensions@6.22.0";
              "babel-preset-stage-2@6.24.1" = pkgs."babel-preset-stage-2@6.24.1";
            };
            seen = [ "babel-preset-stage-1@6.24.1" ];
            };
  "babel-preset-stage-2@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-2";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-2/-/babel-preset-stage-2-6.24.1.tgz";
              sha1 = "d9e2960fb3d71187f0e64eec62bc07767219bdc1";
            };
            dependencies = {
              "babel-plugin-syntax-dynamic-import@6.18.0" = pkgs."babel-plugin-syntax-dynamic-import@6.18.0";
              "babel-plugin-transform-class-properties@6.24.1" = pkgs."babel-plugin-transform-class-properties@6.24.1";
              "babel-plugin-transform-decorators@6.24.1" = pkgs."babel-plugin-transform-decorators@6.24.1";
              "babel-preset-stage-3@6.24.1" = pkgs."babel-preset-stage-3@6.24.1";
            };
            seen = [ "babel-preset-stage-2@6.24.1" ];
            };
  "babel-preset-stage-3@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-3";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-3/-/babel-preset-stage-3-6.24.1.tgz";
              sha1 = "836ada0a9e7a7fa37cb138fb9326f87934a48395";
            };
            dependencies = {
              "babel-plugin-syntax-trailing-function-commas@6.22.0" = pkgs."babel-plugin-syntax-trailing-function-commas@6.22.0";
              "babel-plugin-transform-async-generator-functions@6.24.1" = pkgs."babel-plugin-transform-async-generator-functions@6.24.1";
              "babel-plugin-transform-async-to-generator@6.24.1" = pkgs."babel-plugin-transform-async-to-generator@6.24.1";
              "babel-plugin-transform-exponentiation-operator@6.24.1" = pkgs."babel-plugin-transform-exponentiation-operator@6.24.1";
              "babel-plugin-transform-object-rest-spread@6.26.0" = pkgs."babel-plugin-transform-object-rest-spread@6.26.0";
            };
            seen = [ "babel-preset-stage-3@6.24.1" ];
            };
  "babel-register@6.24.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-register";
            version = "6.24.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-register/-/babel-register-6.24.0.tgz";
              sha1 = "5e89f8463ba9970356d02eb07dabe3308b080cfd";
            };
            dependencies = {
              "babel-core@6.26.0" = pkgs."babel-core@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "core-js@2.4.1" = pkgs."core-js@2.4.1";
              "home-or-tmp@2.0.0" = pkgs."home-or-tmp@2.0.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "source-map-support@0.4.8" = pkgs."source-map-support@0.4.8";
            };
            seen = [ "babel-register@6.24.0" ];
            };
  "babel-runtime@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-runtime";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-runtime/-/babel-runtime-6.26.0.tgz";
              sha1 = "965c7058668e82b55d7bfe04ff2337bc8b5647fe";
            };
            dependencies = {
              "core-js@2.4.1" = pkgs."core-js@2.4.1";
              "regenerator-runtime@0.11.1" = pkgs."regenerator-runtime@0.11.1";
            };
            seen = [ "babel-runtime@6.26.0" ];
            };
  "babel-template@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-template";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-template/-/babel-template-6.26.0.tgz";
              sha1 = "de03e2d16396b069f46dd9fff8521fb1a0e35e02";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "babylon@6.18.0" = pkgs."babylon@6.18.0";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
            };
            seen = [ "babel-template@6.26.0" ];
            };
  "babel-traverse@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-traverse";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-traverse/-/babel-traverse-6.26.0.tgz";
              sha1 = "46a9cbd7edcc62c8e5c064e2d2d8d0f4035766ee";
            };
            dependencies = {
              "babel-code-frame@6.26.0" = pkgs."babel-code-frame@6.26.0";
              "babel-messages@6.23.0" = pkgs."babel-messages@6.23.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "babylon@6.18.0" = pkgs."babylon@6.18.0";
              "debug@2.6.9" = pkgs."debug@2.6.9";
              "globals@9.18.0" = pkgs."globals@9.18.0";
              "invariant@2.2.3" = pkgs."invariant@2.2.3";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
            };
            seen = [ "babel-traverse@6.26.0" ];
            };
  "babel-types@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-types";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-types/-/babel-types-6.26.0.tgz";
              sha1 = "a3b073f94ab49eb6fa55cd65227a334380632497";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
              "to-fast-properties@1.0.3" = pkgs."to-fast-properties@1.0.3";
            };
            seen = [ "babel-types@6.26.0" ];
            };
  "babylon@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babylon";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babylon/-/babylon-6.18.0.tgz";
              sha1 = "af2f3b88fa6f5c1e4c634d1a0f8eac4f55b395e3";
            };
            dependencies = {};
            seen = [ "babylon@6.18.0" ];
            };
  "balanced-match@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "balanced-match";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz";
              sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
            };
            dependencies = {};
            seen = [ "balanced-match@1.0.0" ];
            };
  "base-x@3.0.4" = nodeEnv.buildYarnPackage {
            packageName = "base-x";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/base-x/-/base-x-3.0.4.tgz";
              sha1 = "94c1788736da065edb1d68808869e357c977fa77";
            };
            dependencies = {
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
            };
            seen = [ "base-x@3.0.4" ];
            };
  "base64-js@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "base64-js";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/base64-js/-/base64-js-1.1.2.tgz";
              sha1 = "d6400cac1c4c660976d90d07a04351d89395f5e8";
            };
            dependencies = {};
            seen = [ "base64-js@1.1.2" ];
            };
  "basename@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "basename";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/basename/-/basename-0.1.2.tgz";
              sha1 = "d6039bef939863160c78048cced3c5e7f88cb261";
            };
            dependencies = {};
            seen = [ "basename@0.1.2" ];
            };
  "bcrypt-pbkdf@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "bcrypt-pbkdf";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.0.tgz";
              sha1 = "3ca76b85241c7170bf7d9703e7b9aa74630040d4";
            };
            dependencies = {
              "tweetnacl@0.14.5" = pkgs."tweetnacl@0.14.5";
            };
            seen = [ "bcrypt-pbkdf@1.0.0" ];
            };
  "becke-ch--regex--s0-0-v1--base--pl--lib@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "becke-ch--regex--s0-0-v1--base--pl--lib";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/becke-ch--regex--s0-0-v1--base--pl--lib/-/becke-ch--regex--s0-0-v1--base--pl--lib-1.2.0.tgz";
              sha1 = "2e73e9d21f2c2e6f5a5454045636f0ab93e46130";
            };
            dependencies = {};
            seen = [ "becke-ch--regex--s0-0-v1--base--pl--lib@1.2.0" ];
            };
  "beeper@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "beeper";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/beeper/-/beeper-1.1.1.tgz";
              sha1 = "e6d5ea8c5dad001304a70b22638447f69cb2f809";
            };
            dependencies = {};
            seen = [ "beeper@1.1.1" ];
            };
  "big.js@3.1.3" = nodeEnv.buildYarnPackage {
            packageName = "big.js";
            version = "3.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/big.js/-/big.js-3.1.3.tgz";
              sha1 = "4cada2193652eb3ca9ec8e55c9015669c9806978";
            };
            dependencies = {};
            seen = [ "big.js@3.1.3" ];
            };
  "bignumber.js@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "bignumber.js";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bignumber.js/-/bignumber.js-4.0.0.tgz";
              sha1 = "26b23a3240820fb6b875f07de822004c7d34b682";
            };
            dependencies = {};
            seen = [ "bignumber.js@4.0.0" ];
            };
  "binary-extensions@1.8.0" = nodeEnv.buildYarnPackage {
            packageName = "binary-extensions";
            version = "1.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-1.8.0.tgz";
              sha1 = "48ec8d16df4377eae5fa5884682480af4d95c774";
            };
            dependencies = {};
            seen = [ "binary-extensions@1.8.0" ];
            };
  "binary@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "binary";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/binary/-/binary-0.3.0.tgz";
              sha1 = "9f60553bc5ce8c3386f3b553cff47462adecaa79";
            };
            dependencies = {
              "buffers@0.1.1" = pkgs."buffers@0.1.1";
              "chainsaw@0.1.0" = pkgs."chainsaw@0.1.0";
            };
            seen = [ "binary@0.3.0" ];
            };
  "bip39@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "bip39";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bip39/-/bip39-2.3.0.tgz";
              sha1 = "e4ee6c6d1bd90ca00ffd57ad446bdf8c017ff484";
            };
            dependencies = {
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "pbkdf2@3.0.14" = pkgs."pbkdf2@3.0.14";
              "randombytes@2.0.3" = pkgs."randombytes@2.0.3";
              "unorm@1.4.1" = pkgs."unorm@1.4.1";
            };
            seen = [ "bip39@2.3.0" ];
            };
  "bl@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "bl";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bl/-/bl-1.1.2.tgz";
              sha1 = "fdca871a99713aa00d19e3bbba41c44787a65398";
            };
            dependencies = {
              "readable-stream@2.0.6" = pkgs."readable-stream@2.0.6";
            };
            seen = [ "bl@1.1.2" ];
            };
  "blakejs@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "blakejs";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/blakejs/-/blakejs-1.0.1.tgz";
              sha1 = "ae54b631fb4ab820c4f7a226a4b430a95f87065e";
            };
            dependencies = {};
            seen = [ "blakejs@1.0.1" ];
            };
  "block-stream@0.0.9" = nodeEnv.buildYarnPackage {
            packageName = "block-stream";
            version = "0.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/block-stream/-/block-stream-0.0.9.tgz";
              sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "block-stream@0.0.9" ];
            };
  "bluebird@3.5.1" = nodeEnv.buildYarnPackage {
            packageName = "bluebird";
            version = "3.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.5.1.tgz";
              sha1 = "d9551f9de98f1fcda1e683d17ee91a0602ee2eb9";
            };
            dependencies = {};
            seen = [ "bluebird@3.5.1" ];
            };
  "bn.js@4.11.8" = nodeEnv.buildYarnPackage {
            packageName = "bn.js";
            version = "4.11.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bn.js/-/bn.js-4.11.8.tgz";
              sha1 = "2cde09eb5ee341f484746bb0309b3253b1b1442f";
            };
            dependencies = {};
            seen = [ "bn.js@4.11.8" ];
            };
  "body-parser@1.18.2" = nodeEnv.buildYarnPackage {
            packageName = "body-parser";
            version = "1.18.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/body-parser/-/body-parser-1.18.2.tgz";
              sha1 = "87678a19d84b47d859b83199bd59bce222b10454";
            };
            dependencies = {
              "bytes@3.0.0" = pkgs."bytes@3.0.0";
              "content-type@1.0.4" = pkgs."content-type@1.0.4";
              "debug@2.6.9" = pkgs."debug@2.6.9";
              "depd@1.1.2" = pkgs."depd@1.1.2";
              "http-errors@1.6.2" = pkgs."http-errors@1.6.2";
              "iconv-lite@0.4.19" = pkgs."iconv-lite@0.4.19";
              "on-finished@2.3.0" = pkgs."on-finished@2.3.0";
              "qs@6.5.1" = pkgs."qs@6.5.1";
              "raw-body@2.3.2" = pkgs."raw-body@2.3.2";
              "type-is@1.6.16" = pkgs."type-is@1.6.16";
            };
            seen = [ "body-parser@1.18.2" ];
            };
  "boiler-room-custodian@0.4.3" = nodeEnv.buildYarnPackage {
            packageName = "boiler-room-custodian";
            version = "0.4.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boiler-room-custodian/-/boiler-room-custodian-0.4.3.tgz";
              sha1 = "1c816fea4a410aeec2ebaf4abb1b334242befb3e";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
            };
            seen = [ "boiler-room-custodian@0.4.3" ];
            };
  "boom@5.2.0" = nodeEnv.buildYarnPackage {
            packageName = "boom";
            version = "5.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boom/-/boom-5.2.0.tgz";
              sha1 = "5dd9da6ee3a5f302077436290cb717d3f4a54e02";
            };
            dependencies = {
              "hoek@4.1.0" = pkgs."hoek@4.1.0";
            };
            seen = [ "boom@5.2.0" ];
            };
  "brace-expansion@1.1.11" = nodeEnv.buildYarnPackage {
            packageName = "brace-expansion";
            version = "1.1.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz";
              sha1 = "3c7fcbf529d87226f3d2f52b966ff5271eb441dd";
            };
            dependencies = {
              "balanced-match@1.0.0" = pkgs."balanced-match@1.0.0";
              "concat-map@0.0.1" = pkgs."concat-map@0.0.1";
            };
            seen = [ "brace-expansion@1.1.11" ];
            };
  "braces@1.8.5" = nodeEnv.buildYarnPackage {
            packageName = "braces";
            version = "1.8.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/braces/-/braces-1.8.5.tgz";
              sha1 = "ba77962e12dff969d6b76711e914b737857bf6a7";
            };
            dependencies = {
              "expand-range@1.8.2" = pkgs."expand-range@1.8.2";
              "preserve@0.2.0" = pkgs."preserve@0.2.0";
              "repeat-element@1.1.2" = pkgs."repeat-element@1.1.2";
            };
            seen = [ "braces@1.8.5" ];
            };
  "brorand@1.0.6" = nodeEnv.buildYarnPackage {
            packageName = "brorand";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/brorand/-/brorand-1.0.6.tgz";
              sha1 = "4028706b915f91f7b349a2e0bf3c376039d216e5";
            };
            dependencies = {};
            seen = [ "brorand@1.0.6" ];
            };
  "browserify-aes@1.0.6" = nodeEnv.buildYarnPackage {
            packageName = "browserify-aes";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-aes/-/browserify-aes-1.0.6.tgz";
              sha1 = "5e7725dbdef1fd5930d4ebab48567ce451c48a0a";
            };
            dependencies = {
              "buffer-xor@1.0.3" = pkgs."buffer-xor@1.0.3";
              "cipher-base@1.0.3" = pkgs."cipher-base@1.0.3";
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "evp_bytestokey@1.0.0" = pkgs."evp_bytestokey@1.0.0";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "browserify-aes@1.0.6" ];
            };
  "browserify-cipher@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "browserify-cipher";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-cipher/-/browserify-cipher-1.0.0.tgz";
              sha1 = "9988244874bf5ed4e28da95666dcd66ac8fc363a";
            };
            dependencies = {
              "browserify-aes@1.0.6" = pkgs."browserify-aes@1.0.6";
              "browserify-des@1.0.0" = pkgs."browserify-des@1.0.0";
              "evp_bytestokey@1.0.0" = pkgs."evp_bytestokey@1.0.0";
            };
            seen = [ "browserify-cipher@1.0.0" ];
            };
  "browserify-des@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "browserify-des";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-des/-/browserify-des-1.0.0.tgz";
              sha1 = "daa277717470922ed2fe18594118a175439721dd";
            };
            dependencies = {
              "cipher-base@1.0.3" = pkgs."cipher-base@1.0.3";
              "des.js@1.0.0" = pkgs."des.js@1.0.0";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "browserify-des@1.0.0" ];
            };
  "browserify-rsa@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "browserify-rsa";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-rsa/-/browserify-rsa-4.0.1.tgz";
              sha1 = "21e0abfaf6f2029cf2fafb133567a701d4135524";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "randombytes@2.0.3" = pkgs."randombytes@2.0.3";
            };
            seen = [ "browserify-rsa@4.0.1" ];
            };
  "browserify-sha3@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "browserify-sha3";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-sha3/-/browserify-sha3-0.0.1.tgz";
              sha1 = "3ff34a3006ef15c0fb3567e541b91a2340123d11";
            };
            dependencies = {
              "js-sha3@0.3.1" = pkgs."js-sha3@0.3.1";
            };
            seen = [ "browserify-sha3@0.0.1" ];
            };
  "browserify-sign@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "browserify-sign";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-sign/-/browserify-sign-4.0.0.tgz";
              sha1 = "10773910c3c206d5420a46aad8694f820b85968f";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "browserify-rsa@4.0.1" = pkgs."browserify-rsa@4.0.1";
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "create-hmac@1.1.4" = pkgs."create-hmac@1.1.4";
              "elliptic@6.3.2" = pkgs."elliptic@6.3.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "parse-asn1@5.0.0" = pkgs."parse-asn1@5.0.0";
            };
            seen = [ "browserify-sign@4.0.0" ];
            };
  "browserify-zlib@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "browserify-zlib";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.1.4.tgz";
              sha1 = "bb35f8a519f600e0fa6b8485241c979d0141fb2d";
            };
            dependencies = {
              "pako@0.2.9" = pkgs."pako@0.2.9";
            };
            seen = [ "browserify-zlib@0.1.4" ];
            };
  "browserslist@1.5.2" = nodeEnv.buildYarnPackage {
            packageName = "browserslist";
            version = "1.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserslist/-/browserslist-1.5.2.tgz";
              sha1 = "1c82fde0ee8693e6d15c49b7bff209dc06298c56";
            };
            dependencies = {
              "caniuse-db@1.0.30000604" = pkgs."caniuse-db@1.0.30000604";
            };
            seen = [ "browserslist@1.5.2" ];
            };
  "bs58@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "bs58";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bs58/-/bs58-4.0.1.tgz";
              sha1 = "be161e76c354f6f788ae4071f63f34e8c4f0a42a";
            };
            dependencies = {
              "base-x@3.0.4" = pkgs."base-x@3.0.4";
            };
            seen = [ "bs58@4.0.1" ];
            };
  "buffer-crc32@0.2.13" = nodeEnv.buildYarnPackage {
            packageName = "buffer-crc32";
            version = "0.2.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-crc32/-/buffer-crc32-0.2.13.tgz";
              sha1 = "0d333e3f00eac50aa1454abd30ef8c2a5d9a7242";
            };
            dependencies = {};
            seen = [ "buffer-crc32@0.2.13" ];
            };
  "buffer-shims@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "buffer-shims";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-shims/-/buffer-shims-1.0.0.tgz";
              sha1 = "9978ce317388c649ad8793028c3477ef044a8b51";
            };
            dependencies = {};
            seen = [ "buffer-shims@1.0.0" ];
            };
  "buffer-to-arraybuffer@0.0.5" = nodeEnv.buildYarnPackage {
            packageName = "buffer-to-arraybuffer";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-to-arraybuffer/-/buffer-to-arraybuffer-0.0.5.tgz";
              sha1 = "6064a40fa76eb43c723aba9ef8f6e1216d10511a";
            };
            dependencies = {};
            seen = [ "buffer-to-arraybuffer@0.0.5" ];
            };
  "buffer-xor@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "buffer-xor";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-xor/-/buffer-xor-1.0.3.tgz";
              sha1 = "26e61ed1422fb70dd42e6e36729ed51d855fe8d9";
            };
            dependencies = {};
            seen = [ "buffer-xor@1.0.3" ];
            };
  "buffer@5.1.0" = nodeEnv.buildYarnPackage {
            packageName = "buffer";
            version = "5.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer/-/buffer-5.1.0.tgz";
              sha1 = "c913e43678c7cb7c8bd16afbcddb6c5505e8f9fe";
            };
            dependencies = {
              "base64-js@1.1.2" = pkgs."base64-js@1.1.2";
              "ieee754@1.1.8" = pkgs."ieee754@1.1.8";
            };
            seen = [ "buffer@5.1.0" ];
            };
  "buffers@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "buffers";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffers/-/buffers-0.1.1.tgz";
              sha1 = "b24579c3bed4d6d396aeee6d9a8ae7f5482ab7bb";
            };
            dependencies = {};
            seen = [ "buffers@0.1.1" ];
            };
  "builtin-modules@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "builtin-modules";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/builtin-modules/-/builtin-modules-1.1.1.tgz";
              sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
            };
            dependencies = {};
            seen = [ "builtin-modules@1.1.1" ];
            };
  "builtin-status-codes@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "builtin-status-codes";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/builtin-status-codes/-/builtin-status-codes-3.0.0.tgz";
              sha1 = "85982878e21b98e1c66425e03d0174788f569ee8";
            };
            dependencies = {};
            seen = [ "builtin-status-codes@3.0.0" ];
            };
  "bytes@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "bytes";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bytes/-/bytes-3.0.0.tgz";
              sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
            };
            dependencies = {};
            seen = [ "bytes@3.0.0" ];
            };
  "caller-path@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "caller-path";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caller-path/-/caller-path-0.1.0.tgz";
              sha1 = "94085ef63581ecd3daa92444a8fe94e82577751f";
            };
            dependencies = {
              "callsites@0.2.0" = pkgs."callsites@0.2.0";
            };
            seen = [ "caller-path@0.1.0" ];
            };
  "callsites@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "callsites";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/callsites/-/callsites-0.2.0.tgz";
              sha1 = "afab96262910a7f33c19a5775825c69f34e350ca";
            };
            dependencies = {};
            seen = [ "callsites@0.2.0" ];
            };
  "camel-case@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "camel-case";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camel-case/-/camel-case-3.0.0.tgz";
              sha1 = "ca3c3688a4e9cf3a4cda777dc4dcbc713249cf73";
            };
            dependencies = {
              "no-case@2.3.1" = pkgs."no-case@2.3.1";
              "upper-case@1.1.3" = pkgs."upper-case@1.1.3";
            };
            seen = [ "camel-case@3.0.0" ];
            };
  "camelcase-keys@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "camelcase-keys";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
              sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
            };
            dependencies = {
              "camelcase@2.1.1" = pkgs."camelcase@2.1.1";
              "map-obj@1.0.1" = pkgs."map-obj@1.0.1";
            };
            seen = [ "camelcase-keys@2.1.0" ];
            };
  "camelcase@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "camelcase";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase/-/camelcase-3.0.0.tgz";
              sha1 = "32fc4b9fcdaf845fcdf7e73bb97cac2261f0ab0a";
            };
            dependencies = {};
            seen = [ "camelcase@3.0.0" ];
            };
  "camelize@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "camelize";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelize/-/camelize-1.0.0.tgz";
              sha1 = "164a5483e630fa4321e5af07020e531831b2609b";
            };
            dependencies = {};
            seen = [ "camelize@1.0.0" ];
            };
  "caniuse-api@1.5.2" = nodeEnv.buildYarnPackage {
            packageName = "caniuse-api";
            version = "1.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caniuse-api/-/caniuse-api-1.5.2.tgz";
              sha1 = "8f393c682f661c0a997b77bba6e826483fb3600e";
            };
            dependencies = {
              "browserslist@1.5.2" = pkgs."browserslist@1.5.2";
              "caniuse-db@1.0.30000604" = pkgs."caniuse-db@1.0.30000604";
              "lodash.memoize@4.1.2" = pkgs."lodash.memoize@4.1.2";
              "lodash.uniq@4.5.0" = pkgs."lodash.uniq@4.5.0";
              "shelljs@0.7.6" = pkgs."shelljs@0.7.6";
            };
            seen = [ "caniuse-api@1.5.2" ];
            };
  "caniuse-db@1.0.30000604" = nodeEnv.buildYarnPackage {
            packageName = "caniuse-db";
            version = "1.0.30000604";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caniuse-db/-/caniuse-db-1.0.30000604.tgz";
              sha1 = "bc139270a777564d19c0aadcd832b491d093bda5";
            };
            dependencies = {};
            seen = [ "caniuse-db@1.0.30000604" ];
            };
  "case-sensitive-paths-webpack-plugin@1.1.4" = nodeEnv.buildYarnPackage {
            packageName = "case-sensitive-paths-webpack-plugin";
            version = "1.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/case-sensitive-paths-webpack-plugin/-/case-sensitive-paths-webpack-plugin-1.1.4.tgz";
              sha1 = "8aaedd5699a86cac2b34cf40d9b4145758978472";
            };
            dependencies = {};
            seen = [ "case-sensitive-paths-webpack-plugin@1.1.4" ];
            };
  "caseless@0.12.0" = nodeEnv.buildYarnPackage {
            packageName = "caseless";
            version = "0.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caseless/-/caseless-0.12.0.tgz";
              sha1 = "1b681c21ff84033c826543090689420d187151dc";
            };
            dependencies = {};
            seen = [ "caseless@0.12.0" ];
            };
  "center-align@0.1.3" = nodeEnv.buildYarnPackage {
            packageName = "center-align";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/center-align/-/center-align-0.1.3.tgz";
              sha1 = "aa0d32629b6ee972200411cbd4461c907bc2b7ad";
            };
            dependencies = {
              "align-text@0.1.4" = pkgs."align-text@0.1.4";
              "lazy-cache@1.0.4" = pkgs."lazy-cache@1.0.4";
            };
            seen = [ "center-align@0.1.3" ];
            };
  "chai@4.1.2" = nodeEnv.buildYarnPackage {
            packageName = "chai";
            version = "4.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chai/-/chai-4.1.2.tgz";
              sha1 = "0f64584ba642f0f2ace2806279f4f06ca23ad73c";
            };
            dependencies = {
              "assertion-error@1.0.2" = pkgs."assertion-error@1.0.2";
              "check-error@1.0.2" = pkgs."check-error@1.0.2";
              "deep-eql@3.0.1" = pkgs."deep-eql@3.0.1";
              "get-func-name@2.0.0" = pkgs."get-func-name@2.0.0";
              "pathval@1.1.0" = pkgs."pathval@1.1.0";
              "type-detect@4.0.8" = pkgs."type-detect@4.0.8";
            };
            seen = [ "chai@4.1.2" ];
            };
  "chain-function@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "chain-function";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chain-function/-/chain-function-1.0.0.tgz";
              sha1 = "0d4ab37e7e18ead0bdc47b920764118ce58733dc";
            };
            dependencies = {};
            seen = [ "chain-function@1.0.0" ];
            };
  "chainsaw@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "chainsaw";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chainsaw/-/chainsaw-0.1.0.tgz";
              sha1 = "5eab50b28afe58074d0d58291388828b5e5fbc98";
            };
            dependencies = {
              "traverse@0.3.9" = pkgs."traverse@0.3.9";
            };
            seen = [ "chainsaw@0.1.0" ];
            };
  "chalk@2.3.2" = nodeEnv.buildYarnPackage {
            packageName = "chalk";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chalk/-/chalk-2.3.2.tgz";
              sha1 = "250dc96b07491bfd601e648d66ddf5f60c7a5c65";
            };
            dependencies = {
              "ansi-styles@3.2.1" = pkgs."ansi-styles@3.2.1";
              "escape-string-regexp@1.0.5" = pkgs."escape-string-regexp@1.0.5";
              "supports-color@5.3.0" = pkgs."supports-color@5.3.0";
            };
            seen = [ "chalk@2.3.2" ];
            };
  "chardet@0.4.2" = nodeEnv.buildYarnPackage {
            packageName = "chardet";
            version = "0.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chardet/-/chardet-0.4.2.tgz";
              sha1 = "b5473b33dc97c424e5d98dc87d55d4d8a29c8bf2";
            };
            dependencies = {};
            seen = [ "chardet@0.4.2" ];
            };
  "check-error@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "check-error";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/check-error/-/check-error-1.0.2.tgz";
              sha1 = "574d312edd88bb5dd8912e9286dd6c0aed4aac82";
            };
            dependencies = {};
            seen = [ "check-error@1.0.2" ];
            };
  "chokidar@1.7.0" = nodeEnv.buildYarnPackage {
            packageName = "chokidar";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chokidar/-/chokidar-1.7.0.tgz";
              sha1 = "798e689778151c8076b4b360e5edd28cda2bb468";
            };
            dependencies = {
              "anymatch@1.3.0" = pkgs."anymatch@1.3.0";
              "async-each@1.0.1" = pkgs."async-each@1.0.1";
              "glob-parent@2.0.0" = pkgs."glob-parent@2.0.0";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "is-binary-path@1.0.1" = pkgs."is-binary-path@1.0.1";
              "is-glob@2.0.1" = pkgs."is-glob@2.0.1";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "readdirp@2.1.0" = pkgs."readdirp@2.1.0";
            };
            seen = [ "chokidar@1.7.0" ];
            };
  "chromium-pickle-js@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "chromium-pickle-js";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chromium-pickle-js/-/chromium-pickle-js-0.2.0.tgz";
              sha1 = "04a106672c18b085ab774d983dfa3ea138f22205";
            };
            dependencies = {};
            seen = [ "chromium-pickle-js@0.2.0" ];
            };
  "cipher-base@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "cipher-base";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cipher-base/-/cipher-base-1.0.4.tgz";
              sha1 = "8760e4ecc272f4c363532f926d874aae2c1397de";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
            };
            seen = [ "cipher-base@1.0.4" ];
            };
  "circular-json@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "circular-json";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/circular-json/-/circular-json-0.3.1.tgz";
              sha1 = "be8b36aefccde8b3ca7aa2d6afc07a37242c0d2d";
            };
            dependencies = {};
            seen = [ "circular-json@0.3.1" ];
            };
  "clap@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "clap";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clap/-/clap-1.1.2.tgz";
              sha1 = "316545bf22229225a2cecaa6824cd2f56a9709ed";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
            };
            seen = [ "clap@1.1.2" ];
            };
  "classnames@2.2.5" = nodeEnv.buildYarnPackage {
            packageName = "classnames";
            version = "2.2.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/classnames/-/classnames-2.2.5.tgz";
              sha1 = "fb3801d453467649ef3603c7d61a02bd129bde6d";
            };
            dependencies = {};
            seen = [ "classnames@2.2.5" ];
            };
  "clean-css@4.1.11" = nodeEnv.buildYarnPackage {
            packageName = "clean-css";
            version = "4.1.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clean-css/-/clean-css-4.1.11.tgz";
              sha1 = "2ecdf145aba38f54740f26cefd0ff3e03e125d6a";
            };
            dependencies = {
              "source-map@0.5.7" = pkgs."source-map@0.5.7";
            };
            seen = [ "clean-css@4.1.11" ];
            };
  "cli-cursor@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "cli-cursor";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-2.1.0.tgz";
              sha1 = "b35dac376479facc3e94747d41d0d0f5238ffcb5";
            };
            dependencies = {
              "restore-cursor@2.0.0" = pkgs."restore-cursor@2.0.0";
            };
            seen = [ "cli-cursor@2.1.0" ];
            };
  "cli-spinners@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "cli-spinners";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-spinners/-/cli-spinners-1.1.0.tgz";
              sha1 = "f1847b168844d917a671eb9d147e3df497c90d06";
            };
            dependencies = {};
            seen = [ "cli-spinners@1.1.0" ];
            };
  "cli-table@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "cli-table";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-table/-/cli-table-0.3.1.tgz";
              sha1 = "f53b05266a8b1a0b934b3d0821e6e2dc5914ae23";
            };
            dependencies = {
              "colors@1.0.3" = pkgs."colors@1.0.3";
            };
            seen = [ "cli-table@0.3.1" ];
            };
  "cli-width@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "cli-width";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-width/-/cli-width-2.1.0.tgz";
              sha1 = "b234ca209b29ef66fc518d9b98d5847b00edf00a";
            };
            dependencies = {};
            seen = [ "cli-width@2.1.0" ];
            };
  "cliui@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "cliui";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cliui/-/cliui-3.2.0.tgz";
              sha1 = "120601537a916d29940f934da3b48d585a39213d";
            };
            dependencies = {
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
              "wrap-ansi@2.1.0" = pkgs."wrap-ansi@2.1.0";
            };
            seen = [ "cliui@3.2.0" ];
            };
  "clone-stats@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "clone-stats";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clone-stats/-/clone-stats-0.0.1.tgz";
              sha1 = "b88f94a82cf38b8791d58046ea4029ad88ca99d1";
            };
            dependencies = {};
            seen = [ "clone-stats@0.0.1" ];
            };
  "clone@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "clone";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clone/-/clone-1.0.2.tgz";
              sha1 = "260b7a99ebb1edfe247538175f783243cb19d149";
            };
            dependencies = {};
            seen = [ "clone@1.0.2" ];
            };
  "co@4.6.0" = nodeEnv.buildYarnPackage {
            packageName = "co";
            version = "4.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/co/-/co-4.6.0.tgz";
              sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
            };
            dependencies = {};
            seen = [ "co@4.6.0" ];
            };
  "coa@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "coa";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/coa/-/coa-1.0.1.tgz";
              sha1 = "7f959346cfc8719e3f7233cd6852854a7c67d8a3";
            };
            dependencies = {
              "q@1.4.1" = pkgs."q@1.4.1";
            };
            seen = [ "coa@1.0.1" ];
            };
  "code-point-at@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "code-point-at";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/code-point-at/-/code-point-at-1.1.0.tgz";
              sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
            };
            dependencies = {};
            seen = [ "code-point-at@1.1.0" ];
            };
  "color-convert@1.9.1" = nodeEnv.buildYarnPackage {
            packageName = "color-convert";
            version = "1.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.9.1.tgz";
              sha1 = "c1261107aeb2f294ebffec9ed9ecad529a6097ed";
            };
            dependencies = {
              "color-name@1.1.1" = pkgs."color-name@1.1.1";
            };
            seen = [ "color-convert@1.9.1" ];
            };
  "color-name@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "color-name";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-name/-/color-name-1.1.1.tgz";
              sha1 = "4b1415304cf50028ea81643643bd82ea05803689";
            };
            dependencies = {};
            seen = [ "color-name@1.1.1" ];
            };
  "color-string@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "color-string";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-string/-/color-string-0.3.0.tgz";
              sha1 = "27d46fb67025c5c2fa25993bfbf579e47841b991";
            };
            dependencies = {
              "color-name@1.1.1" = pkgs."color-name@1.1.1";
            };
            seen = [ "color-string@0.3.0" ];
            };
  "color@0.11.4" = nodeEnv.buildYarnPackage {
            packageName = "color";
            version = "0.11.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color/-/color-0.11.4.tgz";
              sha1 = "6d7b5c74fb65e841cd48792ad1ed5e07b904d764";
            };
            dependencies = {
              "clone@1.0.2" = pkgs."clone@1.0.2";
              "color-convert@1.8.2" = pkgs."color-convert@1.8.2";
              "color-string@0.3.0" = pkgs."color-string@0.3.0";
            };
            seen = [ "color@0.11.4" ];
            };
  "colormin@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "colormin";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/colormin/-/colormin-1.1.2.tgz";
              sha1 = "ea2f7420a72b96881a38aae59ec124a6f7298133";
            };
            dependencies = {
              "color@0.11.4" = pkgs."color@0.11.4";
              "css-color-names@0.0.4" = pkgs."css-color-names@0.0.4";
              "has@1.0.1" = pkgs."has@1.0.1";
            };
            seen = [ "colormin@1.1.2" ];
            };
  "colors@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "colors";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/colors/-/colors-1.1.2.tgz";
              sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
            };
            dependencies = {};
            seen = [ "colors@1.1.2" ];
            };
  "combined-stream@1.0.6" = nodeEnv.buildYarnPackage {
            packageName = "combined-stream";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.6.tgz";
              sha1 = "723e7df6e801ac5613113a7e445a9b69cb632818";
            };
            dependencies = {
              "delayed-stream@1.0.0" = pkgs."delayed-stream@1.0.0";
            };
            seen = [ "combined-stream@1.0.6" ];
            };
  "commander@2.14.1" = nodeEnv.buildYarnPackage {
            packageName = "commander";
            version = "2.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.14.1.tgz";
              sha1 = "2235123e37af8ca3c65df45b026dbd357b01b9aa";
            };
            dependencies = {};
            seen = [ "commander@2.14.1" ];
            };
  "common-tags@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "common-tags";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/common-tags/-/common-tags-1.4.0.tgz";
              sha1 = "1187be4f3d4cf0c0427d43f74eef1f73501614c0";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "common-tags@1.4.0" ];
            };
  "commondir@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "commondir";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commondir/-/commondir-1.0.1.tgz";
              sha1 = "ddd800da0c66127393cca5950ea968a3aaf1253b";
            };
            dependencies = {};
            seen = [ "commondir@1.0.1" ];
            };
  "commonmark-react-renderer@4.3.4" = nodeEnv.buildYarnPackage {
            packageName = "commonmark-react-renderer";
            version = "4.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commonmark-react-renderer/-/commonmark-react-renderer-4.3.4.tgz";
              sha1 = "29f345357951ab36eb386d45ea6bc08006f3ff9b";
            };
            dependencies = {
              "lodash.assign@4.2.0" = pkgs."lodash.assign@4.2.0";
              "lodash.isplainobject@4.0.6" = pkgs."lodash.isplainobject@4.0.6";
              "pascalcase@0.1.1" = pkgs."pascalcase@0.1.1";
              "xss-filters@1.2.7" = pkgs."xss-filters@1.2.7";
            };
            seen = [ "commonmark-react-renderer@4.3.4" ];
            };
  "commonmark@0.24.0" = nodeEnv.buildYarnPackage {
            packageName = "commonmark";
            version = "0.24.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commonmark/-/commonmark-0.24.0.tgz";
              sha1 = "b80de0182c546355643aa15db12bfb282368278f";
            };
            dependencies = {
              "entities@1.1.1" = pkgs."entities@1.1.1";
              "mdurl@1.0.1" = pkgs."mdurl@1.0.1";
              "string.prototype.repeat@0.2.0" = pkgs."string.prototype.repeat@0.2.0";
            };
            seen = [ "commonmark@0.24.0" ];
            };
  "compare-version@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "compare-version";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/compare-version/-/compare-version-0.1.2.tgz";
              sha1 = "0162ec2d9351f5ddd59a9202cba935366a725080";
            };
            dependencies = {};
            seen = [ "compare-version@0.1.2" ];
            };
  "compress-commons@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "compress-commons";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/compress-commons/-/compress-commons-1.2.2.tgz";
              sha1 = "524a9f10903f3a813389b0225d27c48bb751890f";
            };
            dependencies = {
              "buffer-crc32@0.2.13" = pkgs."buffer-crc32@0.2.13";
              "crc32-stream@2.0.0" = pkgs."crc32-stream@2.0.0";
              "normalize-path@2.0.1" = pkgs."normalize-path@2.0.1";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "compress-commons@1.2.2" ];
            };
  "concat-map@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "concat-map";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz";
              sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
            };
            dependencies = {};
            seen = [ "concat-map@0.0.1" ];
            };
  "concat-stream@1.6.1" = nodeEnv.buildYarnPackage {
            packageName = "concat-stream";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.1.tgz";
              sha1 = "261b8f518301f1d834e36342b9fea095d2620a26";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "typedarray@0.0.6" = pkgs."typedarray@0.0.6";
            };
            seen = [ "concat-stream@1.6.1" ];
            };
  "concurrently@3.4.0" = nodeEnv.buildYarnPackage {
            packageName = "concurrently";
            version = "3.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concurrently/-/concurrently-3.4.0.tgz";
              sha1 = "60662b3defde07375bae19aac0ab780ec748ba79";
            };
            dependencies = {
              "chalk@0.5.1" = pkgs."chalk@0.5.1";
              "commander@2.6.0" = pkgs."commander@2.6.0";
              "date-fns@1.29.0" = pkgs."date-fns@1.29.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "rx@2.3.24" = pkgs."rx@2.3.24";
              "spawn-command@0.0.2-1" = pkgs."spawn-command@0.0.2-1";
              "supports-color@3.2.3" = pkgs."supports-color@3.2.3";
              "tree-kill@1.1.0" = pkgs."tree-kill@1.1.0";
            };
            seen = [ "concurrently@3.4.0" ];
            };
  "conf@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "conf";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/conf/-/conf-1.4.0.tgz";
              sha1 = "1ea66c9d7a9b601674a5bb9d2b8dc3c726625e67";
            };
            dependencies = {
              "dot-prop@4.2.0" = pkgs."dot-prop@4.2.0";
              "env-paths@1.0.0" = pkgs."env-paths@1.0.0";
              "make-dir@1.2.0" = pkgs."make-dir@1.2.0";
              "pkg-up@2.0.0" = pkgs."pkg-up@2.0.0";
              "write-file-atomic@2.3.0" = pkgs."write-file-atomic@2.3.0";
            };
            seen = [ "conf@1.4.0" ];
            };
  "configstore@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "configstore";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/configstore/-/configstore-2.1.0.tgz";
              sha1 = "737a3a7036e9886102aa6099e47bb33ab1aba1a1";
            };
            dependencies = {
              "dot-prop@3.0.0" = pkgs."dot-prop@3.0.0";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "os-tmpdir@1.0.2" = pkgs."os-tmpdir@1.0.2";
              "osenv@0.1.4" = pkgs."osenv@0.1.4";
              "uuid@2.0.3" = pkgs."uuid@2.0.3";
              "write-file-atomic@1.3.1" = pkgs."write-file-atomic@1.3.1";
              "xdg-basedir@2.0.0" = pkgs."xdg-basedir@2.0.0";
            };
            seen = [ "configstore@2.1.0" ];
            };
  "console-browserify@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "console-browserify";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/console-browserify/-/console-browserify-1.1.0.tgz";
              sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
            };
            dependencies = {
              "date-now@0.1.4" = pkgs."date-now@0.1.4";
            };
            seen = [ "console-browserify@1.1.0" ];
            };
  "console-control-strings@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "console-control-strings";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/console-control-strings/-/console-control-strings-1.1.0.tgz";
              sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
            };
            dependencies = {};
            seen = [ "console-control-strings@1.1.0" ];
            };
  "constants-browserify@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "constants-browserify";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/constants-browserify/-/constants-browserify-1.0.0.tgz";
              sha1 = "c20b96d8c617748aaf1c16021760cd27fcb8cb75";
            };
            dependencies = {};
            seen = [ "constants-browserify@1.0.0" ];
            };
  "contains-path@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "contains-path";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/contains-path/-/contains-path-0.1.0.tgz";
              sha1 = "fe8cf184ff6670b6baef01a9d4861a5cbec4120a";
            };
            dependencies = {};
            seen = [ "contains-path@0.1.0" ];
            };
  "content-disposition@0.5.2" = nodeEnv.buildYarnPackage {
            packageName = "content-disposition";
            version = "0.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-disposition/-/content-disposition-0.5.2.tgz";
              sha1 = "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4";
            };
            dependencies = {};
            seen = [ "content-disposition@0.5.2" ];
            };
  "content-type-parser@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "content-type-parser";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-type-parser/-/content-type-parser-1.0.1.tgz";
              sha1 = "c3e56988c53c65127fb46d4032a3a900246fdc94";
            };
            dependencies = {};
            seen = [ "content-type-parser@1.0.1" ];
            };
  "content-type@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "content-type";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-type/-/content-type-1.0.4.tgz";
              sha1 = "e138cc75e040c727b1966fe5e5f8c9aee256fe3b";
            };
            dependencies = {};
            seen = [ "content-type@1.0.4" ];
            };
  "convert-source-map@1.5.1" = nodeEnv.buildYarnPackage {
            packageName = "convert-source-map";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.5.1.tgz";
              sha1 = "b8278097b9bc229365de5c62cf5fcaed8b5599e5";
            };
            dependencies = {};
            seen = [ "convert-source-map@1.5.1" ];
            };
  "cookie-signature@1.0.6" = nodeEnv.buildYarnPackage {
            packageName = "cookie-signature";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cookie-signature/-/cookie-signature-1.0.6.tgz";
              sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
            };
            dependencies = {};
            seen = [ "cookie-signature@1.0.6" ];
            };
  "cookie@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "cookie";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cookie/-/cookie-0.3.1.tgz";
              sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
            };
            dependencies = {};
            seen = [ "cookie@0.3.1" ];
            };
  "copy-to-clipboard@3.0.8" = nodeEnv.buildYarnPackage {
            packageName = "copy-to-clipboard";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/copy-to-clipboard/-/copy-to-clipboard-3.0.8.tgz";
              sha1 = "f4e82f4a8830dce4666b7eb8ded0c9bcc313aba9";
            };
            dependencies = {
              "toggle-selection@1.0.6" = pkgs."toggle-selection@1.0.6";
            };
            seen = [ "copy-to-clipboard@3.0.8" ];
            };
  "core-js@2.5.3" = nodeEnv.buildYarnPackage {
            packageName = "core-js";
            version = "2.5.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-js/-/core-js-2.5.3.tgz";
              sha1 = "8acc38345824f16d8365b7c9b4259168e8ed603e";
            };
            dependencies = {};
            seen = [ "core-js@2.5.3" ];
            };
  "core-util-is@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "core-util-is";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz";
              sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
            };
            dependencies = {};
            seen = [ "core-util-is@1.0.2" ];
            };
  "cors@2.8.4" = nodeEnv.buildYarnPackage {
            packageName = "cors";
            version = "2.8.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cors/-/cors-2.8.4.tgz";
              sha1 = "2bd381f2eb201020105cd50ea59da63090694686";
            };
            dependencies = {
              "object-assign@4.1.1" = pkgs."object-assign@4.1.1";
              "vary@1.1.2" = pkgs."vary@1.1.2";
            };
            seen = [ "cors@2.8.4" ];
            };
  "cosmiconfig@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "cosmiconfig";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cosmiconfig/-/cosmiconfig-2.1.1.tgz";
              sha1 = "817f2c2039347a1e9bf7d090c0923e53f749ca82";
            };
            dependencies = {
              "js-yaml@3.7.0" = pkgs."js-yaml@3.7.0";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "os-homedir@1.0.2" = pkgs."os-homedir@1.0.2";
              "parse-json@2.2.0" = pkgs."parse-json@2.2.0";
              "require-from-string@1.2.1" = pkgs."require-from-string@1.2.1";
            };
            seen = [ "cosmiconfig@2.1.1" ];
            };
  "crc32-stream@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "crc32-stream";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crc32-stream/-/crc32-stream-2.0.0.tgz";
              sha1 = "e3cdd3b4df3168dd74e3de3fbbcb7b297fe908f4";
            };
            dependencies = {
              "crc@3.5.0" = pkgs."crc@3.5.0";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "crc32-stream@2.0.0" ];
            };
  "crc@3.5.0" = nodeEnv.buildYarnPackage {
            packageName = "crc";
            version = "3.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crc/-/crc-3.5.0.tgz";
              sha1 = "98b8ba7d489665ba3979f59b21381374101a1964";
            };
            dependencies = {};
            seen = [ "crc@3.5.0" ];
            };
  "create-ecdh@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "create-ecdh";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-ecdh/-/create-ecdh-4.0.0.tgz";
              sha1 = "888c723596cdf7612f6498233eebd7a35301737d";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "elliptic@6.3.2" = pkgs."elliptic@6.3.2";
            };
            seen = [ "create-ecdh@4.0.0" ];
            };
  "create-hash@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "create-hash";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hash/-/create-hash-1.1.3.tgz";
              sha1 = "606042ac8b9262750f483caddab0f5819172d8fd";
            };
            dependencies = {
              "cipher-base@1.0.3" = pkgs."cipher-base@1.0.3";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "ripemd160@2.0.1" = pkgs."ripemd160@2.0.1";
              "sha.js@2.4.10" = pkgs."sha.js@2.4.10";
            };
            seen = [ "create-hash@1.1.3" ];
            };
  "create-hmac@1.1.6" = nodeEnv.buildYarnPackage {
            packageName = "create-hmac";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hmac/-/create-hmac-1.1.6.tgz";
              sha1 = "acb9e221a4e17bdb076e90657c42b93e3726cf06";
            };
            dependencies = {
              "cipher-base@1.0.4" = pkgs."cipher-base@1.0.4";
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "ripemd160@2.0.1" = pkgs."ripemd160@2.0.1";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
              "sha.js@2.4.10" = pkgs."sha.js@2.4.10";
            };
            seen = [ "create-hmac@1.1.6" ];
            };
  "cross-env@3.2.4" = nodeEnv.buildYarnPackage {
            packageName = "cross-env";
            version = "3.2.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-env/-/cross-env-3.2.4.tgz";
              sha1 = "9e0585f277864ed421ce756f81a980ff0d698aba";
            };
            dependencies = {
              "cross-spawn@5.1.0" = pkgs."cross-spawn@5.1.0";
              "is-windows@1.0.2" = pkgs."is-windows@1.0.2";
            };
            seen = [ "cross-env@3.2.4" ];
            };
  "cross-spawn@5.1.0" = nodeEnv.buildYarnPackage {
            packageName = "cross-spawn";
            version = "5.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-5.1.0.tgz";
              sha1 = "e8bd0efee58fcff6f8f94510a0a554bbfa235449";
            };
            dependencies = {
              "lru-cache@4.0.2" = pkgs."lru-cache@4.0.2";
              "shebang-command@1.2.0" = pkgs."shebang-command@1.2.0";
              "which@1.2.12" = pkgs."which@1.2.12";
            };
            seen = [ "cross-spawn@5.1.0" ];
            };
  "cross-unzip@0.0.2" = nodeEnv.buildYarnPackage {
            packageName = "cross-unzip";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-unzip/-/cross-unzip-0.0.2.tgz";
              sha1 = "5183bc47a09559befcf98cc4657964999359372f";
            };
            dependencies = {};
            seen = [ "cross-unzip@0.0.2" ];
            };
  "cryptiles@3.1.2" = nodeEnv.buildYarnPackage {
            packageName = "cryptiles";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cryptiles/-/cryptiles-3.1.2.tgz";
              sha1 = "a89fbb220f5ce25ec56e8c4aa8a4fd7b5b0d29fe";
            };
            dependencies = {
              "boom@5.2.0" = pkgs."boom@5.2.0";
            };
            seen = [ "cryptiles@3.1.2" ];
            };
  "crypto-browserify@3.12.0" = nodeEnv.buildYarnPackage {
            packageName = "crypto-browserify";
            version = "3.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.12.0.tgz";
              sha1 = "396cf9f3137f03e4b8e532c58f698254e00f80ec";
            };
            dependencies = {
              "browserify-cipher@1.0.0" = pkgs."browserify-cipher@1.0.0";
              "browserify-sign@4.0.0" = pkgs."browserify-sign@4.0.0";
              "create-ecdh@4.0.0" = pkgs."create-ecdh@4.0.0";
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "create-hmac@1.1.4" = pkgs."create-hmac@1.1.4";
              "diffie-hellman@5.0.2" = pkgs."diffie-hellman@5.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "pbkdf2@3.0.9" = pkgs."pbkdf2@3.0.9";
              "public-encrypt@4.0.0" = pkgs."public-encrypt@4.0.0";
              "randombytes@2.0.3" = pkgs."randombytes@2.0.3";
              "randomfill@1.0.4" = pkgs."randomfill@1.0.4";
            };
            seen = [ "crypto-browserify@3.12.0" ];
            };
  "css-color-names@0.0.4" = nodeEnv.buildYarnPackage {
            packageName = "css-color-names";
            version = "0.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-color-names/-/css-color-names-0.0.4.tgz";
              sha1 = "808adc2e79cf84738069b646cb20ec27beb629e0";
            };
            dependencies = {};
            seen = [ "css-color-names@0.0.4" ];
            };
  "css-loader@0.25.0" = nodeEnv.buildYarnPackage {
            packageName = "css-loader";
            version = "0.25.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-loader/-/css-loader-0.25.0.tgz";
              sha1 = "c3febc8ce28f4c83576b6b13707f47f90c390223";
            };
            dependencies = {
              "babel-code-frame@6.20.0" = pkgs."babel-code-frame@6.20.0";
              "css-selector-tokenizer@0.6.0" = pkgs."css-selector-tokenizer@0.6.0";
              "cssnano@3.10.0" = pkgs."cssnano@3.10.0";
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "lodash.camelcase@3.0.1" = pkgs."lodash.camelcase@3.0.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-modules-extract-imports@1.0.1" = pkgs."postcss-modules-extract-imports@1.0.1";
              "postcss-modules-local-by-default@1.1.1" = pkgs."postcss-modules-local-by-default@1.1.1";
              "postcss-modules-scope@1.0.2" = pkgs."postcss-modules-scope@1.0.2";
              "postcss-modules-values@1.2.2" = pkgs."postcss-modules-values@1.2.2";
              "source-list-map@0.1.7" = pkgs."source-list-map@0.1.7";
            };
            seen = [ "css-loader@0.25.0" ];
            };
  "css-modules-loader-core@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "css-modules-loader-core";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-modules-loader-core/-/css-modules-loader-core-1.0.1.tgz";
              sha1 = "94e3eec9bc8174df0f974641f3e0d0550497f694";
            };
            dependencies = {
              "icss-replace-symbols@1.0.2" = pkgs."icss-replace-symbols@1.0.2";
              "postcss@5.1.2" = pkgs."postcss@5.1.2";
              "postcss-modules-extract-imports@1.0.0" = pkgs."postcss-modules-extract-imports@1.0.0";
              "postcss-modules-local-by-default@1.1.1" = pkgs."postcss-modules-local-by-default@1.1.1";
              "postcss-modules-scope@1.0.2" = pkgs."postcss-modules-scope@1.0.2";
              "postcss-modules-values@1.2.2" = pkgs."postcss-modules-values@1.2.2";
            };
            seen = [ "css-modules-loader-core@1.0.1" ];
            };
  "css-modules-require-hook@4.0.6" = nodeEnv.buildYarnPackage {
            packageName = "css-modules-require-hook";
            version = "4.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-modules-require-hook/-/css-modules-require-hook-4.0.6.tgz";
              sha1 = "70a03b0ca3784e36e5a1dc1aa82ba068d53248bf";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "generic-names@1.0.2" = pkgs."generic-names@1.0.2";
              "glob-to-regexp@0.1.0" = pkgs."glob-to-regexp@0.1.0";
              "icss-replace-symbols@1.0.2" = pkgs."icss-replace-symbols@1.0.2";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-modules-extract-imports@1.0.1" = pkgs."postcss-modules-extract-imports@1.0.1";
              "postcss-modules-local-by-default@1.1.1" = pkgs."postcss-modules-local-by-default@1.1.1";
              "postcss-modules-parser@1.1.0" = pkgs."postcss-modules-parser@1.1.0";
              "postcss-modules-scope@1.0.2" = pkgs."postcss-modules-scope@1.0.2";
              "postcss-modules-values@1.2.2" = pkgs."postcss-modules-values@1.2.2";
              "seekout@1.0.2" = pkgs."seekout@1.0.2";
            };
            seen = [ "css-modules-require-hook@4.0.6" ];
            };
  "css-parse@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "css-parse";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-parse/-/css-parse-2.0.0.tgz";
              sha1 = "a468ee667c16d81ccf05c58c38d2a97c780dbfd4";
            };
            dependencies = {
              "css@2.2.1" = pkgs."css@2.2.1";
            };
            seen = [ "css-parse@2.0.0" ];
            };
  "css-selector-tokenizer@0.7.0" = nodeEnv.buildYarnPackage {
            packageName = "css-selector-tokenizer";
            version = "0.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-selector-tokenizer/-/css-selector-tokenizer-0.7.0.tgz";
              sha1 = "e6988474ae8c953477bf5e7efecfceccd9cf4c86";
            };
            dependencies = {
              "cssesc@0.1.0" = pkgs."cssesc@0.1.0";
              "fastparse@1.1.1" = pkgs."fastparse@1.1.1";
              "regexpu-core@1.0.0" = pkgs."regexpu-core@1.0.0";
            };
            seen = [ "css-selector-tokenizer@0.7.0" ];
            };
  "css-value@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "css-value";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-value/-/css-value-0.0.1.tgz";
              sha1 = "5efd6c2eea5ea1fd6b6ac57ec0427b18452424ea";
            };
            dependencies = {};
            seen = [ "css-value@0.0.1" ];
            };
  "css@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "css";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css/-/css-2.2.1.tgz";
              sha1 = "73a4c81de85db664d4ee674f7d47085e3b2d55dc";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "source-map@0.1.43" = pkgs."source-map@0.1.43";
              "source-map-resolve@0.3.1" = pkgs."source-map-resolve@0.3.1";
              "urix@0.1.0" = pkgs."urix@0.1.0";
            };
            seen = [ "css@2.2.1" ];
            };
  "cssesc@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "cssesc";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cssesc/-/cssesc-0.1.0.tgz";
              sha1 = "c814903e45623371a0477b40109aaafbeeaddbb4";
            };
            dependencies = {};
            seen = [ "cssesc@0.1.0" ];
            };
  "cssnano@3.10.0" = nodeEnv.buildYarnPackage {
            packageName = "cssnano";
            version = "3.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cssnano/-/cssnano-3.10.0.tgz";
              sha1 = "4f38f6cea2b9b17fa01490f23f1dc68ea65c1c38";
            };
            dependencies = {
              "autoprefixer@6.6.1" = pkgs."autoprefixer@6.6.1";
              "decamelize@1.2.0" = pkgs."decamelize@1.2.0";
              "defined@1.0.0" = pkgs."defined@1.0.0";
              "has@1.0.1" = pkgs."has@1.0.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-calc@5.3.1" = pkgs."postcss-calc@5.3.1";
              "postcss-colormin@2.2.1" = pkgs."postcss-colormin@2.2.1";
              "postcss-convert-values@2.6.0" = pkgs."postcss-convert-values@2.6.0";
              "postcss-discard-comments@2.0.4" = pkgs."postcss-discard-comments@2.0.4";
              "postcss-discard-duplicates@2.0.2" = pkgs."postcss-discard-duplicates@2.0.2";
              "postcss-discard-empty@2.1.0" = pkgs."postcss-discard-empty@2.1.0";
              "postcss-discard-overridden@0.1.1" = pkgs."postcss-discard-overridden@0.1.1";
              "postcss-discard-unused@2.2.3" = pkgs."postcss-discard-unused@2.2.3";
              "postcss-filter-plugins@2.0.2" = pkgs."postcss-filter-plugins@2.0.2";
              "postcss-merge-idents@2.1.7" = pkgs."postcss-merge-idents@2.1.7";
              "postcss-merge-longhand@2.0.1" = pkgs."postcss-merge-longhand@2.0.1";
              "postcss-merge-rules@2.1.1" = pkgs."postcss-merge-rules@2.1.1";
              "postcss-minify-font-values@1.0.5" = pkgs."postcss-minify-font-values@1.0.5";
              "postcss-minify-gradients@1.0.5" = pkgs."postcss-minify-gradients@1.0.5";
              "postcss-minify-params@1.2.2" = pkgs."postcss-minify-params@1.2.2";
              "postcss-minify-selectors@2.1.1" = pkgs."postcss-minify-selectors@2.1.1";
              "postcss-normalize-charset@1.1.1" = pkgs."postcss-normalize-charset@1.1.1";
              "postcss-normalize-url@3.0.8" = pkgs."postcss-normalize-url@3.0.8";
              "postcss-ordered-values@2.2.2" = pkgs."postcss-ordered-values@2.2.2";
              "postcss-reduce-idents@2.4.0" = pkgs."postcss-reduce-idents@2.4.0";
              "postcss-reduce-initial@1.0.1" = pkgs."postcss-reduce-initial@1.0.1";
              "postcss-reduce-transforms@1.0.4" = pkgs."postcss-reduce-transforms@1.0.4";
              "postcss-svgo@2.1.6" = pkgs."postcss-svgo@2.1.6";
              "postcss-unique-selectors@2.0.2" = pkgs."postcss-unique-selectors@2.0.2";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
              "postcss-zindex@2.2.0" = pkgs."postcss-zindex@2.2.0";
            };
            seen = [ "cssnano@3.10.0" ];
            };
  "csso@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "csso";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/csso/-/csso-2.2.1.tgz";
              sha1 = "51fbb5347e50e81e6ed51668a48490ae6fe2afe2";
            };
            dependencies = {
              "clap@1.1.2" = pkgs."clap@1.1.2";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "csso@2.2.1" ];
            };
  "cssom@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "cssom";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cssom/-/cssom-0.3.1.tgz";
              sha1 = "c9e37ef2490e64f6d1baa10fda852257082c25d3";
            };
            dependencies = {};
            seen = [ "cssom@0.3.1" ];
            };
  "cssstyle@0.2.37" = nodeEnv.buildYarnPackage {
            packageName = "cssstyle";
            version = "0.2.37";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cssstyle/-/cssstyle-0.2.37.tgz";
              sha1 = "541097234cb2513c83ceed3acddc27ff27987d54";
            };
            dependencies = {
              "cssom@0.3.1" = pkgs."cssom@0.3.1";
            };
            seen = [ "cssstyle@0.2.37" ];
            };
  "ctype@0.5.3" = nodeEnv.buildYarnPackage {
            packageName = "ctype";
            version = "0.5.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ctype/-/ctype-0.5.3.tgz";
              sha1 = "82c18c2461f74114ef16c135224ad0b9144ca12f";
            };
            dependencies = {};
            seen = [ "ctype@0.5.3" ];
            };
  "cucumber-expressions@5.0.13" = nodeEnv.buildYarnPackage {
            packageName = "cucumber-expressions";
            version = "5.0.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cucumber-expressions/-/cucumber-expressions-5.0.13.tgz";
              sha1 = "f174597dae6d2f0121294ac2ea65443249cf1587";
            };
            dependencies = {
              "becke-ch--regex--s0-0-v1--base--pl--lib@1.2.0" = pkgs."becke-ch--regex--s0-0-v1--base--pl--lib@1.2.0";
            };
            seen = [ "cucumber-expressions@5.0.13" ];
            };
  "cucumber-tag-expressions@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "cucumber-tag-expressions";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cucumber-tag-expressions/-/cucumber-tag-expressions-1.1.1.tgz";
              sha1 = "7f5c7b70009bc2b666591bfe64854578bedee85a";
            };
            dependencies = {};
            seen = [ "cucumber-tag-expressions@1.1.1" ];
            };
  "cucumber@3.1.0" = nodeEnv.buildYarnPackage {
            packageName = "cucumber";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cucumber/-/cucumber-3.1.0.tgz";
              sha1 = "13886bce87e9018ecb57999bb00c03a1bfa58d5d";
            };
            dependencies = {
              "assertion-error-formatter@2.0.1" = pkgs."assertion-error-formatter@2.0.1";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "bluebird@3.5.1" = pkgs."bluebird@3.5.1";
              "cli-table@0.3.1" = pkgs."cli-table@0.3.1";
              "colors@1.1.2" = pkgs."colors@1.1.2";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "cucumber-expressions@5.0.13" = pkgs."cucumber-expressions@5.0.13";
              "cucumber-tag-expressions@1.1.1" = pkgs."cucumber-tag-expressions@1.1.1";
              "duration@0.2.0" = pkgs."duration@0.2.0";
              "escape-string-regexp@1.0.5" = pkgs."escape-string-regexp@1.0.5";
              "figures@2.0.0" = pkgs."figures@2.0.0";
              "gherkin@5.0.0" = pkgs."gherkin@5.0.0";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "indent-string@3.2.0" = pkgs."indent-string@3.2.0";
              "is-generator@1.0.3" = pkgs."is-generator@1.0.3";
              "is-stream@1.1.0" = pkgs."is-stream@1.1.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "mz@2.7.0" = pkgs."mz@2.7.0";
              "progress@2.0.0" = pkgs."progress@2.0.0";
              "resolve@1.5.0" = pkgs."resolve@1.5.0";
              "stack-chain@2.0.0" = pkgs."stack-chain@2.0.0";
              "stacktrace-js@2.0.0" = pkgs."stacktrace-js@2.0.0";
              "string-argv@0.0.2" = pkgs."string-argv@0.0.2";
              "title-case@2.1.1" = pkgs."title-case@2.1.1";
              "util-arity@1.1.0" = pkgs."util-arity@1.1.0";
              "verror@1.10.0" = pkgs."verror@1.10.0";
            };
            seen = [ "cucumber@3.1.0" ];
            };
  "cuint@0.2.2" = nodeEnv.buildYarnPackage {
            packageName = "cuint";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cuint/-/cuint-0.2.2.tgz";
              sha1 = "408086d409550c2631155619e9fa7bcadc3b991b";
            };
            dependencies = {};
            seen = [ "cuint@0.2.2" ];
            };
  "currently-unhandled@0.4.1" = nodeEnv.buildYarnPackage {
            packageName = "currently-unhandled";
            version = "0.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/currently-unhandled/-/currently-unhandled-0.4.1.tgz";
              sha1 = "988df33feab191ef799a61369dd76c17adf957ea";
            };
            dependencies = {
              "array-find-index@1.0.2" = pkgs."array-find-index@1.0.2";
            };
            seen = [ "currently-unhandled@0.4.1" ];
            };
  "cycle@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "cycle";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cycle/-/cycle-1.0.3.tgz";
              sha1 = "21e80b2be8580f98b468f379430662b046c34ad2";
            };
            dependencies = {};
            seen = [ "cycle@1.0.3" ];
            };
  "d3-array@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "d3-array";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-array/-/d3-array-1.0.2.tgz";
              sha1 = "174237bf356a852fadd6af87743d928631de7655";
            };
            dependencies = {};
            seen = [ "d3-array@1.0.2" ];
            };
  "d3-collection@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "d3-collection";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-collection/-/d3-collection-1.0.2.tgz";
              sha1 = "df5acb5400443e9eabe9c1379896c67e52426b39";
            };
            dependencies = {};
            seen = [ "d3-collection@1.0.2" ];
            };
  "d3-color@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "d3-color";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-color/-/d3-color-1.0.2.tgz";
              sha1 = "83cb4b3a9474e40795f009d97e97a15649830bbc";
            };
            dependencies = {};
            seen = [ "d3-color@1.0.2" ];
            };
  "d3-format@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "d3-format";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-format/-/d3-format-1.0.2.tgz";
              sha1 = "138618320b4bbeb43b5c0ff30519079fbbd7375e";
            };
            dependencies = {};
            seen = [ "d3-format@1.0.2" ];
            };
  "d3-interpolate@1.1.6" = nodeEnv.buildYarnPackage {
            packageName = "d3-interpolate";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-interpolate/-/d3-interpolate-1.1.6.tgz";
              sha1 = "2cf395ae2381804df08aa1bf766b7f97b5f68fb6";
            };
            dependencies = {
              "d3-color@1.0.2" = pkgs."d3-color@1.0.2";
            };
            seen = [ "d3-interpolate@1.1.6" ];
            };
  "d3-path@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "d3-path";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-path/-/d3-path-1.0.3.tgz";
              sha1 = "60103d0dea9a6cd6ca58de86c6d56724002d3fde";
            };
            dependencies = {};
            seen = [ "d3-path@1.0.3" ];
            };
  "d3-scale@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "d3-scale";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-scale/-/d3-scale-1.0.4.tgz";
              sha1 = "50e28bf6a193b706745528515ed9b3d44205a033";
            };
            dependencies = {
              "d3-array@1.0.2" = pkgs."d3-array@1.0.2";
              "d3-collection@1.0.2" = pkgs."d3-collection@1.0.2";
              "d3-color@1.0.2" = pkgs."d3-color@1.0.2";
              "d3-format@1.0.2" = pkgs."d3-format@1.0.2";
              "d3-interpolate@1.1.2" = pkgs."d3-interpolate@1.1.2";
              "d3-time@1.0.4" = pkgs."d3-time@1.0.4";
              "d3-time-format@2.0.3" = pkgs."d3-time-format@2.0.3";
            };
            seen = [ "d3-scale@1.0.4" ];
            };
  "d3-shape@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "d3-shape";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-shape/-/d3-shape-1.0.4.tgz";
              sha1 = "145ee100ccbec42f8e3f1996cd05c786f79fe1c6";
            };
            dependencies = {
              "d3-path@1.0.3" = pkgs."d3-path@1.0.3";
            };
            seen = [ "d3-shape@1.0.4" ];
            };
  "d3-time-format@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "d3-time-format";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-time-format/-/d3-time-format-2.0.3.tgz";
              sha1 = "3241569b74ddc9c42e0689c0e8a903579fd6280a";
            };
            dependencies = {
              "d3-time@1.0.4" = pkgs."d3-time@1.0.4";
            };
            seen = [ "d3-time-format@2.0.3" ];
            };
  "d3-time@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "d3-time";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-time/-/d3-time-1.0.4.tgz";
              sha1 = "2ceba09a76b7450c992a1ded4e10fc6195e69649";
            };
            dependencies = {};
            seen = [ "d3-time@1.0.4" ];
            };
  "d@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "d";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d/-/d-0.1.1.tgz";
              sha1 = "da184c535d18d8ee7ba2aa229b914009fae11309";
            };
            dependencies = {
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
            };
            seen = [ "d@0.1.1" ];
            };
  "damerau-levenshtein@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "damerau-levenshtein";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/damerau-levenshtein/-/damerau-levenshtein-1.0.3.tgz";
              sha1 = "ae4f4ce0b62acae10ff63a01bb08f652f5213af2";
            };
            dependencies = {};
            seen = [ "damerau-levenshtein@1.0.3" ];
            };
  "dashdash@1.14.1" = nodeEnv.buildYarnPackage {
            packageName = "dashdash";
            version = "1.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dashdash/-/dashdash-1.14.1.tgz";
              sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
            };
            dependencies = {
              "assert-plus@1.0.0" = pkgs."assert-plus@1.0.0";
            };
            seen = [ "dashdash@1.14.1" ];
            };
  "date-fns@1.29.0" = nodeEnv.buildYarnPackage {
            packageName = "date-fns";
            version = "1.29.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/date-fns/-/date-fns-1.29.0.tgz";
              sha1 = "12e609cdcb935127311d04d33334e2960a2a54e6";
            };
            dependencies = {};
            seen = [ "date-fns@1.29.0" ];
            };
  "date-now@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "date-now";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/date-now/-/date-now-0.1.4.tgz";
              sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
            };
            dependencies = {};
            seen = [ "date-now@0.1.4" ];
            };
  "dateformat@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "dateformat";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dateformat/-/dateformat-2.0.0.tgz";
              sha1 = "2743e3abb5c3fc2462e527dca445e04e9f4dee17";
            };
            dependencies = {};
            seen = [ "dateformat@2.0.0" ];
            };
  "debug@3.1.0" = nodeEnv.buildYarnPackage {
            packageName = "debug";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-3.1.0.tgz";
              sha1 = "5bb5a0672628b64149566ba16819e61518c67261";
            };
            dependencies = {
              "ms@2.0.0" = pkgs."ms@2.0.0";
            };
            seen = [ "debug@3.1.0" ];
            };
  "decamelize@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "decamelize";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decamelize/-/decamelize-1.2.0.tgz";
              sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
            };
            dependencies = {};
            seen = [ "decamelize@1.2.0" ];
            };
  "decode-uri-component@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "decode-uri-component";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decode-uri-component/-/decode-uri-component-0.2.0.tgz";
              sha1 = "eb3913333458775cb84cd1a1fae062106bb87545";
            };
            dependencies = {};
            seen = [ "decode-uri-component@0.2.0" ];
            };
  "decompress-response@3.3.0" = nodeEnv.buildYarnPackage {
            packageName = "decompress-response";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-response/-/decompress-response-3.3.0.tgz";
              sha1 = "80a4dd323748384bfa248083622aedec982adff3";
            };
            dependencies = {
              "mimic-response@1.0.0" = pkgs."mimic-response@1.0.0";
            };
            seen = [ "decompress-response@3.3.0" ];
            };
  "decompress-tar@4.1.1" = nodeEnv.buildYarnPackage {
            packageName = "decompress-tar";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-tar/-/decompress-tar-4.1.1.tgz";
              sha1 = "718cbd3fcb16209716e70a26b84e7ba4592e5af1";
            };
            dependencies = {
              "file-type@5.2.0" = pkgs."file-type@5.2.0";
              "is-stream@1.1.0" = pkgs."is-stream@1.1.0";
              "tar-stream@1.5.5" = pkgs."tar-stream@1.5.5";
            };
            seen = [ "decompress-tar@4.1.1" ];
            };
  "decompress-tarbz2@4.1.1" = nodeEnv.buildYarnPackage {
            packageName = "decompress-tarbz2";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-tarbz2/-/decompress-tarbz2-4.1.1.tgz";
              sha1 = "3082a5b880ea4043816349f378b56c516be1a39b";
            };
            dependencies = {
              "decompress-tar@4.1.1" = pkgs."decompress-tar@4.1.1";
              "file-type@6.2.0" = pkgs."file-type@6.2.0";
              "is-stream@1.1.0" = pkgs."is-stream@1.1.0";
              "seek-bzip@1.0.5" = pkgs."seek-bzip@1.0.5";
              "unbzip2-stream@1.2.5" = pkgs."unbzip2-stream@1.2.5";
            };
            seen = [ "decompress-tarbz2@4.1.1" ];
            };
  "decompress-targz@4.1.1" = nodeEnv.buildYarnPackage {
            packageName = "decompress-targz";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-targz/-/decompress-targz-4.1.1.tgz";
              sha1 = "c09bc35c4d11f3de09f2d2da53e9de23e7ce1eee";
            };
            dependencies = {
              "decompress-tar@4.1.1" = pkgs."decompress-tar@4.1.1";
              "file-type@5.2.0" = pkgs."file-type@5.2.0";
              "is-stream@1.1.0" = pkgs."is-stream@1.1.0";
            };
            seen = [ "decompress-targz@4.1.1" ];
            };
  "decompress-unzip@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "decompress-unzip";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-unzip/-/decompress-unzip-4.0.1.tgz";
              sha1 = "deaaccdfd14aeaf85578f733ae8210f9b4848f69";
            };
            dependencies = {
              "file-type@3.9.0" = pkgs."file-type@3.9.0";
              "get-stream@2.3.1" = pkgs."get-stream@2.3.1";
              "pify@2.3.0" = pkgs."pify@2.3.0";
              "yauzl@2.9.1" = pkgs."yauzl@2.9.1";
            };
            seen = [ "decompress-unzip@4.0.1" ];
            };
  "decompress-zip@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "decompress-zip";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-zip/-/decompress-zip-0.3.0.tgz";
              sha1 = "ae3bcb7e34c65879adfe77e19c30f86602b4bdb0";
            };
            dependencies = {
              "binary@0.3.0" = pkgs."binary@0.3.0";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "mkpath@0.1.0" = pkgs."mkpath@0.1.0";
              "nopt@3.0.6" = pkgs."nopt@3.0.6";
              "q@1.4.1" = pkgs."q@1.4.1";
              "readable-stream@1.1.14" = pkgs."readable-stream@1.1.14";
              "touch@0.0.3" = pkgs."touch@0.0.3";
            };
            seen = [ "decompress-zip@0.3.0" ];
            };
  "decompress@4.2.0" = nodeEnv.buildYarnPackage {
            packageName = "decompress";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress/-/decompress-4.2.0.tgz";
              sha1 = "7aedd85427e5a92dacfe55674a7c505e96d01f9d";
            };
            dependencies = {
              "decompress-tar@4.1.1" = pkgs."decompress-tar@4.1.1";
              "decompress-tarbz2@4.1.1" = pkgs."decompress-tarbz2@4.1.1";
              "decompress-targz@4.1.1" = pkgs."decompress-targz@4.1.1";
              "decompress-unzip@4.0.1" = pkgs."decompress-unzip@4.0.1";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "make-dir@1.2.0" = pkgs."make-dir@1.2.0";
              "pify@2.3.0" = pkgs."pify@2.3.0";
              "strip-dirs@2.1.0" = pkgs."strip-dirs@2.1.0";
            };
            seen = [ "decompress@4.2.0" ];
            };
  "deep-eql@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "deep-eql";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-eql/-/deep-eql-3.0.1.tgz";
              sha1 = "dfc9404400ad1c8fe023e7da1df1c147c4b444df";
            };
            dependencies = {
              "type-detect@4.0.8" = pkgs."type-detect@4.0.8";
            };
            seen = [ "deep-eql@3.0.1" ];
            };
  "deep-equal@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "deep-equal";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-equal/-/deep-equal-1.0.1.tgz";
              sha1 = "f5d260292b660e084eff4cdbc9f08ad3247448b5";
            };
            dependencies = {};
            seen = [ "deep-equal@1.0.1" ];
            };
  "deep-extend@0.4.1" = nodeEnv.buildYarnPackage {
            packageName = "deep-extend";
            version = "0.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-extend/-/deep-extend-0.4.1.tgz";
              sha1 = "efe4113d08085f4e6f9687759810f807469e2253";
            };
            dependencies = {};
            seen = [ "deep-extend@0.4.1" ];
            };
  "deep-is@0.1.3" = nodeEnv.buildYarnPackage {
            packageName = "deep-is";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-is/-/deep-is-0.1.3.tgz";
              sha1 = "b369d6fb5dbc13eecf524f91b070feedc357cf34";
            };
            dependencies = {};
            seen = [ "deep-is@0.1.3" ];
            };
  "deepmerge@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "deepmerge";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deepmerge/-/deepmerge-2.0.1.tgz";
              sha1 = "25c1c24f110fb914f80001b925264dd77f3f4312";
            };
            dependencies = {};
            seen = [ "deepmerge@2.0.1" ];
            };
  "define-properties@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "define-properties";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/define-properties/-/define-properties-1.1.2.tgz";
              sha1 = "83a73f2fea569898fb737193c8f873caf6d45c94";
            };
            dependencies = {
              "foreach@2.0.5" = pkgs."foreach@2.0.5";
              "object-keys@1.0.11" = pkgs."object-keys@1.0.11";
            };
            seen = [ "define-properties@1.1.2" ];
            };
  "defined@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "defined";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/defined/-/defined-1.0.0.tgz";
              sha1 = "c98d9bcef75674188e110969151199e39b1fa693";
            };
            dependencies = {};
            seen = [ "defined@1.0.0" ];
            };
  "del@2.2.2" = nodeEnv.buildYarnPackage {
            packageName = "del";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/del/-/del-2.2.2.tgz";
              sha1 = "c12c981d067846c84bcaf862cff930d907ffd1a8";
            };
            dependencies = {
              "globby@5.0.0" = pkgs."globby@5.0.0";
              "is-path-cwd@1.0.0" = pkgs."is-path-cwd@1.0.0";
              "is-path-in-cwd@1.0.0" = pkgs."is-path-in-cwd@1.0.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "pify@2.3.0" = pkgs."pify@2.3.0";
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
            };
            seen = [ "del@2.2.2" ];
            };
  "delayed-stream@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "delayed-stream";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
              sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
            };
            dependencies = {};
            seen = [ "delayed-stream@1.0.0" ];
            };
  "delegates@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "delegates";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz";
              sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
            };
            dependencies = {};
            seen = [ "delegates@1.0.0" ];
            };
  "depd@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "depd";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/depd/-/depd-1.1.2.tgz";
              sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
            };
            dependencies = {};
            seen = [ "depd@1.1.2" ];
            };
  "des.js@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "des.js";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/des.js/-/des.js-1.0.0.tgz";
              sha1 = "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "minimalistic-assert@1.0.0" = pkgs."minimalistic-assert@1.0.0";
            };
            seen = [ "des.js@1.0.0" ];
            };
  "destroy@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "destroy";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/destroy/-/destroy-1.0.4.tgz";
              sha1 = "978857442c44749e4206613e37946205826abd80";
            };
            dependencies = {};
            seen = [ "destroy@1.0.4" ];
            };
  "detect-file@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "detect-file";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/detect-file/-/detect-file-0.1.0.tgz";
              sha1 = "4935dedfd9488648e006b0129566e9386711ea63";
            };
            dependencies = {
              "fs-exists-sync@0.1.0" = pkgs."fs-exists-sync@0.1.0";
            };
            seen = [ "detect-file@0.1.0" ];
            };
  "detect-indent@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "detect-indent";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/detect-indent/-/detect-indent-4.0.0.tgz";
              sha1 = "f76d064352cdf43a1cb6ce619c4ee3a9475de208";
            };
            dependencies = {
              "repeating@2.0.1" = pkgs."repeating@2.0.1";
            };
            seen = [ "detect-indent@4.0.0" ];
            };
  "dev-null@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "dev-null";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dev-null/-/dev-null-0.1.1.tgz";
              sha1 = "5a205ce3c2b2ef77b6238d6ba179eb74c6a0e818";
            };
            dependencies = {};
            seen = [ "dev-null@0.1.1" ];
            };
  "devtron@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "devtron";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/devtron/-/devtron-1.4.0.tgz";
              sha1 = "b5e748bd6e95bbe70bfcc68aae6fe696119441e1";
            };
            dependencies = {
              "accessibility-developer-tools@2.11.0" = pkgs."accessibility-developer-tools@2.11.0";
              "highlight.js@9.9.0" = pkgs."highlight.js@9.9.0";
              "humanize-plus@1.8.2" = pkgs."humanize-plus@1.8.2";
            };
            seen = [ "devtron@1.4.0" ];
            };
  "diff@3.5.0" = nodeEnv.buildYarnPackage {
            packageName = "diff";
            version = "3.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/diff/-/diff-3.5.0.tgz";
              sha1 = "800c0dd1e0a8bfbc95835c202ad220fe317e5a12";
            };
            dependencies = {};
            seen = [ "diff@3.5.0" ];
            };
  "diffie-hellman@5.0.2" = nodeEnv.buildYarnPackage {
            packageName = "diffie-hellman";
            version = "5.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/diffie-hellman/-/diffie-hellman-5.0.2.tgz";
              sha1 = "b5835739270cfe26acf632099fded2a07f209e5e";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "miller-rabin@4.0.0" = pkgs."miller-rabin@4.0.0";
              "randombytes@2.0.3" = pkgs."randombytes@2.0.3";
            };
            seen = [ "diffie-hellman@5.0.2" ];
            };
  "doctrine@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "doctrine";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/doctrine/-/doctrine-2.0.0.tgz";
              sha1 = "c73d8d2909d22291e1a007a395804da8b665fe63";
            };
            dependencies = {
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
            };
            seen = [ "doctrine@2.0.0" ];
            };
  "dom-helpers@3.3.1" = nodeEnv.buildYarnPackage {
            packageName = "dom-helpers";
            version = "3.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dom-helpers/-/dom-helpers-3.3.1.tgz";
              sha1 = "fc1a4e15ffdf60ddde03a480a9c0fece821dd4a6";
            };
            dependencies = {};
            seen = [ "dom-helpers@3.3.1" ];
            };
  "dom-walk@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "dom-walk";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dom-walk/-/dom-walk-0.1.1.tgz";
              sha1 = "672226dc74c8f799ad35307df936aba11acd6018";
            };
            dependencies = {};
            seen = [ "dom-walk@0.1.1" ];
            };
  "domain-browser@1.1.7" = nodeEnv.buildYarnPackage {
            packageName = "domain-browser";
            version = "1.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/domain-browser/-/domain-browser-1.1.7.tgz";
              sha1 = "867aa4b093faa05f1de08c06f4d7b21fdf8698bc";
            };
            dependencies = {};
            seen = [ "domain-browser@1.1.7" ];
            };
  "dot-prop@4.2.0" = nodeEnv.buildYarnPackage {
            packageName = "dot-prop";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dot-prop/-/dot-prop-4.2.0.tgz";
              sha1 = "1f19e0c2e1aa0e32797c49799f2837ac6af69c57";
            };
            dependencies = {
              "is-obj@1.0.1" = pkgs."is-obj@1.0.1";
            };
            seen = [ "dot-prop@4.2.0" ];
            };
  "duplexer2@0.0.2" = nodeEnv.buildYarnPackage {
            packageName = "duplexer2";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexer2/-/duplexer2-0.0.2.tgz";
              sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
            };
            dependencies = {
              "readable-stream@1.1.14" = pkgs."readable-stream@1.1.14";
            };
            seen = [ "duplexer2@0.0.2" ];
            };
  "duplexer3@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "duplexer3";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexer3/-/duplexer3-0.1.4.tgz";
              sha1 = "ee01dd1cac0ed3cbc7fdbea37dc0a8f1ce002ce2";
            };
            dependencies = {};
            seen = [ "duplexer3@0.1.4" ];
            };
  "duplexer@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "duplexer";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexer/-/duplexer-0.1.1.tgz";
              sha1 = "ace6ff808c1ce66b57d1ebf97977acb02334cfc1";
            };
            dependencies = {};
            seen = [ "duplexer@0.1.1" ];
            };
  "duplexify@3.5.0" = nodeEnv.buildYarnPackage {
            packageName = "duplexify";
            version = "3.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexify/-/duplexify-3.5.0.tgz";
              sha1 = "1aa773002e1578457e9d9d4a50b0ccaaebcbd604";
            };
            dependencies = {
              "end-of-stream@1.0.0" = pkgs."end-of-stream@1.0.0";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "stream-shift@1.0.0" = pkgs."stream-shift@1.0.0";
            };
            seen = [ "duplexify@3.5.0" ];
            };
  "duration@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "duration";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duration/-/duration-0.2.0.tgz";
              sha1 = "5f9c4dfaafff655de986112efe25c5978dd85146";
            };
            dependencies = {
              "d@0.1.1" = pkgs."d@0.1.1";
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
            };
            seen = [ "duration@0.2.0" ];
            };
  "ecc-jsbn@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "ecc-jsbn";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
              sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
            };
            dependencies = {
              "jsbn@0.1.0" = pkgs."jsbn@0.1.0";
            };
            seen = [ "ecc-jsbn@0.1.1" ];
            };
  "ee-first@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "ee-first";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ee-first/-/ee-first-1.1.1.tgz";
              sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
            };
            dependencies = {};
            seen = [ "ee-first@1.1.1" ];
            };
  "ejs@2.5.7" = nodeEnv.buildYarnPackage {
            packageName = "ejs";
            version = "2.5.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ejs/-/ejs-2.5.7.tgz";
              sha1 = "cc872c168880ae3c7189762fd5ffc00896c9518a";
            };
            dependencies = {};
            seen = [ "ejs@2.5.7" ];
            };
  "electron-chromedriver@1.7.1" = nodeEnv.buildYarnPackage {
            packageName = "electron-chromedriver";
            version = "1.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-chromedriver/-/electron-chromedriver-1.7.1.tgz";
              sha1 = "008c97976007aa4eb18491ee095e94d17ee47610";
            };
            dependencies = {
              "electron-download@4.1.0" = pkgs."electron-download@4.1.0";
              "extract-zip@1.6.6" = pkgs."extract-zip@1.6.6";
            };
            seen = [ "electron-chromedriver@1.7.1" ];
            };
  "electron-debug@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "electron-debug";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-debug/-/electron-debug-1.1.0.tgz";
              sha1 = "050a9c3f906fffc2492510cf8ac31d0f32a579e1";
            };
            dependencies = {
              "electron-is-dev@0.1.2" = pkgs."electron-is-dev@0.1.2";
              "electron-localshortcut@0.6.1" = pkgs."electron-localshortcut@0.6.1";
            };
            seen = [ "electron-debug@1.1.0" ];
            };
  "electron-devtools-installer@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "electron-devtools-installer";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-devtools-installer/-/electron-devtools-installer-2.2.1.tgz";
              sha1 = "0beb73ccbf65cbc4d09e706cebda638f839b8c55";
            };
            dependencies = {
              "7zip@0.0.6" = pkgs."7zip@0.0.6";
              "cross-unzip@0.0.2" = pkgs."cross-unzip@0.0.2";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
              "semver@5.3.0" = pkgs."semver@5.3.0";
            };
            seen = [ "electron-devtools-installer@2.2.1" ];
            };
  "electron-download@4.1.0" = nodeEnv.buildYarnPackage {
            packageName = "electron-download";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-download/-/electron-download-4.1.0.tgz";
              sha1 = "bf932c746f2f87ffcc09d1dd472f2ff6b9187845";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "env-paths@1.0.0" = pkgs."env-paths@1.0.0";
              "fs-extra@2.1.2" = pkgs."fs-extra@2.1.2";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "nugget@2.0.1" = pkgs."nugget@2.0.1";
              "path-exists@3.0.0" = pkgs."path-exists@3.0.0";
              "rc@1.1.6" = pkgs."rc@1.1.6";
              "semver@5.3.0" = pkgs."semver@5.3.0";
              "sumchecker@2.0.2" = pkgs."sumchecker@2.0.2";
            };
            seen = [ "electron-download@4.1.0" ];
            };
  "electron-is-dev@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "electron-is-dev";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-is-dev/-/electron-is-dev-0.1.2.tgz";
              sha1 = "8a1043e32b3a1da1c3f553dce28ce764246167e3";
            };
            dependencies = {};
            seen = [ "electron-is-dev@0.1.2" ];
            };
  "electron-localshortcut@0.6.1" = nodeEnv.buildYarnPackage {
            packageName = "electron-localshortcut";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-localshortcut/-/electron-localshortcut-0.6.1.tgz";
              sha1 = "c4e268c38a6e42f40de5618fc906d1ed608f11aa";
            };
            dependencies = {};
            seen = [ "electron-localshortcut@0.6.1" ];
            };
  "electron-log@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "electron-log";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-log/-/electron-log-2.0.2.tgz";
              sha1 = "ea7c3d584da1e02df48e68f16fb750b61e3ab05b";
            };
            dependencies = {};
            seen = [ "electron-log@2.0.2" ];
            };
  "electron-osx-sign@0.4.2" = nodeEnv.buildYarnPackage {
            packageName = "electron-osx-sign";
            version = "0.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-osx-sign/-/electron-osx-sign-0.4.2.tgz";
              sha1 = "518e3895a63d30c0d17520ad49c66a23d66a0cd3";
            };
            dependencies = {
              "bluebird@3.4.7" = pkgs."bluebird@3.4.7";
              "compare-version@0.1.2" = pkgs."compare-version@0.1.2";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "isbinaryfile@3.0.2" = pkgs."isbinaryfile@3.0.2";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "plist@2.0.1" = pkgs."plist@2.0.1";
              "tempfile@1.1.1" = pkgs."tempfile@1.1.1";
            };
            seen = [ "electron-osx-sign@0.4.2" ];
            };
  "electron-packager@9.1.0" = nodeEnv.buildYarnPackage {
            packageName = "electron-packager";
            version = "9.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-packager/-/electron-packager-9.1.0.tgz";
              sha1 = "4b2ef9f8343f5de431182d82929d9c06c0d51a1d";
            };
            dependencies = {
              "asar@0.13.1" = pkgs."asar@0.13.1";
              "camelize@1.0.0" = pkgs."camelize@1.0.0";
              "debug@3.1.0" = pkgs."debug@3.1.0";
              "electron-download@4.1.0" = pkgs."electron-download@4.1.0";
              "electron-osx-sign@0.4.2" = pkgs."electron-osx-sign@0.4.2";
              "extract-zip@1.6.0" = pkgs."extract-zip@1.6.0";
              "fs-extra@4.0.3" = pkgs."fs-extra@4.0.3";
              "get-package-info@1.0.0" = pkgs."get-package-info@1.0.0";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "parse-author@2.0.0" = pkgs."parse-author@2.0.0";
              "pify@3.0.0" = pkgs."pify@3.0.0";
              "plist@2.0.1" = pkgs."plist@2.0.1";
              "pruner@0.0.7" = pkgs."pruner@0.0.7";
              "rcedit@0.9.0" = pkgs."rcedit@0.9.0";
              "resolve@1.2.0" = pkgs."resolve@1.2.0";
              "run-series@1.1.4" = pkgs."run-series@1.1.4";
              "sanitize-filename@1.6.1" = pkgs."sanitize-filename@1.6.1";
              "semver@5.3.0" = pkgs."semver@5.3.0";
            };
            seen = [ "electron-packager@9.1.0" ];
            };
  "electron-rebuild@1.6.0" = nodeEnv.buildYarnPackage {
            packageName = "electron-rebuild";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-rebuild/-/electron-rebuild-1.6.0.tgz";
              sha1 = "e8d26f4d8e9fe5388df35864b3658e5cfd4dcb7e";
            };
            dependencies = {
              "colors@1.1.2" = pkgs."colors@1.1.2";
              "debug@2.6.9" = pkgs."debug@2.6.9";
              "fs-extra@3.0.1" = pkgs."fs-extra@3.0.1";
              "node-abi@2.3.0" = pkgs."node-abi@2.3.0";
              "node-gyp@3.6.2" = pkgs."node-gyp@3.6.2";
              "ora@1.4.0" = pkgs."ora@1.4.0";
              "rimraf@2.6.2" = pkgs."rimraf@2.6.2";
              "spawn-rx@2.0.12" = pkgs."spawn-rx@2.0.12";
              "yargs@7.1.0" = pkgs."yargs@7.1.0";
            };
            seen = [ "electron-rebuild@1.6.0" ];
            };
  "electron-store@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "electron-store";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-store/-/electron-store-1.3.0.tgz";
              sha1 = "ee488a28a61fb982fd35b658fb9cb6331eb201f8";
            };
            dependencies = {
              "conf@1.4.0" = pkgs."conf@1.4.0";
            };
            seen = [ "electron-store@1.3.0" ];
            };
  "electron@1.7.11" = nodeEnv.buildYarnPackage {
            packageName = "electron";
            version = "1.7.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron/-/electron-1.7.11.tgz";
              sha1 = "993b6aa79e0e79a7cfcc369f4c813fbd9a0b08d9";
            };
            dependencies = {
              "@types/node@7.0.55" = pkgs."@types/node@7.0.55";
              "electron-download@3.2.0" = pkgs."electron-download@3.2.0";
              "extract-zip@1.6.0" = pkgs."extract-zip@1.6.0";
            };
            seen = [ "electron@1.7.11" ];
            };
  "element-class@0.2.2" = nodeEnv.buildYarnPackage {
            packageName = "element-class";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/element-class/-/element-class-0.2.2.tgz";
              sha1 = "9d3bbd0767f9013ef8e1c8ebe722c1402a60050e";
            };
            dependencies = {};
            seen = [ "element-class@0.2.2" ];
            };
  "elliptic@6.4.0" = nodeEnv.buildYarnPackage {
            packageName = "elliptic";
            version = "6.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/elliptic/-/elliptic-6.4.0.tgz";
              sha1 = "cac9af8762c85836187003c8dfe193e5e2eae5df";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "brorand@1.0.6" = pkgs."brorand@1.0.6";
              "hash.js@1.0.3" = pkgs."hash.js@1.0.3";
              "hmac-drbg@1.0.1" = pkgs."hmac-drbg@1.0.1";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "minimalistic-assert@1.0.0" = pkgs."minimalistic-assert@1.0.0";
              "minimalistic-crypto-utils@1.0.1" = pkgs."minimalistic-crypto-utils@1.0.1";
            };
            seen = [ "elliptic@6.4.0" ];
            };
  "emojis-list@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "emojis-list";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/emojis-list/-/emojis-list-2.1.0.tgz";
              sha1 = "4daa4d9db00f9819880c79fa457ae5b09a1fd389";
            };
            dependencies = {};
            seen = [ "emojis-list@2.1.0" ];
            };
  "encodeurl@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "encodeurl";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/encodeurl/-/encodeurl-1.0.1.tgz";
              sha1 = "79e3d58655346909fe6f0f45a5de68103b294d20";
            };
            dependencies = {};
            seen = [ "encodeurl@1.0.1" ];
            };
  "encoding@0.1.12" = nodeEnv.buildYarnPackage {
            packageName = "encoding";
            version = "0.1.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/encoding/-/encoding-0.1.12.tgz";
              sha1 = "538b66f3ee62cd1ab51ec323829d1f9480c74beb";
            };
            dependencies = {
              "iconv-lite@0.4.15" = pkgs."iconv-lite@0.4.15";
            };
            seen = [ "encoding@0.1.12" ];
            };
  "end-of-stream@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "end-of-stream";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.1.0.tgz";
              sha1 = "e9353258baa9108965efc41cb0ef8ade2f3cfb07";
            };
            dependencies = {
              "once@1.3.3" = pkgs."once@1.3.3";
            };
            seen = [ "end-of-stream@1.1.0" ];
            };
  "enhanced-resolve@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "enhanced-resolve";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/enhanced-resolve/-/enhanced-resolve-2.3.0.tgz";
              sha1 = "a115c32504b6302e85a76269d7a57ccdd962e359";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "memory-fs@0.3.0" = pkgs."memory-fs@0.3.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "tapable@0.2.5" = pkgs."tapable@0.2.5";
            };
            seen = [ "enhanced-resolve@2.3.0" ];
            };
  "entities@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "entities";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/entities/-/entities-1.1.1.tgz";
              sha1 = "6e5c2d0a5621b5dadaecef80b90edfb5cd7772f0";
            };
            dependencies = {};
            seen = [ "entities@1.1.1" ];
            };
  "env-paths@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "env-paths";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/env-paths/-/env-paths-1.0.0.tgz";
              sha1 = "4168133b42bb05c38a35b1ae4397c8298ab369e0";
            };
            dependencies = {};
            seen = [ "env-paths@1.0.0" ];
            };
  "errno@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "errno";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/errno/-/errno-0.1.4.tgz";
              sha1 = "b896e23a9e5e8ba33871fc996abd3635fc9a1c7d";
            };
            dependencies = {
              "prr@0.0.0" = pkgs."prr@0.0.0";
            };
            seen = [ "errno@0.1.4" ];
            };
  "error-ex@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "error-ex";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/error-ex/-/error-ex-1.3.0.tgz";
              sha1 = "e67b43f3e82c96ea3a584ffee0b9fc3325d802d9";
            };
            dependencies = {
              "is-arrayish@0.2.1" = pkgs."is-arrayish@0.2.1";
            };
            seen = [ "error-ex@1.3.0" ];
            };
  "error-stack-parser@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "error-stack-parser";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/error-stack-parser/-/error-stack-parser-2.0.1.tgz";
              sha1 = "a3202b8fb03114aa9b40a0e3669e48b2b65a010a";
            };
            dependencies = {
              "stackframe@1.0.4" = pkgs."stackframe@1.0.4";
            };
            seen = [ "error-stack-parser@2.0.1" ];
            };
  "es-abstract@1.6.1" = nodeEnv.buildYarnPackage {
            packageName = "es-abstract";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.6.1.tgz";
              sha1 = "bb8a2064120abcf928a086ea3d9043114285ec99";
            };
            dependencies = {
              "es-to-primitive@1.1.1" = pkgs."es-to-primitive@1.1.1";
              "function-bind@1.1.0" = pkgs."function-bind@1.1.0";
              "is-callable@1.1.3" = pkgs."is-callable@1.1.3";
              "is-regex@1.0.3" = pkgs."is-regex@1.0.3";
            };
            seen = [ "es-abstract@1.6.1" ];
            };
  "es-to-primitive@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "es-to-primitive";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.1.1.tgz";
              sha1 = "45355248a88979034b6792e19bb81f2b7975dd0d";
            };
            dependencies = {
              "is-callable@1.1.3" = pkgs."is-callable@1.1.3";
              "is-date-object@1.0.1" = pkgs."is-date-object@1.0.1";
              "is-symbol@1.0.1" = pkgs."is-symbol@1.0.1";
            };
            seen = [ "es-to-primitive@1.1.1" ];
            };
  "es5-ext@0.10.12" = nodeEnv.buildYarnPackage {
            packageName = "es5-ext";
            version = "0.10.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es5-ext/-/es5-ext-0.10.12.tgz";
              sha1 = "aa84641d4db76b62abba5e45fd805ecbab140047";
            };
            dependencies = {
              "es6-iterator@2.0.0" = pkgs."es6-iterator@2.0.0";
              "es6-symbol@3.1.0" = pkgs."es6-symbol@3.1.0";
            };
            seen = [ "es5-ext@0.10.12" ];
            };
  "es5-shim@4.5.9" = nodeEnv.buildYarnPackage {
            packageName = "es5-shim";
            version = "4.5.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es5-shim/-/es5-shim-4.5.9.tgz";
              sha1 = "2a1e2b9e583ff5fed0c20a3ee2cbf3f75230a5c0";
            };
            dependencies = {};
            seen = [ "es5-shim@4.5.9" ];
            };
  "es6-error@4.0.2" = nodeEnv.buildYarnPackage {
            packageName = "es6-error";
            version = "4.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-error/-/es6-error-4.0.2.tgz";
              sha1 = "eec5c726eacef51b7f6b73c20db6e1b13b069c98";
            };
            dependencies = {};
            seen = [ "es6-error@4.0.2" ];
            };
  "es6-iterator@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "es6-iterator";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-iterator/-/es6-iterator-2.0.0.tgz";
              sha1 = "bd968567d61635e33c0b80727613c9cb4b096bac";
            };
            dependencies = {
              "d@0.1.1" = pkgs."d@0.1.1";
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
              "es6-symbol@3.1.0" = pkgs."es6-symbol@3.1.0";
            };
            seen = [ "es6-iterator@2.0.0" ];
            };
  "es6-map@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "es6-map";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-map/-/es6-map-0.1.4.tgz";
              sha1 = "a34b147be224773a4d7da8072794cefa3632b897";
            };
            dependencies = {
              "d@0.1.1" = pkgs."d@0.1.1";
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
              "es6-iterator@2.0.0" = pkgs."es6-iterator@2.0.0";
              "es6-set@0.1.4" = pkgs."es6-set@0.1.4";
              "es6-symbol@3.1.0" = pkgs."es6-symbol@3.1.0";
              "event-emitter@0.3.4" = pkgs."event-emitter@0.3.4";
            };
            seen = [ "es6-map@0.1.4" ];
            };
  "es6-promise@4.0.5" = nodeEnv.buildYarnPackage {
            packageName = "es6-promise";
            version = "4.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-promise/-/es6-promise-4.0.5.tgz";
              sha1 = "7882f30adde5b240ccfa7f7d78c548330951ae42";
            };
            dependencies = {};
            seen = [ "es6-promise@4.0.5" ];
            };
  "es6-set@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "es6-set";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-set/-/es6-set-0.1.4.tgz";
              sha1 = "9516b6761c2964b92ff479456233a247dc707ce8";
            };
            dependencies = {
              "d@0.1.1" = pkgs."d@0.1.1";
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
              "es6-iterator@2.0.0" = pkgs."es6-iterator@2.0.0";
              "es6-symbol@3.1.0" = pkgs."es6-symbol@3.1.0";
              "event-emitter@0.3.4" = pkgs."event-emitter@0.3.4";
            };
            seen = [ "es6-set@0.1.4" ];
            };
  "es6-shim@0.35.2" = nodeEnv.buildYarnPackage {
            packageName = "es6-shim";
            version = "0.35.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-shim/-/es6-shim-0.35.2.tgz";
              sha1 = "45c5b3eb2f792ed28f130d826239be50affb897f";
            };
            dependencies = {};
            seen = [ "es6-shim@0.35.2" ];
            };
  "es6-symbol@3.1.0" = nodeEnv.buildYarnPackage {
            packageName = "es6-symbol";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-symbol/-/es6-symbol-3.1.0.tgz";
              sha1 = "94481c655e7a7cad82eba832d97d5433496d7ffa";
            };
            dependencies = {
              "d@0.1.1" = pkgs."d@0.1.1";
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
            };
            seen = [ "es6-symbol@3.1.0" ];
            };
  "es6-templates@0.2.3" = nodeEnv.buildYarnPackage {
            packageName = "es6-templates";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-templates/-/es6-templates-0.2.3.tgz";
              sha1 = "5cb9ac9fb1ded6eb1239342b81d792bbb4078ee4";
            };
            dependencies = {
              "recast@0.11.23" = pkgs."recast@0.11.23";
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "es6-templates@0.2.3" ];
            };
  "es6-weak-map@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "es6-weak-map";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-weak-map/-/es6-weak-map-2.0.1.tgz";
              sha1 = "0d2bbd8827eb5fb4ba8f97fbfea50d43db21ea81";
            };
            dependencies = {
              "d@0.1.1" = pkgs."d@0.1.1";
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
              "es6-iterator@2.0.0" = pkgs."es6-iterator@2.0.0";
              "es6-symbol@3.1.0" = pkgs."es6-symbol@3.1.0";
            };
            seen = [ "es6-weak-map@2.0.1" ];
            };
  "escape-html@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "escape-html";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/escape-html/-/escape-html-1.0.3.tgz";
              sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
            };
            dependencies = {};
            seen = [ "escape-html@1.0.3" ];
            };
  "escape-string-regexp@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "escape-string-regexp";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
              sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
            };
            dependencies = {};
            seen = [ "escape-string-regexp@1.0.5" ];
            };
  "escodegen@1.8.1" = nodeEnv.buildYarnPackage {
            packageName = "escodegen";
            version = "1.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/escodegen/-/escodegen-1.8.1.tgz";
              sha1 = "5a5b53af4693110bebb0867aa3430dd3b70a1018";
            };
            dependencies = {
              "esprima@2.7.3" = pkgs."esprima@2.7.3";
              "estraverse@1.9.3" = pkgs."estraverse@1.9.3";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "optionator@0.8.2" = pkgs."optionator@0.8.2";
            };
            seen = [ "escodegen@1.8.1" ];
            };
  "escope@3.6.0" = nodeEnv.buildYarnPackage {
            packageName = "escope";
            version = "3.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/escope/-/escope-3.6.0.tgz";
              sha1 = "e01975e812781a163a6dadfdd80398dc64c889c3";
            };
            dependencies = {
              "es6-map@0.1.4" = pkgs."es6-map@0.1.4";
              "es6-weak-map@2.0.1" = pkgs."es6-weak-map@2.0.1";
              "esrecurse@4.1.0" = pkgs."esrecurse@4.1.0";
              "estraverse@4.2.0" = pkgs."estraverse@4.2.0";
            };
            seen = [ "escope@3.6.0" ];
            };
  "eslint-config-airbnb-base@8.0.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint-config-airbnb-base";
            version = "8.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-config-airbnb-base/-/eslint-config-airbnb-base-8.0.0.tgz";
              sha1 = "c5e958a469ab8af76aff068b43d784e5afe74ca7";
            };
            dependencies = {};
            seen = [ "eslint-config-airbnb-base@8.0.0" ];
            };
  "eslint-config-airbnb@12.0.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint-config-airbnb";
            version = "12.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-config-airbnb/-/eslint-config-airbnb-12.0.0.tgz";
              sha1 = "ab282b756a25f03d04ac264c24d673a08a803270";
            };
            dependencies = {
              "eslint-config-airbnb-base@8.0.0" = pkgs."eslint-config-airbnb-base@8.0.0";
            };
            seen = [ "eslint-config-airbnb@12.0.0" ];
            };
  "eslint-formatter-pretty@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint-formatter-pretty";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-formatter-pretty/-/eslint-formatter-pretty-1.1.0.tgz";
              sha1 = "ab4d06da02fed8c13ae9f0dc540a433ef7ed6f5e";
            };
            dependencies = {
              "ansi-escapes@1.4.0" = pkgs."ansi-escapes@1.4.0";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "log-symbols@1.0.2" = pkgs."log-symbols@1.0.2";
              "plur@2.1.2" = pkgs."plur@2.1.2";
              "string-width@2.0.0" = pkgs."string-width@2.0.0";
            };
            seen = [ "eslint-formatter-pretty@1.1.0" ];
            };
  "eslint-import-resolver-node@0.2.3" = nodeEnv.buildYarnPackage {
            packageName = "eslint-import-resolver-node";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-import-resolver-node/-/eslint-import-resolver-node-0.2.3.tgz";
              sha1 = "5add8106e8c928db2cba232bcd9efa846e3da16c";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "resolve@1.2.0" = pkgs."resolve@1.2.0";
            };
            seen = [ "eslint-import-resolver-node@0.2.3" ];
            };
  "eslint-import-resolver-webpack@0.6.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint-import-resolver-webpack";
            version = "0.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-import-resolver-webpack/-/eslint-import-resolver-webpack-0.6.0.tgz";
              sha1 = "cfa48c727b633eb523e29ef019750b2106d0f609";
            };
            dependencies = {
              "array-find@1.0.0" = pkgs."array-find@1.0.0";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "enhanced-resolve@0.9.1" = pkgs."enhanced-resolve@0.9.1";
              "find-root@0.1.2" = pkgs."find-root@0.1.2";
              "interpret@1.0.1" = pkgs."interpret@1.0.1";
              "is-absolute@0.2.6" = pkgs."is-absolute@0.2.6";
              "lodash.get@3.7.0" = pkgs."lodash.get@3.7.0";
              "node-libs-browser@1.1.1" = pkgs."node-libs-browser@1.1.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "resolve@1.2.0" = pkgs."resolve@1.2.0";
              "semver@5.3.0" = pkgs."semver@5.3.0";
            };
            seen = [ "eslint-import-resolver-webpack@0.6.0" ];
            };
  "eslint-loader@1.7.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint-loader";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-loader/-/eslint-loader-1.7.0.tgz";
              sha1 = "9813e77046730191ab399938732dff7960c639cb";
            };
            dependencies = {
              "find-cache-dir@0.1.1" = pkgs."find-cache-dir@0.1.1";
              "loader-fs-cache@1.0.1" = pkgs."loader-fs-cache@1.0.1";
              "loader-utils@1.1.0" = pkgs."loader-utils@1.1.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "object-hash@1.1.5" = pkgs."object-hash@1.1.5";
              "rimraf@2.6.2" = pkgs."rimraf@2.6.2";
            };
            seen = [ "eslint-loader@1.7.0" ];
            };
  "eslint-plugin-flowtype-errors@1.5.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint-plugin-flowtype-errors";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-flowtype-errors/-/eslint-plugin-flowtype-errors-1.5.0.tgz";
              sha1 = "e8031f25b2af4a6bd266d9f19abe28ca51cd7d2b";
            };
            dependencies = {
              "babel-plugin-transform-runtime@6.15.0" = pkgs."babel-plugin-transform-runtime@6.15.0";
              "flow-bin@0.33.0" = pkgs."flow-bin@0.33.0";
              "q@1.4.1" = pkgs."q@1.4.1";
              "ramda@0.22.1" = pkgs."ramda@0.22.1";
              "shelljs@0.7.6" = pkgs."shelljs@0.7.6";
              "slash@1.0.0" = pkgs."slash@1.0.0";
            };
            seen = [ "eslint-plugin-flowtype-errors@1.5.0" ];
            };
  "eslint-plugin-import@1.16.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint-plugin-import";
            version = "1.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-import/-/eslint-plugin-import-1.16.0.tgz";
              sha1 = "b2fa07ebcc53504d0f2a4477582ec8bff1871b9f";
            };
            dependencies = {
              "builtin-modules@1.1.1" = pkgs."builtin-modules@1.1.1";
              "contains-path@0.1.0" = pkgs."contains-path@0.1.0";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "doctrine@1.3.0" = pkgs."doctrine@1.3.0";
              "es6-map@0.1.4" = pkgs."es6-map@0.1.4";
              "es6-set@0.1.4" = pkgs."es6-set@0.1.4";
              "eslint-import-resolver-node@0.2.3" = pkgs."eslint-import-resolver-node@0.2.3";
              "has@1.0.1" = pkgs."has@1.0.1";
              "lodash.cond@4.5.2" = pkgs."lodash.cond@4.5.2";
              "lodash.endswith@4.2.1" = pkgs."lodash.endswith@4.2.1";
              "lodash.find@4.6.0" = pkgs."lodash.find@4.6.0";
              "lodash.findindex@4.6.0" = pkgs."lodash.findindex@4.6.0";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "pkg-dir@1.0.0" = pkgs."pkg-dir@1.0.0";
              "pkg-up@1.0.0" = pkgs."pkg-up@1.0.0";
            };
            seen = [ "eslint-plugin-import@1.16.0" ];
            };
  "eslint-plugin-jsx-a11y@2.2.3" = nodeEnv.buildYarnPackage {
            packageName = "eslint-plugin-jsx-a11y";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-jsx-a11y/-/eslint-plugin-jsx-a11y-2.2.3.tgz";
              sha1 = "4e35cb71b8a7db702ac415c806eb8e8d9ea6c65d";
            };
            dependencies = {
              "damerau-levenshtein@1.0.3" = pkgs."damerau-levenshtein@1.0.3";
              "jsx-ast-utils@1.3.5" = pkgs."jsx-ast-utils@1.3.5";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "eslint-plugin-jsx-a11y@2.2.3" ];
            };
  "eslint-plugin-promise@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "eslint-plugin-promise";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-promise/-/eslint-plugin-promise-2.0.1.tgz";
              sha1 = "a9759cefa5e38ab11bb2ef65a04ef042309aa0a4";
            };
            dependencies = {};
            seen = [ "eslint-plugin-promise@2.0.1" ];
            };
  "eslint-plugin-react@6.10.3" = nodeEnv.buildYarnPackage {
            packageName = "eslint-plugin-react";
            version = "6.10.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-react/-/eslint-plugin-react-6.10.3.tgz";
              sha1 = "c5435beb06774e12c7db2f6abaddcbf900cd3f78";
            };
            dependencies = {
              "array.prototype.find@2.0.1" = pkgs."array.prototype.find@2.0.1";
              "doctrine@1.3.0" = pkgs."doctrine@1.3.0";
              "has@1.0.1" = pkgs."has@1.0.1";
              "jsx-ast-utils@1.3.5" = pkgs."jsx-ast-utils@1.3.5";
              "object.assign@4.1.0" = pkgs."object.assign@4.1.0";
            };
            seen = [ "eslint-plugin-react@6.10.3" ];
            };
  "eslint@3.18.0" = nodeEnv.buildYarnPackage {
            packageName = "eslint";
            version = "3.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint/-/eslint-3.18.0.tgz";
              sha1 = "647e985c4ae71502d20ac62c109f66d5104c8a4b";
            };
            dependencies = {
              "babel-code-frame@6.20.0" = pkgs."babel-code-frame@6.20.0";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "concat-stream@1.6.1" = pkgs."concat-stream@1.6.1";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "doctrine@2.0.0" = pkgs."doctrine@2.0.0";
              "escope@3.6.0" = pkgs."escope@3.6.0";
              "espree@3.5.4" = pkgs."espree@3.5.4";
              "esquery@1.0.0" = pkgs."esquery@1.0.0";
              "estraverse@4.2.0" = pkgs."estraverse@4.2.0";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "file-entry-cache@2.0.0" = pkgs."file-entry-cache@2.0.0";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "globals@9.14.0" = pkgs."globals@9.14.0";
              "ignore@3.2.0" = pkgs."ignore@3.2.0";
              "imurmurhash@0.1.4" = pkgs."imurmurhash@0.1.4";
              "inquirer@0.12.0" = pkgs."inquirer@0.12.0";
              "is-my-json-valid@2.15.0" = pkgs."is-my-json-valid@2.15.0";
              "is-resolvable@1.0.0" = pkgs."is-resolvable@1.0.0";
              "js-yaml@3.7.0" = pkgs."js-yaml@3.7.0";
              "json-stable-stringify@1.0.1" = pkgs."json-stable-stringify@1.0.1";
              "levn@0.3.0" = pkgs."levn@0.3.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "natural-compare@1.4.0" = pkgs."natural-compare@1.4.0";
              "optionator@0.8.2" = pkgs."optionator@0.8.2";
              "path-is-inside@1.0.2" = pkgs."path-is-inside@1.0.2";
              "pluralize@1.2.1" = pkgs."pluralize@1.2.1";
              "progress@1.1.8" = pkgs."progress@1.1.8";
              "require-uncached@1.0.3" = pkgs."require-uncached@1.0.3";
              "shelljs@0.7.6" = pkgs."shelljs@0.7.6";
              "strip-bom@3.0.0" = pkgs."strip-bom@3.0.0";
              "strip-json-comments@2.0.1" = pkgs."strip-json-comments@2.0.1";
              "table@3.8.3" = pkgs."table@3.8.3";
              "text-table@0.2.0" = pkgs."text-table@0.2.0";
              "user-home@2.0.0" = pkgs."user-home@2.0.0";
            };
            seen = [ "eslint@3.18.0" ];
            };
  "espree@3.5.4" = nodeEnv.buildYarnPackage {
            packageName = "espree";
            version = "3.5.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/espree/-/espree-3.5.4.tgz";
              sha1 = "b0f447187c8a8bed944b815a660bddf5deb5d1a7";
            };
            dependencies = {
              "acorn@5.5.1" = pkgs."acorn@5.5.1";
              "acorn-jsx@3.0.1" = pkgs."acorn-jsx@3.0.1";
            };
            seen = [ "espree@3.5.4" ];
            };
  "esprima@3.1.3" = nodeEnv.buildYarnPackage {
            packageName = "esprima";
            version = "3.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esprima/-/esprima-3.1.3.tgz";
              sha1 = "fdca51cee6133895e3c88d535ce49dbff62a4633";
            };
            dependencies = {};
            seen = [ "esprima@3.1.3" ];
            };
  "esquery@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "esquery";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esquery/-/esquery-1.0.0.tgz";
              sha1 = "cfba8b57d7fba93f17298a8a006a04cda13d80fa";
            };
            dependencies = {
              "estraverse@4.2.0" = pkgs."estraverse@4.2.0";
            };
            seen = [ "esquery@1.0.0" ];
            };
  "esrecurse@4.1.0" = nodeEnv.buildYarnPackage {
            packageName = "esrecurse";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esrecurse/-/esrecurse-4.1.0.tgz";
              sha1 = "4713b6536adf7f2ac4f327d559e7756bff648220";
            };
            dependencies = {
              "estraverse@4.1.1" = pkgs."estraverse@4.1.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "esrecurse@4.1.0" ];
            };
  "estraverse@4.2.0" = nodeEnv.buildYarnPackage {
            packageName = "estraverse";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.2.0.tgz";
              sha1 = "0dee3fed31fcd469618ce7342099fc1afa0bdb13";
            };
            dependencies = {};
            seen = [ "estraverse@4.2.0" ];
            };
  "esutils@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "esutils";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esutils/-/esutils-2.0.2.tgz";
              sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
            };
            dependencies = {};
            seen = [ "esutils@2.0.2" ];
            };
  "etag@1.8.1" = nodeEnv.buildYarnPackage {
            packageName = "etag";
            version = "1.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/etag/-/etag-1.8.1.tgz";
              sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
            };
            dependencies = {};
            seen = [ "etag@1.8.1" ];
            };
  "eth-lib@0.2.7" = nodeEnv.buildYarnPackage {
            packageName = "eth-lib";
            version = "0.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eth-lib/-/eth-lib-0.2.7.tgz";
              sha1 = "2f93f17b1e23aec3759cd4a3fe20c1286a3fc1ca";
            };
            dependencies = {
              "bn.js@4.11.8" = pkgs."bn.js@4.11.8";
              "elliptic@6.4.0" = pkgs."elliptic@6.4.0";
              "xhr-request-promise@0.1.2" = pkgs."xhr-request-promise@0.1.2";
            };
            seen = [ "eth-lib@0.2.7" ];
            };
  "ethjs-unit@0.1.6" = nodeEnv.buildYarnPackage {
            packageName = "ethjs-unit";
            version = "0.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ethjs-unit/-/ethjs-unit-0.1.6.tgz";
              sha1 = "c665921e476e87bce2a9d588a6fe0405b2c41699";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "number-to-bn@1.7.0" = pkgs."number-to-bn@1.7.0";
            };
            seen = [ "ethjs-unit@0.1.6" ];
            };
  "event-emitter@0.3.4" = nodeEnv.buildYarnPackage {
            packageName = "event-emitter";
            version = "0.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/event-emitter/-/event-emitter-0.3.4.tgz";
              sha1 = "8d63ddfb4cfe1fae3b32ca265c4c720222080bb5";
            };
            dependencies = {
              "d@0.1.1" = pkgs."d@0.1.1";
              "es5-ext@0.10.12" = pkgs."es5-ext@0.10.12";
            };
            seen = [ "event-emitter@0.3.4" ];
            };
  "event-stream@3.3.4" = nodeEnv.buildYarnPackage {
            packageName = "event-stream";
            version = "3.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/event-stream/-/event-stream-3.3.4.tgz";
              sha1 = "4ab4c9a0f5a54db9338b4c34d86bfce8f4b35571";
            };
            dependencies = {
              "duplexer@0.1.1" = pkgs."duplexer@0.1.1";
              "from@0.1.3" = pkgs."from@0.1.3";
              "map-stream@0.1.0" = pkgs."map-stream@0.1.0";
              "pause-stream@0.0.11" = pkgs."pause-stream@0.0.11";
              "split@0.3.3" = pkgs."split@0.3.3";
              "stream-combiner@0.0.4" = pkgs."stream-combiner@0.0.4";
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "event-stream@3.3.4" ];
            };
  "eventemitter3@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "eventemitter3";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eventemitter3/-/eventemitter3-1.1.1.tgz";
              sha1 = "47786bdaa087caf7b1b75e73abc5c7d540158cd0";
            };
            dependencies = {};
            seen = [ "eventemitter3@1.1.1" ];
            };
  "events@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "events";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/events/-/events-1.1.1.tgz";
              sha1 = "9ebdb7635ad099c70dcc4c2a1f5004288e8bd924";
            };
            dependencies = {};
            seen = [ "events@1.1.1" ];
            };
  "evp_bytestokey@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "evp_bytestokey";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/evp_bytestokey/-/evp_bytestokey-1.0.0.tgz";
              sha1 = "497b66ad9fef65cd7c08a6180824ba1476b66e53";
            };
            dependencies = {
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
            };
            seen = [ "evp_bytestokey@1.0.0" ];
            };
  "exenv@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "exenv";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/exenv/-/exenv-1.2.2.tgz";
              sha1 = "2ae78e85d9894158670b03d47bec1f03bd91bb9d";
            };
            dependencies = {};
            seen = [ "exenv@1.2.2" ];
            };
  "exit-hook@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "exit-hook";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/exit-hook/-/exit-hook-1.1.1.tgz";
              sha1 = "f05ca233b48c05d54fff07765df8507e95c02ff8";
            };
            dependencies = {};
            seen = [ "exit-hook@1.1.1" ];
            };
  "expand-brackets@0.1.5" = nodeEnv.buildYarnPackage {
            packageName = "expand-brackets";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-0.1.5.tgz";
              sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
            };
            dependencies = {
              "is-posix-bracket@0.1.1" = pkgs."is-posix-bracket@0.1.1";
            };
            seen = [ "expand-brackets@0.1.5" ];
            };
  "expand-range@1.8.2" = nodeEnv.buildYarnPackage {
            packageName = "expand-range";
            version = "1.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/expand-range/-/expand-range-1.8.2.tgz";
              sha1 = "a299effd335fe2721ebae8e257ec79644fc85337";
            };
            dependencies = {
              "fill-range@2.2.3" = pkgs."fill-range@2.2.3";
            };
            seen = [ "expand-range@1.8.2" ];
            };
  "expand-tilde@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "expand-tilde";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/expand-tilde/-/expand-tilde-1.2.2.tgz";
              sha1 = "0b81eba897e5a3d31d1c3d102f8f01441e559449";
            };
            dependencies = {
              "os-homedir@1.0.2" = pkgs."os-homedir@1.0.2";
            };
            seen = [ "expand-tilde@1.2.2" ];
            };
  "express@4.15.2" = nodeEnv.buildYarnPackage {
            packageName = "express";
            version = "4.15.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/express/-/express-4.15.2.tgz";
              sha1 = "af107fc148504457f2dca9a6f2571d7129b97b35";
            };
            dependencies = {
              "accepts@1.3.3" = pkgs."accepts@1.3.3";
              "array-flatten@1.1.1" = pkgs."array-flatten@1.1.1";
              "content-disposition@0.5.2" = pkgs."content-disposition@0.5.2";
              "content-type@1.0.2" = pkgs."content-type@1.0.2";
              "cookie@0.3.1" = pkgs."cookie@0.3.1";
              "cookie-signature@1.0.6" = pkgs."cookie-signature@1.0.6";
              "debug@2.6.1" = pkgs."debug@2.6.1";
              "depd@1.1.0" = pkgs."depd@1.1.0";
              "encodeurl@1.0.1" = pkgs."encodeurl@1.0.1";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "etag@1.8.1" = pkgs."etag@1.8.1";
              "finalhandler@1.0.6" = pkgs."finalhandler@1.0.6";
              "fresh@0.5.0" = pkgs."fresh@0.5.0";
              "merge-descriptors@1.0.1" = pkgs."merge-descriptors@1.0.1";
              "methods@1.1.2" = pkgs."methods@1.1.2";
              "on-finished@2.3.0" = pkgs."on-finished@2.3.0";
              "parseurl@1.3.1" = pkgs."parseurl@1.3.1";
              "path-to-regexp@0.1.7" = pkgs."path-to-regexp@0.1.7";
              "proxy-addr@1.1.5" = pkgs."proxy-addr@1.1.5";
              "qs@6.4.0" = pkgs."qs@6.4.0";
              "range-parser@1.2.0" = pkgs."range-parser@1.2.0";
              "send@0.15.1" = pkgs."send@0.15.1";
              "serve-static@1.12.1" = pkgs."serve-static@1.12.1";
              "setprototypeof@1.0.3" = pkgs."setprototypeof@1.0.3";
              "statuses@1.3.1" = pkgs."statuses@1.3.1";
              "type-is@1.6.16" = pkgs."type-is@1.6.16";
              "utils-merge@1.0.0" = pkgs."utils-merge@1.0.0";
              "vary@1.1.0" = pkgs."vary@1.1.0";
            };
            seen = [ "express@4.15.2" ];
            };
  "extend@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "extend";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extend/-/extend-3.0.1.tgz";
              sha1 = "a755ea7bc1adfcc5a31ce7e762dbaadc5e636444";
            };
            dependencies = {};
            seen = [ "extend@3.0.1" ];
            };
  "external-editor@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "external-editor";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/external-editor/-/external-editor-2.1.0.tgz";
              sha1 = "3d026a21b7f95b5726387d4200ac160d372c3b48";
            };
            dependencies = {
              "chardet@0.4.2" = pkgs."chardet@0.4.2";
              "iconv-lite@0.4.19" = pkgs."iconv-lite@0.4.19";
              "tmp@0.0.33" = pkgs."tmp@0.0.33";
            };
            seen = [ "external-editor@2.1.0" ];
            };
  "extglob@0.3.2" = nodeEnv.buildYarnPackage {
            packageName = "extglob";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extglob/-/extglob-0.3.2.tgz";
              sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
            };
            dependencies = {
              "is-extglob@1.0.0" = pkgs."is-extglob@1.0.0";
            };
            seen = [ "extglob@0.3.2" ];
            };
  "extract-text-webpack-plugin@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "extract-text-webpack-plugin";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extract-text-webpack-plugin/-/extract-text-webpack-plugin-1.0.1.tgz";
              sha1 = "c95bf3cbaac49dc96f1dc6e072549fbb654ccd2c";
            };
            dependencies = {
              "async@1.5.2" = pkgs."async@1.5.2";
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "webpack-sources@0.1.3" = pkgs."webpack-sources@0.1.3";
            };
            seen = [ "extract-text-webpack-plugin@1.0.1" ];
            };
  "extract-zip@1.6.6" = nodeEnv.buildYarnPackage {
            packageName = "extract-zip";
            version = "1.6.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extract-zip/-/extract-zip-1.6.6.tgz";
              sha1 = "1290ede8d20d0872b429fd3f351ca128ec5ef85c";
            };
            dependencies = {
              "concat-stream@1.6.0" = pkgs."concat-stream@1.6.0";
              "debug@2.6.9" = pkgs."debug@2.6.9";
              "mkdirp@0.5.0" = pkgs."mkdirp@0.5.0";
              "yauzl@2.4.1" = pkgs."yauzl@2.4.1";
            };
            seen = [ "extract-zip@1.6.6" ];
            };
  "extsprintf@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "extsprintf";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.4.0.tgz";
              sha1 = "e2689f8f356fad62cca65a3a91c5df5f9551692f";
            };
            dependencies = {};
            seen = [ "extsprintf@1.4.0" ];
            };
  "eyes@0.1.8" = nodeEnv.buildYarnPackage {
            packageName = "eyes";
            version = "0.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eyes/-/eyes-0.1.8.tgz";
              sha1 = "62cf120234c683785d902348a800ef3e0cc20bc0";
            };
            dependencies = {};
            seen = [ "eyes@0.1.8" ];
            };
  "faker@4.1.0" = nodeEnv.buildYarnPackage {
            packageName = "faker";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/faker/-/faker-4.1.0.tgz";
              sha1 = "1e45bbbecc6774b3c195fad2835109c6d748cc3f";
            };
            dependencies = {};
            seen = [ "faker@4.1.0" ];
            };
  "fancy-log@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "fancy-log";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fancy-log/-/fancy-log-1.3.0.tgz";
              sha1 = "45be17d02bb9917d60ccffd4995c999e6c8c9948";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "time-stamp@1.0.1" = pkgs."time-stamp@1.0.1";
            };
            seen = [ "fancy-log@1.3.0" ];
            };
  "fast-deep-equal@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "fast-deep-equal";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz";
              sha1 = "c053477817c86b51daa853c81e059b733d023614";
            };
            dependencies = {};
            seen = [ "fast-deep-equal@1.1.0" ];
            };
  "fast-json-stable-stringify@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "fast-json-stable-stringify";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
              sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
            };
            dependencies = {};
            seen = [ "fast-json-stable-stringify@2.0.0" ];
            };
  "fast-levenshtein@2.0.6" = nodeEnv.buildYarnPackage {
            packageName = "fast-levenshtein";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz";
              sha1 = "3d8a5c66883a16a30ca8643e851f19baa7797917";
            };
            dependencies = {};
            seen = [ "fast-levenshtein@2.0.6" ];
            };
  "fastparse@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "fastparse";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fastparse/-/fastparse-1.1.1.tgz";
              sha1 = "d1e2643b38a94d7583b479060e6c4affc94071f8";
            };
            dependencies = {};
            seen = [ "fastparse@1.1.1" ];
            };
  "fbjs-scripts@0.7.1" = nodeEnv.buildYarnPackage {
            packageName = "fbjs-scripts";
            version = "0.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fbjs-scripts/-/fbjs-scripts-0.7.1.tgz";
              sha1 = "4f115e218e243e3addbf0eddaac1e3c62f703fac";
            };
            dependencies = {
              "babel-core@6.21.0" = pkgs."babel-core@6.21.0";
              "babel-preset-fbjs@1.0.0" = pkgs."babel-preset-fbjs@1.0.0";
              "core-js@1.2.7" = pkgs."core-js@1.2.7";
              "cross-spawn@3.0.1" = pkgs."cross-spawn@3.0.1";
              "gulp-util@3.0.8" = pkgs."gulp-util@3.0.8";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "semver@5.3.0" = pkgs."semver@5.3.0";
              "through2@2.0.3" = pkgs."through2@2.0.3";
            };
            seen = [ "fbjs-scripts@0.7.1" ];
            };
  "fbjs@0.8.16" = nodeEnv.buildYarnPackage {
            packageName = "fbjs";
            version = "0.8.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fbjs/-/fbjs-0.8.16.tgz";
              sha1 = "5e67432f550dc41b572bf55847b8aca64e5337db";
            };
            dependencies = {
              "core-js@1.2.7" = pkgs."core-js@1.2.7";
              "isomorphic-fetch@2.2.1" = pkgs."isomorphic-fetch@2.2.1";
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "promise@7.1.1" = pkgs."promise@7.1.1";
              "setimmediate@1.0.5" = pkgs."setimmediate@1.0.5";
              "ua-parser-js@0.7.12" = pkgs."ua-parser-js@0.7.12";
            };
            seen = [ "fbjs@0.8.16" ];
            };
  "fd-slicer@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "fd-slicer";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fd-slicer/-/fd-slicer-1.0.1.tgz";
              sha1 = "8b5bcbd9ec327c5041bf9ab023fd6750f1177e65";
            };
            dependencies = {
              "pend@1.2.0" = pkgs."pend@1.2.0";
            };
            seen = [ "fd-slicer@1.0.1" ];
            };
  "figures@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "figures";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/figures/-/figures-2.0.0.tgz";
              sha1 = "3ab1a2d2a62c8bfb431a0c94cb797a2fce27c962";
            };
            dependencies = {
              "escape-string-regexp@1.0.5" = pkgs."escape-string-regexp@1.0.5";
            };
            seen = [ "figures@2.0.0" ];
            };
  "file-entry-cache@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "file-entry-cache";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-2.0.0.tgz";
              sha1 = "c392990c3e684783d838b8c84a45d8a048458361";
            };
            dependencies = {
              "flat-cache@1.2.2" = pkgs."flat-cache@1.2.2";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "file-entry-cache@2.0.0" ];
            };
  "file-loader@0.9.0" = nodeEnv.buildYarnPackage {
            packageName = "file-loader";
            version = "0.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-loader/-/file-loader-0.9.0.tgz";
              sha1 = "1d2daddd424ce6d1b07cfe3f79731bed3617ab42";
            };
            dependencies = {
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
            };
            seen = [ "file-loader@0.9.0" ];
            };
  "file-type@6.2.0" = nodeEnv.buildYarnPackage {
            packageName = "file-type";
            version = "6.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-type/-/file-type-6.2.0.tgz";
              sha1 = "e50cd75d356ffed4e306dc4f5bcf52a79903a919";
            };
            dependencies = {};
            seen = [ "file-type@6.2.0" ];
            };
  "filename-regex@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "filename-regex";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/filename-regex/-/filename-regex-2.0.0.tgz";
              sha1 = "996e3e80479b98b9897f15a8a58b3d084e926775";
            };
            dependencies = {};
            seen = [ "filename-regex@2.0.0" ];
            };
  "fill-range@2.2.3" = nodeEnv.buildYarnPackage {
            packageName = "fill-range";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fill-range/-/fill-range-2.2.3.tgz";
              sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
            };
            dependencies = {
              "is-number@2.1.0" = pkgs."is-number@2.1.0";
              "isobject@2.1.0" = pkgs."isobject@2.1.0";
              "randomatic@1.1.6" = pkgs."randomatic@1.1.6";
              "repeat-element@1.1.2" = pkgs."repeat-element@1.1.2";
              "repeat-string@1.6.1" = pkgs."repeat-string@1.6.1";
            };
            seen = [ "fill-range@2.2.3" ];
            };
  "filter-react-dom-props@0.0.2" = nodeEnv.buildYarnPackage {
            packageName = "filter-react-dom-props";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/filter-react-dom-props/-/filter-react-dom-props-0.0.2.tgz";
              sha1 = "d5c1e5a89c13534cebe3930a22afa9ae3238813b";
            };
            dependencies = {};
            seen = [ "filter-react-dom-props@0.0.2" ];
            };
  "finalhandler@1.0.6" = nodeEnv.buildYarnPackage {
            packageName = "finalhandler";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/finalhandler/-/finalhandler-1.0.6.tgz";
              sha1 = "007aea33d1a4d3e42017f624848ad58d212f814f";
            };
            dependencies = {
              "debug@2.6.9" = pkgs."debug@2.6.9";
              "encodeurl@1.0.1" = pkgs."encodeurl@1.0.1";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "on-finished@2.3.0" = pkgs."on-finished@2.3.0";
              "parseurl@1.3.2" = pkgs."parseurl@1.3.2";
              "statuses@1.3.1" = pkgs."statuses@1.3.1";
              "unpipe@1.0.0" = pkgs."unpipe@1.0.0";
            };
            seen = [ "finalhandler@1.0.6" ];
            };
  "find-cache-dir@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "find-cache-dir";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-cache-dir/-/find-cache-dir-0.1.1.tgz";
              sha1 = "c8defae57c8a52a8a784f9e31c57c742e993a0b9";
            };
            dependencies = {
              "commondir@1.0.1" = pkgs."commondir@1.0.1";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "pkg-dir@1.0.0" = pkgs."pkg-dir@1.0.0";
            };
            seen = [ "find-cache-dir@0.1.1" ];
            };
  "find-node-modules@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "find-node-modules";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-node-modules/-/find-node-modules-1.0.4.tgz";
              sha1 = "b6deb3cccb699c87037677bcede2c5f5862b2550";
            };
            dependencies = {
              "findup-sync@0.4.2" = pkgs."findup-sync@0.4.2";
              "merge@1.2.0" = pkgs."merge@1.2.0";
            };
            seen = [ "find-node-modules@1.0.4" ];
            };
  "find-root@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "find-root";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-root/-/find-root-0.1.2.tgz";
              sha1 = "98d2267cff1916ccaf2743b3a0eea81d79d7dcd1";
            };
            dependencies = {};
            seen = [ "find-root@0.1.2" ];
            };
  "find-up@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "find-up";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-up/-/find-up-2.1.0.tgz";
              sha1 = "45d1b7e506c717ddd482775a2b77920a3c0c57a7";
            };
            dependencies = {
              "locate-path@2.0.0" = pkgs."locate-path@2.0.0";
            };
            seen = [ "find-up@2.1.0" ];
            };
  "findup-sync@0.4.2" = nodeEnv.buildYarnPackage {
            packageName = "findup-sync";
            version = "0.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/findup-sync/-/findup-sync-0.4.2.tgz";
              sha1 = "a8117d0f73124f5a4546839579fe52d7129fb5e5";
            };
            dependencies = {
              "detect-file@0.1.0" = pkgs."detect-file@0.1.0";
              "is-glob@2.0.1" = pkgs."is-glob@2.0.1";
              "micromatch@2.3.11" = pkgs."micromatch@2.3.11";
              "resolve-dir@0.1.1" = pkgs."resolve-dir@0.1.1";
            };
            seen = [ "findup-sync@0.4.2" ];
            };
  "flat-cache@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "flat-cache";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/flat-cache/-/flat-cache-1.2.2.tgz";
              sha1 = "fa86714e72c21db88601761ecf2f555d1abc6b96";
            };
            dependencies = {
              "circular-json@0.3.1" = pkgs."circular-json@0.3.1";
              "del@2.2.2" = pkgs."del@2.2.2";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "write@0.2.1" = pkgs."write@0.2.1";
            };
            seen = [ "flat-cache@1.2.2" ];
            };
  "flatten@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "flatten";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/flatten/-/flatten-1.0.2.tgz";
              sha1 = "dae46a9d78fbe25292258cc1e780a41d95c03782";
            };
            dependencies = {};
            seen = [ "flatten@1.0.2" ];
            };
  "flow-bin@0.59.0" = nodeEnv.buildYarnPackage {
            packageName = "flow-bin";
            version = "0.59.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/flow-bin/-/flow-bin-0.59.0.tgz";
              sha1 = "8c151ee7f09f1deed9bf0b9d1f2e8ab9d470f1bb";
            };
            dependencies = {};
            seen = [ "flow-bin@0.59.0" ];
            };
  "for-each@0.3.2" = nodeEnv.buildYarnPackage {
            packageName = "for-each";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-each/-/for-each-0.3.2.tgz";
              sha1 = "2c40450b9348e97f281322593ba96704b9abd4d4";
            };
            dependencies = {
              "is-function@1.0.1" = pkgs."is-function@1.0.1";
            };
            seen = [ "for-each@0.3.2" ];
            };
  "for-in@0.1.6" = nodeEnv.buildYarnPackage {
            packageName = "for-in";
            version = "0.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-in/-/for-in-0.1.6.tgz";
              sha1 = "c9f96e89bfad18a545af5ec3ed352a1d9e5b4dc8";
            };
            dependencies = {};
            seen = [ "for-in@0.1.6" ];
            };
  "for-own@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "for-own";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-own/-/for-own-0.1.4.tgz";
              sha1 = "0149b41a39088c7515f51ebe1c1386d45f935072";
            };
            dependencies = {
              "for-in@0.1.6" = pkgs."for-in@0.1.6";
            };
            seen = [ "for-own@0.1.4" ];
            };
  "foreach@2.0.5" = nodeEnv.buildYarnPackage {
            packageName = "foreach";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/foreach/-/foreach-2.0.5.tgz";
              sha1 = "0bee005018aeb260d0a3af3ae658dd0136ec1b99";
            };
            dependencies = {};
            seen = [ "foreach@2.0.5" ];
            };
  "forever-agent@0.6.1" = nodeEnv.buildYarnPackage {
            packageName = "forever-agent";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/forever-agent/-/forever-agent-0.6.1.tgz";
              sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
            };
            dependencies = {};
            seen = [ "forever-agent@0.6.1" ];
            };
  "form-data@2.3.2" = nodeEnv.buildYarnPackage {
            packageName = "form-data";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/form-data/-/form-data-2.3.2.tgz";
              sha1 = "4970498be604c20c005d4f5c23aecd21d6b49099";
            };
            dependencies = {
              "asynckit@0.4.0" = pkgs."asynckit@0.4.0";
              "combined-stream@1.0.6" = pkgs."combined-stream@1.0.6";
              "mime-types@2.1.13" = pkgs."mime-types@2.1.13";
            };
            seen = [ "form-data@2.3.2" ];
            };
  "forwarded@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "forwarded";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/forwarded/-/forwarded-0.1.0.tgz";
              sha1 = "19ef9874c4ae1c297bcf078fde63a09b66a84363";
            };
            dependencies = {};
            seen = [ "forwarded@0.1.0" ];
            };
  "fresh@0.5.0" = nodeEnv.buildYarnPackage {
            packageName = "fresh";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fresh/-/fresh-0.5.0.tgz";
              sha1 = "f474ca5e6a9246d6fd8e0953cfa9b9c805afa78e";
            };
            dependencies = {};
            seen = [ "fresh@0.5.0" ];
            };
  "from@0.1.3" = nodeEnv.buildYarnPackage {
            packageName = "from";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/from/-/from-0.1.3.tgz";
              sha1 = "ef63ac2062ac32acf7862e0d40b44b896f22f3bc";
            };
            dependencies = {};
            seen = [ "from@0.1.3" ];
            };
  "fs-exists-sync@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "fs-exists-sync";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-exists-sync/-/fs-exists-sync-0.1.0.tgz";
              sha1 = "982d6893af918e72d08dec9e8673ff2b5a8d6add";
            };
            dependencies = {};
            seen = [ "fs-exists-sync@0.1.0" ];
            };
  "fs-extra@4.0.3" = nodeEnv.buildYarnPackage {
            packageName = "fs-extra";
            version = "4.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-4.0.3.tgz";
              sha1 = "0d852122e5bc5beb453fb028e9c0c9bf36340c94";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "jsonfile@4.0.0" = pkgs."jsonfile@4.0.0";
              "universalify@0.1.1" = pkgs."universalify@0.1.1";
            };
            seen = [ "fs-extra@4.0.3" ];
            };
  "fs-promise@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "fs-promise";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-promise/-/fs-promise-2.0.3.tgz";
              sha1 = "f64e4f854bcf689aa8bddcba268916db3db46854";
            };
            dependencies = {
              "any-promise@1.3.0" = pkgs."any-promise@1.3.0";
              "fs-extra@2.1.2" = pkgs."fs-extra@2.1.2";
              "mz@2.7.0" = pkgs."mz@2.7.0";
              "thenify-all@1.6.0" = pkgs."thenify-all@1.6.0";
            };
            seen = [ "fs-promise@2.0.3" ];
            };
  "fs-readdir-recursive@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "fs-readdir-recursive";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-readdir-recursive/-/fs-readdir-recursive-1.0.0.tgz";
              sha1 = "8cd1745c8b4f8a29c8caec392476921ba195f560";
            };
            dependencies = {};
            seen = [ "fs-readdir-recursive@1.0.0" ];
            };
  "fs.realpath@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "fs.realpath";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz";
              sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
            };
            dependencies = {};
            seen = [ "fs.realpath@1.0.0" ];
            };
  "fsevents@1.0.17" = nodeEnv.buildYarnPackage {
            packageName = "fsevents";
            version = "1.0.17";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fsevents/-/fsevents-1.0.17.tgz";
              sha1 = "8537f3f12272678765b4fd6528c0f1f66f8f4558";
            };
            dependencies = {
              "nan@2.5.0" = pkgs."nan@2.5.0";
              "node-pre-gyp@0.6.32" = pkgs."node-pre-gyp@0.6.32";
            };
            seen = [ "fsevents@1.0.17" ];
            };
  "fstream-ignore@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "fstream-ignore";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fstream-ignore/-/fstream-ignore-1.0.5.tgz";
              sha1 = "9c31dae34767018fe1d249b24dada67d092da105";
            };
            dependencies = {
              "fstream@1.0.10" = pkgs."fstream@1.0.10";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
            };
            seen = [ "fstream-ignore@1.0.5" ];
            };
  "fstream@1.0.11" = nodeEnv.buildYarnPackage {
            packageName = "fstream";
            version = "1.0.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fstream/-/fstream-1.0.11.tgz";
              sha1 = "5c1fb1f117477114f0632a0eb4b71b3cb0fd3171";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
            };
            seen = [ "fstream@1.0.11" ];
            };
  "function-bind@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "function-bind";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz";
              sha1 = "a56899d3ea3c9bab874bb9773b7c5ede92f4895d";
            };
            dependencies = {};
            seen = [ "function-bind@1.1.1" ];
            };
  "fuse.js@2.6.1" = nodeEnv.buildYarnPackage {
            packageName = "fuse.js";
            version = "2.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fuse.js/-/fuse.js-2.6.1.tgz";
              sha1 = "d118e00f9a859f7b354ed4f7740214249e32a57a";
            };
            dependencies = {};
            seen = [ "fuse.js@2.6.1" ];
            };
  "fuzzysearch@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "fuzzysearch";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fuzzysearch/-/fuzzysearch-1.0.3.tgz";
              sha1 = "dffc80f6d6b04223f2226aa79dd194231096d008";
            };
            dependencies = {};
            seen = [ "fuzzysearch@1.0.3" ];
            };
  "gauge@2.7.4" = nodeEnv.buildYarnPackage {
            packageName = "gauge";
            version = "2.7.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.4.tgz";
              sha1 = "2c03405c7538c39d7eb37b317022e325fb018bf7";
            };
            dependencies = {
              "aproba@1.0.4" = pkgs."aproba@1.0.4";
              "console-control-strings@1.1.0" = pkgs."console-control-strings@1.1.0";
              "has-unicode@2.0.1" = pkgs."has-unicode@2.0.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "signal-exit@3.0.2" = pkgs."signal-exit@3.0.2";
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
              "wide-align@1.1.0" = pkgs."wide-align@1.1.0";
            };
            seen = [ "gauge@2.7.4" ];
            };
  "gaze@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "gaze";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gaze/-/gaze-1.1.2.tgz";
              sha1 = "847224677adb8870d679257ed3388fdb61e40105";
            };
            dependencies = {
              "globule@1.1.0" = pkgs."globule@1.1.0";
            };
            seen = [ "gaze@1.1.2" ];
            };
  "generate-function@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "generate-function";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/generate-function/-/generate-function-2.0.0.tgz";
              sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
            };
            dependencies = {};
            seen = [ "generate-function@2.0.0" ];
            };
  "generate-object-property@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "generate-object-property";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/generate-object-property/-/generate-object-property-1.2.0.tgz";
              sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
            };
            dependencies = {
              "is-property@1.0.2" = pkgs."is-property@1.0.2";
            };
            seen = [ "generate-object-property@1.2.0" ];
            };
  "generic-names@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "generic-names";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/generic-names/-/generic-names-1.0.2.tgz";
              sha1 = "e25b7feceb5b5a8f28f5f972a7ccfe57e562adcd";
            };
            dependencies = {
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
            };
            seen = [ "generic-names@1.0.2" ];
            };
  "get-caller-file@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "get-caller-file";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-1.0.2.tgz";
              sha1 = "f702e63127e7e231c160a80c1554acb70d5047e5";
            };
            dependencies = {};
            seen = [ "get-caller-file@1.0.2" ];
            };
  "get-func-name@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "get-func-name";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-func-name/-/get-func-name-2.0.0.tgz";
              sha1 = "ead774abee72e20409433a066366023dd6887a41";
            };
            dependencies = {};
            seen = [ "get-func-name@2.0.0" ];
            };
  "get-package-info@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "get-package-info";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-package-info/-/get-package-info-1.0.0.tgz";
              sha1 = "6432796563e28113cd9474dbbd00052985a4999c";
            };
            dependencies = {
              "bluebird@3.4.7" = pkgs."bluebird@3.4.7";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "lodash.get@4.4.2" = pkgs."lodash.get@4.4.2";
              "read-pkg-up@2.0.0" = pkgs."read-pkg-up@2.0.0";
            };
            seen = [ "get-package-info@1.0.0" ];
            };
  "get-stdin@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "get-stdin";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-stdin/-/get-stdin-4.0.1.tgz";
              sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
            };
            dependencies = {};
            seen = [ "get-stdin@4.0.1" ];
            };
  "get-stream@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "get-stream";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-stream/-/get-stream-3.0.0.tgz";
              sha1 = "8e943d1358dc37555054ecbe2edb05aa174ede14";
            };
            dependencies = {};
            seen = [ "get-stream@3.0.0" ];
            };
  "getpass@0.1.6" = nodeEnv.buildYarnPackage {
            packageName = "getpass";
            version = "0.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/getpass/-/getpass-0.1.6.tgz";
              sha1 = "283ffd9fc1256840875311c1b60e8c40187110e6";
            };
            dependencies = {
              "assert-plus@1.0.0" = pkgs."assert-plus@1.0.0";
            };
            seen = [ "getpass@0.1.6" ];
            };
  "gherkin@5.0.0" = nodeEnv.buildYarnPackage {
            packageName = "gherkin";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gherkin/-/gherkin-5.0.0.tgz";
              sha1 = "96def41198ec3908258b511af74f655a2764d2a1";
            };
            dependencies = {};
            seen = [ "gherkin@5.0.0" ];
            };
  "glob-base@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "glob-base";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob-base/-/glob-base-0.3.0.tgz";
              sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
            };
            dependencies = {
              "glob-parent@2.0.0" = pkgs."glob-parent@2.0.0";
              "is-glob@2.0.1" = pkgs."is-glob@2.0.1";
            };
            seen = [ "glob-base@0.3.0" ];
            };
  "glob-parent@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "glob-parent";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-2.0.0.tgz";
              sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
            };
            dependencies = {
              "is-glob@2.0.1" = pkgs."is-glob@2.0.1";
            };
            seen = [ "glob-parent@2.0.0" ];
            };
  "glob-to-regexp@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "glob-to-regexp";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob-to-regexp/-/glob-to-regexp-0.1.0.tgz";
              sha1 = "e0369d426578fd456d47dc23b09de05c1da9ea5d";
            };
            dependencies = {};
            seen = [ "glob-to-regexp@0.1.0" ];
            };
  "glob@7.1.1" = nodeEnv.buildYarnPackage {
            packageName = "glob";
            version = "7.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob/-/glob-7.1.1.tgz";
              sha1 = "805211df04faaf1c63a3600306cdf5ade50b2ec8";
            };
            dependencies = {
              "fs.realpath@1.0.0" = pkgs."fs.realpath@1.0.0";
              "inflight@1.0.6" = pkgs."inflight@1.0.6";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "once@1.4.0" = pkgs."once@1.4.0";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
            };
            seen = [ "glob@7.1.1" ];
            };
  "global-modules@0.2.3" = nodeEnv.buildYarnPackage {
            packageName = "global-modules";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/global-modules/-/global-modules-0.2.3.tgz";
              sha1 = "ea5a3bed42c6d6ce995a4f8a1269b5dae223828d";
            };
            dependencies = {
              "global-prefix@0.1.5" = pkgs."global-prefix@0.1.5";
              "is-windows@0.2.0" = pkgs."is-windows@0.2.0";
            };
            seen = [ "global-modules@0.2.3" ];
            };
  "global-prefix@0.1.5" = nodeEnv.buildYarnPackage {
            packageName = "global-prefix";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/global-prefix/-/global-prefix-0.1.5.tgz";
              sha1 = "8d3bc6b8da3ca8112a160d8d496ff0462bfef78f";
            };
            dependencies = {
              "homedir-polyfill@1.0.1" = pkgs."homedir-polyfill@1.0.1";
              "ini@1.3.4" = pkgs."ini@1.3.4";
              "is-windows@0.2.0" = pkgs."is-windows@0.2.0";
              "which@1.2.12" = pkgs."which@1.2.12";
            };
            seen = [ "global-prefix@0.1.5" ];
            };
  "global@4.3.2" = nodeEnv.buildYarnPackage {
            packageName = "global";
            version = "4.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/global/-/global-4.3.2.tgz";
              sha1 = "e76989268a6c74c38908b1305b10fc0e394e9d0f";
            };
            dependencies = {
              "min-document@2.19.0" = pkgs."min-document@2.19.0";
              "process@0.5.2" = pkgs."process@0.5.2";
            };
            seen = [ "global@4.3.2" ];
            };
  "globals@9.18.0" = nodeEnv.buildYarnPackage {
            packageName = "globals";
            version = "9.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globals/-/globals-9.18.0.tgz";
              sha1 = "aa3896b3e69b487f17e31ed2143d69a8e30c2d8a";
            };
            dependencies = {};
            seen = [ "globals@9.18.0" ];
            };
  "globby@5.0.0" = nodeEnv.buildYarnPackage {
            packageName = "globby";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globby/-/globby-5.0.0.tgz";
              sha1 = "ebd84667ca0dbb330b99bcfc68eac2bc54370e0d";
            };
            dependencies = {
              "array-union@1.0.2" = pkgs."array-union@1.0.2";
              "arrify@1.0.1" = pkgs."arrify@1.0.1";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "pify@2.3.0" = pkgs."pify@2.3.0";
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
            };
            seen = [ "globby@5.0.0" ];
            };
  "globule@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "globule";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globule/-/globule-1.1.0.tgz";
              sha1 = "c49352e4dc183d85893ee825385eb994bb6df45f";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "lodash@4.16.6" = pkgs."lodash@4.16.6";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
            };
            seen = [ "globule@1.1.0" ];
            };
  "glogg@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "glogg";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glogg/-/glogg-1.0.0.tgz";
              sha1 = "7fe0f199f57ac906cf512feead8f90ee4a284fc5";
            };
            dependencies = {
              "sparkles@1.0.0" = pkgs."sparkles@1.0.0";
            };
            seen = [ "glogg@1.0.0" ];
            };
  "glossy@0.1.7" = nodeEnv.buildYarnPackage {
            packageName = "glossy";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glossy/-/glossy-0.1.7.tgz";
              sha1 = "769b5984a96f6066ab9ea758224825ee6c210f0b";
            };
            dependencies = {};
            seen = [ "glossy@0.1.7" ];
            };
  "got@7.1.0" = nodeEnv.buildYarnPackage {
            packageName = "got";
            version = "7.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/got/-/got-7.1.0.tgz";
              sha1 = "05450fd84094e6bbea56f451a43a9c289166385a";
            };
            dependencies = {
              "decompress-response@3.3.0" = pkgs."decompress-response@3.3.0";
              "duplexer3@0.1.4" = pkgs."duplexer3@0.1.4";
              "get-stream@3.0.0" = pkgs."get-stream@3.0.0";
              "is-plain-obj@1.1.0" = pkgs."is-plain-obj@1.1.0";
              "is-retry-allowed@1.1.0" = pkgs."is-retry-allowed@1.1.0";
              "is-stream@1.1.0" = pkgs."is-stream@1.1.0";
              "isurl@1.0.0" = pkgs."isurl@1.0.0";
              "lowercase-keys@1.0.0" = pkgs."lowercase-keys@1.0.0";
              "p-cancelable@0.3.0" = pkgs."p-cancelable@0.3.0";
              "p-timeout@1.2.1" = pkgs."p-timeout@1.2.1";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
              "timed-out@4.0.1" = pkgs."timed-out@4.0.1";
              "url-parse-lax@1.0.0" = pkgs."url-parse-lax@1.0.0";
              "url-to-options@1.0.1" = pkgs."url-to-options@1.0.1";
            };
            seen = [ "got@7.1.0" ];
            };
  "graceful-fs@4.1.11" = nodeEnv.buildYarnPackage {
            packageName = "graceful-fs";
            version = "4.1.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.1.11.tgz";
              sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
            };
            dependencies = {};
            seen = [ "graceful-fs@4.1.11" ];
            };
  "graceful-readlink@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "graceful-readlink";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
              sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
            };
            dependencies = {};
            seen = [ "graceful-readlink@1.0.1" ];
            };
  "gulp-util@3.0.8" = nodeEnv.buildYarnPackage {
            packageName = "gulp-util";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gulp-util/-/gulp-util-3.0.8.tgz";
              sha1 = "0054e1e744502e27c04c187c3ecc505dd54bbb4f";
            };
            dependencies = {
              "array-differ@1.0.0" = pkgs."array-differ@1.0.0";
              "array-uniq@1.0.3" = pkgs."array-uniq@1.0.3";
              "beeper@1.1.1" = pkgs."beeper@1.1.1";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "dateformat@2.0.0" = pkgs."dateformat@2.0.0";
              "fancy-log@1.3.0" = pkgs."fancy-log@1.3.0";
              "gulplog@1.0.0" = pkgs."gulplog@1.0.0";
              "has-gulplog@0.1.0" = pkgs."has-gulplog@0.1.0";
              "lodash._reescape@3.0.0" = pkgs."lodash._reescape@3.0.0";
              "lodash._reevaluate@3.0.0" = pkgs."lodash._reevaluate@3.0.0";
              "lodash._reinterpolate@3.0.0" = pkgs."lodash._reinterpolate@3.0.0";
              "lodash.template@3.6.2" = pkgs."lodash.template@3.6.2";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "multipipe@0.1.2" = pkgs."multipipe@0.1.2";
              "object-assign@3.0.0" = pkgs."object-assign@3.0.0";
              "replace-ext@0.0.1" = pkgs."replace-ext@0.0.1";
              "through2@2.0.3" = pkgs."through2@2.0.3";
              "vinyl@0.5.3" = pkgs."vinyl@0.5.3";
            };
            seen = [ "gulp-util@3.0.8" ];
            };
  "gulplog@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "gulplog";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gulplog/-/gulplog-1.0.0.tgz";
              sha1 = "e28c4d45d05ecbbed818363ce8f9c5926229ffe5";
            };
            dependencies = {
              "glogg@1.0.0" = pkgs."glogg@1.0.0";
            };
            seen = [ "gulplog@1.0.0" ];
            };
  "happypack@4.0.0-beta.2" = nodeEnv.buildYarnPackage {
            packageName = "happypack";
            version = "4.0.0-beta.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/happypack/-/happypack-4.0.0-beta.2.tgz";
              sha1 = "552e75d17292d5142c84be32f9b255d91e40e020";
            };
            dependencies = {
              "async@1.5.0" = pkgs."async@1.5.0";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "loader-utils@1.1.0" = pkgs."loader-utils@1.1.0";
              "serialize-error@2.1.0" = pkgs."serialize-error@2.1.0";
            };
            seen = [ "happypack@4.0.0-beta.2" ];
            };
  "har-schema@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "har-schema";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/har-schema/-/har-schema-2.0.0.tgz";
              sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
            };
            dependencies = {};
            seen = [ "har-schema@2.0.0" ];
            };
  "har-validator@5.0.3" = nodeEnv.buildYarnPackage {
            packageName = "har-validator";
            version = "5.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/har-validator/-/har-validator-5.0.3.tgz";
              sha1 = "ba402c266194f15956ef15e0fcf242993f6a7dfd";
            };
            dependencies = {
              "ajv@5.5.2" = pkgs."ajv@5.5.2";
              "har-schema@2.0.0" = pkgs."har-schema@2.0.0";
            };
            seen = [ "har-validator@5.0.3" ];
            };
  "has-ansi@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "has-ansi";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-2.0.0.tgz";
              sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
            };
            dependencies = {
              "ansi-regex@2.0.0" = pkgs."ansi-regex@2.0.0";
            };
            seen = [ "has-ansi@2.0.0" ];
            };
  "has-flag@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "has-flag";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-flag/-/has-flag-3.0.0.tgz";
              sha1 = "b5d454dc2199ae225699f3467e5a07f3b955bafd";
            };
            dependencies = {};
            seen = [ "has-flag@3.0.0" ];
            };
  "has-gulplog@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "has-gulplog";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-gulplog/-/has-gulplog-0.1.0.tgz";
              sha1 = "6414c82913697da51590397dafb12f22967811ce";
            };
            dependencies = {
              "sparkles@1.0.0" = pkgs."sparkles@1.0.0";
            };
            seen = [ "has-gulplog@0.1.0" ];
            };
  "has-symbol-support-x@1.4.2" = nodeEnv.buildYarnPackage {
            packageName = "has-symbol-support-x";
            version = "1.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-symbol-support-x/-/has-symbol-support-x-1.4.2.tgz";
              sha1 = "1409f98bc00247da45da67cee0a36f282ff26455";
            };
            dependencies = {};
            seen = [ "has-symbol-support-x@1.4.2" ];
            };
  "has-symbols@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "has-symbols";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-symbols/-/has-symbols-1.0.0.tgz";
              sha1 = "ba1a8f1af2a0fc39650f5c850367704122063b44";
            };
            dependencies = {};
            seen = [ "has-symbols@1.0.0" ];
            };
  "has-to-string-tag-x@1.4.1" = nodeEnv.buildYarnPackage {
            packageName = "has-to-string-tag-x";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-to-string-tag-x/-/has-to-string-tag-x-1.4.1.tgz";
              sha1 = "a045ab383d7b4b2012a00148ab0aa5f290044d4d";
            };
            dependencies = {
              "has-symbol-support-x@1.4.2" = pkgs."has-symbol-support-x@1.4.2";
            };
            seen = [ "has-to-string-tag-x@1.4.1" ];
            };
  "has-unicode@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "has-unicode";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-unicode/-/has-unicode-2.0.1.tgz";
              sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
            };
            dependencies = {};
            seen = [ "has-unicode@2.0.1" ];
            };
  "has@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "has";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has/-/has-1.0.1.tgz";
              sha1 = "8461733f538b0837c9361e39a9ab9e9704dc2f28";
            };
            dependencies = {
              "function-bind@1.1.0" = pkgs."function-bind@1.1.0";
            };
            seen = [ "has@1.0.1" ];
            };
  "hash-base@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "hash-base";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hash-base/-/hash-base-2.0.2.tgz";
              sha1 = "66ea1d856db4e8a5470cadf6fce23ae5244ef2e1";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "hash-base@2.0.2" ];
            };
  "hash.js@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "hash.js";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hash.js/-/hash.js-1.1.3.tgz";
              sha1 = "340dedbe6290187151c1ea1d777a3448935df846";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "minimalistic-assert@1.0.0" = pkgs."minimalistic-assert@1.0.0";
            };
            seen = [ "hash.js@1.1.3" ];
            };
  "hawk@6.0.2" = nodeEnv.buildYarnPackage {
            packageName = "hawk";
            version = "6.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hawk/-/hawk-6.0.2.tgz";
              sha1 = "af4d914eb065f9b5ce4d9d11c1cb2126eecc3038";
            };
            dependencies = {
              "boom@4.3.1" = pkgs."boom@4.3.1";
              "cryptiles@3.1.2" = pkgs."cryptiles@3.1.2";
              "hoek@4.1.0" = pkgs."hoek@4.1.0";
              "sntp@2.1.0" = pkgs."sntp@2.1.0";
            };
            seen = [ "hawk@6.0.2" ];
            };
  "he@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "he";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/he/-/he-1.1.1.tgz";
              sha1 = "93410fd21b009735151f8868c2f271f3427e23fd";
            };
            dependencies = {};
            seen = [ "he@1.1.1" ];
            };
  "highlight.js@9.9.0" = nodeEnv.buildYarnPackage {
            packageName = "highlight.js";
            version = "9.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/highlight.js/-/highlight.js-9.9.0.tgz";
              sha1 = "b9995dcfdc2773e307a34f0460d92b9a474782c0";
            };
            dependencies = {};
            seen = [ "highlight.js@9.9.0" ];
            };
  "history@3.2.1" = nodeEnv.buildYarnPackage {
            packageName = "history";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/history/-/history-3.2.1.tgz";
              sha1 = "71c7497f4e6090363d19a6713bb52a1bfcdd99aa";
            };
            dependencies = {
              "invariant@2.2.2" = pkgs."invariant@2.2.2";
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
              "query-string@4.2.3" = pkgs."query-string@4.2.3";
              "warning@3.0.0" = pkgs."warning@3.0.0";
            };
            seen = [ "history@3.2.1" ];
            };
  "hmac-drbg@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "hmac-drbg";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hmac-drbg/-/hmac-drbg-1.0.1.tgz";
              sha1 = "d2745701025a6c775a6c545793ed502fc0c649a1";
            };
            dependencies = {
              "hash.js@1.1.3" = pkgs."hash.js@1.1.3";
              "minimalistic-assert@1.0.0" = pkgs."minimalistic-assert@1.0.0";
              "minimalistic-crypto-utils@1.0.1" = pkgs."minimalistic-crypto-utils@1.0.1";
            };
            seen = [ "hmac-drbg@1.0.1" ];
            };
  "hoek@4.1.0" = nodeEnv.buildYarnPackage {
            packageName = "hoek";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hoek/-/hoek-4.1.0.tgz";
              sha1 = "4a4557460f69842ed463aa00628cc26d2683afa7";
            };
            dependencies = {};
            seen = [ "hoek@4.1.0" ];
            };
  "hoist-non-react-statics@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "hoist-non-react-statics";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hoist-non-react-statics/-/hoist-non-react-statics-1.2.0.tgz";
              sha1 = "aa448cf0986d55cc40773b17174b7dd066cb7cfb";
            };
            dependencies = {};
            seen = [ "hoist-non-react-statics@1.2.0" ];
            };
  "home-or-tmp@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "home-or-tmp";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/home-or-tmp/-/home-or-tmp-2.0.0.tgz";
              sha1 = "e36c3f2d2cae7d746a857e38d18d5f32a7882db8";
            };
            dependencies = {
              "os-homedir@1.0.2" = pkgs."os-homedir@1.0.2";
              "os-tmpdir@1.0.2" = pkgs."os-tmpdir@1.0.2";
            };
            seen = [ "home-or-tmp@2.0.0" ];
            };
  "home-path@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "home-path";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/home-path/-/home-path-1.0.3.tgz";
              sha1 = "9ece59fec3f032e6d10b5434fee264df4c2de32f";
            };
            dependencies = {};
            seen = [ "home-path@1.0.3" ];
            };
  "homedir-polyfill@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "homedir-polyfill";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/homedir-polyfill/-/homedir-polyfill-1.0.1.tgz";
              sha1 = "4c2bbc8a758998feebf5ed68580f76d46768b4bc";
            };
            dependencies = {
              "parse-passwd@1.0.0" = pkgs."parse-passwd@1.0.0";
            };
            seen = [ "homedir-polyfill@1.0.1" ];
            };
  "hosted-git-info@2.1.5" = nodeEnv.buildYarnPackage {
            packageName = "hosted-git-info";
            version = "2.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.1.5.tgz";
              sha1 = "0ba81d90da2e25ab34a332e6ec77936e1598118b";
            };
            dependencies = {};
            seen = [ "hosted-git-info@2.1.5" ];
            };
  "html-comment-regex@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "html-comment-regex";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-comment-regex/-/html-comment-regex-1.1.1.tgz";
              sha1 = "668b93776eaae55ebde8f3ad464b307a4963625e";
            };
            dependencies = {};
            seen = [ "html-comment-regex@1.1.1" ];
            };
  "html-encoding-sniffer@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "html-encoding-sniffer";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-encoding-sniffer/-/html-encoding-sniffer-1.0.1.tgz";
              sha1 = "79bf7a785ea495fe66165e734153f363ff5437da";
            };
            dependencies = {
              "whatwg-encoding@1.0.1" = pkgs."whatwg-encoding@1.0.1";
            };
            seen = [ "html-encoding-sniffer@1.0.1" ];
            };
  "html-entities@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "html-entities";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-entities/-/html-entities-1.2.0.tgz";
              sha1 = "41948caf85ce82fed36e4e6a0ed371a6664379e2";
            };
            dependencies = {};
            seen = [ "html-entities@1.2.0" ];
            };
  "html-loader@0.4.5" = nodeEnv.buildYarnPackage {
            packageName = "html-loader";
            version = "0.4.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-loader/-/html-loader-0.4.5.tgz";
              sha1 = "5fbcd87cd63a5c49a7fce2fe56f425e05729c68c";
            };
            dependencies = {
              "es6-templates@0.2.3" = pkgs."es6-templates@0.2.3";
              "fastparse@1.1.1" = pkgs."fastparse@1.1.1";
              "html-minifier@3.5.10" = pkgs."html-minifier@3.5.10";
              "loader-utils@1.1.0" = pkgs."loader-utils@1.1.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "html-loader@0.4.5" ];
            };
  "html-minifier@3.5.10" = nodeEnv.buildYarnPackage {
            packageName = "html-minifier";
            version = "3.5.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-minifier/-/html-minifier-3.5.10.tgz";
              sha1 = "8522c772c388db81aa5c26f62033302d906ea1c7";
            };
            dependencies = {
              "camel-case@3.0.0" = pkgs."camel-case@3.0.0";
              "clean-css@4.1.11" = pkgs."clean-css@4.1.11";
              "commander@2.14.1" = pkgs."commander@2.14.1";
              "he@1.1.1" = pkgs."he@1.1.1";
              "ncname@1.0.0" = pkgs."ncname@1.0.0";
              "param-case@2.1.1" = pkgs."param-case@2.1.1";
              "relateurl@0.2.7" = pkgs."relateurl@0.2.7";
              "uglify-js@3.3.13" = pkgs."uglify-js@3.3.13";
            };
            seen = [ "html-minifier@3.5.10" ];
            };
  "http-errors@1.6.2" = nodeEnv.buildYarnPackage {
            packageName = "http-errors";
            version = "1.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.6.2.tgz";
              sha1 = "0a002cc85707192a7e7946ceedc11155f60ec736";
            };
            dependencies = {
              "depd@1.1.1" = pkgs."depd@1.1.1";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "setprototypeof@1.0.3" = pkgs."setprototypeof@1.0.3";
              "statuses@1.3.1" = pkgs."statuses@1.3.1";
            };
            seen = [ "http-errors@1.6.2" ];
            };
  "http-https@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "http-https";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-https/-/http-https-1.0.0.tgz";
              sha1 = "2f908dd5f1db4068c058cd6e6d4ce392c913389b";
            };
            dependencies = {};
            seen = [ "http-https@1.0.0" ];
            };
  "http-signature@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "http-signature";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.2.0.tgz";
              sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
            };
            dependencies = {
              "assert-plus@1.0.0" = pkgs."assert-plus@1.0.0";
              "jsprim@1.3.1" = pkgs."jsprim@1.3.1";
              "sshpk@1.10.1" = pkgs."sshpk@1.10.1";
            };
            seen = [ "http-signature@1.2.0" ];
            };
  "https-browserify@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "https-browserify";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/https-browserify/-/https-browserify-0.0.1.tgz";
              sha1 = "3f91365cabe60b77ed0ebba24b454e3e09d95a82";
            };
            dependencies = {};
            seen = [ "https-browserify@0.0.1" ];
            };
  "humanize-duration@3.12.0" = nodeEnv.buildYarnPackage {
            packageName = "humanize-duration";
            version = "3.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/humanize-duration/-/humanize-duration-3.12.0.tgz";
              sha1 = "be2fb3062f5d7abc0892e715b5dd2bd152c7055e";
            };
            dependencies = {};
            seen = [ "humanize-duration@3.12.0" ];
            };
  "humanize-plus@1.8.2" = nodeEnv.buildYarnPackage {
            packageName = "humanize-plus";
            version = "1.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/humanize-plus/-/humanize-plus-1.8.2.tgz";
              sha1 = "a65b34459ad6367adbb3707a82a3c9f916167030";
            };
            dependencies = {};
            seen = [ "humanize-plus@1.8.2" ];
            };
  "iconv-lite@0.4.19" = nodeEnv.buildYarnPackage {
            packageName = "iconv-lite";
            version = "0.4.19";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.19.tgz";
              sha1 = "f7468f60135f5e5dad3399c0a81be9a1603a082b";
            };
            dependencies = {};
            seen = [ "iconv-lite@0.4.19" ];
            };
  "icss-replace-symbols@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "icss-replace-symbols";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/icss-replace-symbols/-/icss-replace-symbols-1.0.2.tgz";
              sha1 = "cb0b6054eb3af6edc9ab1d62d01933e2d4c8bfa5";
            };
            dependencies = {};
            seen = [ "icss-replace-symbols@1.0.2" ];
            };
  "ieee754@1.1.8" = nodeEnv.buildYarnPackage {
            packageName = "ieee754";
            version = "1.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ieee754/-/ieee754-1.1.8.tgz";
              sha1 = "be33d40ac10ef1926701f6f08a2d86fbfd1ad3e4";
            };
            dependencies = {};
            seen = [ "ieee754@1.1.8" ];
            };
  "ignore-by-default@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "ignore-by-default";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ignore-by-default/-/ignore-by-default-1.0.1.tgz";
              sha1 = "48ca6d72f6c6a3af00a9ad4ae6876be3889e2b09";
            };
            dependencies = {};
            seen = [ "ignore-by-default@1.0.1" ];
            };
  "ignore@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "ignore";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ignore/-/ignore-3.2.0.tgz";
              sha1 = "8d88f03c3002a0ac52114db25d2c673b0bf1e435";
            };
            dependencies = {};
            seen = [ "ignore@3.2.0" ];
            };
  "immutable@3.8.1" = nodeEnv.buildYarnPackage {
            packageName = "immutable";
            version = "3.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/immutable/-/immutable-3.8.1.tgz";
              sha1 = "200807f11ab0f72710ea485542de088075f68cd2";
            };
            dependencies = {};
            seen = [ "immutable@3.8.1" ];
            };
  "imurmurhash@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "imurmurhash";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/imurmurhash/-/imurmurhash-0.1.4.tgz";
              sha1 = "9218b9b2b928a238b13dc4fb6b6d576f231453ea";
            };
            dependencies = {};
            seen = [ "imurmurhash@0.1.4" ];
            };
  "in-publish@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "in-publish";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/in-publish/-/in-publish-2.0.0.tgz";
              sha1 = "e20ff5e3a2afc2690320b6dc552682a9c7fadf51";
            };
            dependencies = {};
            seen = [ "in-publish@2.0.0" ];
            };
  "indent-string@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "indent-string";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indent-string/-/indent-string-3.2.0.tgz";
              sha1 = "4a5fd6d27cc332f37e5419a504dbb837105c9289";
            };
            dependencies = {};
            seen = [ "indent-string@3.2.0" ];
            };
  "indexes-of@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "indexes-of";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indexes-of/-/indexes-of-1.0.1.tgz";
              sha1 = "f30f716c8e2bd346c7b67d3df3915566a7c05607";
            };
            dependencies = {};
            seen = [ "indexes-of@1.0.1" ];
            };
  "indexof@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "indexof";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indexof/-/indexof-0.0.1.tgz";
              sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
            };
            dependencies = {};
            seen = [ "indexof@0.0.1" ];
            };
  "infinity-agent@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "infinity-agent";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/infinity-agent/-/infinity-agent-2.0.3.tgz";
              sha1 = "45e0e2ff7a9eb030b27d62b74b3744b7a7ac4216";
            };
            dependencies = {};
            seen = [ "infinity-agent@2.0.3" ];
            };
  "inflight@1.0.6" = nodeEnv.buildYarnPackage {
            packageName = "inflight";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz";
              sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
            };
            dependencies = {
              "once@1.4.0" = pkgs."once@1.4.0";
              "wrappy@1.0.2" = pkgs."wrappy@1.0.2";
            };
            seen = [ "inflight@1.0.6" ];
            };
  "inherits@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "inherits";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz";
              sha1 = "633c2c83e3da42a502f52466022480f4208261de";
            };
            dependencies = {};
            seen = [ "inherits@2.0.3" ];
            };
  "ini@1.3.4" = nodeEnv.buildYarnPackage {
            packageName = "ini";
            version = "1.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ini/-/ini-1.3.4.tgz";
              sha1 = "0537cb79daf59b59a1a517dff706c86ec039162e";
            };
            dependencies = {};
            seen = [ "ini@1.3.4" ];
            };
  "inquirer@3.3.0" = nodeEnv.buildYarnPackage {
            packageName = "inquirer";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inquirer/-/inquirer-3.3.0.tgz";
              sha1 = "9dd2f2ad765dcab1ff0443b491442a20ba227dc9";
            };
            dependencies = {
              "ansi-escapes@3.0.0" = pkgs."ansi-escapes@3.0.0";
              "chalk@2.3.2" = pkgs."chalk@2.3.2";
              "cli-cursor@2.1.0" = pkgs."cli-cursor@2.1.0";
              "cli-width@2.1.0" = pkgs."cli-width@2.1.0";
              "external-editor@2.1.0" = pkgs."external-editor@2.1.0";
              "figures@2.0.0" = pkgs."figures@2.0.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "mute-stream@0.0.7" = pkgs."mute-stream@0.0.7";
              "run-async@2.3.0" = pkgs."run-async@2.3.0";
              "rx-lite@4.0.8" = pkgs."rx-lite@4.0.8";
              "rx-lite-aggregates@4.0.8" = pkgs."rx-lite-aggregates@4.0.8";
              "string-width@2.1.1" = pkgs."string-width@2.1.1";
              "strip-ansi@4.0.0" = pkgs."strip-ansi@4.0.0";
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "inquirer@3.3.0" ];
            };
  "interpret@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "interpret";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/interpret/-/interpret-1.0.1.tgz";
              sha1 = "d579fb7f693b858004947af39fa0db49f795602c";
            };
            dependencies = {};
            seen = [ "interpret@1.0.1" ];
            };
  "intl-format-cache@2.0.5" = nodeEnv.buildYarnPackage {
            packageName = "intl-format-cache";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-format-cache/-/intl-format-cache-2.0.5.tgz";
              sha1 = "b484cefcb9353f374f25de389a3ceea1af18d7c9";
            };
            dependencies = {};
            seen = [ "intl-format-cache@2.0.5" ];
            };
  "intl-messageformat-parser@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "intl-messageformat-parser";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-messageformat-parser/-/intl-messageformat-parser-1.2.0.tgz";
              sha1 = "5906b7f953ab7470e0dc8549097b648b991892ff";
            };
            dependencies = {};
            seen = [ "intl-messageformat-parser@1.2.0" ];
            };
  "intl-messageformat@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "intl-messageformat";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-messageformat/-/intl-messageformat-1.3.0.tgz";
              sha1 = "f7d926aded7a3ab19b2dc601efd54e99a4bd4eae";
            };
            dependencies = {
              "intl-messageformat-parser@1.2.0" = pkgs."intl-messageformat-parser@1.2.0";
            };
            seen = [ "intl-messageformat@1.3.0" ];
            };
  "intl-relativeformat@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "intl-relativeformat";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-relativeformat/-/intl-relativeformat-1.3.0.tgz";
              sha1 = "893dc7076fccd380cf091a2300c380fa57ace45b";
            };
            dependencies = {
              "intl-messageformat@1.3.0" = pkgs."intl-messageformat@1.3.0";
            };
            seen = [ "intl-relativeformat@1.3.0" ];
            };
  "invariant@2.2.3" = nodeEnv.buildYarnPackage {
            packageName = "invariant";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/invariant/-/invariant-2.2.3.tgz";
              sha1 = "1a827dfde7dcbd7c323f0ca826be8fa7c5e9d688";
            };
            dependencies = {
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
            };
            seen = [ "invariant@2.2.3" ];
            };
  "invert-kv@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "invert-kv";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-1.0.0.tgz";
              sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
            };
            dependencies = {};
            seen = [ "invert-kv@1.0.0" ];
            };
  "ipaddr.js@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "ipaddr.js";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ipaddr.js/-/ipaddr.js-1.4.0.tgz";
              sha1 = "296aca878a821816e5b85d0a285a99bcff4582f0";
            };
            dependencies = {};
            seen = [ "ipaddr.js@1.4.0" ];
            };
  "irregular-plurals@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "irregular-plurals";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/irregular-plurals/-/irregular-plurals-1.2.0.tgz";
              sha1 = "38f299834ba8c00c30be9c554e137269752ff3ac";
            };
            dependencies = {};
            seen = [ "irregular-plurals@1.2.0" ];
            };
  "is-absolute-url@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "is-absolute-url";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-absolute-url/-/is-absolute-url-2.1.0.tgz";
              sha1 = "50530dfb84fcc9aa7dbe7852e83a37b93b9f2aa6";
            };
            dependencies = {};
            seen = [ "is-absolute-url@2.1.0" ];
            };
  "is-absolute@0.2.6" = nodeEnv.buildYarnPackage {
            packageName = "is-absolute";
            version = "0.2.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-absolute/-/is-absolute-0.2.6.tgz";
              sha1 = "20de69f3db942ef2d87b9c2da36f172235b1b5eb";
            };
            dependencies = {
              "is-relative@0.2.1" = pkgs."is-relative@0.2.1";
              "is-windows@0.2.0" = pkgs."is-windows@0.2.0";
            };
            seen = [ "is-absolute@0.2.6" ];
            };
  "is-arrayish@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "is-arrayish";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-arrayish/-/is-arrayish-0.2.1.tgz";
              sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
            };
            dependencies = {};
            seen = [ "is-arrayish@0.2.1" ];
            };
  "is-binary-path@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-binary-path";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-1.0.1.tgz";
              sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
            };
            dependencies = {
              "binary-extensions@1.8.0" = pkgs."binary-extensions@1.8.0";
            };
            seen = [ "is-binary-path@1.0.1" ];
            };
  "is-buffer@1.1.4" = nodeEnv.buildYarnPackage {
            packageName = "is-buffer";
            version = "1.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.4.tgz";
              sha1 = "cfc86ccd5dc5a52fa80489111c6920c457e2d98b";
            };
            dependencies = {};
            seen = [ "is-buffer@1.1.4" ];
            };
  "is-builtin-module@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-builtin-module";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
              sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
            };
            dependencies = {
              "builtin-modules@1.1.1" = pkgs."builtin-modules@1.1.1";
            };
            seen = [ "is-builtin-module@1.0.0" ];
            };
  "is-callable@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "is-callable";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-callable/-/is-callable-1.1.3.tgz";
              sha1 = "86eb75392805ddc33af71c92a0eedf74ee7604b2";
            };
            dependencies = {};
            seen = [ "is-callable@1.1.3" ];
            };
  "is-date-object@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-date-object";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.1.tgz";
              sha1 = "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16";
            };
            dependencies = {};
            seen = [ "is-date-object@1.0.1" ];
            };
  "is-dom@1.0.7" = nodeEnv.buildYarnPackage {
            packageName = "is-dom";
            version = "1.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-dom/-/is-dom-1.0.7.tgz";
              sha1 = "d5ffac0b73f90d07d9d1061436f60c409a071caf";
            };
            dependencies = {
              "jsdom@9.9.1" = pkgs."jsdom@9.9.1";
            };
            seen = [ "is-dom@1.0.7" ];
            };
  "is-dotfile@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "is-dotfile";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-dotfile/-/is-dotfile-1.0.2.tgz";
              sha1 = "2c132383f39199f8edc268ca01b9b007d205cc4d";
            };
            dependencies = {};
            seen = [ "is-dotfile@1.0.2" ];
            };
  "is-equal-shallow@0.1.3" = nodeEnv.buildYarnPackage {
            packageName = "is-equal-shallow";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
              sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
            };
            dependencies = {
              "is-primitive@2.0.0" = pkgs."is-primitive@2.0.0";
            };
            seen = [ "is-equal-shallow@0.1.3" ];
            };
  "is-extendable@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "is-extendable";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-0.1.1.tgz";
              sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
            };
            dependencies = {};
            seen = [ "is-extendable@0.1.1" ];
            };
  "is-extglob@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-extglob";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-1.0.0.tgz";
              sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
            };
            dependencies = {};
            seen = [ "is-extglob@1.0.0" ];
            };
  "is-finite@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "is-finite";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-finite/-/is-finite-1.0.2.tgz";
              sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
            };
            dependencies = {
              "number-is-nan@1.0.1" = pkgs."number-is-nan@1.0.1";
            };
            seen = [ "is-finite@1.0.2" ];
            };
  "is-fullwidth-code-point@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-fullwidth-code-point";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz";
              sha1 = "a3b30a5c4f199183167aaab93beefae3ddfb654f";
            };
            dependencies = {};
            seen = [ "is-fullwidth-code-point@2.0.0" ];
            };
  "is-function@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-function";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-function/-/is-function-1.0.1.tgz";
              sha1 = "12cfb98b65b57dd3d193a3121f5f6e2f437602b5";
            };
            dependencies = {};
            seen = [ "is-function@1.0.1" ];
            };
  "is-generator@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "is-generator";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-generator/-/is-generator-1.0.3.tgz";
              sha1 = "c14c21057ed36e328db80347966c693f886389f3";
            };
            dependencies = {};
            seen = [ "is-generator@1.0.3" ];
            };
  "is-glob@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-glob";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-glob/-/is-glob-2.0.1.tgz";
              sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
            };
            dependencies = {
              "is-extglob@1.0.0" = pkgs."is-extglob@1.0.0";
            };
            seen = [ "is-glob@2.0.1" ];
            };
  "is-hex-prefixed@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-hex-prefixed";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-hex-prefixed/-/is-hex-prefixed-1.0.0.tgz";
              sha1 = "7d8d37e6ad77e5d127148913c573e082d777f554";
            };
            dependencies = {};
            seen = [ "is-hex-prefixed@1.0.0" ];
            };
  "is-my-json-valid@2.15.0" = nodeEnv.buildYarnPackage {
            packageName = "is-my-json-valid";
            version = "2.15.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-my-json-valid/-/is-my-json-valid-2.15.0.tgz";
              sha1 = "936edda3ca3c211fd98f3b2d3e08da43f7b2915b";
            };
            dependencies = {
              "generate-function@2.0.0" = pkgs."generate-function@2.0.0";
              "generate-object-property@1.2.0" = pkgs."generate-object-property@1.2.0";
              "jsonpointer@4.0.1" = pkgs."jsonpointer@4.0.1";
              "xtend@4.0.1" = pkgs."xtend@4.0.1";
            };
            seen = [ "is-my-json-valid@2.15.0" ];
            };
  "is-natural-number@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-natural-number";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-natural-number/-/is-natural-number-4.0.1.tgz";
              sha1 = "ab9d76e1db4ced51e35de0c72ebecf09f734cde8";
            };
            dependencies = {};
            seen = [ "is-natural-number@4.0.1" ];
            };
  "is-npm@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-npm";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-npm/-/is-npm-1.0.0.tgz";
              sha1 = "f2fb63a65e4905b406c86072765a1a4dc793b9f4";
            };
            dependencies = {};
            seen = [ "is-npm@1.0.0" ];
            };
  "is-number@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "is-number";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-number/-/is-number-2.1.0.tgz";
              sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
            };
            dependencies = {
              "kind-of@3.1.0" = pkgs."kind-of@3.1.0";
            };
            seen = [ "is-number@2.1.0" ];
            };
  "is-obj@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-obj";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-obj/-/is-obj-1.0.1.tgz";
              sha1 = "3e4729ac1f5fde025cd7d83a896dab9f4f67db0f";
            };
            dependencies = {};
            seen = [ "is-obj@1.0.1" ];
            };
  "is-object@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-object";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-object/-/is-object-1.0.1.tgz";
              sha1 = "8952688c5ec2ffd6b03ecc85e769e02903083470";
            };
            dependencies = {};
            seen = [ "is-object@1.0.1" ];
            };
  "is-path-cwd@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-path-cwd";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-path-cwd/-/is-path-cwd-1.0.0.tgz";
              sha1 = "d225ec23132e89edd38fda767472e62e65f1106d";
            };
            dependencies = {};
            seen = [ "is-path-cwd@1.0.0" ];
            };
  "is-path-in-cwd@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-path-in-cwd";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-path-in-cwd/-/is-path-in-cwd-1.0.0.tgz";
              sha1 = "6477582b8214d602346094567003be8a9eac04dc";
            };
            dependencies = {
              "is-path-inside@1.0.0" = pkgs."is-path-inside@1.0.0";
            };
            seen = [ "is-path-in-cwd@1.0.0" ];
            };
  "is-path-inside@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-path-inside";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-path-inside/-/is-path-inside-1.0.0.tgz";
              sha1 = "fc06e5a1683fbda13de667aff717bbc10a48f37f";
            };
            dependencies = {
              "path-is-inside@1.0.2" = pkgs."path-is-inside@1.0.2";
            };
            seen = [ "is-path-inside@1.0.0" ];
            };
  "is-plain-obj@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "is-plain-obj";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
              sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
            };
            dependencies = {};
            seen = [ "is-plain-obj@1.1.0" ];
            };
  "is-posix-bracket@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "is-posix-bracket";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
              sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
            };
            dependencies = {};
            seen = [ "is-posix-bracket@0.1.1" ];
            };
  "is-primitive@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-primitive";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-primitive/-/is-primitive-2.0.0.tgz";
              sha1 = "207bab91638499c07b2adf240a41a87210034575";
            };
            dependencies = {};
            seen = [ "is-primitive@2.0.0" ];
            };
  "is-promise@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "is-promise";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-promise/-/is-promise-2.1.0.tgz";
              sha1 = "79a2a9ece7f096e80f36d2b2f3bc16c1ff4bf3fa";
            };
            dependencies = {};
            seen = [ "is-promise@2.1.0" ];
            };
  "is-property@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "is-property";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-property/-/is-property-1.0.2.tgz";
              sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
            };
            dependencies = {};
            seen = [ "is-property@1.0.2" ];
            };
  "is-redirect@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-redirect";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-redirect/-/is-redirect-1.0.0.tgz";
              sha1 = "1d03dded53bd8db0f30c26e4f95d36fc7c87dc24";
            };
            dependencies = {};
            seen = [ "is-redirect@1.0.0" ];
            };
  "is-regex@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "is-regex";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-regex/-/is-regex-1.0.3.tgz";
              sha1 = "0d55182bddf9f2fde278220aec3a75642c908637";
            };
            dependencies = {};
            seen = [ "is-regex@1.0.3" ];
            };
  "is-relative@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "is-relative";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-relative/-/is-relative-0.2.1.tgz";
              sha1 = "d27f4c7d516d175fb610db84bbeef23c3bc97aa5";
            };
            dependencies = {
              "is-unc-path@0.1.2" = pkgs."is-unc-path@0.1.2";
            };
            seen = [ "is-relative@0.2.1" ];
            };
  "is-resolvable@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-resolvable";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-resolvable/-/is-resolvable-1.0.0.tgz";
              sha1 = "8df57c61ea2e3c501408d100fb013cf8d6e0cc62";
            };
            dependencies = {
              "tryit@1.0.3" = pkgs."tryit@1.0.3";
            };
            seen = [ "is-resolvable@1.0.0" ];
            };
  "is-retry-allowed@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "is-retry-allowed";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-retry-allowed/-/is-retry-allowed-1.1.0.tgz";
              sha1 = "11a060568b67339444033d0125a61a20d564fb34";
            };
            dependencies = {};
            seen = [ "is-retry-allowed@1.1.0" ];
            };
  "is-stream@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "is-stream";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-stream/-/is-stream-1.1.0.tgz";
              sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
            };
            dependencies = {};
            seen = [ "is-stream@1.1.0" ];
            };
  "is-svg@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "is-svg";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-svg/-/is-svg-2.1.0.tgz";
              sha1 = "cf61090da0d9efbcab8722deba6f032208dbb0e9";
            };
            dependencies = {
              "html-comment-regex@1.1.1" = pkgs."html-comment-regex@1.1.1";
            };
            seen = [ "is-svg@2.1.0" ];
            };
  "is-symbol@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "is-symbol";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.1.tgz";
              sha1 = "3cc59f00025194b6ab2e38dbae6689256b660572";
            };
            dependencies = {};
            seen = [ "is-symbol@1.0.1" ];
            };
  "is-typedarray@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-typedarray";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-typedarray/-/is-typedarray-1.0.0.tgz";
              sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
            };
            dependencies = {};
            seen = [ "is-typedarray@1.0.0" ];
            };
  "is-unc-path@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "is-unc-path";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-unc-path/-/is-unc-path-0.1.2.tgz";
              sha1 = "6ab053a72573c10250ff416a3814c35178af39b9";
            };
            dependencies = {
              "unc-path-regex@0.1.2" = pkgs."unc-path-regex@0.1.2";
            };
            seen = [ "is-unc-path@0.1.2" ];
            };
  "is-utf8@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "is-utf8";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-utf8/-/is-utf8-0.2.1.tgz";
              sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
            };
            dependencies = {};
            seen = [ "is-utf8@0.2.1" ];
            };
  "is-windows@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "is-windows";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-windows/-/is-windows-1.0.2.tgz";
              sha1 = "d1850eb9791ecd18e6182ce12a30f396634bb19d";
            };
            dependencies = {};
            seen = [ "is-windows@1.0.2" ];
            };
  "isarray@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "isarray";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz";
              sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
            };
            dependencies = {};
            seen = [ "isarray@1.0.0" ];
            };
  "isbinaryfile@3.0.2" = nodeEnv.buildYarnPackage {
            packageName = "isbinaryfile";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isbinaryfile/-/isbinaryfile-3.0.2.tgz";
              sha1 = "4a3e974ec0cba9004d3fc6cde7209ea69368a621";
            };
            dependencies = {};
            seen = [ "isbinaryfile@3.0.2" ];
            };
  "isemail@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "isemail";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isemail/-/isemail-2.2.1.tgz";
              sha1 = "0353d3d9a62951080c262c2aa0a42b8ea8e9e2a6";
            };
            dependencies = {};
            seen = [ "isemail@2.2.1" ];
            };
  "isexe@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "isexe";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isexe/-/isexe-1.1.2.tgz";
              sha1 = "36f3e22e60750920f5e7241a476a8c6a42275ad0";
            };
            dependencies = {};
            seen = [ "isexe@1.1.2" ];
            };
  "isobject@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "isobject";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isobject/-/isobject-2.1.0.tgz";
              sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
            };
            dependencies = {
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
            };
            seen = [ "isobject@2.1.0" ];
            };
  "isomorphic-fetch@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "isomorphic-fetch";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isomorphic-fetch/-/isomorphic-fetch-2.2.1.tgz";
              sha1 = "611ae1acf14f5e81f729507472819fe9733558a9";
            };
            dependencies = {
              "node-fetch@1.6.3" = pkgs."node-fetch@1.6.3";
              "whatwg-fetch@2.0.1" = pkgs."whatwg-fetch@2.0.1";
            };
            seen = [ "isomorphic-fetch@2.2.1" ];
            };
  "isstream@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "isstream";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isstream/-/isstream-0.1.2.tgz";
              sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
            };
            dependencies = {};
            seen = [ "isstream@0.1.2" ];
            };
  "isurl@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "isurl";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isurl/-/isurl-1.0.0.tgz";
              sha1 = "b27f4f49f3cdaa3ea44a0a5b7f3462e6edc39d67";
            };
            dependencies = {
              "has-to-string-tag-x@1.4.1" = pkgs."has-to-string-tag-x@1.4.1";
              "is-object@1.0.1" = pkgs."is-object@1.0.1";
            };
            seen = [ "isurl@1.0.0" ];
            };
  "items@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "items";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/items/-/items-2.1.1.tgz";
              sha1 = "8bd16d9c83b19529de5aea321acaada78364a198";
            };
            dependencies = {};
            seen = [ "items@2.1.1" ];
            };
  "jodid25519@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "jodid25519";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jodid25519/-/jodid25519-1.0.2.tgz";
              sha1 = "06d4912255093419477d425633606e0e90782967";
            };
            dependencies = {
              "jsbn@0.1.0" = pkgs."jsbn@0.1.0";
            };
            seen = [ "jodid25519@1.0.2" ];
            };
  "joi@9.0.0-0" = nodeEnv.buildYarnPackage {
            packageName = "joi";
            version = "9.0.0-0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/joi/-/joi-9.0.0-0.tgz";
              sha1 = "a7ca4219602149ae0da7a7c5ca1d63d3c79e096b";
            };
            dependencies = {
              "hoek@4.1.0" = pkgs."hoek@4.1.0";
              "isemail@2.2.1" = pkgs."isemail@2.2.1";
              "items@2.1.1" = pkgs."items@2.1.1";
              "moment@2.17.1" = pkgs."moment@2.17.1";
              "topo@2.0.2" = pkgs."topo@2.0.2";
            };
            seen = [ "joi@9.0.0-0" ];
            };
  "js-base64@2.1.9" = nodeEnv.buildYarnPackage {
            packageName = "js-base64";
            version = "2.1.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-base64/-/js-base64-2.1.9.tgz";
              sha1 = "f0e80ae039a4bd654b5f281fc93f04a914a7fcce";
            };
            dependencies = {};
            seen = [ "js-base64@2.1.9" ];
            };
  "js-sha3@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "js-sha3";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-sha3/-/js-sha3-0.3.1.tgz";
              sha1 = "86122802142f0828502a0d1dee1d95e253bb0243";
            };
            dependencies = {};
            seen = [ "js-sha3@0.3.1" ];
            };
  "js-tokens@3.0.2" = nodeEnv.buildYarnPackage {
            packageName = "js-tokens";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-3.0.2.tgz";
              sha1 = "9866df395102130e38f7f996bceb65443209c25b";
            };
            dependencies = {};
            seen = [ "js-tokens@3.0.2" ];
            };
  "js-yaml@3.7.0" = nodeEnv.buildYarnPackage {
            packageName = "js-yaml";
            version = "3.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.7.0.tgz";
              sha1 = "5c967ddd837a9bfdca5f2de84253abe8a1c03b80";
            };
            dependencies = {
              "argparse@1.0.9" = pkgs."argparse@1.0.9";
              "esprima@2.7.3" = pkgs."esprima@2.7.3";
            };
            seen = [ "js-yaml@3.7.0" ];
            };
  "jsbn@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "jsbn";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsbn/-/jsbn-0.1.0.tgz";
              sha1 = "650987da0dd74f4ebf5a11377a2aa2d273e97dfd";
            };
            dependencies = {};
            seen = [ "jsbn@0.1.0" ];
            };
  "jsdom@9.9.1" = nodeEnv.buildYarnPackage {
            packageName = "jsdom";
            version = "9.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsdom/-/jsdom-9.9.1.tgz";
              sha1 = "84f3972ad394ab963233af8725211bce4d01bfd5";
            };
            dependencies = {
              "abab@1.0.3" = pkgs."abab@1.0.3";
              "acorn@2.7.0" = pkgs."acorn@2.7.0";
              "acorn-globals@1.0.9" = pkgs."acorn-globals@1.0.9";
              "array-equal@1.0.0" = pkgs."array-equal@1.0.0";
              "content-type-parser@1.0.1" = pkgs."content-type-parser@1.0.1";
              "cssom@0.3.1" = pkgs."cssom@0.3.1";
              "cssstyle@0.2.37" = pkgs."cssstyle@0.2.37";
              "escodegen@1.8.1" = pkgs."escodegen@1.8.1";
              "html-encoding-sniffer@1.0.1" = pkgs."html-encoding-sniffer@1.0.1";
              "iconv-lite@0.4.15" = pkgs."iconv-lite@0.4.15";
              "nwmatcher@1.3.9" = pkgs."nwmatcher@1.3.9";
              "parse5@1.5.1" = pkgs."parse5@1.5.1";
              "request@2.79.0" = pkgs."request@2.79.0";
              "sax@1.2.1" = pkgs."sax@1.2.1";
              "symbol-tree@3.2.1" = pkgs."symbol-tree@3.2.1";
              "tough-cookie@2.3.2" = pkgs."tough-cookie@2.3.2";
              "webidl-conversions@3.0.1" = pkgs."webidl-conversions@3.0.1";
              "whatwg-encoding@1.0.1" = pkgs."whatwg-encoding@1.0.1";
              "whatwg-url@4.2.0" = pkgs."whatwg-url@4.2.0";
              "xml-name-validator@2.0.1" = pkgs."xml-name-validator@2.0.1";
            };
            seen = [ "jsdom@9.9.1" ];
            };
  "jsesc@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "jsesc";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsesc/-/jsesc-1.3.0.tgz";
              sha1 = "46c3fec8c1892b12b0833db9bc7622176dbab34b";
            };
            dependencies = {};
            seen = [ "jsesc@1.3.0" ];
            };
  "json-loader@0.5.4" = nodeEnv.buildYarnPackage {
            packageName = "json-loader";
            version = "0.5.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-loader/-/json-loader-0.5.4.tgz";
              sha1 = "8baa1365a632f58a3c46d20175fc6002c96e37de";
            };
            dependencies = {};
            seen = [ "json-loader@0.5.4" ];
            };
  "json-schema-traverse@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "json-schema-traverse";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
              sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
            };
            dependencies = {};
            seen = [ "json-schema-traverse@0.3.1" ];
            };
  "json-schema@0.2.3" = nodeEnv.buildYarnPackage {
            packageName = "json-schema";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-schema/-/json-schema-0.2.3.tgz";
              sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
            };
            dependencies = {};
            seen = [ "json-schema@0.2.3" ];
            };
  "json-stable-stringify@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "json-stable-stringify";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-stable-stringify/-/json-stable-stringify-1.0.1.tgz";
              sha1 = "9a759d39c5f2ff503fd5300646ed445f88c4f9af";
            };
            dependencies = {
              "jsonify@0.0.0" = pkgs."jsonify@0.0.0";
            };
            seen = [ "json-stable-stringify@1.0.1" ];
            };
  "json-stringify-safe@5.0.1" = nodeEnv.buildYarnPackage {
            packageName = "json-stringify-safe";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
              sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
            };
            dependencies = {};
            seen = [ "json-stringify-safe@5.0.1" ];
            };
  "json5@0.5.1" = nodeEnv.buildYarnPackage {
            packageName = "json5";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json5/-/json5-0.5.1.tgz";
              sha1 = "1eade7acc012034ad84e2396767ead9fa5495821";
            };
            dependencies = {};
            seen = [ "json5@0.5.1" ];
            };
  "jsonfile@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "jsonfile";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-4.0.0.tgz";
              sha1 = "8771aae0799b64076b76640fca058f9c10e33ecb";
            };
            dependencies = {};
            seen = [ "jsonfile@4.0.0" ];
            };
  "jsonify@0.0.0" = nodeEnv.buildYarnPackage {
            packageName = "jsonify";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonify/-/jsonify-0.0.0.tgz";
              sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
            };
            dependencies = {};
            seen = [ "jsonify@0.0.0" ];
            };
  "jsonpointer@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "jsonpointer";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonpointer/-/jsonpointer-4.0.1.tgz";
              sha1 = "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9";
            };
            dependencies = {};
            seen = [ "jsonpointer@4.0.1" ];
            };
  "jsprim@1.3.1" = nodeEnv.buildYarnPackage {
            packageName = "jsprim";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsprim/-/jsprim-1.3.1.tgz";
              sha1 = "2a7256f70412a29ee3670aaca625994c4dcff252";
            };
            dependencies = {
              "extsprintf@1.0.2" = pkgs."extsprintf@1.0.2";
              "json-schema@0.2.3" = pkgs."json-schema@0.2.3";
              "verror@1.3.6" = pkgs."verror@1.3.6";
            };
            seen = [ "jsprim@1.3.1" ];
            };
  "jsx-ast-utils@1.3.5" = nodeEnv.buildYarnPackage {
            packageName = "jsx-ast-utils";
            version = "1.3.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsx-ast-utils/-/jsx-ast-utils-1.3.5.tgz";
              sha1 = "9ba6297198d9f754594d62e59496ffb923778dd4";
            };
            dependencies = {
              "acorn-jsx@3.0.1" = pkgs."acorn-jsx@3.0.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "jsx-ast-utils@1.3.5" ];
            };
  "keccakjs@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "keccakjs";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/keccakjs/-/keccakjs-0.2.1.tgz";
              sha1 = "1d633af907ef305bbf9f2fa616d56c44561dfa4d";
            };
            dependencies = {
              "browserify-sha3@0.0.1" = pkgs."browserify-sha3@0.0.1";
              "sha3@1.2.0" = pkgs."sha3@1.2.0";
            };
            seen = [ "keccakjs@0.2.1" ];
            };
  "keycode@2.1.8" = nodeEnv.buildYarnPackage {
            packageName = "keycode";
            version = "2.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/keycode/-/keycode-2.1.8.tgz";
              sha1 = "94d2b7098215eff0e8f9a8931d5a59076c4532fb";
            };
            dependencies = {};
            seen = [ "keycode@2.1.8" ];
            };
  "kind-of@3.1.0" = nodeEnv.buildYarnPackage {
            packageName = "kind-of";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/kind-of/-/kind-of-3.1.0.tgz";
              sha1 = "475d698a5e49ff5e53d14e3e732429dc8bf4cf47";
            };
            dependencies = {
              "is-buffer@1.1.4" = pkgs."is-buffer@1.1.4";
            };
            seen = [ "kind-of@3.1.0" ];
            };
  "klaw@1.3.1" = nodeEnv.buildYarnPackage {
            packageName = "klaw";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/klaw/-/klaw-1.3.1.tgz";
              sha1 = "4088433b46b3b1ba259d78785d8e96f73ba02439";
            };
            dependencies = {};
            seen = [ "klaw@1.3.1" ];
            };
  "latest-version@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "latest-version";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/latest-version/-/latest-version-1.0.1.tgz";
              sha1 = "72cfc46e3e8d1be651e1ebb54ea9f6ea96f374bb";
            };
            dependencies = {
              "package-json@1.2.0" = pkgs."package-json@1.2.0";
            };
            seen = [ "latest-version@1.0.1" ];
            };
  "lazy-cache@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "lazy-cache";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lazy-cache/-/lazy-cache-1.0.4.tgz";
              sha1 = "a1d78fc3a50474cb80845d3b3b6e1da49a446e8e";
            };
            dependencies = {};
            seen = [ "lazy-cache@1.0.4" ];
            };
  "lazystream@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lazystream";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lazystream/-/lazystream-1.0.0.tgz";
              sha1 = "f6995fe0f820392f61396be89462407bb77168e4";
            };
            dependencies = {
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "lazystream@1.0.0" ];
            };
  "lcid@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lcid";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lcid/-/lcid-1.0.0.tgz";
              sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
            };
            dependencies = {
              "invert-kv@1.0.0" = pkgs."invert-kv@1.0.0";
            };
            seen = [ "lcid@1.0.0" ];
            };
  "levn@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "levn";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/levn/-/levn-0.3.0.tgz";
              sha1 = "3b09924edf9f083c0490fdd4c0bc4421e04764ee";
            };
            dependencies = {
              "prelude-ls@1.1.2" = pkgs."prelude-ls@1.1.2";
              "type-check@0.3.2" = pkgs."type-check@0.3.2";
            };
            seen = [ "levn@0.3.0" ];
            };
  "load-json-file@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "load-json-file";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/load-json-file/-/load-json-file-2.0.0.tgz";
              sha1 = "7947e42149af80d696cbf797bcaabcfe1fe29ca8";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "parse-json@2.2.0" = pkgs."parse-json@2.2.0";
              "pify@2.3.0" = pkgs."pify@2.3.0";
              "strip-bom@3.0.0" = pkgs."strip-bom@3.0.0";
            };
            seen = [ "load-json-file@2.0.0" ];
            };
  "loader-fs-cache@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "loader-fs-cache";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loader-fs-cache/-/loader-fs-cache-1.0.1.tgz";
              sha1 = "56e0bf08bd9708b26a765b68509840c8dec9fdbc";
            };
            dependencies = {
              "find-cache-dir@0.1.1" = pkgs."find-cache-dir@0.1.1";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
            };
            seen = [ "loader-fs-cache@1.0.1" ];
            };
  "loader-utils@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "loader-utils";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loader-utils/-/loader-utils-1.1.0.tgz";
              sha1 = "c98aef488bcceda2ffb5e2de646d6a754429f5cd";
            };
            dependencies = {
              "big.js@3.1.3" = pkgs."big.js@3.1.3";
              "emojis-list@2.1.0" = pkgs."emojis-list@2.1.0";
              "json5@0.5.1" = pkgs."json5@0.5.1";
            };
            seen = [ "loader-utils@1.1.0" ];
            };
  "locate-path@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "locate-path";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/locate-path/-/locate-path-2.0.0.tgz";
              sha1 = "2b568b265eec944c6d9c0de9c3dbbbca0354cd8e";
            };
            dependencies = {
              "p-locate@2.0.0" = pkgs."p-locate@2.0.0";
              "path-exists@3.0.0" = pkgs."path-exists@3.0.0";
            };
            seen = [ "locate-path@2.0.0" ];
            };
  "lodash-es@4.17.4" = nodeEnv.buildYarnPackage {
            packageName = "lodash-es";
            version = "4.17.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash-es/-/lodash-es-4.17.4.tgz";
              sha1 = "dcc1d7552e150a0640073ba9cb31d70f032950e7";
            };
            dependencies = {};
            seen = [ "lodash-es@4.17.4" ];
            };
  "lodash._arraycopy@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._arraycopy";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._arraycopy/-/lodash._arraycopy-3.0.0.tgz";
              sha1 = "76e7b7c1f1fb92547374878a562ed06a3e50f6e1";
            };
            dependencies = {};
            seen = [ "lodash._arraycopy@3.0.0" ];
            };
  "lodash._arrayeach@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._arrayeach";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._arrayeach/-/lodash._arrayeach-3.0.0.tgz";
              sha1 = "bab156b2a90d3f1bbd5c653403349e5e5933ef9e";
            };
            dependencies = {};
            seen = [ "lodash._arrayeach@3.0.0" ];
            };
  "lodash._baseassign@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._baseassign";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._baseassign/-/lodash._baseassign-3.2.0.tgz";
              sha1 = "8c38a099500f215ad09e59f1722fd0c52bfe0a4e";
            };
            dependencies = {
              "lodash._basecopy@3.0.1" = pkgs."lodash._basecopy@3.0.1";
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
            };
            seen = [ "lodash._baseassign@3.2.0" ];
            };
  "lodash._basecallback@3.3.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._basecallback";
            version = "3.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basecallback/-/lodash._basecallback-3.3.1.tgz";
              sha1 = "b7b2bb43dc2160424a21ccf26c57e443772a8e27";
            };
            dependencies = {
              "lodash._baseisequal@3.0.7" = pkgs."lodash._baseisequal@3.0.7";
              "lodash._bindcallback@3.0.1" = pkgs."lodash._bindcallback@3.0.1";
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
              "lodash.pairs@3.0.1" = pkgs."lodash.pairs@3.0.1";
            };
            seen = [ "lodash._basecallback@3.3.1" ];
            };
  "lodash._basecopy@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._basecopy";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
              sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
            };
            dependencies = {};
            seen = [ "lodash._basecopy@3.0.1" ];
            };
  "lodash._baseeach@3.0.4" = nodeEnv.buildYarnPackage {
            packageName = "lodash._baseeach";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._baseeach/-/lodash._baseeach-3.0.4.tgz";
              sha1 = "cf8706572ca144e8d9d75227c990da982f932af3";
            };
            dependencies = {
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
            };
            seen = [ "lodash._baseeach@3.0.4" ];
            };
  "lodash._basefind@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._basefind";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basefind/-/lodash._basefind-3.0.0.tgz";
              sha1 = "b2bba05cc645f972de2cf925fa2bf63a0f60c8ae";
            };
            dependencies = {};
            seen = [ "lodash._basefind@3.0.0" ];
            };
  "lodash._basefindindex@3.6.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._basefindindex";
            version = "3.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basefindindex/-/lodash._basefindindex-3.6.0.tgz";
              sha1 = "f083360a1b022418ed81bc899beb312e21e74a4f";
            };
            dependencies = {};
            seen = [ "lodash._basefindindex@3.6.0" ];
            };
  "lodash._basefor@3.0.3" = nodeEnv.buildYarnPackage {
            packageName = "lodash._basefor";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basefor/-/lodash._basefor-3.0.3.tgz";
              sha1 = "7550b4e9218ef09fad24343b612021c79b4c20c2";
            };
            dependencies = {};
            seen = [ "lodash._basefor@3.0.3" ];
            };
  "lodash._baseget@3.7.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash._baseget";
            version = "3.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._baseget/-/lodash._baseget-3.7.2.tgz";
              sha1 = "1b6ae1d5facf3c25532350a13c1197cb8bb674f4";
            };
            dependencies = {};
            seen = [ "lodash._baseget@3.7.2" ];
            };
  "lodash._baseisequal@3.0.7" = nodeEnv.buildYarnPackage {
            packageName = "lodash._baseisequal";
            version = "3.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._baseisequal/-/lodash._baseisequal-3.0.7.tgz";
              sha1 = "d8025f76339d29342767dcc887ce5cb95a5b51f1";
            };
            dependencies = {
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
              "lodash.istypedarray@3.0.6" = pkgs."lodash.istypedarray@3.0.6";
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
            };
            seen = [ "lodash._baseisequal@3.0.7" ];
            };
  "lodash._basetostring@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._basetostring";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basetostring/-/lodash._basetostring-3.0.1.tgz";
              sha1 = "d1861d877f824a52f669832dcaf3ee15566a07d5";
            };
            dependencies = {};
            seen = [ "lodash._basetostring@3.0.1" ];
            };
  "lodash._basevalues@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._basevalues";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basevalues/-/lodash._basevalues-3.0.0.tgz";
              sha1 = "5b775762802bde3d3297503e26300820fdf661b7";
            };
            dependencies = {};
            seen = [ "lodash._basevalues@3.0.0" ];
            };
  "lodash._bindcallback@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._bindcallback";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._bindcallback/-/lodash._bindcallback-3.0.1.tgz";
              sha1 = "e531c27644cf8b57a99e17ed95b35c748789392e";
            };
            dependencies = {};
            seen = [ "lodash._bindcallback@3.0.1" ];
            };
  "lodash._createassigner@3.1.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._createassigner";
            version = "3.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._createassigner/-/lodash._createassigner-3.1.1.tgz";
              sha1 = "838a5bae2fdaca63ac22dee8e19fa4e6d6970b11";
            };
            dependencies = {
              "lodash._bindcallback@3.0.1" = pkgs."lodash._bindcallback@3.0.1";
              "lodash._isiterateecall@3.0.9" = pkgs."lodash._isiterateecall@3.0.9";
              "lodash.restparam@3.6.1" = pkgs."lodash.restparam@3.6.1";
            };
            seen = [ "lodash._createassigner@3.1.1" ];
            };
  "lodash._createcompounder@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._createcompounder";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._createcompounder/-/lodash._createcompounder-3.0.0.tgz";
              sha1 = "5dd2cb55372d6e70e0e2392fb2304d6631091075";
            };
            dependencies = {
              "lodash.deburr@3.2.0" = pkgs."lodash.deburr@3.2.0";
              "lodash.words@3.2.0" = pkgs."lodash.words@3.2.0";
            };
            seen = [ "lodash._createcompounder@3.0.0" ];
            };
  "lodash._getnative@3.9.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._getnative";
            version = "3.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._getnative/-/lodash._getnative-3.9.1.tgz";
              sha1 = "570bc7dede46d61cdcde687d65d3eecbaa3aaff5";
            };
            dependencies = {};
            seen = [ "lodash._getnative@3.9.1" ];
            };
  "lodash._isiterateecall@3.0.9" = nodeEnv.buildYarnPackage {
            packageName = "lodash._isiterateecall";
            version = "3.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
              sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
            };
            dependencies = {};
            seen = [ "lodash._isiterateecall@3.0.9" ];
            };
  "lodash._reescape@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._reescape";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._reescape/-/lodash._reescape-3.0.0.tgz";
              sha1 = "2b1d6f5dfe07c8a355753e5f27fac7f1cde1616a";
            };
            dependencies = {};
            seen = [ "lodash._reescape@3.0.0" ];
            };
  "lodash._reevaluate@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._reevaluate";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._reevaluate/-/lodash._reevaluate-3.0.0.tgz";
              sha1 = "58bc74c40664953ae0b124d806996daca431e2ed";
            };
            dependencies = {};
            seen = [ "lodash._reevaluate@3.0.0" ];
            };
  "lodash._reinterpolate@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash._reinterpolate";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._reinterpolate/-/lodash._reinterpolate-3.0.0.tgz";
              sha1 = "0ccf2d89166af03b3663c796538b75ac6e114d9d";
            };
            dependencies = {};
            seen = [ "lodash._reinterpolate@3.0.0" ];
            };
  "lodash._root@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._root";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._root/-/lodash._root-3.0.1.tgz";
              sha1 = "fba1c4524c19ee9a5f8136b4609f017cf4ded692";
            };
            dependencies = {};
            seen = [ "lodash._root@3.0.1" ];
            };
  "lodash._topath@3.8.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash._topath";
            version = "3.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._topath/-/lodash._topath-3.8.1.tgz";
              sha1 = "3ec5e2606014f4cb97f755fe6914edd8bfc00eac";
            };
            dependencies = {
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
            };
            seen = [ "lodash._topath@3.8.1" ];
            };
  "lodash.assign@4.2.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.assign";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.assign/-/lodash.assign-4.2.0.tgz";
              sha1 = "0d99f3ccd7a6d261d19bdaeb9245005d285808e7";
            };
            dependencies = {};
            seen = [ "lodash.assign@4.2.0" ];
            };
  "lodash.camelcase@4.3.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.camelcase";
            version = "4.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.camelcase/-/lodash.camelcase-4.3.0.tgz";
              sha1 = "b28aa6288a2b9fc651035c7711f65ab6190331a6";
            };
            dependencies = {};
            seen = [ "lodash.camelcase@4.3.0" ];
            };
  "lodash.clonedeep@4.5.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.clonedeep";
            version = "4.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz";
              sha1 = "e23f3f9c4f8fbdde872529c1071857a086e5ccef";
            };
            dependencies = {};
            seen = [ "lodash.clonedeep@4.5.0" ];
            };
  "lodash.cond@4.5.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash.cond";
            version = "4.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.cond/-/lodash.cond-4.5.2.tgz";
              sha1 = "f471a1da486be60f6ab955d17115523dd1d255d5";
            };
            dependencies = {};
            seen = [ "lodash.cond@4.5.2" ];
            };
  "lodash.deburr@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.deburr";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.deburr/-/lodash.deburr-3.2.0.tgz";
              sha1 = "6da8f54334a366a7cf4c4c76ef8d80aa1b365ed5";
            };
            dependencies = {
              "lodash._root@3.0.1" = pkgs."lodash._root@3.0.1";
            };
            seen = [ "lodash.deburr@3.2.0" ];
            };
  "lodash.defaults@3.1.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash.defaults";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.defaults/-/lodash.defaults-3.1.2.tgz";
              sha1 = "c7308b18dbf8bc9372d701a73493c61192bd2e2c";
            };
            dependencies = {
              "lodash.assign@3.2.0" = pkgs."lodash.assign@3.2.0";
              "lodash.restparam@3.6.1" = pkgs."lodash.restparam@3.6.1";
            };
            seen = [ "lodash.defaults@3.1.2" ];
            };
  "lodash.endswith@4.2.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.endswith";
            version = "4.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.endswith/-/lodash.endswith-4.2.1.tgz";
              sha1 = "fed59ac1738ed3e236edd7064ec456448b37bc09";
            };
            dependencies = {};
            seen = [ "lodash.endswith@4.2.1" ];
            };
  "lodash.escape@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.escape";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.escape/-/lodash.escape-3.2.0.tgz";
              sha1 = "995ee0dc18c1b48cc92effae71a10aab5b487698";
            };
            dependencies = {
              "lodash._root@3.0.1" = pkgs."lodash._root@3.0.1";
            };
            seen = [ "lodash.escape@3.2.0" ];
            };
  "lodash.find@4.6.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.find";
            version = "4.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.find/-/lodash.find-4.6.0.tgz";
              sha1 = "cb0704d47ab71789ffa0de8b97dd926fb88b13b1";
            };
            dependencies = {};
            seen = [ "lodash.find@4.6.0" ];
            };
  "lodash.findindex@4.6.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.findindex";
            version = "4.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.findindex/-/lodash.findindex-4.6.0.tgz";
              sha1 = "a3245dee61fb9b6e0624b535125624bb69c11106";
            };
            dependencies = {};
            seen = [ "lodash.findindex@4.6.0" ];
            };
  "lodash.foreach@3.0.3" = nodeEnv.buildYarnPackage {
            packageName = "lodash.foreach";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.foreach/-/lodash.foreach-3.0.3.tgz";
              sha1 = "6fd7efb79691aecd67fdeac2761c98e701d6c39a";
            };
            dependencies = {
              "lodash._arrayeach@3.0.0" = pkgs."lodash._arrayeach@3.0.0";
              "lodash._baseeach@3.0.4" = pkgs."lodash._baseeach@3.0.4";
              "lodash._bindcallback@3.0.1" = pkgs."lodash._bindcallback@3.0.1";
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
            };
            seen = [ "lodash.foreach@3.0.3" ];
            };
  "lodash.get@4.4.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash.get";
            version = "4.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.get/-/lodash.get-4.4.2.tgz";
              sha1 = "2d177f652fa31e939b4438d5341499dfa3825e99";
            };
            dependencies = {};
            seen = [ "lodash.get@4.4.2" ];
            };
  "lodash.indexof@4.0.5" = nodeEnv.buildYarnPackage {
            packageName = "lodash.indexof";
            version = "4.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.indexof/-/lodash.indexof-4.0.5.tgz";
              sha1 = "53714adc2cddd6ed87638f893aa9b6c24e31ef3c";
            };
            dependencies = {};
            seen = [ "lodash.indexof@4.0.5" ];
            };
  "lodash.isarguments@3.1.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.isarguments";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isarguments/-/lodash.isarguments-3.1.0.tgz";
              sha1 = "2f573d85c6a24289ff00663b491c1d338ff3458a";
            };
            dependencies = {};
            seen = [ "lodash.isarguments@3.1.0" ];
            };
  "lodash.isarray@3.0.4" = nodeEnv.buildYarnPackage {
            packageName = "lodash.isarray";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isarray/-/lodash.isarray-3.0.4.tgz";
              sha1 = "79e4eb88c36a8122af86f844aa9bcd851b5fbb55";
            };
            dependencies = {};
            seen = [ "lodash.isarray@3.0.4" ];
            };
  "lodash.isequal@4.4.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.isequal";
            version = "4.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isequal/-/lodash.isequal-4.4.0.tgz";
              sha1 = "6295768e98e14dc15ce8d362ef6340db82852031";
            };
            dependencies = {};
            seen = [ "lodash.isequal@4.4.0" ];
            };
  "lodash.isplainobject@4.0.6" = nodeEnv.buildYarnPackage {
            packageName = "lodash.isplainobject";
            version = "4.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isplainobject/-/lodash.isplainobject-4.0.6.tgz";
              sha1 = "7c526a52d89b45c45cc690b88163be0497f550cb";
            };
            dependencies = {};
            seen = [ "lodash.isplainobject@4.0.6" ];
            };
  "lodash.istypedarray@3.0.6" = nodeEnv.buildYarnPackage {
            packageName = "lodash.istypedarray";
            version = "3.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.istypedarray/-/lodash.istypedarray-3.0.6.tgz";
              sha1 = "c9a477498607501d8e8494d283b87c39281cef62";
            };
            dependencies = {};
            seen = [ "lodash.istypedarray@3.0.6" ];
            };
  "lodash.keys@3.1.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash.keys";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.keys/-/lodash.keys-3.1.2.tgz";
              sha1 = "4dbc0472b156be50a0b286855d1bd0b0c656098a";
            };
            dependencies = {
              "lodash._getnative@3.9.1" = pkgs."lodash._getnative@3.9.1";
              "lodash.isarguments@3.1.0" = pkgs."lodash.isarguments@3.1.0";
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
            };
            seen = [ "lodash.keys@3.1.2" ];
            };
  "lodash.keysin@3.0.8" = nodeEnv.buildYarnPackage {
            packageName = "lodash.keysin";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.keysin/-/lodash.keysin-3.0.8.tgz";
              sha1 = "22c4493ebbedb1427962a54b445b2c8a767fb47f";
            };
            dependencies = {
              "lodash.isarguments@3.1.0" = pkgs."lodash.isarguments@3.1.0";
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
            };
            seen = [ "lodash.keysin@3.0.8" ];
            };
  "lodash.memoize@4.1.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash.memoize";
            version = "4.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.memoize/-/lodash.memoize-4.1.2.tgz";
              sha1 = "bcc6c49a42a2840ed997f323eada5ecd182e0bfe";
            };
            dependencies = {};
            seen = [ "lodash.memoize@4.1.2" ];
            };
  "lodash.merge@3.3.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash.merge";
            version = "3.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.merge/-/lodash.merge-3.3.2.tgz";
              sha1 = "0d90d93ed637b1878437bb3e21601260d7afe994";
            };
            dependencies = {
              "lodash._arraycopy@3.0.0" = pkgs."lodash._arraycopy@3.0.0";
              "lodash._arrayeach@3.0.0" = pkgs."lodash._arrayeach@3.0.0";
              "lodash._createassigner@3.1.1" = pkgs."lodash._createassigner@3.1.1";
              "lodash._getnative@3.9.1" = pkgs."lodash._getnative@3.9.1";
              "lodash.isarguments@3.1.0" = pkgs."lodash.isarguments@3.1.0";
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
              "lodash.isplainobject@3.2.0" = pkgs."lodash.isplainobject@3.2.0";
              "lodash.istypedarray@3.0.6" = pkgs."lodash.istypedarray@3.0.6";
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
              "lodash.keysin@3.0.8" = pkgs."lodash.keysin@3.0.8";
              "lodash.toplainobject@3.0.0" = pkgs."lodash.toplainobject@3.0.0";
            };
            seen = [ "lodash.merge@3.3.2" ];
            };
  "lodash.pad@4.5.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.pad";
            version = "4.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.pad/-/lodash.pad-4.5.1.tgz";
              sha1 = "4330949a833a7c8da22cc20f6a26c4d59debba70";
            };
            dependencies = {};
            seen = [ "lodash.pad@4.5.1" ];
            };
  "lodash.padend@4.6.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.padend";
            version = "4.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.padend/-/lodash.padend-4.6.1.tgz";
              sha1 = "53ccba047d06e158d311f45da625f4e49e6f166e";
            };
            dependencies = {};
            seen = [ "lodash.padend@4.6.1" ];
            };
  "lodash.padstart@4.6.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.padstart";
            version = "4.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.padstart/-/lodash.padstart-4.6.1.tgz";
              sha1 = "d2e3eebff0d9d39ad50f5cbd1b52a7bce6bb611b";
            };
            dependencies = {};
            seen = [ "lodash.padstart@4.6.1" ];
            };
  "lodash.pairs@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.pairs";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.pairs/-/lodash.pairs-3.0.1.tgz";
              sha1 = "bbe08d5786eeeaa09a15c91ebf0dcb7d2be326a9";
            };
            dependencies = {
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
            };
            seen = [ "lodash.pairs@3.0.1" ];
            };
  "lodash.pick@4.4.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.pick";
            version = "4.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.pick/-/lodash.pick-4.4.0.tgz";
              sha1 = "52f05610fff9ded422611441ed1fc123a03001b3";
            };
            dependencies = {};
            seen = [ "lodash.pick@4.4.0" ];
            };
  "lodash.restparam@3.6.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.restparam";
            version = "3.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.restparam/-/lodash.restparam-3.6.1.tgz";
              sha1 = "936a4e309ef330a7645ed4145986c85ae5b20805";
            };
            dependencies = {};
            seen = [ "lodash.restparam@3.6.1" ];
            };
  "lodash.template@3.6.2" = nodeEnv.buildYarnPackage {
            packageName = "lodash.template";
            version = "3.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.template/-/lodash.template-3.6.2.tgz";
              sha1 = "f8cdecc6169a255be9098ae8b0c53d378931d14f";
            };
            dependencies = {
              "lodash._basecopy@3.0.1" = pkgs."lodash._basecopy@3.0.1";
              "lodash._basetostring@3.0.1" = pkgs."lodash._basetostring@3.0.1";
              "lodash._basevalues@3.0.0" = pkgs."lodash._basevalues@3.0.0";
              "lodash._isiterateecall@3.0.9" = pkgs."lodash._isiterateecall@3.0.9";
              "lodash._reinterpolate@3.0.0" = pkgs."lodash._reinterpolate@3.0.0";
              "lodash.escape@3.2.0" = pkgs."lodash.escape@3.2.0";
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
              "lodash.restparam@3.6.1" = pkgs."lodash.restparam@3.6.1";
              "lodash.templatesettings@3.1.1" = pkgs."lodash.templatesettings@3.1.1";
            };
            seen = [ "lodash.template@3.6.2" ];
            };
  "lodash.templatesettings@3.1.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.templatesettings";
            version = "3.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.templatesettings/-/lodash.templatesettings-3.1.1.tgz";
              sha1 = "fb307844753b66b9f1afa54e262c745307dba8e5";
            };
            dependencies = {
              "lodash._reinterpolate@3.0.0" = pkgs."lodash._reinterpolate@3.0.0";
              "lodash.escape@3.2.0" = pkgs."lodash.escape@3.2.0";
            };
            seen = [ "lodash.templatesettings@3.1.1" ];
            };
  "lodash.toplainobject@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.toplainobject";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.toplainobject/-/lodash.toplainobject-3.0.0.tgz";
              sha1 = "28790ad942d293d78aa663a07ecf7f52ca04198d";
            };
            dependencies = {
              "lodash._basecopy@3.0.1" = pkgs."lodash._basecopy@3.0.1";
              "lodash.keysin@3.0.8" = pkgs."lodash.keysin@3.0.8";
            };
            seen = [ "lodash.toplainobject@3.0.0" ];
            };
  "lodash.uniq@4.5.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.uniq";
            version = "4.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.uniq/-/lodash.uniq-4.5.0.tgz";
              sha1 = "d0225373aeb652adc1bc82e4945339a842754773";
            };
            dependencies = {};
            seen = [ "lodash.uniq@4.5.0" ];
            };
  "lodash.words@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.words";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.words/-/lodash.words-3.2.0.tgz";
              sha1 = "4e2a8649bc08745b17c695b1a3ce8fee596623b3";
            };
            dependencies = {
              "lodash._root@3.0.1" = pkgs."lodash._root@3.0.1";
            };
            seen = [ "lodash.words@3.2.0" ];
            };
  "lodash@4.17.4" = nodeEnv.buildYarnPackage {
            packageName = "lodash";
            version = "4.17.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.4.tgz";
              sha1 = "78203a4d1c328ae1d86dca6460e369b57f4055ae";
            };
            dependencies = {};
            seen = [ "lodash@4.17.4" ];
            };
  "log-symbols@2.2.0" = nodeEnv.buildYarnPackage {
            packageName = "log-symbols";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/log-symbols/-/log-symbols-2.2.0.tgz";
              sha1 = "5740e1c5d6f0dfda4ad9323b5332107ef6b4c40a";
            };
            dependencies = {
              "chalk@2.3.2" = pkgs."chalk@2.3.2";
            };
            seen = [ "log-symbols@2.2.0" ];
            };
  "longest@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "longest";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/longest/-/longest-1.0.1.tgz";
              sha1 = "30a0b2da38f73770e8294a0d22e6625ed77d0097";
            };
            dependencies = {};
            seen = [ "longest@1.0.1" ];
            };
  "loose-envify@1.3.1" = nodeEnv.buildYarnPackage {
            packageName = "loose-envify";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loose-envify/-/loose-envify-1.3.1.tgz";
              sha1 = "d1a8ad33fa9ce0e713d65fdd0ac8b748d478c848";
            };
            dependencies = {
              "js-tokens@3.0.2" = pkgs."js-tokens@3.0.2";
            };
            seen = [ "loose-envify@1.3.1" ];
            };
  "loud-rejection@1.6.0" = nodeEnv.buildYarnPackage {
            packageName = "loud-rejection";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loud-rejection/-/loud-rejection-1.6.0.tgz";
              sha1 = "5b46f80147edee578870f086d04821cf998e551f";
            };
            dependencies = {
              "currently-unhandled@0.4.1" = pkgs."currently-unhandled@0.4.1";
              "signal-exit@3.0.2" = pkgs."signal-exit@3.0.2";
            };
            seen = [ "loud-rejection@1.6.0" ];
            };
  "lower-case@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "lower-case";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lower-case/-/lower-case-1.1.3.tgz";
              sha1 = "c92393d976793eee5ba4edb583cf8eae35bd9bfb";
            };
            dependencies = {};
            seen = [ "lower-case@1.1.3" ];
            };
  "lowercase-keys@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "lowercase-keys";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lowercase-keys/-/lowercase-keys-1.0.0.tgz";
              sha1 = "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306";
            };
            dependencies = {};
            seen = [ "lowercase-keys@1.0.0" ];
            };
  "lru-cache@4.0.2" = nodeEnv.buildYarnPackage {
            packageName = "lru-cache";
            version = "4.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.0.2.tgz";
              sha1 = "1d17679c069cda5d040991a09dbc2c0db377e55e";
            };
            dependencies = {
              "pseudomap@1.0.2" = pkgs."pseudomap@1.0.2";
              "yallist@2.0.0" = pkgs."yallist@2.0.0";
            };
            seen = [ "lru-cache@4.0.2" ];
            };
  "macaddress@0.2.8" = nodeEnv.buildYarnPackage {
            packageName = "macaddress";
            version = "0.2.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/macaddress/-/macaddress-0.2.8.tgz";
              sha1 = "5904dc537c39ec6dbefeae902327135fa8511f12";
            };
            dependencies = {};
            seen = [ "macaddress@0.2.8" ];
            };
  "make-dir@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "make-dir";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/make-dir/-/make-dir-1.2.0.tgz";
              sha1 = "6d6a49eead4aae296c53bbf3a1a008bd6c89469b";
            };
            dependencies = {
              "pify@3.0.0" = pkgs."pify@3.0.0";
            };
            seen = [ "make-dir@1.2.0" ];
            };
  "mantra-core@1.7.0" = nodeEnv.buildYarnPackage {
            packageName = "mantra-core";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mantra-core/-/mantra-core-1.7.0.tgz";
              sha1 = "a8c83e8cee83ef6a7383131519fe8031ad546386";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "react-komposer@1.13.1" = pkgs."react-komposer@1.13.1";
              "react-simple-di@1.2.0" = pkgs."react-simple-di@1.2.0";
            };
            seen = [ "mantra-core@1.7.0" ];
            };
  "map-obj@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "map-obj";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/map-obj/-/map-obj-1.0.1.tgz";
              sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
            };
            dependencies = {};
            seen = [ "map-obj@1.0.1" ];
            };
  "map-stream@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "map-stream";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/map-stream/-/map-stream-0.1.0.tgz";
              sha1 = "e56aa94c4c8055a16404a0674b78f215f7c8e194";
            };
            dependencies = {};
            seen = [ "map-stream@0.1.0" ];
            };
  "markdown-loader@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "markdown-loader";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/markdown-loader/-/markdown-loader-2.0.0.tgz";
              sha1 = "421862d38c4224fd3615eb648017ea385b562d78";
            };
            dependencies = {
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "marked@0.3.17" = pkgs."marked@0.3.17";
            };
            seen = [ "markdown-loader@2.0.0" ];
            };
  "marked@0.3.17" = nodeEnv.buildYarnPackage {
            packageName = "marked";
            version = "0.3.17";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/marked/-/marked-0.3.17.tgz";
              sha1 = "607f06668b3c6b1246b28f13da76116ac1aa2d2b";
            };
            dependencies = {};
            seen = [ "marked@0.3.17" ];
            };
  "math-expression-evaluator@1.2.14" = nodeEnv.buildYarnPackage {
            packageName = "math-expression-evaluator";
            version = "1.2.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/math-expression-evaluator/-/math-expression-evaluator-1.2.14.tgz";
              sha1 = "39511771ed9602405fba9affff17eb4d2a3843ab";
            };
            dependencies = {
              "lodash.indexof@4.0.5" = pkgs."lodash.indexof@4.0.5";
            };
            seen = [ "math-expression-evaluator@1.2.14" ];
            };
  "mdurl@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "mdurl";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mdurl/-/mdurl-1.0.1.tgz";
              sha1 = "fe85b2ec75a59037f2adfec100fd6c601761152e";
            };
            dependencies = {};
            seen = [ "mdurl@1.0.1" ];
            };
  "media-typer@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "media-typer";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/media-typer/-/media-typer-0.3.0.tgz";
              sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
            };
            dependencies = {};
            seen = [ "media-typer@0.3.0" ];
            };
  "memory-fs@0.4.1" = nodeEnv.buildYarnPackage {
            packageName = "memory-fs";
            version = "0.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.4.1.tgz";
              sha1 = "3a9a20b8462523e447cfbc7e8bb80ed667bfc552";
            };
            dependencies = {
              "errno@0.1.4" = pkgs."errno@0.1.4";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "memory-fs@0.4.1" ];
            };
  "meow@3.7.0" = nodeEnv.buildYarnPackage {
            packageName = "meow";
            version = "3.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/meow/-/meow-3.7.0.tgz";
              sha1 = "72cb668b425228290abbfa856892587308a801fb";
            };
            dependencies = {
              "camelcase-keys@2.1.0" = pkgs."camelcase-keys@2.1.0";
              "decamelize@1.2.0" = pkgs."decamelize@1.2.0";
              "loud-rejection@1.6.0" = pkgs."loud-rejection@1.6.0";
              "map-obj@1.0.1" = pkgs."map-obj@1.0.1";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "normalize-package-data@2.3.5" = pkgs."normalize-package-data@2.3.5";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "read-pkg-up@1.0.1" = pkgs."read-pkg-up@1.0.1";
              "redent@1.0.0" = pkgs."redent@1.0.0";
              "trim-newlines@1.0.0" = pkgs."trim-newlines@1.0.0";
            };
            seen = [ "meow@3.7.0" ];
            };
  "merge-descriptors@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "merge-descriptors";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
              sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
            };
            dependencies = {};
            seen = [ "merge-descriptors@1.0.1" ];
            };
  "merge@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "merge";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/merge/-/merge-1.2.0.tgz";
              sha1 = "7531e39d4949c281a66b8c5a6e0265e8b05894da";
            };
            dependencies = {};
            seen = [ "merge@1.2.0" ];
            };
  "methods@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "methods";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/methods/-/methods-1.1.2.tgz";
              sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
            };
            dependencies = {};
            seen = [ "methods@1.1.2" ];
            };
  "micromatch@2.3.11" = nodeEnv.buildYarnPackage {
            packageName = "micromatch";
            version = "2.3.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/micromatch/-/micromatch-2.3.11.tgz";
              sha1 = "86677c97d1720b363431d04d0d15293bd38c1565";
            };
            dependencies = {
              "arr-diff@2.0.0" = pkgs."arr-diff@2.0.0";
              "array-unique@0.2.1" = pkgs."array-unique@0.2.1";
              "braces@1.8.5" = pkgs."braces@1.8.5";
              "expand-brackets@0.1.5" = pkgs."expand-brackets@0.1.5";
              "extglob@0.3.2" = pkgs."extglob@0.3.2";
              "filename-regex@2.0.0" = pkgs."filename-regex@2.0.0";
              "is-extglob@1.0.0" = pkgs."is-extglob@1.0.0";
              "is-glob@2.0.1" = pkgs."is-glob@2.0.1";
              "kind-of@3.1.0" = pkgs."kind-of@3.1.0";
              "normalize-path@2.0.1" = pkgs."normalize-path@2.0.1";
              "object.omit@2.0.1" = pkgs."object.omit@2.0.1";
              "parse-glob@3.0.4" = pkgs."parse-glob@3.0.4";
              "regex-cache@0.4.3" = pkgs."regex-cache@0.4.3";
            };
            seen = [ "micromatch@2.3.11" ];
            };
  "miller-rabin@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "miller-rabin";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/miller-rabin/-/miller-rabin-4.0.0.tgz";
              sha1 = "4a62fb1d42933c05583982f4c716f6fb9e6c6d3d";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "brorand@1.0.6" = pkgs."brorand@1.0.6";
            };
            seen = [ "miller-rabin@4.0.0" ];
            };
  "mime-db@1.33.0" = nodeEnv.buildYarnPackage {
            packageName = "mime-db";
            version = "1.33.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.33.0.tgz";
              sha1 = "a3492050a5cb9b63450541e39d9788d2272783db";
            };
            dependencies = {};
            seen = [ "mime-db@1.33.0" ];
            };
  "mime-types@2.1.18" = nodeEnv.buildYarnPackage {
            packageName = "mime-types";
            version = "2.1.18";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.18.tgz";
              sha1 = "6f323f60a83d11146f831ff11fd66e2fe5503bb8";
            };
            dependencies = {
              "mime-db@1.33.0" = pkgs."mime-db@1.33.0";
            };
            seen = [ "mime-types@2.1.18" ];
            };
  "mime@1.3.6" = nodeEnv.buildYarnPackage {
            packageName = "mime";
            version = "1.3.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime/-/mime-1.3.6.tgz";
              sha1 = "591d84d3653a6b0b4a3b9df8de5aa8108e72e5e0";
            };
            dependencies = {};
            seen = [ "mime@1.3.6" ];
            };
  "mimic-fn@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "mimic-fn";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-1.2.0.tgz";
              sha1 = "820c86a39334640e99516928bd03fca88057d022";
            };
            dependencies = {};
            seen = [ "mimic-fn@1.2.0" ];
            };
  "mimic-response@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "mimic-response";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mimic-response/-/mimic-response-1.0.0.tgz";
              sha1 = "df3d3652a73fded6b9b0b24146e6fd052353458e";
            };
            dependencies = {};
            seen = [ "mimic-response@1.0.0" ];
            };
  "min-document@2.19.0" = nodeEnv.buildYarnPackage {
            packageName = "min-document";
            version = "2.19.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/min-document/-/min-document-2.19.0.tgz";
              sha1 = "7bd282e3f5842ed295bb748cdd9f1ffa2c824685";
            };
            dependencies = {
              "dom-walk@0.1.1" = pkgs."dom-walk@0.1.1";
            };
            seen = [ "min-document@2.19.0" ];
            };
  "minimalistic-assert@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "minimalistic-assert";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimalistic-assert/-/minimalistic-assert-1.0.0.tgz";
              sha1 = "702be2dda6b37f4836bcb3f5db56641b64a1d3d3";
            };
            dependencies = {};
            seen = [ "minimalistic-assert@1.0.0" ];
            };
  "minimalistic-crypto-utils@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "minimalistic-crypto-utils";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimalistic-crypto-utils/-/minimalistic-crypto-utils-1.0.1.tgz";
              sha1 = "f6c00c1c0b082246e5c4d99dfb8c7c083b2b582a";
            };
            dependencies = {};
            seen = [ "minimalistic-crypto-utils@1.0.1" ];
            };
  "minimatch@3.0.4" = nodeEnv.buildYarnPackage {
            packageName = "minimatch";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.4.tgz";
              sha1 = "5166e286457f03306064be5497e8dbb0c3d32083";
            };
            dependencies = {
              "brace-expansion@1.1.11" = pkgs."brace-expansion@1.1.11";
            };
            seen = [ "minimatch@3.0.4" ];
            };
  "minimist@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "minimist";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimist/-/minimist-1.2.0.tgz";
              sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
            };
            dependencies = {};
            seen = [ "minimist@1.2.0" ];
            };
  "mkdirp-promise@5.0.1" = nodeEnv.buildYarnPackage {
            packageName = "mkdirp-promise";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkdirp-promise/-/mkdirp-promise-5.0.1.tgz";
              sha1 = "e9b8f68e552c68a9c1713b84883f7a1dd039b8a1";
            };
            dependencies = {
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
            };
            seen = [ "mkdirp-promise@5.0.1" ];
            };
  "mkdirp@0.5.1" = nodeEnv.buildYarnPackage {
            packageName = "mkdirp";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.1.tgz";
              sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
            };
            dependencies = {
              "minimist@0.0.8" = pkgs."minimist@0.0.8";
            };
            seen = [ "mkdirp@0.5.1" ];
            };
  "mkpath@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "mkpath";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkpath/-/mkpath-0.1.0.tgz";
              sha1 = "7554a6f8d871834cc97b5462b122c4c124d6de91";
            };
            dependencies = {};
            seen = [ "mkpath@0.1.0" ];
            };
  "mksnapshot@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "mksnapshot";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mksnapshot/-/mksnapshot-0.3.0.tgz";
              sha1 = "32ea984ad6f532324c6a3fae6400876b85828407";
            };
            dependencies = {
              "decompress-zip@0.3.0" = pkgs."decompress-zip@0.3.0";
              "fs-extra@0.26.7" = pkgs."fs-extra@0.26.7";
              "request@2.55.0" = pkgs."request@2.55.0";
            };
            seen = [ "mksnapshot@0.3.0" ];
            };
  "mobx-react-devtools@4.2.11" = nodeEnv.buildYarnPackage {
            packageName = "mobx-react-devtools";
            version = "4.2.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react-devtools/-/mobx-react-devtools-4.2.11.tgz";
              sha1 = "18d89a32b7d28b48228d12ccde73cf733aacc395";
            };
            dependencies = {};
            seen = [ "mobx-react-devtools@4.2.11" ];
            };
  "mobx-react-form@1.32.2" = nodeEnv.buildYarnPackage {
            packageName = "mobx-react-form";
            version = "1.32.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react-form/-/mobx-react-form-1.32.2.tgz";
              sha1 = "5610dd0e4fab006acf2daf1becbedecad182a5a0";
            };
            dependencies = {
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "mobx-react-form@1.32.2" ];
            };
  "mobx-react-router@3.1.2" = nodeEnv.buildYarnPackage {
            packageName = "mobx-react-router";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react-router/-/mobx-react-router-3.1.2.tgz";
              sha1 = "83328b108393017148d86fea17f611de2d2aacdc";
            };
            dependencies = {};
            seen = [ "mobx-react-router@3.1.2" ];
            };
  "mobx-react@4.1.5" = nodeEnv.buildYarnPackage {
            packageName = "mobx-react";
            version = "4.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react/-/mobx-react-4.1.5.tgz";
              sha1 = "75cf4dbffc91b9cb23d56c060dfd8d2ca52450dc";
            };
            dependencies = {
              "hoist-non-react-statics@1.2.0" = pkgs."hoist-non-react-statics@1.2.0";
            };
            seen = [ "mobx-react@4.1.5" ];
            };
  "mobx@3.1.7" = nodeEnv.buildYarnPackage {
            packageName = "mobx";
            version = "3.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx/-/mobx-3.1.7.tgz";
              sha1 = "910c01f6e2f7e88ec47baabefee5fe667d37ac00";
            };
            dependencies = {};
            seen = [ "mobx@3.1.7" ];
            };
  "mock-fs@4.4.2" = nodeEnv.buildYarnPackage {
            packageName = "mock-fs";
            version = "4.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mock-fs/-/mock-fs-4.4.2.tgz";
              sha1 = "09dec5313f97095a450be6aa2ad8ab6738d63d6b";
            };
            dependencies = {};
            seen = [ "mock-fs@4.4.2" ];
            };
  "moment@2.18.1" = nodeEnv.buildYarnPackage {
            packageName = "moment";
            version = "2.18.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/moment/-/moment-2.18.1.tgz";
              sha1 = "c36193dd3ce1c2eed2adb7c802dbbc77a81b1c0f";
            };
            dependencies = {};
            seen = [ "moment@2.18.1" ];
            };
  "mout@0.11.1" = nodeEnv.buildYarnPackage {
            packageName = "mout";
            version = "0.11.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mout/-/mout-0.11.1.tgz";
              sha1 = "ba3611df5f0e5b1ffbfd01166b8f02d1f5fa2b99";
            };
            dependencies = {};
            seen = [ "mout@0.11.1" ];
            };
  "ms@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "ms";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz";
              sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
            };
            dependencies = {};
            seen = [ "ms@2.0.0" ];
            };
  "multipipe@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "multipipe";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/multipipe/-/multipipe-0.1.2.tgz";
              sha1 = "2a8f2ddf70eed564dff2d57f1e1a137d9f05078b";
            };
            dependencies = {
              "duplexer2@0.0.2" = pkgs."duplexer2@0.0.2";
            };
            seen = [ "multipipe@0.1.2" ];
            };
  "mute-stream@0.0.7" = nodeEnv.buildYarnPackage {
            packageName = "mute-stream";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.7.tgz";
              sha1 = "3075ce93bc21b8fab43e1bc4da7e8115ed1e7bab";
            };
            dependencies = {};
            seen = [ "mute-stream@0.0.7" ];
            };
  "mz@2.7.0" = nodeEnv.buildYarnPackage {
            packageName = "mz";
            version = "2.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mz/-/mz-2.7.0.tgz";
              sha1 = "95008057a56cafadc2bc63dde7f9ff6955948e32";
            };
            dependencies = {
              "any-promise@1.3.0" = pkgs."any-promise@1.3.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "thenify-all@1.6.0" = pkgs."thenify-all@1.6.0";
            };
            seen = [ "mz@2.7.0" ];
            };
  "nan@2.9.2" = nodeEnv.buildYarnPackage {
            packageName = "nan";
            version = "2.9.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nan/-/nan-2.9.2.tgz";
              sha1 = "f564d75f5f8f36a6d9456cca7a6c4fe488ab7866";
            };
            dependencies = {};
            seen = [ "nan@2.9.2" ];
            };
  "nano-json-stream-parser@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "nano-json-stream-parser";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nano-json-stream-parser/-/nano-json-stream-parser-0.1.2.tgz";
              sha1 = "0cc8f6d0e2b622b479c40d499c46d64b755c6f5f";
            };
            dependencies = {};
            seen = [ "nano-json-stream-parser@0.1.2" ];
            };
  "natural-compare@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "natural-compare";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/natural-compare/-/natural-compare-1.4.0.tgz";
              sha1 = "4abebfeed7541f2c27acfb29bdbbd15c8d5ba4f7";
            };
            dependencies = {};
            seen = [ "natural-compare@1.4.0" ];
            };
  "ncname@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "ncname";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ncname/-/ncname-1.0.0.tgz";
              sha1 = "5b57ad18b1ca092864ef62b0b1ed8194f383b71c";
            };
            dependencies = {
              "xml-char-classes@1.0.0" = pkgs."xml-char-classes@1.0.0";
            };
            seen = [ "ncname@1.0.0" ];
            };
  "negotiator@0.6.1" = nodeEnv.buildYarnPackage {
            packageName = "negotiator";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.1.tgz";
              sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
            };
            dependencies = {};
            seen = [ "negotiator@0.6.1" ];
            };
  "nested-error-stacks@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "nested-error-stacks";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nested-error-stacks/-/nested-error-stacks-1.0.2.tgz";
              sha1 = "19f619591519f096769a5ba9a86e6eeec823c3cf";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "nested-error-stacks@1.0.2" ];
            };
  "no-case@2.3.1" = nodeEnv.buildYarnPackage {
            packageName = "no-case";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/no-case/-/no-case-2.3.1.tgz";
              sha1 = "7aeba1c73a52184265554b7dc03baf720df80081";
            };
            dependencies = {
              "lower-case@1.1.3" = pkgs."lower-case@1.1.3";
            };
            seen = [ "no-case@2.3.1" ];
            };
  "node-abi@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "node-abi";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-abi/-/node-abi-2.3.0.tgz";
              sha1 = "f3d554d6ac72a9ee16f0f4dc9548db7c08de4986";
            };
            dependencies = {
              "semver@5.5.0" = pkgs."semver@5.5.0";
            };
            seen = [ "node-abi@2.3.0" ];
            };
  "node-dir@0.1.16" = nodeEnv.buildYarnPackage {
            packageName = "node-dir";
            version = "0.1.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-dir/-/node-dir-0.1.16.tgz";
              sha1 = "d2ef583aa50b90d93db8cdd26fcea58353957fe4";
            };
            dependencies = {
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
            };
            seen = [ "node-dir@0.1.16" ];
            };
  "node-fetch@1.6.3" = nodeEnv.buildYarnPackage {
            packageName = "node-fetch";
            version = "1.6.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-fetch/-/node-fetch-1.6.3.tgz";
              sha1 = "dc234edd6489982d58e8f0db4f695029abcd8c04";
            };
            dependencies = {
              "encoding@0.1.12" = pkgs."encoding@0.1.12";
              "is-stream@1.1.0" = pkgs."is-stream@1.1.0";
            };
            seen = [ "node-fetch@1.6.3" ];
            };
  "node-gyp@3.6.2" = nodeEnv.buildYarnPackage {
            packageName = "node-gyp";
            version = "3.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-gyp/-/node-gyp-3.6.2.tgz";
              sha1 = "9bfbe54562286284838e750eac05295853fa1c60";
            };
            dependencies = {
              "fstream@1.0.10" = pkgs."fstream@1.0.10";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "nopt@3.0.6" = pkgs."nopt@3.0.6";
              "npmlog@4.1.2" = pkgs."npmlog@4.1.2";
              "osenv@0.1.4" = pkgs."osenv@0.1.4";
              "request@2.79.0" = pkgs."request@2.79.0";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
              "semver@5.3.0" = pkgs."semver@5.3.0";
              "tar@2.2.1" = pkgs."tar@2.2.1";
              "which@1.2.12" = pkgs."which@1.2.12";
            };
            seen = [ "node-gyp@3.6.2" ];
            };
  "node-libs-browser@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "node-libs-browser";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-libs-browser/-/node-libs-browser-1.1.1.tgz";
              sha1 = "2a38243abedd7dffcd07a97c9aca5668975a6fea";
            };
            dependencies = {
              "assert@1.4.1" = pkgs."assert@1.4.1";
              "browserify-zlib@0.1.4" = pkgs."browserify-zlib@0.1.4";
              "buffer@4.9.1" = pkgs."buffer@4.9.1";
              "console-browserify@1.1.0" = pkgs."console-browserify@1.1.0";
              "constants-browserify@1.0.0" = pkgs."constants-browserify@1.0.0";
              "crypto-browserify@3.11.0" = pkgs."crypto-browserify@3.11.0";
              "domain-browser@1.1.7" = pkgs."domain-browser@1.1.7";
              "events@1.1.1" = pkgs."events@1.1.1";
              "https-browserify@0.0.1" = pkgs."https-browserify@0.0.1";
              "os-browserify@0.2.1" = pkgs."os-browserify@0.2.1";
              "path-browserify@0.0.0" = pkgs."path-browserify@0.0.0";
              "process@0.11.9" = pkgs."process@0.11.9";
              "punycode@1.4.1" = pkgs."punycode@1.4.1";
              "querystring-es3@0.2.1" = pkgs."querystring-es3@0.2.1";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "stream-browserify@2.0.1" = pkgs."stream-browserify@2.0.1";
              "stream-http@2.6.0" = pkgs."stream-http@2.6.0";
              "string_decoder@0.10.31" = pkgs."string_decoder@0.10.31";
              "timers-browserify@1.4.2" = pkgs."timers-browserify@1.4.2";
              "tty-browserify@0.0.0" = pkgs."tty-browserify@0.0.0";
              "url@0.11.0" = pkgs."url@0.11.0";
              "util@0.10.3" = pkgs."util@0.10.3";
              "vm-browserify@0.0.4" = pkgs."vm-browserify@0.0.4";
            };
            seen = [ "node-libs-browser@1.1.1" ];
            };
  "node-pre-gyp@0.6.32" = nodeEnv.buildYarnPackage {
            packageName = "node-pre-gyp";
            version = "0.6.32";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-pre-gyp/-/node-pre-gyp-0.6.32.tgz";
              sha1 = "fc452b376e7319b3d255f5f34853ef6fd8fe1fd5";
            };
            dependencies = {
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "nopt@3.0.6" = pkgs."nopt@3.0.6";
              "npmlog@4.0.2" = pkgs."npmlog@4.0.2";
              "rc@1.1.6" = pkgs."rc@1.1.6";
              "request@2.79.0" = pkgs."request@2.79.0";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
              "semver@5.3.0" = pkgs."semver@5.3.0";
              "tar@2.2.1" = pkgs."tar@2.2.1";
              "tar-pack@3.3.0" = pkgs."tar-pack@3.3.0";
            };
            seen = [ "node-pre-gyp@0.6.32" ];
            };
  "node-sass@3.13.1" = nodeEnv.buildYarnPackage {
            packageName = "node-sass";
            version = "3.13.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-sass/-/node-sass-3.13.1.tgz";
              sha1 = "7240fbbff2396304b4223527ed3020589c004fc2";
            };
            dependencies = {
              "async-foreach@0.1.3" = pkgs."async-foreach@0.1.3";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "cross-spawn@3.0.1" = pkgs."cross-spawn@3.0.1";
              "gaze@1.1.2" = pkgs."gaze@1.1.2";
              "get-stdin@4.0.1" = pkgs."get-stdin@4.0.1";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "in-publish@2.0.0" = pkgs."in-publish@2.0.0";
              "lodash.assign@4.2.0" = pkgs."lodash.assign@4.2.0";
              "lodash.clonedeep@4.5.0" = pkgs."lodash.clonedeep@4.5.0";
              "meow@3.7.0" = pkgs."meow@3.7.0";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "nan@2.5.0" = pkgs."nan@2.5.0";
              "node-gyp@3.4.0" = pkgs."node-gyp@3.4.0";
              "npmlog@4.0.2" = pkgs."npmlog@4.0.2";
              "request@2.79.0" = pkgs."request@2.79.0";
              "sass-graph@2.1.2" = pkgs."sass-graph@2.1.2";
            };
            seen = [ "node-sass@3.13.1" ];
            };
  "node-uuid@1.4.7" = nodeEnv.buildYarnPackage {
            packageName = "node-uuid";
            version = "1.4.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-uuid/-/node-uuid-1.4.7.tgz";
              sha1 = "6da5a17668c4b3dd59623bda11cf7fa4c1f60a6f";
            };
            dependencies = {};
            seen = [ "node-uuid@1.4.7" ];
            };
  "nodemon@1.11.0" = nodeEnv.buildYarnPackage {
            packageName = "nodemon";
            version = "1.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nodemon/-/nodemon-1.11.0.tgz";
              sha1 = "226c562bd2a7b13d3d7518b49ad4828a3623d06c";
            };
            dependencies = {
              "chokidar@1.6.1" = pkgs."chokidar@1.6.1";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "es6-promise@3.3.1" = pkgs."es6-promise@3.3.1";
              "ignore-by-default@1.0.1" = pkgs."ignore-by-default@1.0.1";
              "lodash.defaults@3.1.2" = pkgs."lodash.defaults@3.1.2";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "ps-tree@1.1.0" = pkgs."ps-tree@1.1.0";
              "touch@1.0.0" = pkgs."touch@1.0.0";
              "undefsafe@0.0.3" = pkgs."undefsafe@0.0.3";
              "update-notifier@0.5.0" = pkgs."update-notifier@0.5.0";
            };
            seen = [ "nodemon@1.11.0" ];
            };
  "nopt@3.0.6" = nodeEnv.buildYarnPackage {
            packageName = "nopt";
            version = "3.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nopt/-/nopt-3.0.6.tgz";
              sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
            };
            dependencies = {
              "abbrev@1.0.9" = pkgs."abbrev@1.0.9";
            };
            seen = [ "nopt@3.0.6" ];
            };
  "normalize-package-data@2.3.5" = nodeEnv.buildYarnPackage {
            packageName = "normalize-package-data";
            version = "2.3.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-package-data/-/normalize-package-data-2.3.5.tgz";
              sha1 = "8d924f142960e1777e7ffe170543631cc7cb02df";
            };
            dependencies = {
              "hosted-git-info@2.1.5" = pkgs."hosted-git-info@2.1.5";
              "is-builtin-module@1.0.0" = pkgs."is-builtin-module@1.0.0";
              "semver@5.3.0" = pkgs."semver@5.3.0";
              "validate-npm-package-license@3.0.1" = pkgs."validate-npm-package-license@3.0.1";
            };
            seen = [ "normalize-package-data@2.3.5" ];
            };
  "normalize-path@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "normalize-path";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.0.1.tgz";
              sha1 = "47886ac1662760d4261b7d979d241709d3ce3f7a";
            };
            dependencies = {};
            seen = [ "normalize-path@2.0.1" ];
            };
  "normalize-range@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "normalize-range";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-range/-/normalize-range-0.1.2.tgz";
              sha1 = "2d10c06bdfd312ea9777695a4d28439456b75942";
            };
            dependencies = {};
            seen = [ "normalize-range@0.1.2" ];
            };
  "normalize-url@1.9.0" = nodeEnv.buildYarnPackage {
            packageName = "normalize-url";
            version = "1.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-url/-/normalize-url-1.9.0.tgz";
              sha1 = "c2bb50035edee62cd81edb2d45da68dc25e3423e";
            };
            dependencies = {
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "prepend-http@1.0.4" = pkgs."prepend-http@1.0.4";
              "query-string@4.2.3" = pkgs."query-string@4.2.3";
              "sort-keys@1.1.2" = pkgs."sort-keys@1.1.2";
            };
            seen = [ "normalize-url@1.9.0" ];
            };
  "npm-install-package@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "npm-install-package";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npm-install-package/-/npm-install-package-2.1.0.tgz";
              sha1 = "d7efe3cfcd7ab00614b896ea53119dc9ab259125";
            };
            dependencies = {};
            seen = [ "npm-install-package@2.1.0" ];
            };
  "npmlog@4.1.2" = nodeEnv.buildYarnPackage {
            packageName = "npmlog";
            version = "4.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.1.2.tgz";
              sha1 = "08a7f2a8bf734604779a9efa4ad5cc717abb954b";
            };
            dependencies = {
              "are-we-there-yet@1.1.2" = pkgs."are-we-there-yet@1.1.2";
              "console-control-strings@1.1.0" = pkgs."console-control-strings@1.1.0";
              "gauge@2.7.4" = pkgs."gauge@2.7.4";
              "set-blocking@2.0.0" = pkgs."set-blocking@2.0.0";
            };
            seen = [ "npmlog@4.1.2" ];
            };
  "nugget@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "nugget";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nugget/-/nugget-2.0.1.tgz";
              sha1 = "201095a487e1ad36081b3432fa3cada4f8d071b0";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "pretty-bytes@1.0.4" = pkgs."pretty-bytes@1.0.4";
              "progress-stream@1.2.0" = pkgs."progress-stream@1.2.0";
              "request@2.79.0" = pkgs."request@2.79.0";
              "single-line-log@1.1.2" = pkgs."single-line-log@1.1.2";
              "throttleit@0.0.2" = pkgs."throttleit@0.0.2";
            };
            seen = [ "nugget@2.0.1" ];
            };
  "num2fraction@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "num2fraction";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/num2fraction/-/num2fraction-1.2.2.tgz";
              sha1 = "6f682b6a027a4e9ddfa4564cd2589d1d4e669ede";
            };
            dependencies = {};
            seen = [ "num2fraction@1.2.2" ];
            };
  "number-is-nan@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "number-is-nan";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/number-is-nan/-/number-is-nan-1.0.1.tgz";
              sha1 = "097b602b53422a522c1afb8790318336941a011d";
            };
            dependencies = {};
            seen = [ "number-is-nan@1.0.1" ];
            };
  "number-to-bn@1.7.0" = nodeEnv.buildYarnPackage {
            packageName = "number-to-bn";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/number-to-bn/-/number-to-bn-1.7.0.tgz";
              sha1 = "bb3623592f7e5f9e0030b1977bd41a0c53fe1ea0";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "strip-hex-prefix@1.0.0" = pkgs."strip-hex-prefix@1.0.0";
            };
            seen = [ "number-to-bn@1.7.0" ];
            };
  "nwmatcher@1.3.9" = nodeEnv.buildYarnPackage {
            packageName = "nwmatcher";
            version = "1.3.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nwmatcher/-/nwmatcher-1.3.9.tgz";
              sha1 = "8bab486ff7fa3dfd086656bbe8b17116d3692d2a";
            };
            dependencies = {};
            seen = [ "nwmatcher@1.3.9" ];
            };
  "oauth-sign@0.8.2" = nodeEnv.buildYarnPackage {
            packageName = "oauth-sign";
            version = "0.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.8.2.tgz";
              sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
            };
            dependencies = {};
            seen = [ "oauth-sign@0.8.2" ];
            };
  "object-assign@4.1.1" = nodeEnv.buildYarnPackage {
            packageName = "object-assign";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz";
              sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
            };
            dependencies = {};
            seen = [ "object-assign@4.1.1" ];
            };
  "object-hash@1.1.5" = nodeEnv.buildYarnPackage {
            packageName = "object-hash";
            version = "1.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-hash/-/object-hash-1.1.5.tgz";
              sha1 = "bdd844e030d0861b692ca175c6cab6868ec233d7";
            };
            dependencies = {};
            seen = [ "object-hash@1.1.5" ];
            };
  "object-keys@1.0.11" = nodeEnv.buildYarnPackage {
            packageName = "object-keys";
            version = "1.0.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-keys/-/object-keys-1.0.11.tgz";
              sha1 = "c54601778ad560f1142ce0e01bcca8b56d13426d";
            };
            dependencies = {};
            seen = [ "object-keys@1.0.11" ];
            };
  "object.assign@4.1.0" = nodeEnv.buildYarnPackage {
            packageName = "object.assign";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.assign/-/object.assign-4.1.0.tgz";
              sha1 = "968bf1100d7956bb3ca086f006f846b3bc4008da";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "function-bind@1.1.1" = pkgs."function-bind@1.1.1";
              "has-symbols@1.0.0" = pkgs."has-symbols@1.0.0";
              "object-keys@1.0.11" = pkgs."object-keys@1.0.11";
            };
            seen = [ "object.assign@4.1.0" ];
            };
  "object.entries@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "object.entries";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.entries/-/object.entries-1.0.4.tgz";
              sha1 = "1bf9a4dd2288f5b33f3a993d257661f05d161a5f";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "es-abstract@1.6.1" = pkgs."es-abstract@1.6.1";
              "function-bind@1.1.0" = pkgs."function-bind@1.1.0";
              "has@1.0.1" = pkgs."has@1.0.1";
            };
            seen = [ "object.entries@1.0.4" ];
            };
  "object.getownpropertydescriptors@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "object.getownpropertydescriptors";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.getownpropertydescriptors/-/object.getownpropertydescriptors-2.0.3.tgz";
              sha1 = "8758c846f5b407adab0f236e0986f14b051caa16";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "es-abstract@1.6.1" = pkgs."es-abstract@1.6.1";
            };
            seen = [ "object.getownpropertydescriptors@2.0.3" ];
            };
  "object.omit@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "object.omit";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.omit/-/object.omit-2.0.1.tgz";
              sha1 = "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa";
            };
            dependencies = {
              "for-own@0.1.4" = pkgs."for-own@0.1.4";
              "is-extendable@0.1.1" = pkgs."is-extendable@0.1.1";
            };
            seen = [ "object.omit@2.0.1" ];
            };
  "object.values@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "object.values";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.values/-/object.values-1.0.4.tgz";
              sha1 = "e524da09b4f66ff05df457546ec72ac99f13069a";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "es-abstract@1.6.1" = pkgs."es-abstract@1.6.1";
              "function-bind@1.1.0" = pkgs."function-bind@1.1.0";
              "has@1.0.1" = pkgs."has@1.0.1";
            };
            seen = [ "object.values@1.0.4" ];
            };
  "oboe@2.1.3" = nodeEnv.buildYarnPackage {
            packageName = "oboe";
            version = "2.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/oboe/-/oboe-2.1.3.tgz";
              sha1 = "2b4865dbd46be81225713f4e9bfe4bcf4f680a4f";
            };
            dependencies = {
              "http-https@1.0.0" = pkgs."http-https@1.0.0";
            };
            seen = [ "oboe@2.1.3" ];
            };
  "on-finished@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "on-finished";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/on-finished/-/on-finished-2.3.0.tgz";
              sha1 = "20f1336481b083cd75337992a16971aa2d906947";
            };
            dependencies = {
              "ee-first@1.1.1" = pkgs."ee-first@1.1.1";
            };
            seen = [ "on-finished@2.3.0" ];
            };
  "once@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "once";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/once/-/once-1.4.0.tgz";
              sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
            };
            dependencies = {
              "wrappy@1.0.2" = pkgs."wrappy@1.0.2";
            };
            seen = [ "once@1.4.0" ];
            };
  "onetime@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "onetime";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/onetime/-/onetime-2.0.1.tgz";
              sha1 = "067428230fd67443b2794b22bba528b6867962d4";
            };
            dependencies = {
              "mimic-fn@1.2.0" = pkgs."mimic-fn@1.2.0";
            };
            seen = [ "onetime@2.0.1" ];
            };
  "optimist@0.6.1" = nodeEnv.buildYarnPackage {
            packageName = "optimist";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/optimist/-/optimist-0.6.1.tgz";
              sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
            };
            dependencies = {
              "minimist@0.0.8" = pkgs."minimist@0.0.8";
              "wordwrap@0.0.3" = pkgs."wordwrap@0.0.3";
            };
            seen = [ "optimist@0.6.1" ];
            };
  "optionator@0.8.2" = nodeEnv.buildYarnPackage {
            packageName = "optionator";
            version = "0.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/optionator/-/optionator-0.8.2.tgz";
              sha1 = "364c5e409d3f4d6301d6c0b4c05bba50180aeb64";
            };
            dependencies = {
              "deep-is@0.1.3" = pkgs."deep-is@0.1.3";
              "fast-levenshtein@2.0.6" = pkgs."fast-levenshtein@2.0.6";
              "levn@0.3.0" = pkgs."levn@0.3.0";
              "prelude-ls@1.1.2" = pkgs."prelude-ls@1.1.2";
              "type-check@0.3.2" = pkgs."type-check@0.3.2";
              "wordwrap@1.0.0" = pkgs."wordwrap@1.0.0";
            };
            seen = [ "optionator@0.8.2" ];
            };
  "ora@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "ora";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ora/-/ora-1.4.0.tgz";
              sha1 = "884458215b3a5d4097592285f93321bb7a79e2e5";
            };
            dependencies = {
              "chalk@2.3.2" = pkgs."chalk@2.3.2";
              "cli-cursor@2.1.0" = pkgs."cli-cursor@2.1.0";
              "cli-spinners@1.1.0" = pkgs."cli-spinners@1.1.0";
              "log-symbols@2.2.0" = pkgs."log-symbols@2.2.0";
            };
            seen = [ "ora@1.4.0" ];
            };
  "os-browserify@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "os-browserify";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-browserify/-/os-browserify-0.2.1.tgz";
              sha1 = "63fc4ccee5d2d7763d26bbf8601078e6c2e0044f";
            };
            dependencies = {};
            seen = [ "os-browserify@0.2.1" ];
            };
  "os-homedir@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "os-homedir";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz";
              sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
            };
            dependencies = {};
            seen = [ "os-homedir@1.0.2" ];
            };
  "os-locale@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "os-locale";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-locale/-/os-locale-1.4.0.tgz";
              sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
            };
            dependencies = {
              "lcid@1.0.0" = pkgs."lcid@1.0.0";
            };
            seen = [ "os-locale@1.4.0" ];
            };
  "os-tmpdir@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "os-tmpdir";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
              sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
            };
            dependencies = {};
            seen = [ "os-tmpdir@1.0.2" ];
            };
  "osenv@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "osenv";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/osenv/-/osenv-0.1.4.tgz";
              sha1 = "42fe6d5953df06c8064be6f176c3d05aaaa34644";
            };
            dependencies = {
              "os-homedir@1.0.2" = pkgs."os-homedir@1.0.2";
              "os-tmpdir@1.0.2" = pkgs."os-tmpdir@1.0.2";
            };
            seen = [ "osenv@0.1.4" ];
            };
  "output-file-sync@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "output-file-sync";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/output-file-sync/-/output-file-sync-1.1.2.tgz";
              sha1 = "d0a33eefe61a205facb90092e826598d5245ce76";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "output-file-sync@1.1.2" ];
            };
  "p-cancelable@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "p-cancelable";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-cancelable/-/p-cancelable-0.3.0.tgz";
              sha1 = "b9e123800bcebb7ac13a479be195b507b98d30fa";
            };
            dependencies = {};
            seen = [ "p-cancelable@0.3.0" ];
            };
  "p-finally@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "p-finally";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-finally/-/p-finally-1.0.0.tgz";
              sha1 = "3fbcfb15b899a44123b34b6dcc18b724336a2cae";
            };
            dependencies = {};
            seen = [ "p-finally@1.0.0" ];
            };
  "p-limit@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "p-limit";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-limit/-/p-limit-1.1.0.tgz";
              sha1 = "b07ff2d9a5d88bec806035895a2bab66a27988bc";
            };
            dependencies = {};
            seen = [ "p-limit@1.1.0" ];
            };
  "p-locate@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "p-locate";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-locate/-/p-locate-2.0.0.tgz";
              sha1 = "20a0103b222a70c8fd39cc2e580680f3dde5ec43";
            };
            dependencies = {
              "p-limit@1.1.0" = pkgs."p-limit@1.1.0";
            };
            seen = [ "p-locate@2.0.0" ];
            };
  "p-timeout@1.2.1" = nodeEnv.buildYarnPackage {
            packageName = "p-timeout";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-timeout/-/p-timeout-1.2.1.tgz";
              sha1 = "5eb3b353b7fce99f101a1038880bb054ebbea386";
            };
            dependencies = {
              "p-finally@1.0.0" = pkgs."p-finally@1.0.0";
            };
            seen = [ "p-timeout@1.2.1" ];
            };
  "package-json@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "package-json";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/package-json/-/package-json-1.2.0.tgz";
              sha1 = "c8ecac094227cdf76a316874ed05e27cc939a0e0";
            };
            dependencies = {
              "got@3.3.1" = pkgs."got@3.3.1";
              "registry-url@3.1.0" = pkgs."registry-url@3.1.0";
            };
            seen = [ "package-json@1.2.0" ];
            };
  "pad-right@0.2.2" = nodeEnv.buildYarnPackage {
            packageName = "pad-right";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pad-right/-/pad-right-0.2.2.tgz";
              sha1 = "6fbc924045d244f2a2a244503060d3bfc6009774";
            };
            dependencies = {
              "repeat-string@1.6.1" = pkgs."repeat-string@1.6.1";
            };
            seen = [ "pad-right@0.2.2" ];
            };
  "pako@0.2.9" = nodeEnv.buildYarnPackage {
            packageName = "pako";
            version = "0.2.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pako/-/pako-0.2.9.tgz";
              sha1 = "f3f7522f4ef782348da8161bad9ecfd51bf83a75";
            };
            dependencies = {};
            seen = [ "pako@0.2.9" ];
            };
  "param-case@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "param-case";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/param-case/-/param-case-2.1.1.tgz";
              sha1 = "df94fd8cf6531ecf75e6bef9a0858fbc72be2247";
            };
            dependencies = {
              "no-case@2.3.1" = pkgs."no-case@2.3.1";
            };
            seen = [ "param-case@2.1.1" ];
            };
  "parse-asn1@5.0.0" = nodeEnv.buildYarnPackage {
            packageName = "parse-asn1";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-asn1/-/parse-asn1-5.0.0.tgz";
              sha1 = "35060f6d5015d37628c770f4e091a0b5a278bc23";
            };
            dependencies = {
              "asn1.js@4.9.1" = pkgs."asn1.js@4.9.1";
              "browserify-aes@1.0.6" = pkgs."browserify-aes@1.0.6";
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "evp_bytestokey@1.0.0" = pkgs."evp_bytestokey@1.0.0";
              "pbkdf2@3.0.9" = pkgs."pbkdf2@3.0.9";
            };
            seen = [ "parse-asn1@5.0.0" ];
            };
  "parse-author@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "parse-author";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-author/-/parse-author-2.0.0.tgz";
              sha1 = "d3460bf1ddd0dfaeed42da754242e65fb684a81f";
            };
            dependencies = {
              "author-regex@1.0.0" = pkgs."author-regex@1.0.0";
            };
            seen = [ "parse-author@2.0.0" ];
            };
  "parse-glob@3.0.4" = nodeEnv.buildYarnPackage {
            packageName = "parse-glob";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-glob/-/parse-glob-3.0.4.tgz";
              sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
            };
            dependencies = {
              "glob-base@0.3.0" = pkgs."glob-base@0.3.0";
              "is-dotfile@1.0.2" = pkgs."is-dotfile@1.0.2";
              "is-extglob@1.0.0" = pkgs."is-extglob@1.0.0";
              "is-glob@2.0.1" = pkgs."is-glob@2.0.1";
            };
            seen = [ "parse-glob@3.0.4" ];
            };
  "parse-headers@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "parse-headers";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-headers/-/parse-headers-2.0.1.tgz";
              sha1 = "6ae83a7aa25a9d9b700acc28698cd1f1ed7e9536";
            };
            dependencies = {
              "for-each@0.3.2" = pkgs."for-each@0.3.2";
              "trim@0.0.1" = pkgs."trim@0.0.1";
            };
            seen = [ "parse-headers@2.0.1" ];
            };
  "parse-json@2.2.0" = nodeEnv.buildYarnPackage {
            packageName = "parse-json";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-json/-/parse-json-2.2.0.tgz";
              sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
            };
            dependencies = {
              "error-ex@1.3.0" = pkgs."error-ex@1.3.0";
            };
            seen = [ "parse-json@2.2.0" ];
            };
  "parse-passwd@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "parse-passwd";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-passwd/-/parse-passwd-1.0.0.tgz";
              sha1 = "6d5b934a456993b23d37f40a382d6f1666a8e5c6";
            };
            dependencies = {};
            seen = [ "parse-passwd@1.0.0" ];
            };
  "parse5@1.5.1" = nodeEnv.buildYarnPackage {
            packageName = "parse5";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse5/-/parse5-1.5.1.tgz";
              sha1 = "9b7f3b0de32be78dc2401b17573ccaf0f6f59d94";
            };
            dependencies = {};
            seen = [ "parse5@1.5.1" ];
            };
  "parseurl@1.3.2" = nodeEnv.buildYarnPackage {
            packageName = "parseurl";
            version = "1.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.2.tgz";
              sha1 = "fc289d4ed8993119460c156253262cdc8de65bf3";
            };
            dependencies = {};
            seen = [ "parseurl@1.3.2" ];
            };
  "pascalcase@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "pascalcase";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pascalcase/-/pascalcase-0.1.1.tgz";
              sha1 = "b363e55e8006ca6fe21784d2db22bd15d7917f14";
            };
            dependencies = {};
            seen = [ "pascalcase@0.1.1" ];
            };
  "path-array@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "path-array";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-array/-/path-array-1.0.1.tgz";
              sha1 = "7e2f0f35f07a2015122b868b7eac0eb2c4fec271";
            };
            dependencies = {
              "array-index@1.0.0" = pkgs."array-index@1.0.0";
            };
            seen = [ "path-array@1.0.1" ];
            };
  "path-browserify@0.0.0" = nodeEnv.buildYarnPackage {
            packageName = "path-browserify";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-browserify/-/path-browserify-0.0.0.tgz";
              sha1 = "a0b870729aae214005b7d5032ec2cbbb0fb4451a";
            };
            dependencies = {};
            seen = [ "path-browserify@0.0.0" ];
            };
  "path-exists@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "path-exists";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-exists/-/path-exists-3.0.0.tgz";
              sha1 = "ce0ebeaa5f78cb18925ea7d810d7b59b010fd515";
            };
            dependencies = {};
            seen = [ "path-exists@3.0.0" ];
            };
  "path-is-absolute@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "path-is-absolute";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
              sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
            };
            dependencies = {};
            seen = [ "path-is-absolute@1.0.1" ];
            };
  "path-is-inside@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "path-is-inside";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-is-inside/-/path-is-inside-1.0.2.tgz";
              sha1 = "365417dede44430d1c11af61027facf074bdfc53";
            };
            dependencies = {};
            seen = [ "path-is-inside@1.0.2" ];
            };
  "path-parse@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "path-parse";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.5.tgz";
              sha1 = "3c1adf871ea9cd6c9431b6ea2bd74a0ff055c4c1";
            };
            dependencies = {};
            seen = [ "path-parse@1.0.5" ];
            };
  "path-to-regexp@0.1.7" = nodeEnv.buildYarnPackage {
            packageName = "path-to-regexp";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
              sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
            };
            dependencies = {};
            seen = [ "path-to-regexp@0.1.7" ];
            };
  "path-type@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "path-type";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-type/-/path-type-2.0.0.tgz";
              sha1 = "f012ccb8415b7096fc2daa1054c3d72389594c73";
            };
            dependencies = {
              "pify@2.3.0" = pkgs."pify@2.3.0";
            };
            seen = [ "path-type@2.0.0" ];
            };
  "pathval@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "pathval";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pathval/-/pathval-1.1.0.tgz";
              sha1 = "b942e6d4bde653005ef6b71361def8727d0645e0";
            };
            dependencies = {};
            seen = [ "pathval@1.1.0" ];
            };
  "pause-stream@0.0.11" = nodeEnv.buildYarnPackage {
            packageName = "pause-stream";
            version = "0.0.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pause-stream/-/pause-stream-0.0.11.tgz";
              sha1 = "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445";
            };
            dependencies = {
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "pause-stream@0.0.11" ];
            };
  "pbkdf2-compat@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "pbkdf2-compat";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pbkdf2-compat/-/pbkdf2-compat-2.0.1.tgz";
              sha1 = "b6e0c8fa99494d94e0511575802a59a5c142f288";
            };
            dependencies = {};
            seen = [ "pbkdf2-compat@2.0.1" ];
            };
  "pbkdf2@3.0.14" = nodeEnv.buildYarnPackage {
            packageName = "pbkdf2";
            version = "3.0.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pbkdf2/-/pbkdf2-3.0.14.tgz";
              sha1 = "a35e13c64799b06ce15320f459c230e68e73bade";
            };
            dependencies = {
              "create-hash@1.1.3" = pkgs."create-hash@1.1.3";
              "create-hmac@1.1.6" = pkgs."create-hmac@1.1.6";
              "ripemd160@2.0.1" = pkgs."ripemd160@2.0.1";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
              "sha.js@2.4.10" = pkgs."sha.js@2.4.10";
            };
            seen = [ "pbkdf2@3.0.14" ];
            };
  "pdf.js-extract@0.0.5" = nodeEnv.buildYarnPackage {
            packageName = "pdf.js-extract";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pdf.js-extract/-/pdf.js-extract-0.0.5.tgz";
              sha1 = "d141942ee2e291e8fd851159ec15cf6930aa95ce";
            };
            dependencies = {
              "pdfjs-dist-for-node@1.0.893" = pkgs."pdfjs-dist-for-node@1.0.893";
            };
            seen = [ "pdf.js-extract@0.0.5" ];
            };
  "pdfjs-dist-for-node@1.0.893" = nodeEnv.buildYarnPackage {
            packageName = "pdfjs-dist-for-node";
            version = "1.0.893";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pdfjs-dist-for-node/-/pdfjs-dist-for-node-1.0.893.tgz";
              sha1 = "10be171dc212f4aa862528b43258d745399bc3ad";
            };
            dependencies = {};
            seen = [ "pdfjs-dist-for-node@1.0.893" ];
            };
  "pend@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "pend";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pend/-/pend-1.2.0.tgz";
              sha1 = "7a57eb550a6783f9115331fcf4663d5c8e007a50";
            };
            dependencies = {};
            seen = [ "pend@1.2.0" ];
            };
  "performance-now@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "performance-now";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/performance-now/-/performance-now-2.1.0.tgz";
              sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
            };
            dependencies = {};
            seen = [ "performance-now@2.1.0" ];
            };
  "pify@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "pify";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pify/-/pify-3.0.0.tgz";
              sha1 = "e5a4acd2c101fdf3d9a4d07f0dbc4db49dd28176";
            };
            dependencies = {};
            seen = [ "pify@3.0.0" ];
            };
  "pinkie-promise@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "pinkie-promise";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
              sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
            };
            dependencies = {
              "pinkie@2.0.4" = pkgs."pinkie@2.0.4";
            };
            seen = [ "pinkie-promise@2.0.1" ];
            };
  "pinkie@2.0.4" = nodeEnv.buildYarnPackage {
            packageName = "pinkie";
            version = "2.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pinkie/-/pinkie-2.0.4.tgz";
              sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
            };
            dependencies = {};
            seen = [ "pinkie@2.0.4" ];
            };
  "pkg-conf@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "pkg-conf";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pkg-conf/-/pkg-conf-1.1.3.tgz";
              sha1 = "378e56d6fd13e88bfb6f4a25df7a83faabddba5b";
            };
            dependencies = {
              "find-up@1.1.2" = pkgs."find-up@1.1.2";
              "load-json-file@1.1.0" = pkgs."load-json-file@1.1.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "symbol@0.2.3" = pkgs."symbol@0.2.3";
            };
            seen = [ "pkg-conf@1.1.3" ];
            };
  "pkg-dir@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "pkg-dir";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pkg-dir/-/pkg-dir-1.0.0.tgz";
              sha1 = "7a4b508a8d5bb2d629d447056ff4e9c9314cf3d4";
            };
            dependencies = {
              "find-up@1.1.2" = pkgs."find-up@1.1.2";
            };
            seen = [ "pkg-dir@1.0.0" ];
            };
  "pkg-up@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "pkg-up";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pkg-up/-/pkg-up-2.0.0.tgz";
              sha1 = "c819ac728059a461cab1c3889a2be3c49a004d7f";
            };
            dependencies = {
              "find-up@2.1.0" = pkgs."find-up@2.1.0";
            };
            seen = [ "pkg-up@2.0.0" ];
            };
  "plist@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "plist";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/plist/-/plist-2.0.1.tgz";
              sha1 = "0a32ca9481b1c364e92e18dc55c876de9d01da8b";
            };
            dependencies = {
              "base64-js@1.1.2" = pkgs."base64-js@1.1.2";
              "xmlbuilder@8.2.2" = pkgs."xmlbuilder@8.2.2";
              "xmldom@0.1.27" = pkgs."xmldom@0.1.27";
            };
            seen = [ "plist@2.0.1" ];
            };
  "plur@2.1.2" = nodeEnv.buildYarnPackage {
            packageName = "plur";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/plur/-/plur-2.1.2.tgz";
              sha1 = "7482452c1a0f508e3e344eaec312c91c29dc655a";
            };
            dependencies = {
              "irregular-plurals@1.2.0" = pkgs."irregular-plurals@1.2.0";
            };
            seen = [ "plur@2.1.2" ];
            };
  "pluralize@1.2.1" = nodeEnv.buildYarnPackage {
            packageName = "pluralize";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pluralize/-/pluralize-1.2.1.tgz";
              sha1 = "d1a21483fd22bb41e58a12fa3421823140897c45";
            };
            dependencies = {};
            seen = [ "pluralize@1.2.1" ];
            };
  "podda@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "podda";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/podda/-/podda-1.2.2.tgz";
              sha1 = "15b0edbd334ade145813343f5ecf9c10a71cf500";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "immutable@3.8.1" = pkgs."immutable@3.8.1";
            };
            seen = [ "podda@1.2.2" ];
            };
  "postcss-calc@5.3.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-calc";
            version = "5.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-calc/-/postcss-calc-5.3.1.tgz";
              sha1 = "77bae7ca928ad85716e2fda42f261bf7c1d65b5e";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-message-helpers@2.0.0" = pkgs."postcss-message-helpers@2.0.0";
              "reduce-css-calc@1.3.0" = pkgs."reduce-css-calc@1.3.0";
            };
            seen = [ "postcss-calc@5.3.1" ];
            };
  "postcss-colormin@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-colormin";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-colormin/-/postcss-colormin-2.2.1.tgz";
              sha1 = "dc5421b6ae6f779ef6bfd47352b94abe59d0316b";
            };
            dependencies = {
              "colormin@1.1.2" = pkgs."colormin@1.1.2";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-colormin@2.2.1" ];
            };
  "postcss-convert-values@2.6.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-convert-values";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-convert-values/-/postcss-convert-values-2.6.0.tgz";
              sha1 = "08c6d06130fe58a91a21ff50829e1aad6a3a1acc";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-convert-values@2.6.0" ];
            };
  "postcss-discard-comments@2.0.4" = nodeEnv.buildYarnPackage {
            packageName = "postcss-discard-comments";
            version = "2.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-comments/-/postcss-discard-comments-2.0.4.tgz";
              sha1 = "befe89fafd5b3dace5ccce51b76b81514be00e3d";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-discard-comments@2.0.4" ];
            };
  "postcss-discard-duplicates@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-discard-duplicates";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-duplicates/-/postcss-discard-duplicates-2.0.2.tgz";
              sha1 = "02be520e91571ffb10738766a981d5770989bb32";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-discard-duplicates@2.0.2" ];
            };
  "postcss-discard-empty@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-discard-empty";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-empty/-/postcss-discard-empty-2.1.0.tgz";
              sha1 = "d2b4bd9d5ced5ebd8dcade7640c7d7cd7f4f92b5";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-discard-empty@2.1.0" ];
            };
  "postcss-discard-overridden@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-discard-overridden";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-overridden/-/postcss-discard-overridden-0.1.1.tgz";
              sha1 = "8b1eaf554f686fb288cd874c55667b0aa3668d58";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-discard-overridden@0.1.1" ];
            };
  "postcss-discard-unused@2.2.3" = nodeEnv.buildYarnPackage {
            packageName = "postcss-discard-unused";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-unused/-/postcss-discard-unused-2.2.3.tgz";
              sha1 = "bce30b2cc591ffc634322b5fb3464b6d934f4433";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "uniqs@2.0.0" = pkgs."uniqs@2.0.0";
            };
            seen = [ "postcss-discard-unused@2.2.3" ];
            };
  "postcss-filter-plugins@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-filter-plugins";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-filter-plugins/-/postcss-filter-plugins-2.0.2.tgz";
              sha1 = "6d85862534d735ac420e4a85806e1f5d4286d84c";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "uniqid@4.1.1" = pkgs."uniqid@4.1.1";
            };
            seen = [ "postcss-filter-plugins@2.0.2" ];
            };
  "postcss-load-config@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-load-config";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-load-config/-/postcss-load-config-1.0.0.tgz";
              sha1 = "1399f60dcd6bd9c3124b2eb22960f77f9dc08b3d";
            };
            dependencies = {
              "cosmiconfig@2.1.1" = pkgs."cosmiconfig@2.1.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "postcss-load-options@1.1.0" = pkgs."postcss-load-options@1.1.0";
              "postcss-load-plugins@2.1.0" = pkgs."postcss-load-plugins@2.1.0";
            };
            seen = [ "postcss-load-config@1.0.0" ];
            };
  "postcss-load-options@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-load-options";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-load-options/-/postcss-load-options-1.1.0.tgz";
              sha1 = "e39215d154a19f69f9cb6052bffad4a82f09f354";
            };
            dependencies = {
              "cosmiconfig@2.1.1" = pkgs."cosmiconfig@2.1.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "postcss-load-options@1.1.0" ];
            };
  "postcss-load-plugins@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-load-plugins";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-load-plugins/-/postcss-load-plugins-2.1.0.tgz";
              sha1 = "dbb6f46271df8d16e19b5d691ebda5175ce424a0";
            };
            dependencies = {
              "cosmiconfig@2.1.1" = pkgs."cosmiconfig@2.1.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "postcss-load-plugins@2.1.0" ];
            };
  "postcss-loader@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-loader";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-loader/-/postcss-loader-1.1.0.tgz";
              sha1 = "4eb0bcbfc710b8b11406f3ea6650aaaa6e51b84f";
            };
            dependencies = {
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-load-config@1.0.0" = pkgs."postcss-load-config@1.0.0";
            };
            seen = [ "postcss-loader@1.1.0" ];
            };
  "postcss-merge-idents@2.1.7" = nodeEnv.buildYarnPackage {
            packageName = "postcss-merge-idents";
            version = "2.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-merge-idents/-/postcss-merge-idents-2.1.7.tgz";
              sha1 = "4c5530313c08e1d5b3bbf3d2bbc747e278eea270";
            };
            dependencies = {
              "has@1.0.1" = pkgs."has@1.0.1";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-merge-idents@2.1.7" ];
            };
  "postcss-merge-longhand@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-merge-longhand";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-merge-longhand/-/postcss-merge-longhand-2.0.1.tgz";
              sha1 = "ff59b5dec6d586ce2cea183138f55c5876fa9cdc";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-merge-longhand@2.0.1" ];
            };
  "postcss-merge-rules@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-merge-rules";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-merge-rules/-/postcss-merge-rules-2.1.1.tgz";
              sha1 = "5e5640020ce43cddd343c73bba91c9a358d1fe0f";
            };
            dependencies = {
              "browserslist@1.5.2" = pkgs."browserslist@1.5.2";
              "caniuse-api@1.5.2" = pkgs."caniuse-api@1.5.2";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-selector-parser@2.2.2" = pkgs."postcss-selector-parser@2.2.2";
              "vendors@1.0.1" = pkgs."vendors@1.0.1";
            };
            seen = [ "postcss-merge-rules@2.1.1" ];
            };
  "postcss-message-helpers@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-message-helpers";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-message-helpers/-/postcss-message-helpers-2.0.0.tgz";
              sha1 = "a4f2f4fab6e4fe002f0aed000478cdf52f9ba60e";
            };
            dependencies = {};
            seen = [ "postcss-message-helpers@2.0.0" ];
            };
  "postcss-minify-font-values@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "postcss-minify-font-values";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-font-values/-/postcss-minify-font-values-1.0.5.tgz";
              sha1 = "4b58edb56641eba7c8474ab3526cafd7bbdecb69";
            };
            dependencies = {
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-minify-font-values@1.0.5" ];
            };
  "postcss-minify-gradients@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "postcss-minify-gradients";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-gradients/-/postcss-minify-gradients-1.0.5.tgz";
              sha1 = "5dbda11373703f83cfb4a3ea3881d8d75ff5e6e1";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-minify-gradients@1.0.5" ];
            };
  "postcss-minify-params@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-minify-params";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-params/-/postcss-minify-params-1.2.2.tgz";
              sha1 = "ad2ce071373b943b3d930a3fa59a358c28d6f1f3";
            };
            dependencies = {
              "alphanum-sort@1.0.2" = pkgs."alphanum-sort@1.0.2";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
              "uniqs@2.0.0" = pkgs."uniqs@2.0.0";
            };
            seen = [ "postcss-minify-params@1.2.2" ];
            };
  "postcss-minify-selectors@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-minify-selectors";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-selectors/-/postcss-minify-selectors-2.1.1.tgz";
              sha1 = "b2c6a98c0072cf91b932d1a496508114311735bf";
            };
            dependencies = {
              "alphanum-sort@1.0.2" = pkgs."alphanum-sort@1.0.2";
              "has@1.0.1" = pkgs."has@1.0.1";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-selector-parser@2.2.2" = pkgs."postcss-selector-parser@2.2.2";
            };
            seen = [ "postcss-minify-selectors@2.1.1" ];
            };
  "postcss-modules-extract-imports@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-modules-extract-imports";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.0.1.tgz";
              sha1 = "8fb3fef9a6dd0420d3f6d4353cf1ff73f2b2a341";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-modules-extract-imports@1.0.1" ];
            };
  "postcss-modules-local-by-default@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-modules-local-by-default";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-local-by-default/-/postcss-modules-local-by-default-1.1.1.tgz";
              sha1 = "29a10673fa37d19251265ca2ba3150d9040eb4ce";
            };
            dependencies = {
              "css-selector-tokenizer@0.6.0" = pkgs."css-selector-tokenizer@0.6.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-modules-local-by-default@1.1.1" ];
            };
  "postcss-modules-parser@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-modules-parser";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-parser/-/postcss-modules-parser-1.1.0.tgz";
              sha1 = "1797f0e5ca129bbe6120c9d3babd328e8bc7748d";
            };
            dependencies = {
              "icss-replace-symbols@1.0.2" = pkgs."icss-replace-symbols@1.0.2";
              "lodash.foreach@3.0.3" = pkgs."lodash.foreach@3.0.3";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-modules-parser@1.1.0" ];
            };
  "postcss-modules-scope@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-modules-scope";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-scope/-/postcss-modules-scope-1.0.2.tgz";
              sha1 = "ff977395e5e06202d7362290b88b1e8cd049de29";
            };
            dependencies = {
              "css-selector-tokenizer@0.6.0" = pkgs."css-selector-tokenizer@0.6.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-modules-scope@1.0.2" ];
            };
  "postcss-modules-values@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-modules-values";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-values/-/postcss-modules-values-1.2.2.tgz";
              sha1 = "f0e7d476fe1ed88c5e4c7f97533a3e772ad94ca1";
            };
            dependencies = {
              "icss-replace-symbols@1.0.2" = pkgs."icss-replace-symbols@1.0.2";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-modules-values@1.2.2" ];
            };
  "postcss-modules@0.5.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-modules";
            version = "0.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules/-/postcss-modules-0.5.2.tgz";
              sha1 = "9d682fed3f282bd64b2aa4feb6f22a2af435ffda";
            };
            dependencies = {
              "css-modules-loader-core@1.0.1" = pkgs."css-modules-loader-core@1.0.1";
              "generic-names@1.0.2" = pkgs."generic-names@1.0.2";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "string-hash@1.1.1" = pkgs."string-hash@1.1.1";
            };
            seen = [ "postcss-modules@0.5.2" ];
            };
  "postcss-normalize-charset@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-normalize-charset";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-normalize-charset/-/postcss-normalize-charset-1.1.1.tgz";
              sha1 = "ef9ee71212d7fe759c78ed162f61ed62b5cb93f1";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-normalize-charset@1.1.1" ];
            };
  "postcss-normalize-url@3.0.8" = nodeEnv.buildYarnPackage {
            packageName = "postcss-normalize-url";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-normalize-url/-/postcss-normalize-url-3.0.8.tgz";
              sha1 = "108f74b3f2fcdaf891a2ffa3ea4592279fc78222";
            };
            dependencies = {
              "is-absolute-url@2.1.0" = pkgs."is-absolute-url@2.1.0";
              "normalize-url@1.9.0" = pkgs."normalize-url@1.9.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-normalize-url@3.0.8" ];
            };
  "postcss-ordered-values@2.2.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-ordered-values";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-ordered-values/-/postcss-ordered-values-2.2.2.tgz";
              sha1 = "be8b511741fab2dac8e614a2302e9d10267b0771";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-ordered-values@2.2.2" ];
            };
  "postcss-reduce-idents@2.4.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-reduce-idents";
            version = "2.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-reduce-idents/-/postcss-reduce-idents-2.4.0.tgz";
              sha1 = "c2c6d20cc958284f6abfbe63f7609bf409059ad3";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-reduce-idents@2.4.0" ];
            };
  "postcss-reduce-initial@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "postcss-reduce-initial";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-reduce-initial/-/postcss-reduce-initial-1.0.1.tgz";
              sha1 = "68f80695f045d08263a879ad240df8dd64f644ea";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-reduce-initial@1.0.1" ];
            };
  "postcss-reduce-transforms@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "postcss-reduce-transforms";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-reduce-transforms/-/postcss-reduce-transforms-1.0.4.tgz";
              sha1 = "ff76f4d8212437b31c298a42d2e1444025771ae1";
            };
            dependencies = {
              "has@1.0.1" = pkgs."has@1.0.1";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
            };
            seen = [ "postcss-reduce-transforms@1.0.4" ];
            };
  "postcss-selector-parser@2.2.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-selector-parser";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-selector-parser/-/postcss-selector-parser-2.2.2.tgz";
              sha1 = "3d70f5adda130da51c7c0c2fc023f56b1374fe08";
            };
            dependencies = {
              "flatten@1.0.2" = pkgs."flatten@1.0.2";
              "indexes-of@1.0.1" = pkgs."indexes-of@1.0.1";
              "uniq@1.0.1" = pkgs."uniq@1.0.1";
            };
            seen = [ "postcss-selector-parser@2.2.2" ];
            };
  "postcss-svgo@2.1.6" = nodeEnv.buildYarnPackage {
            packageName = "postcss-svgo";
            version = "2.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-svgo/-/postcss-svgo-2.1.6.tgz";
              sha1 = "b6df18aa613b666e133f08adb5219c2684ac108d";
            };
            dependencies = {
              "is-svg@2.1.0" = pkgs."is-svg@2.1.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-value-parser@3.3.0" = pkgs."postcss-value-parser@3.3.0";
              "svgo@0.7.1" = pkgs."svgo@0.7.1";
            };
            seen = [ "postcss-svgo@2.1.6" ];
            };
  "postcss-unique-selectors@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss-unique-selectors";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-unique-selectors/-/postcss-unique-selectors-2.0.2.tgz";
              sha1 = "981d57d29ddcb33e7b1dfe1fd43b8649f933ca1d";
            };
            dependencies = {
              "alphanum-sort@1.0.2" = pkgs."alphanum-sort@1.0.2";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "uniqs@2.0.0" = pkgs."uniqs@2.0.0";
            };
            seen = [ "postcss-unique-selectors@2.0.2" ];
            };
  "postcss-value-parser@3.3.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-value-parser";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-value-parser/-/postcss-value-parser-3.3.0.tgz";
              sha1 = "87f38f9f18f774a4ab4c8a232f5c5ce8872a9d15";
            };
            dependencies = {};
            seen = [ "postcss-value-parser@3.3.0" ];
            };
  "postcss-zindex@2.2.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-zindex";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-zindex/-/postcss-zindex-2.2.0.tgz";
              sha1 = "d2109ddc055b91af67fc4cb3b025946639d2af22";
            };
            dependencies = {
              "has@1.0.1" = pkgs."has@1.0.1";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "uniqs@2.0.0" = pkgs."uniqs@2.0.0";
            };
            seen = [ "postcss-zindex@2.2.0" ];
            };
  "postcss@5.2.16" = nodeEnv.buildYarnPackage {
            packageName = "postcss";
            version = "5.2.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss/-/postcss-5.2.16.tgz";
              sha1 = "732b3100000f9ff8379a48a53839ed097376ad57";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "js-base64@2.1.9" = pkgs."js-base64@2.1.9";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
              "supports-color@3.2.3" = pkgs."supports-color@3.2.3";
            };
            seen = [ "postcss@5.2.16" ];
            };
  "postinstall-build@5.0.1" = nodeEnv.buildYarnPackage {
            packageName = "postinstall-build";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postinstall-build/-/postinstall-build-5.0.1.tgz";
              sha1 = "b917a9079b26178d9a24af5a5cd8cb4a991d11b9";
            };
            dependencies = {};
            seen = [ "postinstall-build@5.0.1" ];
            };
  "prelude-ls@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "prelude-ls";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.1.2.tgz";
              sha1 = "21932a549f5e52ffd9a827f570e04be62a97da54";
            };
            dependencies = {};
            seen = [ "prelude-ls@1.1.2" ];
            };
  "prepend-http@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "prepend-http";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prepend-http/-/prepend-http-1.0.4.tgz";
              sha1 = "d4f4562b0ce3696e41ac52d0e002e57a635dc6dc";
            };
            dependencies = {};
            seen = [ "prepend-http@1.0.4" ];
            };
  "preserve@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "preserve";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/preserve/-/preserve-0.2.0.tgz";
              sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
            };
            dependencies = {};
            seen = [ "preserve@0.2.0" ];
            };
  "pretty-bytes@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "pretty-bytes";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pretty-bytes/-/pretty-bytes-1.0.4.tgz";
              sha1 = "0a22e8210609ad35542f8c8d5d2159aff0751c84";
            };
            dependencies = {
              "get-stdin@4.0.1" = pkgs."get-stdin@4.0.1";
              "meow@3.7.0" = pkgs."meow@3.7.0";
            };
            seen = [ "pretty-bytes@1.0.4" ];
            };
  "private@0.1.8" = nodeEnv.buildYarnPackage {
            packageName = "private";
            version = "0.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/private/-/private-0.1.8.tgz";
              sha1 = "2381edb3689f7a53d653190060fcf822d2f368ff";
            };
            dependencies = {};
            seen = [ "private@0.1.8" ];
            };
  "process-nextick-args@1.0.7" = nodeEnv.buildYarnPackage {
            packageName = "process-nextick-args";
            version = "1.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
              sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
            };
            dependencies = {};
            seen = [ "process-nextick-args@1.0.7" ];
            };
  "process@0.11.9" = nodeEnv.buildYarnPackage {
            packageName = "process";
            version = "0.11.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/process/-/process-0.11.9.tgz";
              sha1 = "7bd5ad21aa6253e7da8682264f1e11d11c0318c1";
            };
            dependencies = {};
            seen = [ "process@0.11.9" ];
            };
  "progress-stream@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "progress-stream";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/progress-stream/-/progress-stream-1.2.0.tgz";
              sha1 = "2cd3cfea33ba3a89c9c121ec3347abe9ab125f77";
            };
            dependencies = {
              "speedometer@0.1.4" = pkgs."speedometer@0.1.4";
              "through2@0.2.3" = pkgs."through2@0.2.3";
            };
            seen = [ "progress-stream@1.2.0" ];
            };
  "progress@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "progress";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/progress/-/progress-2.0.0.tgz";
              sha1 = "8a1be366bf8fc23db2bd23f10c6fe920b4389d1f";
            };
            dependencies = {};
            seen = [ "progress@2.0.0" ];
            };
  "promise@7.1.1" = nodeEnv.buildYarnPackage {
            packageName = "promise";
            version = "7.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/promise/-/promise-7.1.1.tgz";
              sha1 = "489654c692616b8aa55b0724fa809bb7db49c5bf";
            };
            dependencies = {
              "asap@2.0.5" = pkgs."asap@2.0.5";
            };
            seen = [ "promise@7.1.1" ];
            };
  "prop-types@15.6.1" = nodeEnv.buildYarnPackage {
            packageName = "prop-types";
            version = "15.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prop-types/-/prop-types-15.6.1.tgz";
              sha1 = "36644453564255ddda391191fb3a125cbdf654ca";
            };
            dependencies = {
              "fbjs@0.8.16" = pkgs."fbjs@0.8.16";
              "loose-envify@1.3.1" = pkgs."loose-envify@1.3.1";
              "object-assign@4.1.1" = pkgs."object-assign@4.1.1";
            };
            seen = [ "prop-types@15.6.1" ];
            };
  "proxy-addr@1.1.5" = nodeEnv.buildYarnPackage {
            packageName = "proxy-addr";
            version = "1.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/proxy-addr/-/proxy-addr-1.1.5.tgz";
              sha1 = "71c0ee3b102de3f202f3b64f608d173fcba1a918";
            };
            dependencies = {
              "forwarded@0.1.0" = pkgs."forwarded@0.1.0";
              "ipaddr.js@1.4.0" = pkgs."ipaddr.js@1.4.0";
            };
            seen = [ "proxy-addr@1.1.5" ];
            };
  "prr@0.0.0" = nodeEnv.buildYarnPackage {
            packageName = "prr";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prr/-/prr-0.0.0.tgz";
              sha1 = "1a84b85908325501411853d0081ee3fa86e2926a";
            };
            dependencies = {};
            seen = [ "prr@0.0.0" ];
            };
  "pruner@0.0.7" = nodeEnv.buildYarnPackage {
            packageName = "pruner";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pruner/-/pruner-0.0.7.tgz";
              sha1 = "345fbcb3e80701163a1d7adf56bac229a5a1e4c1";
            };
            dependencies = {
              "fs-extra@4.0.3" = pkgs."fs-extra@4.0.3";
            };
            seen = [ "pruner@0.0.7" ];
            };
  "ps-tree@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "ps-tree";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ps-tree/-/ps-tree-1.1.0.tgz";
              sha1 = "b421b24140d6203f1ed3c76996b4427b08e8c014";
            };
            dependencies = {
              "event-stream@3.3.4" = pkgs."event-stream@3.3.4";
            };
            seen = [ "ps-tree@1.1.0" ];
            };
  "pseudomap@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "pseudomap";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pseudomap/-/pseudomap-1.0.2.tgz";
              sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
            };
            dependencies = {};
            seen = [ "pseudomap@1.0.2" ];
            };
  "public-encrypt@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "public-encrypt";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/public-encrypt/-/public-encrypt-4.0.0.tgz";
              sha1 = "39f699f3a46560dd5ebacbca693caf7c65c18cc6";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "browserify-rsa@4.0.1" = pkgs."browserify-rsa@4.0.1";
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "parse-asn1@5.0.0" = pkgs."parse-asn1@5.0.0";
              "randombytes@2.0.3" = pkgs."randombytes@2.0.3";
            };
            seen = [ "public-encrypt@4.0.0" ];
            };
  "punycode@1.4.1" = nodeEnv.buildYarnPackage {
            packageName = "punycode";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/punycode/-/punycode-1.4.1.tgz";
              sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
            };
            dependencies = {};
            seen = [ "punycode@1.4.1" ];
            };
  "q@1.5.1" = nodeEnv.buildYarnPackage {
            packageName = "q";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/q/-/q-1.5.1.tgz";
              sha1 = "7e32f75b41381291d04611f1bf14109ac00651d7";
            };
            dependencies = {};
            seen = [ "q@1.5.1" ];
            };
  "qr.js@0.0.0" = nodeEnv.buildYarnPackage {
            packageName = "qr.js";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qr.js/-/qr.js-0.0.0.tgz";
              sha1 = "cace86386f59a0db8050fa90d9b6b0e88a1e364f";
            };
            dependencies = {};
            seen = [ "qr.js@0.0.0" ];
            };
  "qrcode.react@0.6.1" = nodeEnv.buildYarnPackage {
            packageName = "qrcode.react";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qrcode.react/-/qrcode.react-0.6.1.tgz";
              sha1 = "e718192d17cdf87cb1f156a34cea16dd67575932";
            };
            dependencies = {
              "qr.js@0.0.0" = pkgs."qr.js@0.0.0";
            };
            seen = [ "qrcode.react@0.6.1" ];
            };
  "qs@6.5.1" = nodeEnv.buildYarnPackage {
            packageName = "qs";
            version = "6.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-6.5.1.tgz";
              sha1 = "349cdf6eef89ec45c12d7d5eb3fc0c870343a6d8";
            };
            dependencies = {};
            seen = [ "qs@6.5.1" ];
            };
  "query-string@5.1.0" = nodeEnv.buildYarnPackage {
            packageName = "query-string";
            version = "5.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/query-string/-/query-string-5.1.0.tgz";
              sha1 = "9583b15fd1307f899e973ed418886426a9976469";
            };
            dependencies = {
              "decode-uri-component@0.2.0" = pkgs."decode-uri-component@0.2.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "strict-uri-encode@1.1.0" = pkgs."strict-uri-encode@1.1.0";
            };
            seen = [ "query-string@5.1.0" ];
            };
  "querystring-es3@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "querystring-es3";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/querystring-es3/-/querystring-es3-0.2.1.tgz";
              sha1 = "9ec61f79049875707d69414596fd907a4d711e73";
            };
            dependencies = {};
            seen = [ "querystring-es3@0.2.1" ];
            };
  "querystring@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "querystring";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/querystring/-/querystring-0.2.0.tgz";
              sha1 = "b209849203bb25df820da756e747005878521620";
            };
            dependencies = {};
            seen = [ "querystring@0.2.0" ];
            };
  "raf@3.3.0" = nodeEnv.buildYarnPackage {
            packageName = "raf";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/raf/-/raf-3.3.0.tgz";
              sha1 = "93845eeffc773f8129039f677f80a36044eee2c3";
            };
            dependencies = {
              "performance-now@0.2.0" = pkgs."performance-now@0.2.0";
            };
            seen = [ "raf@3.3.0" ];
            };
  "ramda@0.22.1" = nodeEnv.buildYarnPackage {
            packageName = "ramda";
            version = "0.22.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ramda/-/ramda-0.22.1.tgz";
              sha1 = "031da0c3df417c5b33c96234757eb37033f36a0e";
            };
            dependencies = {};
            seen = [ "ramda@0.22.1" ];
            };
  "randomatic@1.1.6" = nodeEnv.buildYarnPackage {
            packageName = "randomatic";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randomatic/-/randomatic-1.1.6.tgz";
              sha1 = "110dcabff397e9dcff7c0789ccc0a49adf1ec5bb";
            };
            dependencies = {
              "is-number@2.1.0" = pkgs."is-number@2.1.0";
              "kind-of@3.1.0" = pkgs."kind-of@3.1.0";
            };
            seen = [ "randomatic@1.1.6" ];
            };
  "randombytes@2.0.6" = nodeEnv.buildYarnPackage {
            packageName = "randombytes";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randombytes/-/randombytes-2.0.6.tgz";
              sha1 = "d302c522948588848a8d300c932b44c24231da80";
            };
            dependencies = {
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
            };
            seen = [ "randombytes@2.0.6" ];
            };
  "randomfill@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "randomfill";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randomfill/-/randomfill-1.0.4.tgz";
              sha1 = "c92196fc86ab42be983f1bf31778224931d61458";
            };
            dependencies = {
              "randombytes@2.0.6" = pkgs."randombytes@2.0.6";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
            };
            seen = [ "randomfill@1.0.4" ];
            };
  "randomhex@0.1.5" = nodeEnv.buildYarnPackage {
            packageName = "randomhex";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randomhex/-/randomhex-0.1.5.tgz";
              sha1 = "baceef982329091400f2a2912c6cd02f1094f585";
            };
            dependencies = {};
            seen = [ "randomhex@0.1.5" ];
            };
  "range-parser@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "range-parser";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/range-parser/-/range-parser-1.2.0.tgz";
              sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
            };
            dependencies = {};
            seen = [ "range-parser@1.2.0" ];
            };
  "raw-body@2.3.2" = nodeEnv.buildYarnPackage {
            packageName = "raw-body";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/raw-body/-/raw-body-2.3.2.tgz";
              sha1 = "bcd60c77d3eb93cde0050295c3f379389bc88f89";
            };
            dependencies = {
              "bytes@3.0.0" = pkgs."bytes@3.0.0";
              "http-errors@1.6.2" = pkgs."http-errors@1.6.2";
              "iconv-lite@0.4.19" = pkgs."iconv-lite@0.4.19";
              "unpipe@1.0.0" = pkgs."unpipe@1.0.0";
            };
            seen = [ "raw-body@2.3.2" ];
            };
  "raw-loader@0.5.1" = nodeEnv.buildYarnPackage {
            packageName = "raw-loader";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/raw-loader/-/raw-loader-0.5.1.tgz";
              sha1 = "0c3d0beaed8a01c966d9787bf778281252a979aa";
            };
            dependencies = {};
            seen = [ "raw-loader@0.5.1" ];
            };
  "rc@1.1.6" = nodeEnv.buildYarnPackage {
            packageName = "rc";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rc/-/rc-1.1.6.tgz";
              sha1 = "43651b76b6ae53b5c802f1151fa3fc3b059969c9";
            };
            dependencies = {
              "deep-extend@0.4.1" = pkgs."deep-extend@0.4.1";
              "ini@1.3.4" = pkgs."ini@1.3.4";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "strip-json-comments@1.0.4" = pkgs."strip-json-comments@1.0.4";
            };
            seen = [ "rc@1.1.6" ];
            };
  "rcedit@0.9.0" = nodeEnv.buildYarnPackage {
            packageName = "rcedit";
            version = "0.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rcedit/-/rcedit-0.9.0.tgz";
              sha1 = "3910df57345399e2b0325f4a519007f89e55ef1c";
            };
            dependencies = {};
            seen = [ "rcedit@0.9.0" ];
            };
  "react-addons-css-transition-group@15.4.2" = nodeEnv.buildYarnPackage {
            packageName = "react-addons-css-transition-group";
            version = "15.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-addons-css-transition-group/-/react-addons-css-transition-group-15.4.2.tgz";
              sha1 = "b7828834dfa14229fe07750e331e8a8cb6fb7745";
            };
            dependencies = {
              "fbjs@0.8.8" = pkgs."fbjs@0.8.8";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "react-addons-css-transition-group@15.4.2" ];
            };
  "react-copy-to-clipboard@4.2.3" = nodeEnv.buildYarnPackage {
            packageName = "react-copy-to-clipboard";
            version = "4.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-copy-to-clipboard/-/react-copy-to-clipboard-4.2.3.tgz";
              sha1 = "268c5a0fbde9a95d96145014e7f85110b0e7fb8e";
            };
            dependencies = {
              "copy-to-clipboard@3.0.8" = pkgs."copy-to-clipboard@3.0.8";
            };
            seen = [ "react-copy-to-clipboard@4.2.3" ];
            };
  "react-css-themr@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "react-css-themr";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-css-themr/-/react-css-themr-2.0.0.tgz";
              sha1 = "c4f93b9284009d9b4565121f09eb6b2bf402c3ef";
            };
            dependencies = {
              "invariant@2.2.2" = pkgs."invariant@2.2.2";
            };
            seen = [ "react-css-themr@2.0.0" ];
            };
  "react-deep-force-update@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "react-deep-force-update";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-deep-force-update/-/react-deep-force-update-1.0.1.tgz";
              sha1 = "f911b5be1d2a6fe387507dd6e9a767aa2924b4c7";
            };
            dependencies = {};
            seen = [ "react-deep-force-update@1.0.1" ];
            };
  "react-docgen@2.13.0" = nodeEnv.buildYarnPackage {
            packageName = "react-docgen";
            version = "2.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-docgen/-/react-docgen-2.13.0.tgz";
              sha1 = "7fcc4a3104ea8d4fd428383ba38df11166837be9";
            };
            dependencies = {
              "async@1.5.2" = pkgs."async@1.5.2";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babylon@5.8.38" = pkgs."babylon@5.8.38";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "doctrine@2.0.0" = pkgs."doctrine@2.0.0";
              "node-dir@0.1.16" = pkgs."node-dir@0.1.16";
              "recast@0.11.18" = pkgs."recast@0.11.18";
            };
            seen = [ "react-docgen@2.13.0" ];
            };
  "react-dom@15.4.2" = nodeEnv.buildYarnPackage {
            packageName = "react-dom";
            version = "15.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-dom/-/react-dom-15.4.2.tgz";
              sha1 = "015363f05b0a1fd52ae9efdd3a0060d90695208f";
            };
            dependencies = {
              "fbjs@0.8.8" = pkgs."fbjs@0.8.8";
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "react-dom@15.4.2" ];
            };
  "react-dropzone@3.12.2" = nodeEnv.buildYarnPackage {
            packageName = "react-dropzone";
            version = "3.12.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-dropzone/-/react-dropzone-3.12.2.tgz";
              sha1 = "7e66a37322a80cf26a205d749ecf8cad0d90aa6f";
            };
            dependencies = {
              "attr-accept@1.1.0" = pkgs."attr-accept@1.1.0";
            };
            seen = [ "react-dropzone@3.12.2" ];
            };
  "react-fuzzy@0.3.3" = nodeEnv.buildYarnPackage {
            packageName = "react-fuzzy";
            version = "0.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-fuzzy/-/react-fuzzy-0.3.3.tgz";
              sha1 = "9f6775393cd03bbd3c977651771abe16c8b29a81";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "classnames@2.2.5" = pkgs."classnames@2.2.5";
              "fuse.js@2.6.1" = pkgs."fuse.js@2.6.1";
            };
            seen = [ "react-fuzzy@0.3.3" ];
            };
  "react-inspector@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "react-inspector";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-inspector/-/react-inspector-1.1.2.tgz";
              sha1 = "192bc54f2be44f9fa0f29f183386f7f6e380f5ec";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "is-dom@1.0.7" = pkgs."is-dom@1.0.7";
            };
            seen = [ "react-inspector@1.1.2" ];
            };
  "react-intl-translations-manager@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "react-intl-translations-manager";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-intl-translations-manager/-/react-intl-translations-manager-4.0.1.tgz";
              sha1 = "37f9e409642e9271e912cd0bb962f8cf13960337";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "json-stable-stringify@1.0.1" = pkgs."json-stable-stringify@1.0.1";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
            };
            seen = [ "react-intl-translations-manager@4.0.1" ];
            };
  "react-intl@2.2.3" = nodeEnv.buildYarnPackage {
            packageName = "react-intl";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-intl/-/react-intl-2.2.3.tgz";
              sha1 = "8eebb03cddc38b337ed22fab78037ab53a594270";
            };
            dependencies = {
              "intl-format-cache@2.0.5" = pkgs."intl-format-cache@2.0.5";
              "intl-messageformat@1.3.0" = pkgs."intl-messageformat@1.3.0";
              "intl-relativeformat@1.3.0" = pkgs."intl-relativeformat@1.3.0";
              "invariant@2.2.2" = pkgs."invariant@2.2.2";
            };
            seen = [ "react-intl@2.2.3" ];
            };
  "react-komposer@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "react-komposer";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-komposer/-/react-komposer-2.0.0.tgz";
              sha1 = "b964738014a9b4aee494a83c0b5b833d66072a90";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "hoist-non-react-statics@1.2.0" = pkgs."hoist-non-react-statics@1.2.0";
              "lodash.pick@4.4.0" = pkgs."lodash.pick@4.4.0";
              "react-stubber@1.0.0" = pkgs."react-stubber@1.0.0";
              "shallowequal@0.2.2" = pkgs."shallowequal@0.2.2";
            };
            seen = [ "react-komposer@2.0.0" ];
            };
  "react-markdown@2.5.0" = nodeEnv.buildYarnPackage {
            packageName = "react-markdown";
            version = "2.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-markdown/-/react-markdown-2.5.0.tgz";
              sha1 = "b1c61904fee5895886803bd9df7db23c3dc3a89e";
            };
            dependencies = {
              "commonmark@0.24.0" = pkgs."commonmark@0.24.0";
              "commonmark-react-renderer@4.3.4" = pkgs."commonmark-react-renderer@4.3.4";
              "in-publish@2.0.0" = pkgs."in-publish@2.0.0";
              "prop-types@15.6.1" = pkgs."prop-types@15.6.1";
            };
            seen = [ "react-markdown@2.5.0" ];
            };
  "react-modal@2.4.1" = nodeEnv.buildYarnPackage {
            packageName = "react-modal";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-modal/-/react-modal-2.4.1.tgz";
              sha1 = "cb09b26711b148eb9f59cb180e1b7d82980ded05";
            };
            dependencies = {
              "exenv@1.2.2" = pkgs."exenv@1.2.2";
              "prop-types@15.6.1" = pkgs."prop-types@15.6.1";
            };
            seen = [ "react-modal@2.4.1" ];
            };
  "react-number-format@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "react-number-format";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-number-format/-/react-number-format-1.1.2.tgz";
              sha1 = "74d8478fa5cdeed55637f392597a0911157e2568";
            };
            dependencies = {};
            seen = [ "react-number-format@1.1.2" ];
            };
  "react-polymorph@0.5.4" = nodeEnv.buildYarnPackage {
            packageName = "react-polymorph";
            version = "0.5.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-polymorph/-/react-polymorph-0.5.4.tgz";
              sha1 = "03aafde0938a4fc8286961e0a2491ff7d9f7eaf9";
            };
            dependencies = {
              "filter-react-dom-props@0.0.2" = pkgs."filter-react-dom-props@0.0.2";
              "postinstall-build@5.0.1" = pkgs."postinstall-build@5.0.1";
              "react-modal@2.4.1" = pkgs."react-modal@2.4.1";
            };
            seen = [ "react-polymorph@0.5.4" ];
            };
  "react-proxy@1.1.8" = nodeEnv.buildYarnPackage {
            packageName = "react-proxy";
            version = "1.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-proxy/-/react-proxy-1.1.8.tgz";
              sha1 = "9dbfd9d927528c3aa9f444e4558c37830ab8c26a";
            };
            dependencies = {
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "react-deep-force-update@1.0.1" = pkgs."react-deep-force-update@1.0.1";
            };
            seen = [ "react-proxy@1.1.8" ];
            };
  "react-resize-detector@0.4.1" = nodeEnv.buildYarnPackage {
            packageName = "react-resize-detector";
            version = "0.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-resize-detector/-/react-resize-detector-0.4.1.tgz";
              sha1 = "19f8b993e1e869e2879344e20dc23c4fac28b256";
            };
            dependencies = {
              "prop-types@15.6.1" = pkgs."prop-types@15.6.1";
            };
            seen = [ "react-resize-detector@0.4.1" ];
            };
  "react-router@3.0.3" = nodeEnv.buildYarnPackage {
            packageName = "react-router";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-router/-/react-router-3.0.3.tgz";
              sha1 = "e95304b2e418482e5ecff2699d2b8aae52d5f884";
            };
            dependencies = {
              "history@3.2.1" = pkgs."history@3.2.1";
              "hoist-non-react-statics@1.2.0" = pkgs."hoist-non-react-statics@1.2.0";
              "invariant@2.2.2" = pkgs."invariant@2.2.2";
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
              "warning@3.0.0" = pkgs."warning@3.0.0";
            };
            seen = [ "react-router@3.0.3" ];
            };
  "react-simple-di@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "react-simple-di";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-simple-di/-/react-simple-di-1.2.0.tgz";
              sha1 = "dde0e5bf689f391ef2ab02c9043b213fe239c6d0";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "hoist-non-react-statics@1.2.0" = pkgs."hoist-non-react-statics@1.2.0";
            };
            seen = [ "react-simple-di@1.2.0" ];
            };
  "react-smooth@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "react-smooth";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-smooth/-/react-smooth-0.3.0.tgz";
              sha1 = "b67665d7b9820257e34279c15e02e8e5131ebe99";
            };
            dependencies = {
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "prop-types@15.6.1" = pkgs."prop-types@15.6.1";
              "raf@3.3.0" = pkgs."raf@3.3.0";
              "react-transition-group@1.2.1" = pkgs."react-transition-group@1.2.1";
            };
            seen = [ "react-smooth@0.3.0" ];
            };
  "react-stubber@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "react-stubber";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-stubber/-/react-stubber-1.0.0.tgz";
              sha1 = "41ee2cac72d4d4fd70a63896da98e13739b84628";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "react-stubber@1.0.0" ];
            };
  "react-svg-inline@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "react-svg-inline";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-svg-inline/-/react-svg-inline-2.0.0.tgz";
              sha1 = "0a4f60895588eecc7616af3a511d087801163600";
            };
            dependencies = {
              "classnames@2.2.5" = pkgs."classnames@2.2.5";
              "prop-types@15.6.1" = pkgs."prop-types@15.6.1";
            };
            seen = [ "react-svg-inline@2.0.0" ];
            };
  "react-transform-catch-errors@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "react-transform-catch-errors";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-transform-catch-errors/-/react-transform-catch-errors-1.0.2.tgz";
              sha1 = "1b4d4a76e97271896fc16fe3086c793ec88a9eeb";
            };
            dependencies = {};
            seen = [ "react-transform-catch-errors@1.0.2" ];
            };
  "react-transform-hmr@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "react-transform-hmr";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-transform-hmr/-/react-transform-hmr-1.0.4.tgz";
              sha1 = "e1a40bd0aaefc72e8dfd7a7cda09af85066397bb";
            };
            dependencies = {
              "global@4.3.1" = pkgs."global@4.3.1";
              "react-proxy@1.1.8" = pkgs."react-proxy@1.1.8";
            };
            seen = [ "react-transform-hmr@1.0.4" ];
            };
  "react-transition-group@1.2.1" = nodeEnv.buildYarnPackage {
            packageName = "react-transition-group";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-transition-group/-/react-transition-group-1.2.1.tgz";
              sha1 = "e11f72b257f921b213229a774df46612346c7ca6";
            };
            dependencies = {
              "chain-function@1.0.0" = pkgs."chain-function@1.0.0";
              "dom-helpers@3.3.1" = pkgs."dom-helpers@3.3.1";
              "loose-envify@1.3.1" = pkgs."loose-envify@1.3.1";
              "prop-types@15.6.1" = pkgs."prop-types@15.6.1";
              "warning@3.0.0" = pkgs."warning@3.0.0";
            };
            seen = [ "react-transition-group@1.2.1" ];
            };
  "react@15.4.2" = nodeEnv.buildYarnPackage {
            packageName = "react";
            version = "15.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react/-/react-15.4.2.tgz";
              sha1 = "41f7991b26185392ba9bae96c8889e7e018397ef";
            };
            dependencies = {
              "fbjs@0.8.8" = pkgs."fbjs@0.8.8";
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "react@15.4.2" ];
            };
  "read-all-stream@3.1.0" = nodeEnv.buildYarnPackage {
            packageName = "read-all-stream";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-all-stream/-/read-all-stream-3.1.0.tgz";
              sha1 = "35c3e177f2078ef789ee4bfafa4373074eaef4fa";
            };
            dependencies = {
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "read-all-stream@3.1.0" ];
            };
  "read-pkg-up@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "read-pkg-up";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-2.0.0.tgz";
              sha1 = "6b72a8048984e0c41e79510fd5e9fa99b3b549be";
            };
            dependencies = {
              "find-up@2.1.0" = pkgs."find-up@2.1.0";
              "read-pkg@2.0.0" = pkgs."read-pkg@2.0.0";
            };
            seen = [ "read-pkg-up@2.0.0" ];
            };
  "read-pkg@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "read-pkg";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-2.0.0.tgz";
              sha1 = "8ef1c0623c6a6db0dc6713c4bfac46332b2368f8";
            };
            dependencies = {
              "load-json-file@2.0.0" = pkgs."load-json-file@2.0.0";
              "normalize-package-data@2.3.5" = pkgs."normalize-package-data@2.3.5";
              "path-type@2.0.0" = pkgs."path-type@2.0.0";
            };
            seen = [ "read-pkg@2.0.0" ];
            };
  "readable-stream@2.2.2" = nodeEnv.buildYarnPackage {
            packageName = "readable-stream";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.2.2.tgz";
              sha1 = "a9e6fec3c7dda85f8bb1b3ba7028604556fc825e";
            };
            dependencies = {
              "buffer-shims@1.0.0" = pkgs."buffer-shims@1.0.0";
              "core-util-is@1.0.2" = pkgs."core-util-is@1.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
              "process-nextick-args@1.0.7" = pkgs."process-nextick-args@1.0.7";
              "string_decoder@0.10.31" = pkgs."string_decoder@0.10.31";
              "util-deprecate@1.0.2" = pkgs."util-deprecate@1.0.2";
            };
            seen = [ "readable-stream@2.2.2" ];
            };
  "readdirp@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "readdirp";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readdirp/-/readdirp-2.1.0.tgz";
              sha1 = "4ed0ad060df3073300c48440373f72d1cc642d78";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "set-immediate-shim@1.0.1" = pkgs."set-immediate-shim@1.0.1";
            };
            seen = [ "readdirp@2.1.0" ];
            };
  "readline2@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "readline2";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readline2/-/readline2-1.0.1.tgz";
              sha1 = "41059608ffc154757b715d9989d199ffbf372e35";
            };
            dependencies = {
              "code-point-at@1.1.0" = pkgs."code-point-at@1.1.0";
              "is-fullwidth-code-point@1.0.0" = pkgs."is-fullwidth-code-point@1.0.0";
              "mute-stream@0.0.5" = pkgs."mute-stream@0.0.5";
            };
            seen = [ "readline2@1.0.1" ];
            };
  "recast@0.11.23" = nodeEnv.buildYarnPackage {
            packageName = "recast";
            version = "0.11.23";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recast/-/recast-0.11.23.tgz";
              sha1 = "451fd3004ab1e4df9b4e4b66376b2a21912462d3";
            };
            dependencies = {
              "ast-types@0.9.6" = pkgs."ast-types@0.9.6";
              "esprima@3.1.3" = pkgs."esprima@3.1.3";
              "private@0.1.6" = pkgs."private@0.1.6";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "recast@0.11.23" ];
            };
  "recharts-scale@0.3.2" = nodeEnv.buildYarnPackage {
            packageName = "recharts-scale";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recharts-scale/-/recharts-scale-0.3.2.tgz";
              sha1 = "dac7621714a4765d152cb2adbc30c73b831208c9";
            };
            dependencies = {};
            seen = [ "recharts-scale@0.3.2" ];
            };
  "recharts@1.0.0-alpha.4" = nodeEnv.buildYarnPackage {
            packageName = "recharts";
            version = "1.0.0-alpha.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recharts/-/recharts-1.0.0-alpha.4.tgz";
              sha1 = "74b05457696987755bc05e8d6232ab5c58648676";
            };
            dependencies = {
              "classnames@2.2.5" = pkgs."classnames@2.2.5";
              "core-js@2.4.1" = pkgs."core-js@2.4.1";
              "d3-interpolate@1.1.6" = pkgs."d3-interpolate@1.1.6";
              "d3-scale@1.0.4" = pkgs."d3-scale@1.0.4";
              "d3-shape@1.0.4" = pkgs."d3-shape@1.0.4";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
              "prop-types@15.5.10" = pkgs."prop-types@15.5.10";
              "react-resize-detector@0.4.1" = pkgs."react-resize-detector@0.4.1";
              "react-smooth@0.3.0" = pkgs."react-smooth@0.3.0";
              "recharts-scale@0.3.2" = pkgs."recharts-scale@0.3.2";
              "reduce-css-calc@1.3.0" = pkgs."reduce-css-calc@1.3.0";
            };
            seen = [ "recharts@1.0.0-alpha.4" ];
            };
  "rechoir@0.6.2" = nodeEnv.buildYarnPackage {
            packageName = "rechoir";
            version = "0.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rechoir/-/rechoir-0.6.2.tgz";
              sha1 = "85204b54dba82d5742e28c96756ef43af50e3384";
            };
            dependencies = {
              "resolve@1.2.0" = pkgs."resolve@1.2.0";
            };
            seen = [ "rechoir@0.6.2" ];
            };
  "redbox-react@1.3.3" = nodeEnv.buildYarnPackage {
            packageName = "redbox-react";
            version = "1.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/redbox-react/-/redbox-react-1.3.3.tgz";
              sha1 = "63ec9c2cb9c620c46e2b9f8543b4898f1b787e41";
            };
            dependencies = {
              "error-stack-parser@1.3.6" = pkgs."error-stack-parser@1.3.6";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "redbox-react@1.3.3" ];
            };
  "redent@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "redent";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/redent/-/redent-1.0.0.tgz";
              sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
            };
            dependencies = {
              "indent-string@2.1.0" = pkgs."indent-string@2.1.0";
              "strip-indent@1.0.1" = pkgs."strip-indent@1.0.1";
            };
            seen = [ "redent@1.0.0" ];
            };
  "reduce-css-calc@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "reduce-css-calc";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/reduce-css-calc/-/reduce-css-calc-1.3.0.tgz";
              sha1 = "747c914e049614a4c9cfbba629871ad1d2927716";
            };
            dependencies = {
              "balanced-match@0.4.2" = pkgs."balanced-match@0.4.2";
              "math-expression-evaluator@1.2.14" = pkgs."math-expression-evaluator@1.2.14";
              "reduce-function-call@1.0.2" = pkgs."reduce-function-call@1.0.2";
            };
            seen = [ "reduce-css-calc@1.3.0" ];
            };
  "reduce-function-call@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "reduce-function-call";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/reduce-function-call/-/reduce-function-call-1.0.2.tgz";
              sha1 = "5a200bf92e0e37751752fe45b0ab330fd4b6be99";
            };
            dependencies = {
              "balanced-match@0.4.2" = pkgs."balanced-match@0.4.2";
            };
            seen = [ "reduce-function-call@1.0.2" ];
            };
  "redux@3.6.0" = nodeEnv.buildYarnPackage {
            packageName = "redux";
            version = "3.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/redux/-/redux-3.6.0.tgz";
              sha1 = "887c2b3d0b9bd86eca2be70571c27654c19e188d";
            };
            dependencies = {
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "lodash-es@4.17.4" = pkgs."lodash-es@4.17.4";
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
              "symbol-observable@1.0.4" = pkgs."symbol-observable@1.0.4";
            };
            seen = [ "redux@3.6.0" ];
            };
  "regenerate@1.3.2" = nodeEnv.buildYarnPackage {
            packageName = "regenerate";
            version = "1.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerate/-/regenerate-1.3.2.tgz";
              sha1 = "d1941c67bad437e1be76433add5b385f95b19260";
            };
            dependencies = {};
            seen = [ "regenerate@1.3.2" ];
            };
  "regenerator-runtime@0.11.1" = nodeEnv.buildYarnPackage {
            packageName = "regenerator-runtime";
            version = "0.11.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.11.1.tgz";
              sha1 = "be05ad7f9bf7d22e056f9726cee5017fbf19e2e9";
            };
            dependencies = {};
            seen = [ "regenerator-runtime@0.11.1" ];
            };
  "regenerator-transform@0.10.1" = nodeEnv.buildYarnPackage {
            packageName = "regenerator-transform";
            version = "0.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-transform/-/regenerator-transform-0.10.1.tgz";
              sha1 = "1e4996837231da8b7f3cf4114d71b5691a0680dd";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "private@0.1.6" = pkgs."private@0.1.6";
            };
            seen = [ "regenerator-transform@0.10.1" ];
            };
  "regex-cache@0.4.3" = nodeEnv.buildYarnPackage {
            packageName = "regex-cache";
            version = "0.4.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regex-cache/-/regex-cache-0.4.3.tgz";
              sha1 = "9b1a6c35d4d0dfcef5711ae651e8e9d3d7114145";
            };
            dependencies = {
              "is-equal-shallow@0.1.3" = pkgs."is-equal-shallow@0.1.3";
              "is-primitive@2.0.0" = pkgs."is-primitive@2.0.0";
            };
            seen = [ "regex-cache@0.4.3" ];
            };
  "regexpu-core@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "regexpu-core";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regexpu-core/-/regexpu-core-2.0.0.tgz";
              sha1 = "49d038837b8dcf8bfa5b9a42139938e6ea2ae240";
            };
            dependencies = {
              "regenerate@1.3.2" = pkgs."regenerate@1.3.2";
              "regjsgen@0.2.0" = pkgs."regjsgen@0.2.0";
              "regjsparser@0.1.5" = pkgs."regjsparser@0.1.5";
            };
            seen = [ "regexpu-core@2.0.0" ];
            };
  "registry-url@3.1.0" = nodeEnv.buildYarnPackage {
            packageName = "registry-url";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/registry-url/-/registry-url-3.1.0.tgz";
              sha1 = "3d4ef870f73dde1d77f0cf9a381432444e174942";
            };
            dependencies = {
              "rc@1.1.6" = pkgs."rc@1.1.6";
            };
            seen = [ "registry-url@3.1.0" ];
            };
  "regjsgen@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "regjsgen";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regjsgen/-/regjsgen-0.2.0.tgz";
              sha1 = "6c016adeac554f75823fe37ac05b92d5a4edb1f7";
            };
            dependencies = {};
            seen = [ "regjsgen@0.2.0" ];
            };
  "regjsparser@0.1.5" = nodeEnv.buildYarnPackage {
            packageName = "regjsparser";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regjsparser/-/regjsparser-0.1.5.tgz";
              sha1 = "7ee8f84dc6fa792d3fd0ae228d24bd949ead205c";
            };
            dependencies = {
              "jsesc@0.5.0" = pkgs."jsesc@0.5.0";
            };
            seen = [ "regjsparser@0.1.5" ];
            };
  "relateurl@0.2.7" = nodeEnv.buildYarnPackage {
            packageName = "relateurl";
            version = "0.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/relateurl/-/relateurl-0.2.7.tgz";
              sha1 = "54dbf377e51440aca90a4cd274600d3ff2d888a9";
            };
            dependencies = {};
            seen = [ "relateurl@0.2.7" ];
            };
  "repeat-element@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "repeat-element";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/repeat-element/-/repeat-element-1.1.2.tgz";
              sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
            };
            dependencies = {};
            seen = [ "repeat-element@1.1.2" ];
            };
  "repeat-string@1.6.1" = nodeEnv.buildYarnPackage {
            packageName = "repeat-string";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/repeat-string/-/repeat-string-1.6.1.tgz";
              sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
            };
            dependencies = {};
            seen = [ "repeat-string@1.6.1" ];
            };
  "repeating@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "repeating";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/repeating/-/repeating-2.0.1.tgz";
              sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
            };
            dependencies = {
              "is-finite@1.0.2" = pkgs."is-finite@1.0.2";
            };
            seen = [ "repeating@2.0.1" ];
            };
  "replace-ext@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "replace-ext";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/replace-ext/-/replace-ext-0.0.1.tgz";
              sha1 = "29bbd92078a739f0bcce2b4ee41e837953522924";
            };
            dependencies = {};
            seen = [ "replace-ext@0.0.1" ];
            };
  "request@2.83.0" = nodeEnv.buildYarnPackage {
            packageName = "request";
            version = "2.83.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/request/-/request-2.83.0.tgz";
              sha1 = "ca0b65da02ed62935887808e6f510381034e3356";
            };
            dependencies = {
              "aws-sign2@0.7.0" = pkgs."aws-sign2@0.7.0";
              "aws4@1.6.0" = pkgs."aws4@1.6.0";
              "caseless@0.12.0" = pkgs."caseless@0.12.0";
              "combined-stream@1.0.5" = pkgs."combined-stream@1.0.5";
              "extend@3.0.1" = pkgs."extend@3.0.1";
              "forever-agent@0.6.1" = pkgs."forever-agent@0.6.1";
              "form-data@2.3.2" = pkgs."form-data@2.3.2";
              "har-validator@5.0.3" = pkgs."har-validator@5.0.3";
              "hawk@6.0.2" = pkgs."hawk@6.0.2";
              "http-signature@1.2.0" = pkgs."http-signature@1.2.0";
              "is-typedarray@1.0.0" = pkgs."is-typedarray@1.0.0";
              "isstream@0.1.2" = pkgs."isstream@0.1.2";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "mime-types@2.1.18" = pkgs."mime-types@2.1.18";
              "oauth-sign@0.8.2" = pkgs."oauth-sign@0.8.2";
              "performance-now@2.1.0" = pkgs."performance-now@2.1.0";
              "qs@6.5.1" = pkgs."qs@6.5.1";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
              "stringstream@0.0.5" = pkgs."stringstream@0.0.5";
              "tough-cookie@2.3.4" = pkgs."tough-cookie@2.3.4";
              "tunnel-agent@0.6.0" = pkgs."tunnel-agent@0.6.0";
              "uuid@3.2.1" = pkgs."uuid@3.2.1";
            };
            seen = [ "request@2.83.0" ];
            };
  "require-directory@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "require-directory";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-directory/-/require-directory-2.1.1.tgz";
              sha1 = "8c64ad5fd30dab1c976e2344ffe7f792a6a6df42";
            };
            dependencies = {};
            seen = [ "require-directory@2.1.1" ];
            };
  "require-from-string@1.2.1" = nodeEnv.buildYarnPackage {
            packageName = "require-from-string";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-from-string/-/require-from-string-1.2.1.tgz";
              sha1 = "529c9ccef27380adfec9a2f965b649bbee636418";
            };
            dependencies = {};
            seen = [ "require-from-string@1.2.1" ];
            };
  "require-main-filename@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "require-main-filename";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-1.0.1.tgz";
              sha1 = "97f717b69d48784f5f526a6c5aa8ffdda055a4d1";
            };
            dependencies = {};
            seen = [ "require-main-filename@1.0.1" ];
            };
  "require-uncached@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "require-uncached";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-uncached/-/require-uncached-1.0.3.tgz";
              sha1 = "4e0d56d6c9662fd31e43011c4b95aa49955421d3";
            };
            dependencies = {
              "caller-path@0.1.0" = pkgs."caller-path@0.1.0";
              "resolve-from@1.0.1" = pkgs."resolve-from@1.0.1";
            };
            seen = [ "require-uncached@1.0.3" ];
            };
  "resolve-dir@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "resolve-dir";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve-dir/-/resolve-dir-0.1.1.tgz";
              sha1 = "b219259a5602fac5c5c496ad894a6e8cc430261e";
            };
            dependencies = {
              "expand-tilde@1.2.2" = pkgs."expand-tilde@1.2.2";
              "global-modules@0.2.3" = pkgs."global-modules@0.2.3";
            };
            seen = [ "resolve-dir@0.1.1" ];
            };
  "resolve-from@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "resolve-from";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve-from/-/resolve-from-1.0.1.tgz";
              sha1 = "26cbfe935d1aeeeabb29bc3fe5aeb01e93d44226";
            };
            dependencies = {};
            seen = [ "resolve-from@1.0.1" ];
            };
  "resolve-url@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "resolve-url";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve-url/-/resolve-url-0.2.1.tgz";
              sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
            };
            dependencies = {};
            seen = [ "resolve-url@0.2.1" ];
            };
  "resolve@1.5.0" = nodeEnv.buildYarnPackage {
            packageName = "resolve";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve/-/resolve-1.5.0.tgz";
              sha1 = "1f09acce796c9a762579f31b2c1cc4c3cddf9f36";
            };
            dependencies = {
              "path-parse@1.0.5" = pkgs."path-parse@1.0.5";
            };
            seen = [ "resolve@1.5.0" ];
            };
  "restore-cursor@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "restore-cursor";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-2.0.0.tgz";
              sha1 = "9f7ee287f82fd326d4fd162923d62129eee0dfaf";
            };
            dependencies = {
              "onetime@2.0.1" = pkgs."onetime@2.0.1";
              "signal-exit@3.0.2" = pkgs."signal-exit@3.0.2";
            };
            seen = [ "restore-cursor@2.0.0" ];
            };
  "rgb2hex@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "rgb2hex";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rgb2hex/-/rgb2hex-0.1.0.tgz";
              sha1 = "ccd55f860ae0c5c4ea37504b958e442d8d12325b";
            };
            dependencies = {};
            seen = [ "rgb2hex@0.1.0" ];
            };
  "right-align@0.1.3" = nodeEnv.buildYarnPackage {
            packageName = "right-align";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/right-align/-/right-align-0.1.3.tgz";
              sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
            };
            dependencies = {
              "align-text@0.1.4" = pkgs."align-text@0.1.4";
            };
            seen = [ "right-align@0.1.3" ];
            };
  "rimraf@2.6.2" = nodeEnv.buildYarnPackage {
            packageName = "rimraf";
            version = "2.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.6.2.tgz";
              sha1 = "2ed8150d24a16ea8651e6d6ef0f47c4158ce7a36";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
            };
            seen = [ "rimraf@2.6.2" ];
            };
  "ripemd160@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "ripemd160";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-2.0.1.tgz";
              sha1 = "0f4584295c53a3628af7e6d79aca21ce57d1c6e7";
            };
            dependencies = {
              "hash-base@2.0.2" = pkgs."hash-base@2.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "ripemd160@2.0.1" ];
            };
  "route-parser@0.0.5" = nodeEnv.buildYarnPackage {
            packageName = "route-parser";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/route-parser/-/route-parser-0.0.5.tgz";
              sha1 = "7d1d09d335e49094031ea16991a4a79b01bbe1f4";
            };
            dependencies = {};
            seen = [ "route-parser@0.0.5" ];
            };
  "run-async@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "run-async";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/run-async/-/run-async-2.3.0.tgz";
              sha1 = "0371ab4ae0bdd720d4166d7dfda64ff7a445a6c0";
            };
            dependencies = {
              "is-promise@2.1.0" = pkgs."is-promise@2.1.0";
            };
            seen = [ "run-async@2.3.0" ];
            };
  "run-series@1.1.4" = nodeEnv.buildYarnPackage {
            packageName = "run-series";
            version = "1.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/run-series/-/run-series-1.1.4.tgz";
              sha1 = "89a73ddc5e75c9ef8ab6320c0a1600d6a41179b9";
            };
            dependencies = {};
            seen = [ "run-series@1.1.4" ];
            };
  "rx-lite-aggregates@4.0.8" = nodeEnv.buildYarnPackage {
            packageName = "rx-lite-aggregates";
            version = "4.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rx-lite-aggregates/-/rx-lite-aggregates-4.0.8.tgz";
              sha1 = "753b87a89a11c95467c4ac1626c4efc4e05c67be";
            };
            dependencies = {
              "rx-lite@4.0.8" = pkgs."rx-lite@4.0.8";
            };
            seen = [ "rx-lite-aggregates@4.0.8" ];
            };
  "rx-lite@4.0.8" = nodeEnv.buildYarnPackage {
            packageName = "rx-lite";
            version = "4.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rx-lite/-/rx-lite-4.0.8.tgz";
              sha1 = "0b1e11af8bc44836f04a6407e92da42467b79444";
            };
            dependencies = {};
            seen = [ "rx-lite@4.0.8" ];
            };
  "rx@2.3.24" = nodeEnv.buildYarnPackage {
            packageName = "rx";
            version = "2.3.24";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rx/-/rx-2.3.24.tgz";
              sha1 = "14f950a4217d7e35daa71bbcbe58eff68ea4b2b7";
            };
            dependencies = {};
            seen = [ "rx@2.3.24" ];
            };
  "rxjs@5.5.6" = nodeEnv.buildYarnPackage {
            packageName = "rxjs";
            version = "5.5.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rxjs/-/rxjs-5.5.6.tgz";
              sha1 = "e31fb96d6fd2ff1fd84bcea8ae9c02d007179c02";
            };
            dependencies = {
              "symbol-observable@1.0.1" = pkgs."symbol-observable@1.0.1";
            };
            seen = [ "rxjs@5.5.6" ];
            };
  "safe-buffer@5.1.1" = nodeEnv.buildYarnPackage {
            packageName = "safe-buffer";
            version = "5.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.1.tgz";
              sha1 = "893312af69b2123def71f57889001671eeb2c853";
            };
            dependencies = {};
            seen = [ "safe-buffer@5.1.1" ];
            };
  "sanitize-filename@1.6.1" = nodeEnv.buildYarnPackage {
            packageName = "sanitize-filename";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sanitize-filename/-/sanitize-filename-1.6.1.tgz";
              sha1 = "612da1c96473fa02dccda92dcd5b4ab164a6772a";
            };
            dependencies = {
              "truncate-utf8-bytes@1.0.2" = pkgs."truncate-utf8-bytes@1.0.2";
            };
            seen = [ "sanitize-filename@1.6.1" ];
            };
  "sass-graph@2.1.2" = nodeEnv.buildYarnPackage {
            packageName = "sass-graph";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sass-graph/-/sass-graph-2.1.2.tgz";
              sha1 = "965104be23e8103cb7e5f710df65935b317da57b";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "yargs@4.7.1" = pkgs."yargs@4.7.1";
            };
            seen = [ "sass-graph@2.1.2" ];
            };
  "sass-loader@4.1.1" = nodeEnv.buildYarnPackage {
            packageName = "sass-loader";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sass-loader/-/sass-loader-4.1.1.tgz";
              sha1 = "79ef9468cf0bf646c29529e1f2cba6bd6e51c7bc";
            };
            dependencies = {
              "async@2.1.4" = pkgs."async@2.1.4";
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "sass-loader@4.1.1" ];
            };
  "sax@1.2.1" = nodeEnv.buildYarnPackage {
            packageName = "sax";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sax/-/sax-1.2.1.tgz";
              sha1 = "7b8e656190b228e81a66aea748480d828cd2d37a";
            };
            dependencies = {};
            seen = [ "sax@1.2.1" ];
            };
  "scrypt.js@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "scrypt.js";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/scrypt.js/-/scrypt.js-0.2.0.tgz";
              sha1 = "af8d1465b71e9990110bedfc593b9479e03a8ada";
            };
            dependencies = {
              "scrypt@6.0.3" = pkgs."scrypt@6.0.3";
              "scryptsy@1.2.1" = pkgs."scryptsy@1.2.1";
            };
            seen = [ "scrypt.js@0.2.0" ];
            };
  "scrypt@6.0.3" = nodeEnv.buildYarnPackage {
            packageName = "scrypt";
            version = "6.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/scrypt/-/scrypt-6.0.3.tgz";
              sha1 = "04e014a5682b53fa50c2d5cce167d719c06d870d";
            };
            dependencies = {
              "nan@2.9.2" = pkgs."nan@2.9.2";
            };
            seen = [ "scrypt@6.0.3" ];
            };
  "scryptsy@1.2.1" = nodeEnv.buildYarnPackage {
            packageName = "scryptsy";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/scryptsy/-/scryptsy-1.2.1.tgz";
              sha1 = "a3225fa4b2524f802700761e2855bdf3b2d92163";
            };
            dependencies = {
              "pbkdf2@3.0.9" = pkgs."pbkdf2@3.0.9";
            };
            seen = [ "scryptsy@1.2.1" ];
            };
  "seek-bzip@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "seek-bzip";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/seek-bzip/-/seek-bzip-1.0.5.tgz";
              sha1 = "cfe917cb3d274bcffac792758af53173eb1fabdc";
            };
            dependencies = {
              "commander@2.8.1" = pkgs."commander@2.8.1";
            };
            seen = [ "seek-bzip@1.0.5" ];
            };
  "seekout@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "seekout";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/seekout/-/seekout-1.0.2.tgz";
              sha1 = "09ba9f1bd5b46fbb134718eb19a68382cbb1b9c9";
            };
            dependencies = {};
            seen = [ "seekout@1.0.2" ];
            };
  "semver-diff@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "semver-diff";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/semver-diff/-/semver-diff-2.1.0.tgz";
              sha1 = "4bbb8437c8d37e4b0cf1a68fd726ec6d645d6d36";
            };
            dependencies = {
              "semver@5.3.0" = pkgs."semver@5.3.0";
            };
            seen = [ "semver-diff@2.1.0" ];
            };
  "semver@5.5.0" = nodeEnv.buildYarnPackage {
            packageName = "semver";
            version = "5.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/semver/-/semver-5.5.0.tgz";
              sha1 = "dc4bbc7a6ca9d916dee5d43516f0092b58f7b8ab";
            };
            dependencies = {};
            seen = [ "semver@5.5.0" ];
            };
  "send@0.15.1" = nodeEnv.buildYarnPackage {
            packageName = "send";
            version = "0.15.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/send/-/send-0.15.1.tgz";
              sha1 = "8a02354c26e6f5cca700065f5f0cdeba90ec7b5f";
            };
            dependencies = {
              "debug@2.6.1" = pkgs."debug@2.6.1";
              "depd@1.1.0" = pkgs."depd@1.1.0";
              "destroy@1.0.4" = pkgs."destroy@1.0.4";
              "encodeurl@1.0.1" = pkgs."encodeurl@1.0.1";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "etag@1.8.1" = pkgs."etag@1.8.1";
              "fresh@0.5.0" = pkgs."fresh@0.5.0";
              "http-errors@1.6.2" = pkgs."http-errors@1.6.2";
              "mime@1.3.4" = pkgs."mime@1.3.4";
              "ms@0.7.2" = pkgs."ms@0.7.2";
              "on-finished@2.3.0" = pkgs."on-finished@2.3.0";
              "range-parser@1.2.0" = pkgs."range-parser@1.2.0";
              "statuses@1.3.1" = pkgs."statuses@1.3.1";
            };
            seen = [ "send@0.15.1" ];
            };
  "serialize-error@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "serialize-error";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serialize-error/-/serialize-error-2.1.0.tgz";
              sha1 = "50b679d5635cdf84667bdc8e59af4e5b81d5f60a";
            };
            dependencies = {};
            seen = [ "serialize-error@2.1.0" ];
            };
  "serve-favicon@2.3.2" = nodeEnv.buildYarnPackage {
            packageName = "serve-favicon";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serve-favicon/-/serve-favicon-2.3.2.tgz";
              sha1 = "dd419e268de012ab72b319d337f2105013f9381f";
            };
            dependencies = {
              "etag@1.7.0" = pkgs."etag@1.7.0";
              "fresh@0.3.0" = pkgs."fresh@0.3.0";
              "ms@0.7.2" = pkgs."ms@0.7.2";
              "parseurl@1.3.1" = pkgs."parseurl@1.3.1";
            };
            seen = [ "serve-favicon@2.3.2" ];
            };
  "serve-static@1.12.1" = nodeEnv.buildYarnPackage {
            packageName = "serve-static";
            version = "1.12.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.12.1.tgz";
              sha1 = "7443a965e3ced647aceb5639fa06bf4d1bbe0039";
            };
            dependencies = {
              "encodeurl@1.0.1" = pkgs."encodeurl@1.0.1";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "parseurl@1.3.1" = pkgs."parseurl@1.3.1";
              "send@0.15.1" = pkgs."send@0.15.1";
            };
            seen = [ "serve-static@1.12.1" ];
            };
  "servify@0.1.12" = nodeEnv.buildYarnPackage {
            packageName = "servify";
            version = "0.1.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/servify/-/servify-0.1.12.tgz";
              sha1 = "142ab7bee1f1d033b66d0707086085b17c06db95";
            };
            dependencies = {
              "body-parser@1.18.2" = pkgs."body-parser@1.18.2";
              "cors@2.8.4" = pkgs."cors@2.8.4";
              "express@4.14.0" = pkgs."express@4.14.0";
              "request@2.79.0" = pkgs."request@2.79.0";
              "xhr@2.4.1" = pkgs."xhr@2.4.1";
            };
            seen = [ "servify@0.1.12" ];
            };
  "set-blocking@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "set-blocking";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz";
              sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
            };
            dependencies = {};
            seen = [ "set-blocking@2.0.0" ];
            };
  "set-immediate-shim@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "set-immediate-shim";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz";
              sha1 = "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61";
            };
            dependencies = {};
            seen = [ "set-immediate-shim@1.0.1" ];
            };
  "setimmediate@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "setimmediate";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/setimmediate/-/setimmediate-1.0.5.tgz";
              sha1 = "290cbb232e306942d7d7ea9b83732ab7856f8285";
            };
            dependencies = {};
            seen = [ "setimmediate@1.0.5" ];
            };
  "setprototypeof@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "setprototypeof";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.0.3.tgz";
              sha1 = "66567e37043eeb4f04d91bd658c0cbefb55b8e04";
            };
            dependencies = {};
            seen = [ "setprototypeof@1.0.3" ];
            };
  "sha.js@2.4.10" = nodeEnv.buildYarnPackage {
            packageName = "sha.js";
            version = "2.4.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sha.js/-/sha.js-2.4.10.tgz";
              sha1 = "b1fde5cd7d11a5626638a07c604ab909cfa31f9b";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
            };
            seen = [ "sha.js@2.4.10" ];
            };
  "sha3@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "sha3";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sha3/-/sha3-1.2.0.tgz";
              sha1 = "6989f1b70a498705876a373e2c62ace96aa9399a";
            };
            dependencies = {
              "nan@2.9.2" = pkgs."nan@2.9.2";
            };
            seen = [ "sha3@1.2.0" ];
            };
  "shallowequal@0.2.2" = nodeEnv.buildYarnPackage {
            packageName = "shallowequal";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shallowequal/-/shallowequal-0.2.2.tgz";
              sha1 = "1e32fd5bcab6ad688a4812cb0cc04efc75c7014e";
            };
            dependencies = {
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
            };
            seen = [ "shallowequal@0.2.2" ];
            };
  "shebang-command@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "shebang-command";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz";
              sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
            };
            dependencies = {
              "shebang-regex@1.0.0" = pkgs."shebang-regex@1.0.0";
            };
            seen = [ "shebang-command@1.2.0" ];
            };
  "shebang-regex@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "shebang-regex";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz";
              sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
            };
            dependencies = {};
            seen = [ "shebang-regex@1.0.0" ];
            };
  "shelljs@0.7.6" = nodeEnv.buildYarnPackage {
            packageName = "shelljs";
            version = "0.7.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shelljs/-/shelljs-0.7.6.tgz";
              sha1 = "379cccfb56b91c8601e4793356eb5382924de9ad";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "interpret@1.0.1" = pkgs."interpret@1.0.1";
              "rechoir@0.6.2" = pkgs."rechoir@0.6.2";
            };
            seen = [ "shelljs@0.7.6" ];
            };
  "signal-exit@3.0.2" = nodeEnv.buildYarnPackage {
            packageName = "signal-exit";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.2.tgz";
              sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
            };
            dependencies = {};
            seen = [ "signal-exit@3.0.2" ];
            };
  "simple-concat@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "simple-concat";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/simple-concat/-/simple-concat-1.0.0.tgz";
              sha1 = "7344cbb8b6e26fb27d66b2fc86f9f6d5997521c6";
            };
            dependencies = {};
            seen = [ "simple-concat@1.0.0" ];
            };
  "simple-get@2.7.0" = nodeEnv.buildYarnPackage {
            packageName = "simple-get";
            version = "2.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/simple-get/-/simple-get-2.7.0.tgz";
              sha1 = "ad37f926d08129237ff08c4f2edfd6f10e0380b5";
            };
            dependencies = {
              "decompress-response@3.3.0" = pkgs."decompress-response@3.3.0";
              "once@1.4.0" = pkgs."once@1.4.0";
              "simple-concat@1.0.0" = pkgs."simple-concat@1.0.0";
            };
            seen = [ "simple-get@2.7.0" ];
            };
  "single-line-log@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "single-line-log";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/single-line-log/-/single-line-log-1.1.2.tgz";
              sha1 = "c2f83f273a3e1a16edb0995661da0ed5ef033364";
            };
            dependencies = {
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
            };
            seen = [ "single-line-log@1.1.2" ];
            };
  "slash@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "slash";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/slash/-/slash-1.0.0.tgz";
              sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
            };
            dependencies = {};
            seen = [ "slash@1.0.0" ];
            };
  "slice-ansi@0.0.4" = nodeEnv.buildYarnPackage {
            packageName = "slice-ansi";
            version = "0.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/slice-ansi/-/slice-ansi-0.0.4.tgz";
              sha1 = "edbf8903f66f7ce2f8eafd6ceed65e264c831b35";
            };
            dependencies = {};
            seen = [ "slice-ansi@0.0.4" ];
            };
  "slide@1.1.6" = nodeEnv.buildYarnPackage {
            packageName = "slide";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/slide/-/slide-1.1.6.tgz";
              sha1 = "56eb027d65b4d2dce6cb2e2d32c4d4afc9e1d707";
            };
            dependencies = {};
            seen = [ "slide@1.1.6" ];
            };
  "sntp@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "sntp";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sntp/-/sntp-2.1.0.tgz";
              sha1 = "2c6cec14fedc2222739caf9b5c3d85d1cc5a2cc8";
            };
            dependencies = {
              "hoek@4.1.0" = pkgs."hoek@4.1.0";
            };
            seen = [ "sntp@2.1.0" ];
            };
  "sort-keys@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "sort-keys";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sort-keys/-/sort-keys-1.1.2.tgz";
              sha1 = "441b6d4d346798f1b4e49e8920adfba0e543f9ad";
            };
            dependencies = {
              "is-plain-obj@1.1.0" = pkgs."is-plain-obj@1.1.0";
            };
            seen = [ "sort-keys@1.1.2" ];
            };
  "source-list-map@0.1.7" = nodeEnv.buildYarnPackage {
            packageName = "source-list-map";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-list-map/-/source-list-map-0.1.7.tgz";
              sha1 = "d4b5ce2a46535c72c7e8527c71a77d250618172e";
            };
            dependencies = {};
            seen = [ "source-list-map@0.1.7" ];
            };
  "source-map-resolve@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "source-map-resolve";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.3.1.tgz";
              sha1 = "610f6122a445b8dd51535a2a71b783dfc1248761";
            };
            dependencies = {
              "atob@1.1.3" = pkgs."atob@1.1.3";
              "resolve-url@0.2.1" = pkgs."resolve-url@0.2.1";
              "source-map-url@0.3.0" = pkgs."source-map-url@0.3.0";
              "urix@0.1.0" = pkgs."urix@0.1.0";
            };
            seen = [ "source-map-resolve@0.3.1" ];
            };
  "source-map-support@0.4.14" = nodeEnv.buildYarnPackage {
            packageName = "source-map-support";
            version = "0.4.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.4.14.tgz";
              sha1 = "9d4463772598b86271b4f523f6c1f4e02a7d6aef";
            };
            dependencies = {
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "source-map-support@0.4.14" ];
            };
  "source-map-url@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "source-map-url";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-url/-/source-map-url-0.3.0.tgz";
              sha1 = "7ecaf13b57bcd09da8a40c5d269db33799d4aaf9";
            };
            dependencies = {};
            seen = [ "source-map-url@0.3.0" ];
            };
  "source-map@0.6.1" = nodeEnv.buildYarnPackage {
            packageName = "source-map";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
              sha1 = "74722af32e9614e9c287a8d0bbde48b5e2f1a263";
            };
            dependencies = {};
            seen = [ "source-map@0.6.1" ];
            };
  "sparkles@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "sparkles";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sparkles/-/sparkles-1.0.0.tgz";
              sha1 = "1acbbfb592436d10bbe8f785b7cc6f82815012c3";
            };
            dependencies = {};
            seen = [ "sparkles@1.0.0" ];
            };
  "spawn-command@0.0.2-1" = nodeEnv.buildYarnPackage {
            packageName = "spawn-command";
            version = "0.0.2-1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spawn-command/-/spawn-command-0.0.2-1.tgz";
              sha1 = "62f5e9466981c1b796dc5929937e11c9c6921bd0";
            };
            dependencies = {};
            seen = [ "spawn-command@0.0.2-1" ];
            };
  "spawn-rx@2.0.12" = nodeEnv.buildYarnPackage {
            packageName = "spawn-rx";
            version = "2.0.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spawn-rx/-/spawn-rx-2.0.12.tgz";
              sha1 = "b6285294499426089beea0c3c1ec32d7fc57a376";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "lodash.assign@4.2.0" = pkgs."lodash.assign@4.2.0";
              "rxjs@5.5.6" = pkgs."rxjs@5.5.6";
            };
            seen = [ "spawn-rx@2.0.12" ];
            };
  "spdx-correct@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "spdx-correct";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spdx-correct/-/spdx-correct-1.0.2.tgz";
              sha1 = "4b3073d933ff51f3912f03ac5519498a4150db40";
            };
            dependencies = {
              "spdx-license-ids@1.2.2" = pkgs."spdx-license-ids@1.2.2";
            };
            seen = [ "spdx-correct@1.0.2" ];
            };
  "spdx-expression-parse@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "spdx-expression-parse";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-1.0.4.tgz";
              sha1 = "9bdf2f20e1f40ed447fbe273266191fced51626c";
            };
            dependencies = {};
            seen = [ "spdx-expression-parse@1.0.4" ];
            };
  "spdx-license-ids@1.2.2" = nodeEnv.buildYarnPackage {
            packageName = "spdx-license-ids";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-1.2.2.tgz";
              sha1 = "c9df7a3424594ade6bd11900d596696dc06bac57";
            };
            dependencies = {};
            seen = [ "spdx-license-ids@1.2.2" ];
            };
  "spectron@3.7.2" = nodeEnv.buildYarnPackage {
            packageName = "spectron";
            version = "3.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spectron/-/spectron-3.7.2.tgz";
              sha1 = "86f41306a9b70ed6ee1500f7f7d3adc389afb446";
            };
            dependencies = {
              "dev-null@0.1.1" = pkgs."dev-null@0.1.1";
              "electron-chromedriver@1.7.1" = pkgs."electron-chromedriver@1.7.1";
              "request@2.83.0" = pkgs."request@2.83.0";
              "split@1.0.0" = pkgs."split@1.0.0";
              "webdriverio@4.11.0" = pkgs."webdriverio@4.11.0";
            };
            seen = [ "spectron@3.7.2" ];
            };
  "speedometer@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "speedometer";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/speedometer/-/speedometer-0.1.4.tgz";
              sha1 = "9876dbd2a169d3115402d48e6ea6329c8816a50d";
            };
            dependencies = {};
            seen = [ "speedometer@0.1.4" ];
            };
  "split@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "split";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/split/-/split-1.0.0.tgz";
              sha1 = "c4395ce683abcd254bc28fe1dabb6e5c27dcffae";
            };
            dependencies = {
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "split@1.0.0" ];
            };
  "sprintf-js@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "sprintf-js";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.0.3.tgz";
              sha1 = "04e6926f662895354f3dd015203633b857297e2c";
            };
            dependencies = {};
            seen = [ "sprintf-js@1.0.3" ];
            };
  "sshpk@1.10.1" = nodeEnv.buildYarnPackage {
            packageName = "sshpk";
            version = "1.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sshpk/-/sshpk-1.10.1.tgz";
              sha1 = "30e1a5d329244974a1af61511339d595af6638b0";
            };
            dependencies = {
              "asn1@0.2.3" = pkgs."asn1@0.2.3";
              "assert-plus@1.0.0" = pkgs."assert-plus@1.0.0";
              "dashdash@1.14.1" = pkgs."dashdash@1.14.1";
              "getpass@0.1.6" = pkgs."getpass@0.1.6";
            };
            seen = [ "sshpk@1.10.1" ];
            };
  "stack-chain@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "stack-chain";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stack-chain/-/stack-chain-2.0.0.tgz";
              sha1 = "d73d1172af89565f07438b5bcc086831b6689b2d";
            };
            dependencies = {};
            seen = [ "stack-chain@2.0.0" ];
            };
  "stack-generator@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "stack-generator";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stack-generator/-/stack-generator-2.0.2.tgz";
              sha1 = "3c13d952a596ab9318fec0669d0a1df8b87176c7";
            };
            dependencies = {
              "stackframe@1.0.4" = pkgs."stackframe@1.0.4";
            };
            seen = [ "stack-generator@2.0.2" ];
            };
  "stack-trace@0.0.10" = nodeEnv.buildYarnPackage {
            packageName = "stack-trace";
            version = "0.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stack-trace/-/stack-trace-0.0.10.tgz";
              sha1 = "547c70b347e8d32b4e108ea1a2a159e5fdde19c0";
            };
            dependencies = {};
            seen = [ "stack-trace@0.0.10" ];
            };
  "stackframe@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "stackframe";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stackframe/-/stackframe-1.0.4.tgz";
              sha1 = "357b24a992f9427cba6b545d96a14ed2cbca187b";
            };
            dependencies = {};
            seen = [ "stackframe@1.0.4" ];
            };
  "stacktrace-gps@3.0.2" = nodeEnv.buildYarnPackage {
            packageName = "stacktrace-gps";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stacktrace-gps/-/stacktrace-gps-3.0.2.tgz";
              sha1 = "33f8baa4467323ab2bd1816efa279942ba431ccc";
            };
            dependencies = {
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
              "stackframe@1.0.4" = pkgs."stackframe@1.0.4";
            };
            seen = [ "stacktrace-gps@3.0.2" ];
            };
  "stacktrace-js@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "stacktrace-js";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stacktrace-js/-/stacktrace-js-2.0.0.tgz";
              sha1 = "776ca646a95bc6c6b2b90776536a7fc72c6ddb58";
            };
            dependencies = {
              "error-stack-parser@2.0.1" = pkgs."error-stack-parser@2.0.1";
              "stack-generator@2.0.2" = pkgs."stack-generator@2.0.2";
              "stacktrace-gps@3.0.2" = pkgs."stacktrace-gps@3.0.2";
            };
            seen = [ "stacktrace-js@2.0.0" ];
            };
  "statuses@1.3.1" = nodeEnv.buildYarnPackage {
            packageName = "statuses";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/statuses/-/statuses-1.3.1.tgz";
              sha1 = "faf51b9eb74aaef3b3acf4ad5f61abf24cb7b93e";
            };
            dependencies = {};
            seen = [ "statuses@1.3.1" ];
            };
  "stream-browserify@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "stream-browserify";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-browserify/-/stream-browserify-2.0.1.tgz";
              sha1 = "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "stream-browserify@2.0.1" ];
            };
  "stream-combiner@0.0.4" = nodeEnv.buildYarnPackage {
            packageName = "stream-combiner";
            version = "0.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-combiner/-/stream-combiner-0.0.4.tgz";
              sha1 = "4d5e433c185261dde623ca3f44c586bcf5c4ad14";
            };
            dependencies = {
              "duplexer@0.1.1" = pkgs."duplexer@0.1.1";
            };
            seen = [ "stream-combiner@0.0.4" ];
            };
  "stream-http@2.6.0" = nodeEnv.buildYarnPackage {
            packageName = "stream-http";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-http/-/stream-http-2.6.0.tgz";
              sha1 = "adf3309ced17624ebfb7ef13e6ac4cfe405a8b12";
            };
            dependencies = {
              "builtin-status-codes@3.0.0" = pkgs."builtin-status-codes@3.0.0";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "to-arraybuffer@1.0.1" = pkgs."to-arraybuffer@1.0.1";
              "xtend@4.0.1" = pkgs."xtend@4.0.1";
            };
            seen = [ "stream-http@2.6.0" ];
            };
  "stream-shift@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "stream-shift";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-shift/-/stream-shift-1.0.0.tgz";
              sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
            };
            dependencies = {};
            seen = [ "stream-shift@1.0.0" ];
            };
  "strict-uri-encode@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "strict-uri-encode";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strict-uri-encode/-/strict-uri-encode-1.1.0.tgz";
              sha1 = "279b225df1d582b1f54e65addd4352e18faa0713";
            };
            dependencies = {};
            seen = [ "strict-uri-encode@1.1.0" ];
            };
  "string-argv@0.0.2" = nodeEnv.buildYarnPackage {
            packageName = "string-argv";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-argv/-/string-argv-0.0.2.tgz";
              sha1 = "dac30408690c21f3c3630a3ff3a05877bdcbd736";
            };
            dependencies = {};
            seen = [ "string-argv@0.0.2" ];
            };
  "string-hash@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "string-hash";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-hash/-/string-hash-1.1.1.tgz";
              sha1 = "8e85bed291e0763b8f6809d9c3368fea048db3dc";
            };
            dependencies = {};
            seen = [ "string-hash@1.1.1" ];
            };
  "string-length@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "string-length";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-length/-/string-length-1.0.1.tgz";
              sha1 = "56970fb1c38558e9e70b728bf3de269ac45adfac";
            };
            dependencies = {
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
            };
            seen = [ "string-length@1.0.1" ];
            };
  "string-width@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "string-width";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-width/-/string-width-2.1.1.tgz";
              sha1 = "ab93f27a8dc13d28cac815c462143a6d9012ae9e";
            };
            dependencies = {
              "is-fullwidth-code-point@2.0.0" = pkgs."is-fullwidth-code-point@2.0.0";
              "strip-ansi@4.0.0" = pkgs."strip-ansi@4.0.0";
            };
            seen = [ "string-width@2.1.1" ];
            };
  "string.prototype.padend@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "string.prototype.padend";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string.prototype.padend/-/string.prototype.padend-3.0.0.tgz";
              sha1 = "f3aaef7c1719f170c5eab1c32bf780d96e21f2f0";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "es-abstract@1.6.1" = pkgs."es-abstract@1.6.1";
              "function-bind@1.1.0" = pkgs."function-bind@1.1.0";
            };
            seen = [ "string.prototype.padend@3.0.0" ];
            };
  "string.prototype.padstart@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "string.prototype.padstart";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string.prototype.padstart/-/string.prototype.padstart-3.0.0.tgz";
              sha1 = "5bcfad39f4649bb2d031292e19bcf0b510d4b242";
            };
            dependencies = {
              "define-properties@1.1.2" = pkgs."define-properties@1.1.2";
              "es-abstract@1.6.1" = pkgs."es-abstract@1.6.1";
              "function-bind@1.1.0" = pkgs."function-bind@1.1.0";
            };
            seen = [ "string.prototype.padstart@3.0.0" ];
            };
  "string.prototype.repeat@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "string.prototype.repeat";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string.prototype.repeat/-/string.prototype.repeat-0.2.0.tgz";
              sha1 = "aba36de08dcee6a5a337d49b2ea1da1b28fc0ecf";
            };
            dependencies = {};
            seen = [ "string.prototype.repeat@0.2.0" ];
            };
  "string_decoder@0.10.31" = nodeEnv.buildYarnPackage {
            packageName = "string_decoder";
            version = "0.10.31";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz";
              sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
            };
            dependencies = {};
            seen = [ "string_decoder@0.10.31" ];
            };
  "stringstream@0.0.5" = nodeEnv.buildYarnPackage {
            packageName = "stringstream";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stringstream/-/stringstream-0.0.5.tgz";
              sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
            };
            dependencies = {};
            seen = [ "stringstream@0.0.5" ];
            };
  "strip-ansi@4.0.0" = nodeEnv.buildYarnPackage {
            packageName = "strip-ansi";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-4.0.0.tgz";
              sha1 = "a8479022eb1ac368a871389b635262c505ee368f";
            };
            dependencies = {
              "ansi-regex@3.0.0" = pkgs."ansi-regex@3.0.0";
            };
            seen = [ "strip-ansi@4.0.0" ];
            };
  "strip-bom@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "strip-bom";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-3.0.0.tgz";
              sha1 = "2334c18e9c759f7bdd56fdef7e9ae3d588e68ed3";
            };
            dependencies = {};
            seen = [ "strip-bom@3.0.0" ];
            };
  "strip-dirs@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "strip-dirs";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-dirs/-/strip-dirs-2.1.0.tgz";
              sha1 = "4987736264fc344cf20f6c34aca9d13d1d4ed6c5";
            };
            dependencies = {
              "is-natural-number@4.0.1" = pkgs."is-natural-number@4.0.1";
            };
            seen = [ "strip-dirs@2.1.0" ];
            };
  "strip-hex-prefix@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "strip-hex-prefix";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-hex-prefix/-/strip-hex-prefix-1.0.0.tgz";
              sha1 = "0c5f155fef1151373377de9dbb588da05500e36f";
            };
            dependencies = {
              "is-hex-prefixed@1.0.0" = pkgs."is-hex-prefixed@1.0.0";
            };
            seen = [ "strip-hex-prefix@1.0.0" ];
            };
  "strip-indent@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "strip-indent";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-indent/-/strip-indent-1.0.1.tgz";
              sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
            };
            dependencies = {
              "get-stdin@4.0.1" = pkgs."get-stdin@4.0.1";
            };
            seen = [ "strip-indent@1.0.1" ];
            };
  "strip-json-comments@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "strip-json-comments";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
              sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
            };
            dependencies = {};
            seen = [ "strip-json-comments@2.0.1" ];
            };
  "style-loader@0.13.2" = nodeEnv.buildYarnPackage {
            packageName = "style-loader";
            version = "0.13.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/style-loader/-/style-loader-0.13.2.tgz";
              sha1 = "74533384cf698c7104c7951150b49717adc2f3bb";
            };
            dependencies = {
              "loader-utils@1.1.0" = pkgs."loader-utils@1.1.0";
            };
            seen = [ "style-loader@0.13.2" ];
            };
  "sumchecker@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "sumchecker";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sumchecker/-/sumchecker-2.0.2.tgz";
              sha1 = "0f42c10e5d05da5d42eea3e56c3399a37d6c5b3e";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
            };
            seen = [ "sumchecker@2.0.2" ];
            };
  "supports-color@5.3.0" = nodeEnv.buildYarnPackage {
            packageName = "supports-color";
            version = "5.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-5.3.0.tgz";
              sha1 = "5b24ac15db80fa927cf5227a4a33fd3c4c7676c0";
            };
            dependencies = {
              "has-flag@3.0.0" = pkgs."has-flag@3.0.0";
            };
            seen = [ "supports-color@5.3.0" ];
            };
  "svgo@0.7.1" = nodeEnv.buildYarnPackage {
            packageName = "svgo";
            version = "0.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/svgo/-/svgo-0.7.1.tgz";
              sha1 = "287320fed972cb097e72c2bb1685f96fe08f8034";
            };
            dependencies = {
              "coa@1.0.1" = pkgs."coa@1.0.1";
              "colors@1.1.2" = pkgs."colors@1.1.2";
              "csso@2.2.1" = pkgs."csso@2.2.1";
              "js-yaml@3.6.1" = pkgs."js-yaml@3.6.1";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "sax@1.2.1" = pkgs."sax@1.2.1";
              "whet.extend@0.9.9" = pkgs."whet.extend@0.9.9";
            };
            seen = [ "svgo@0.7.1" ];
            };
  "swarm-js@0.1.37" = nodeEnv.buildYarnPackage {
            packageName = "swarm-js";
            version = "0.1.37";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/swarm-js/-/swarm-js-0.1.37.tgz";
              sha1 = "27d485317a340bbeec40292af783cc10acfa4663";
            };
            dependencies = {
              "bluebird@3.5.1" = pkgs."bluebird@3.5.1";
              "buffer@5.1.0" = pkgs."buffer@5.1.0";
              "decompress@4.2.0" = pkgs."decompress@4.2.0";
              "eth-lib@0.1.27" = pkgs."eth-lib@0.1.27";
              "fs-extra@2.1.2" = pkgs."fs-extra@2.1.2";
              "fs-promise@2.0.3" = pkgs."fs-promise@2.0.3";
              "got@7.1.0" = pkgs."got@7.1.0";
              "mime-types@2.1.18" = pkgs."mime-types@2.1.18";
              "mkdirp-promise@5.0.1" = pkgs."mkdirp-promise@5.0.1";
              "mock-fs@4.4.2" = pkgs."mock-fs@4.4.2";
              "setimmediate@1.0.5" = pkgs."setimmediate@1.0.5";
              "tar.gz@1.0.7" = pkgs."tar.gz@1.0.7";
              "xhr-request-promise@0.1.2" = pkgs."xhr-request-promise@0.1.2";
            };
            seen = [ "swarm-js@0.1.37" ];
            };
  "symbol-observable@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "symbol-observable";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/symbol-observable/-/symbol-observable-1.0.4.tgz";
              sha1 = "29bf615d4aa7121bdd898b22d4b3f9bc4e2aa03d";
            };
            dependencies = {};
            seen = [ "symbol-observable@1.0.4" ];
            };
  "symbol-tree@3.2.1" = nodeEnv.buildYarnPackage {
            packageName = "symbol-tree";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/symbol-tree/-/symbol-tree-3.2.1.tgz";
              sha1 = "8549dd1d01fa9f893c18cc9ab0b106b4d9b168cb";
            };
            dependencies = {};
            seen = [ "symbol-tree@3.2.1" ];
            };
  "symbol@0.2.3" = nodeEnv.buildYarnPackage {
            packageName = "symbol";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/symbol/-/symbol-0.2.3.tgz";
              sha1 = "3b9873b8a901e47c6efe21526a3ac372ef28bbc7";
            };
            dependencies = {};
            seen = [ "symbol@0.2.3" ];
            };
  "table@3.8.3" = nodeEnv.buildYarnPackage {
            packageName = "table";
            version = "3.8.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/table/-/table-3.8.3.tgz";
              sha1 = "2bbc542f0fda9861a755d3947fefd8b3f513855f";
            };
            dependencies = {
              "ajv@4.10.4" = pkgs."ajv@4.10.4";
              "ajv-keywords@1.5.0" = pkgs."ajv-keywords@1.5.0";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "slice-ansi@0.0.4" = pkgs."slice-ansi@0.0.4";
              "string-width@2.0.0" = pkgs."string-width@2.0.0";
            };
            seen = [ "table@3.8.3" ];
            };
  "tapable@0.2.5" = nodeEnv.buildYarnPackage {
            packageName = "tapable";
            version = "0.2.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tapable/-/tapable-0.2.5.tgz";
              sha1 = "1ff6ce7ade58e734ca9bfe36ba342304b377a4d0";
            };
            dependencies = {};
            seen = [ "tapable@0.2.5" ];
            };
  "tar-pack@3.3.0" = nodeEnv.buildYarnPackage {
            packageName = "tar-pack";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar-pack/-/tar-pack-3.3.0.tgz";
              sha1 = "30931816418f55afc4d21775afdd6720cee45dae";
            };
            dependencies = {
              "debug@2.2.0" = pkgs."debug@2.2.0";
              "fstream@1.0.10" = pkgs."fstream@1.0.10";
              "fstream-ignore@1.0.5" = pkgs."fstream-ignore@1.0.5";
              "once@1.3.3" = pkgs."once@1.3.3";
              "readable-stream@2.1.5" = pkgs."readable-stream@2.1.5";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
              "tar@2.2.1" = pkgs."tar@2.2.1";
              "uid-number@0.0.6" = pkgs."uid-number@0.0.6";
            };
            seen = [ "tar-pack@3.3.0" ];
            };
  "tar-stream@1.5.5" = nodeEnv.buildYarnPackage {
            packageName = "tar-stream";
            version = "1.5.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar-stream/-/tar-stream-1.5.5.tgz";
              sha1 = "5cad84779f45c83b1f2508d96b09d88c7218af55";
            };
            dependencies = {
              "bl@1.1.2" = pkgs."bl@1.1.2";
              "end-of-stream@1.1.0" = pkgs."end-of-stream@1.1.0";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "xtend@4.0.1" = pkgs."xtend@4.0.1";
            };
            seen = [ "tar-stream@1.5.5" ];
            };
  "tar.gz@1.0.7" = nodeEnv.buildYarnPackage {
            packageName = "tar.gz";
            version = "1.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar.gz/-/tar.gz-1.0.7.tgz";
              sha1 = "577ef2c595faaa73452ef0415fed41113212257b";
            };
            dependencies = {
              "bluebird@2.11.0" = pkgs."bluebird@2.11.0";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "fstream@1.0.11" = pkgs."fstream@1.0.11";
              "mout@0.11.1" = pkgs."mout@0.11.1";
              "tar@2.2.1" = pkgs."tar@2.2.1";
            };
            seen = [ "tar.gz@1.0.7" ];
            };
  "tar@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "tar";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar/-/tar-2.2.1.tgz";
              sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
            };
            dependencies = {
              "block-stream@0.0.9" = pkgs."block-stream@0.0.9";
              "fstream@1.0.10" = pkgs."fstream@1.0.10";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "tar@2.2.1" ];
            };
  "tempfile@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "tempfile";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tempfile/-/tempfile-1.1.1.tgz";
              sha1 = "5bcc4eaecc4ab2c707d8bc11d99ccc9a2cb287f2";
            };
            dependencies = {
              "os-tmpdir@1.0.2" = pkgs."os-tmpdir@1.0.2";
              "uuid@2.0.3" = pkgs."uuid@2.0.3";
            };
            seen = [ "tempfile@1.1.1" ];
            };
  "text-table@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "text-table";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/text-table/-/text-table-0.2.0.tgz";
              sha1 = "7f5ee823ae805207c00af2df4a84ec3fcfa570b4";
            };
            dependencies = {};
            seen = [ "text-table@0.2.0" ];
            };
  "thenify-all@1.6.0" = nodeEnv.buildYarnPackage {
            packageName = "thenify-all";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/thenify-all/-/thenify-all-1.6.0.tgz";
              sha1 = "1a1918d402d8fc3f98fbf234db0bcc8cc10e9726";
            };
            dependencies = {
              "thenify@3.2.1" = pkgs."thenify@3.2.1";
            };
            seen = [ "thenify-all@1.6.0" ];
            };
  "thenify@3.2.1" = nodeEnv.buildYarnPackage {
            packageName = "thenify";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/thenify/-/thenify-3.2.1.tgz";
              sha1 = "251fd1c80aff6e5cf57cb179ab1fcb724269bd11";
            };
            dependencies = {
              "any-promise@1.3.0" = pkgs."any-promise@1.3.0";
            };
            seen = [ "thenify@3.2.1" ];
            };
  "throttleit@0.0.2" = nodeEnv.buildYarnPackage {
            packageName = "throttleit";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/throttleit/-/throttleit-0.0.2.tgz";
              sha1 = "cfedf88e60c00dd9697b61fdd2a8343a9b680eaf";
            };
            dependencies = {};
            seen = [ "throttleit@0.0.2" ];
            };
  "through2@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "through2";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/through2/-/through2-2.0.3.tgz";
              sha1 = "0004569b37c7c74ba39c43f3ced78d1ad94140be";
            };
            dependencies = {
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "xtend@4.0.1" = pkgs."xtend@4.0.1";
            };
            seen = [ "through2@2.0.3" ];
            };
  "through@2.3.8" = nodeEnv.buildYarnPackage {
            packageName = "through";
            version = "2.3.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/through/-/through-2.3.8.tgz";
              sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
            };
            dependencies = {};
            seen = [ "through@2.3.8" ];
            };
  "time-stamp@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "time-stamp";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/time-stamp/-/time-stamp-1.0.1.tgz";
              sha1 = "9f4bd23559c9365966f3302dbba2b07c6b99b151";
            };
            dependencies = {};
            seen = [ "time-stamp@1.0.1" ];
            };
  "timed-out@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "timed-out";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/timed-out/-/timed-out-4.0.1.tgz";
              sha1 = "f32eacac5a175bea25d7fab565ab3ed8741ef56f";
            };
            dependencies = {};
            seen = [ "timed-out@4.0.1" ];
            };
  "timers-browserify@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "timers-browserify";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/timers-browserify/-/timers-browserify-2.0.2.tgz";
              sha1 = "ab4883cf597dcd50af211349a00fbca56ac86b86";
            };
            dependencies = {
              "setimmediate@1.0.5" = pkgs."setimmediate@1.0.5";
            };
            seen = [ "timers-browserify@2.0.2" ];
            };
  "title-case@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "title-case";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/title-case/-/title-case-2.1.1.tgz";
              sha1 = "3e127216da58d2bc5becf137ab91dae3a7cd8faa";
            };
            dependencies = {
              "no-case@2.3.1" = pkgs."no-case@2.3.1";
              "upper-case@1.1.3" = pkgs."upper-case@1.1.3";
            };
            seen = [ "title-case@2.1.1" ];
            };
  "tmp@0.0.33" = nodeEnv.buildYarnPackage {
            packageName = "tmp";
            version = "0.0.33";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.33.tgz";
              sha1 = "6d34335889768d21b2bcda0aa277ced3b1bfadf9";
            };
            dependencies = {
              "os-tmpdir@1.0.2" = pkgs."os-tmpdir@1.0.2";
            };
            seen = [ "tmp@0.0.33" ];
            };
  "to-arraybuffer@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "to-arraybuffer";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/to-arraybuffer/-/to-arraybuffer-1.0.1.tgz";
              sha1 = "7d229b1fcc637e466ca081180836a7aabff83f43";
            };
            dependencies = {};
            seen = [ "to-arraybuffer@1.0.1" ];
            };
  "to-fast-properties@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "to-fast-properties";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-1.0.3.tgz";
              sha1 = "b83571fa4d8c25b82e231b06e3a3055de4ca1a47";
            };
            dependencies = {};
            seen = [ "to-fast-properties@1.0.3" ];
            };
  "toggle-selection@1.0.6" = nodeEnv.buildYarnPackage {
            packageName = "toggle-selection";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/toggle-selection/-/toggle-selection-1.0.6.tgz";
              sha1 = "6e45b1263f2017fa0acc7d89d78b15b8bf77da32";
            };
            dependencies = {};
            seen = [ "toggle-selection@1.0.6" ];
            };
  "topo@2.0.2" = nodeEnv.buildYarnPackage {
            packageName = "topo";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/topo/-/topo-2.0.2.tgz";
              sha1 = "cd5615752539057c0dc0491a621c3bc6fbe1d182";
            };
            dependencies = {
              "hoek@4.1.0" = pkgs."hoek@4.1.0";
            };
            seen = [ "topo@2.0.2" ];
            };
  "touch@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "touch";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/touch/-/touch-1.0.0.tgz";
              sha1 = "449cbe2dbae5a8c8038e30d71fa0ff464947c4de";
            };
            dependencies = {
              "nopt@1.0.10" = pkgs."nopt@1.0.10";
            };
            seen = [ "touch@1.0.0" ];
            };
  "tough-cookie@2.3.4" = nodeEnv.buildYarnPackage {
            packageName = "tough-cookie";
            version = "2.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.3.4.tgz";
              sha1 = "ec60cee38ac675063ffc97a5c18970578ee83655";
            };
            dependencies = {
              "punycode@1.4.1" = pkgs."punycode@1.4.1";
            };
            seen = [ "tough-cookie@2.3.4" ];
            };
  "tr46@0.0.3" = nodeEnv.buildYarnPackage {
            packageName = "tr46";
            version = "0.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tr46/-/tr46-0.0.3.tgz";
              sha1 = "8184fd347dac9cdc185992f3a6622e14b9d9ab6a";
            };
            dependencies = {};
            seen = [ "tr46@0.0.3" ];
            };
  "traverse@0.3.9" = nodeEnv.buildYarnPackage {
            packageName = "traverse";
            version = "0.3.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/traverse/-/traverse-0.3.9.tgz";
              sha1 = "717b8f220cc0bb7b44e40514c22b2e8bbc70d8b9";
            };
            dependencies = {};
            seen = [ "traverse@0.3.9" ];
            };
  "tree-kill@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "tree-kill";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tree-kill/-/tree-kill-1.1.0.tgz";
              sha1 = "c963dcf03722892ec59cba569e940b71954d1729";
            };
            dependencies = {};
            seen = [ "tree-kill@1.1.0" ];
            };
  "trim-newlines@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "trim-newlines";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/trim-newlines/-/trim-newlines-1.0.0.tgz";
              sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
            };
            dependencies = {};
            seen = [ "trim-newlines@1.0.0" ];
            };
  "trim-right@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "trim-right";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/trim-right/-/trim-right-1.0.1.tgz";
              sha1 = "cb2e1203067e0c8de1f614094b9fe45704ea6003";
            };
            dependencies = {};
            seen = [ "trim-right@1.0.1" ];
            };
  "trim@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "trim";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/trim/-/trim-0.0.1.tgz";
              sha1 = "5858547f6b290757ee95cccc666fb50084c460dd";
            };
            dependencies = {};
            seen = [ "trim@0.0.1" ];
            };
  "truncate-utf8-bytes@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "truncate-utf8-bytes";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/truncate-utf8-bytes/-/truncate-utf8-bytes-1.0.2.tgz";
              sha1 = "405923909592d56f78a5818434b0b78489ca5f2b";
            };
            dependencies = {
              "utf8-byte-length@1.0.4" = pkgs."utf8-byte-length@1.0.4";
            };
            seen = [ "truncate-utf8-bytes@1.0.2" ];
            };
  "tryit@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "tryit";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tryit/-/tryit-1.0.3.tgz";
              sha1 = "393be730a9446fd1ead6da59a014308f36c289cb";
            };
            dependencies = {};
            seen = [ "tryit@1.0.3" ];
            };
  "tty-browserify@0.0.0" = nodeEnv.buildYarnPackage {
            packageName = "tty-browserify";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tty-browserify/-/tty-browserify-0.0.0.tgz";
              sha1 = "a157ba402da24e9bf957f9aa69d524eed42901a6";
            };
            dependencies = {};
            seen = [ "tty-browserify@0.0.0" ];
            };
  "tunnel-agent@0.6.0" = nodeEnv.buildYarnPackage {
            packageName = "tunnel-agent";
            version = "0.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
              sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
            };
            dependencies = {
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
            };
            seen = [ "tunnel-agent@0.6.0" ];
            };
  "tweetnacl@0.14.5" = nodeEnv.buildYarnPackage {
            packageName = "tweetnacl";
            version = "0.14.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tweetnacl/-/tweetnacl-0.14.5.tgz";
              sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
            };
            dependencies = {};
            seen = [ "tweetnacl@0.14.5" ];
            };
  "type-check@0.3.2" = nodeEnv.buildYarnPackage {
            packageName = "type-check";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-check/-/type-check-0.3.2.tgz";
              sha1 = "5884cab512cf1d355e3fb784f30804b2b520db72";
            };
            dependencies = {
              "prelude-ls@1.1.2" = pkgs."prelude-ls@1.1.2";
            };
            seen = [ "type-check@0.3.2" ];
            };
  "type-detect@4.0.8" = nodeEnv.buildYarnPackage {
            packageName = "type-detect";
            version = "4.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-detect/-/type-detect-4.0.8.tgz";
              sha1 = "7646fb5f18871cfbb7749e69bd39a6388eb7450c";
            };
            dependencies = {};
            seen = [ "type-detect@4.0.8" ];
            };
  "type-is@1.6.16" = nodeEnv.buildYarnPackage {
            packageName = "type-is";
            version = "1.6.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-is/-/type-is-1.6.16.tgz";
              sha1 = "f89ce341541c672b25ee7ae3c73dee3b2be50194";
            };
            dependencies = {
              "media-typer@0.3.0" = pkgs."media-typer@0.3.0";
              "mime-types@2.1.18" = pkgs."mime-types@2.1.18";
            };
            seen = [ "type-is@1.6.16" ];
            };
  "typedarray-to-buffer@3.1.4" = nodeEnv.buildYarnPackage {
            packageName = "typedarray-to-buffer";
            version = "3.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/typedarray-to-buffer/-/typedarray-to-buffer-3.1.4.tgz";
              sha1 = "010b582f7366b351ea7cadcb052f1a5e2d4c6e9f";
            };
            dependencies = {
              "is-typedarray@1.0.0" = pkgs."is-typedarray@1.0.0";
            };
            seen = [ "typedarray-to-buffer@3.1.4" ];
            };
  "typedarray@0.0.6" = nodeEnv.buildYarnPackage {
            packageName = "typedarray";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz";
              sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
            };
            dependencies = {};
            seen = [ "typedarray@0.0.6" ];
            };
  "ua-parser-js@0.7.12" = nodeEnv.buildYarnPackage {
            packageName = "ua-parser-js";
            version = "0.7.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ua-parser-js/-/ua-parser-js-0.7.12.tgz";
              sha1 = "04c81a99bdd5dc52263ea29d24c6bf8d4818a4bb";
            };
            dependencies = {};
            seen = [ "ua-parser-js@0.7.12" ];
            };
  "uglify-js@3.3.13" = nodeEnv.buildYarnPackage {
            packageName = "uglify-js";
            version = "3.3.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.3.13.tgz";
              sha1 = "8a1a89eeb16e2d6a66b0db2b04cb871af3c669cf";
            };
            dependencies = {
              "commander@2.14.1" = pkgs."commander@2.14.1";
              "source-map@0.6.1" = pkgs."source-map@0.6.1";
            };
            seen = [ "uglify-js@3.3.13" ];
            };
  "uglify-to-browserify@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "uglify-to-browserify";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
              sha1 = "6e0924d6bda6b5afe349e39a6d632850a0f882b7";
            };
            dependencies = {};
            seen = [ "uglify-to-browserify@1.0.2" ];
            };
  "uid-number@0.0.6" = nodeEnv.buildYarnPackage {
            packageName = "uid-number";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uid-number/-/uid-number-0.0.6.tgz";
              sha1 = "0ea10e8035e8eb5b8e4449f06da1c730663baa81";
            };
            dependencies = {};
            seen = [ "uid-number@0.0.6" ];
            };
  "ultron@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "ultron";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ultron/-/ultron-1.1.1.tgz";
              sha1 = "9fe1536a10a664a65266a1e3ccf85fd36302bc9c";
            };
            dependencies = {};
            seen = [ "ultron@1.1.1" ];
            };
  "unbzip2-stream@1.2.5" = nodeEnv.buildYarnPackage {
            packageName = "unbzip2-stream";
            version = "1.2.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unbzip2-stream/-/unbzip2-stream-1.2.5.tgz";
              sha1 = "73a033a567bbbde59654b193c44d48a7e4f43c47";
            };
            dependencies = {
              "buffer@3.6.0" = pkgs."buffer@3.6.0";
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "unbzip2-stream@1.2.5" ];
            };
  "unc-path-regex@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "unc-path-regex";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unc-path-regex/-/unc-path-regex-0.1.2.tgz";
              sha1 = "e73dd3d7b0d7c5ed86fbac6b0ae7d8c6a69d50fa";
            };
            dependencies = {};
            seen = [ "unc-path-regex@0.1.2" ];
            };
  "undefsafe@0.0.3" = nodeEnv.buildYarnPackage {
            packageName = "undefsafe";
            version = "0.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/undefsafe/-/undefsafe-0.0.3.tgz";
              sha1 = "ecca3a03e56b9af17385baac812ac83b994a962f";
            };
            dependencies = {};
            seen = [ "undefsafe@0.0.3" ];
            };
  "underscore@1.8.3" = nodeEnv.buildYarnPackage {
            packageName = "underscore";
            version = "1.8.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/underscore/-/underscore-1.8.3.tgz";
              sha1 = "4f3fb53b106e6097fcf9cb4109f2a5e9bdfa5022";
            };
            dependencies = {};
            seen = [ "underscore@1.8.3" ];
            };
  "uniq@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "uniq";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uniq/-/uniq-1.0.1.tgz";
              sha1 = "b31c5ae8254844a3a8281541ce2b04b865a734ff";
            };
            dependencies = {};
            seen = [ "uniq@1.0.1" ];
            };
  "uniqid@4.1.1" = nodeEnv.buildYarnPackage {
            packageName = "uniqid";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uniqid/-/uniqid-4.1.1.tgz";
              sha1 = "89220ddf6b751ae52b5f72484863528596bb84c1";
            };
            dependencies = {
              "macaddress@0.2.8" = pkgs."macaddress@0.2.8";
            };
            seen = [ "uniqid@4.1.1" ];
            };
  "uniqs@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "uniqs";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uniqs/-/uniqs-2.0.0.tgz";
              sha1 = "ffede4b36b25290696e6e165d4a59edb998e6b02";
            };
            dependencies = {};
            seen = [ "uniqs@2.0.0" ];
            };
  "universalify@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "universalify";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/universalify/-/universalify-0.1.1.tgz";
              sha1 = "fa71badd4437af4c148841e3b3b165f9e9e590b7";
            };
            dependencies = {};
            seen = [ "universalify@0.1.1" ];
            };
  "unorm@1.4.1" = nodeEnv.buildYarnPackage {
            packageName = "unorm";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unorm/-/unorm-1.4.1.tgz";
              sha1 = "364200d5f13646ca8bcd44490271335614792300";
            };
            dependencies = {};
            seen = [ "unorm@1.4.1" ];
            };
  "unpipe@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "unpipe";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unpipe/-/unpipe-1.0.0.tgz";
              sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
            };
            dependencies = {};
            seen = [ "unpipe@1.0.0" ];
            };
  "update-notifier@0.5.0" = nodeEnv.buildYarnPackage {
            packageName = "update-notifier";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/update-notifier/-/update-notifier-0.5.0.tgz";
              sha1 = "07b5dc2066b3627ab3b4f530130f7eddda07a4cc";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "configstore@1.4.0" = pkgs."configstore@1.4.0";
              "is-npm@1.0.0" = pkgs."is-npm@1.0.0";
              "latest-version@1.0.1" = pkgs."latest-version@1.0.1";
              "repeating@1.1.3" = pkgs."repeating@1.1.3";
              "semver-diff@2.1.0" = pkgs."semver-diff@2.1.0";
              "string-length@1.0.1" = pkgs."string-length@1.0.1";
            };
            seen = [ "update-notifier@0.5.0" ];
            };
  "upper-case@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "upper-case";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/upper-case/-/upper-case-1.1.3.tgz";
              sha1 = "f6b4501c2ec4cdd26ba78be7222961de77621598";
            };
            dependencies = {};
            seen = [ "upper-case@1.1.3" ];
            };
  "urix@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "urix";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/urix/-/urix-0.1.0.tgz";
              sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
            };
            dependencies = {};
            seen = [ "urix@0.1.0" ];
            };
  "url-loader@0.5.8" = nodeEnv.buildYarnPackage {
            packageName = "url-loader";
            version = "0.5.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-loader/-/url-loader-0.5.8.tgz";
              sha1 = "b9183b1801e0f847718673673040bc9dc1c715c5";
            };
            dependencies = {
              "loader-utils@1.1.0" = pkgs."loader-utils@1.1.0";
              "mime@1.3.6" = pkgs."mime@1.3.6";
            };
            seen = [ "url-loader@0.5.8" ];
            };
  "url-parse-lax@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "url-parse-lax";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-parse-lax/-/url-parse-lax-1.0.0.tgz";
              sha1 = "7af8f303645e9bd79a272e7a14ac68bc0609da73";
            };
            dependencies = {
              "prepend-http@1.0.4" = pkgs."prepend-http@1.0.4";
            };
            seen = [ "url-parse-lax@1.0.0" ];
            };
  "url-set-query@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "url-set-query";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-set-query/-/url-set-query-1.0.0.tgz";
              sha1 = "016e8cfd7c20ee05cafe7795e892bd0702faa339";
            };
            dependencies = {};
            seen = [ "url-set-query@1.0.0" ];
            };
  "url-to-options@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "url-to-options";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-to-options/-/url-to-options-1.0.1.tgz";
              sha1 = "1505a03a289a48cbd7a434efbaeec5055f5633a9";
            };
            dependencies = {};
            seen = [ "url-to-options@1.0.1" ];
            };
  "url@0.11.0" = nodeEnv.buildYarnPackage {
            packageName = "url";
            version = "0.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url/-/url-0.11.0.tgz";
              sha1 = "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1";
            };
            dependencies = {
              "punycode@1.3.2" = pkgs."punycode@1.3.2";
              "querystring@0.2.0" = pkgs."querystring@0.2.0";
            };
            seen = [ "url@0.11.0" ];
            };
  "user-home@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "user-home";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/user-home/-/user-home-2.0.0.tgz";
              sha1 = "9c70bfd8169bc1dcbf48604e0f04b8b49cde9e9f";
            };
            dependencies = {
              "os-homedir@1.0.2" = pkgs."os-homedir@1.0.2";
            };
            seen = [ "user-home@2.0.0" ];
            };
  "utf8-byte-length@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "utf8-byte-length";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utf8-byte-length/-/utf8-byte-length-1.0.4.tgz";
              sha1 = "f45f150c4c66eee968186505ab93fcbb8ad6bf61";
            };
            dependencies = {};
            seen = [ "utf8-byte-length@1.0.4" ];
            };
  "utf8@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "utf8";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utf8/-/utf8-2.1.1.tgz";
              sha1 = "2e01db02f7d8d0944f77104f1609eb0c304cf768";
            };
            dependencies = {};
            seen = [ "utf8@2.1.1" ];
            };
  "util-arity@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "util-arity";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/util-arity/-/util-arity-1.1.0.tgz";
              sha1 = "59d01af1fdb3fede0ac4e632b0ab5f6ce97c9330";
            };
            dependencies = {};
            seen = [ "util-arity@1.1.0" ];
            };
  "util-deprecate@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "util-deprecate";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
              sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
            };
            dependencies = {};
            seen = [ "util-deprecate@1.0.2" ];
            };
  "util@0.10.3" = nodeEnv.buildYarnPackage {
            packageName = "util";
            version = "0.10.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/util/-/util-0.10.3.tgz";
              sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
            };
            dependencies = {
              "inherits@2.0.1" = pkgs."inherits@2.0.1";
            };
            seen = [ "util@0.10.3" ];
            };
  "utils-merge@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "utils-merge";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utils-merge/-/utils-merge-1.0.0.tgz";
              sha1 = "0294fb922bb9375153541c4f7096231f287c8af8";
            };
            dependencies = {};
            seen = [ "utils-merge@1.0.0" ];
            };
  "uuid@3.2.1" = nodeEnv.buildYarnPackage {
            packageName = "uuid";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uuid/-/uuid-3.2.1.tgz";
              sha1 = "12c528bb9d58d0b9265d9a2f6f0fe8be17ff1f14";
            };
            dependencies = {};
            seen = [ "uuid@3.2.1" ];
            };
  "v8flags@2.0.11" = nodeEnv.buildYarnPackage {
            packageName = "v8flags";
            version = "2.0.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/v8flags/-/v8flags-2.0.11.tgz";
              sha1 = "bca8f30f0d6d60612cc2c00641e6962d42ae6881";
            };
            dependencies = {
              "user-home@1.1.1" = pkgs."user-home@1.1.1";
            };
            seen = [ "v8flags@2.0.11" ];
            };
  "validate-npm-package-license@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "validate-npm-package-license";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/validate-npm-package-license/-/validate-npm-package-license-3.0.1.tgz";
              sha1 = "2804babe712ad3379459acfbe24746ab2c303fbc";
            };
            dependencies = {
              "spdx-correct@1.0.2" = pkgs."spdx-correct@1.0.2";
              "spdx-expression-parse@1.0.4" = pkgs."spdx-expression-parse@1.0.4";
            };
            seen = [ "validate-npm-package-license@3.0.1" ];
            };
  "validator@6.3.0" = nodeEnv.buildYarnPackage {
            packageName = "validator";
            version = "6.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/validator/-/validator-6.3.0.tgz";
              sha1 = "47ce23ed8d4eaddfa9d4b8ef0071b6cf1078d7c8";
            };
            dependencies = {};
            seen = [ "validator@6.3.0" ];
            };
  "vary@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "vary";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vary/-/vary-1.1.2.tgz";
              sha1 = "2299f02c6ded30d4a5961b0b9f74524a18f634fc";
            };
            dependencies = {};
            seen = [ "vary@1.1.2" ];
            };
  "vendors@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "vendors";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vendors/-/vendors-1.0.1.tgz";
              sha1 = "37ad73c8ee417fb3d580e785312307d274847f22";
            };
            dependencies = {};
            seen = [ "vendors@1.0.1" ];
            };
  "verror@1.10.0" = nodeEnv.buildYarnPackage {
            packageName = "verror";
            version = "1.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/verror/-/verror-1.10.0.tgz";
              sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
            };
            dependencies = {
              "assert-plus@1.0.0" = pkgs."assert-plus@1.0.0";
              "core-util-is@1.0.2" = pkgs."core-util-is@1.0.2";
              "extsprintf@1.4.0" = pkgs."extsprintf@1.4.0";
            };
            seen = [ "verror@1.10.0" ];
            };
  "vinyl@0.5.3" = nodeEnv.buildYarnPackage {
            packageName = "vinyl";
            version = "0.5.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vinyl/-/vinyl-0.5.3.tgz";
              sha1 = "b0455b38fc5e0cf30d4325132e461970c2091cde";
            };
            dependencies = {
              "clone@1.0.2" = pkgs."clone@1.0.2";
              "clone-stats@0.0.1" = pkgs."clone-stats@0.0.1";
              "replace-ext@0.0.1" = pkgs."replace-ext@0.0.1";
            };
            seen = [ "vinyl@0.5.3" ];
            };
  "vm-browserify@0.0.4" = nodeEnv.buildYarnPackage {
            packageName = "vm-browserify";
            version = "0.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vm-browserify/-/vm-browserify-0.0.4.tgz";
              sha1 = "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73";
            };
            dependencies = {
              "indexof@0.0.1" = pkgs."indexof@0.0.1";
            };
            seen = [ "vm-browserify@0.0.4" ];
            };
  "warning@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "warning";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/warning/-/warning-3.0.0.tgz";
              sha1 = "32e5377cb572de4ab04753bdf8821c01ed605b7c";
            };
            dependencies = {
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
            };
            seen = [ "warning@3.0.0" ];
            };
  "watchpack@0.2.9" = nodeEnv.buildYarnPackage {
            packageName = "watchpack";
            version = "0.2.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/watchpack/-/watchpack-0.2.9.tgz";
              sha1 = "62eaa4ab5e5ba35fdfc018275626e3c0f5e3fb0b";
            };
            dependencies = {
              "async@0.9.2" = pkgs."async@0.9.2";
              "chokidar@1.6.1" = pkgs."chokidar@1.6.1";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
            };
            seen = [ "watchpack@0.2.9" ];
            };
  "wdio-dot-reporter@0.0.9" = nodeEnv.buildYarnPackage {
            packageName = "wdio-dot-reporter";
            version = "0.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wdio-dot-reporter/-/wdio-dot-reporter-0.0.9.tgz";
              sha1 = "929b2adafd49d6b0534fda068e87319b47e38fe5";
            };
            dependencies = {};
            seen = [ "wdio-dot-reporter@0.0.9" ];
            };
  "web3-bzz@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-bzz";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-bzz/-/web3-bzz-1.0.0-beta.30.tgz";
              sha1 = "2434da183c239aaaa5c013f62307429ea91dd706";
            };
            dependencies = {
              "got@7.1.0" = pkgs."got@7.1.0";
              "swarm-js@0.1.37" = pkgs."swarm-js@0.1.37";
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
            };
            seen = [ "web3-bzz@1.0.0-beta.30" ];
            };
  "web3-core-helpers@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-core-helpers";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-helpers/-/web3-core-helpers-1.0.0-beta.30.tgz";
              sha1 = "a000cee3f0a09eea13d74b5730335d4635fe1f2f";
            };
            dependencies = {
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-eth-iban@1.0.0-beta.30" = pkgs."web3-eth-iban@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-core-helpers@1.0.0-beta.30" ];
            };
  "web3-core-method@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-core-method";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-method/-/web3-core-method-1.0.0-beta.30.tgz";
              sha1 = "8dd6ff789e8d1563b8786d13a78c7facefae471c";
            };
            dependencies = {
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-core-promievent@1.0.0-beta.30" = pkgs."web3-core-promievent@1.0.0-beta.30";
              "web3-core-subscriptions@1.0.0-beta.30" = pkgs."web3-core-subscriptions@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-core-method@1.0.0-beta.30" ];
            };
  "web3-core-promievent@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-core-promievent";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-promievent/-/web3-core-promievent-1.0.0-beta.30.tgz";
              sha1 = "6205192bfb097441132226a5939ec5aed3a8a291";
            };
            dependencies = {
              "bluebird@3.3.1" = pkgs."bluebird@3.3.1";
              "eventemitter3@1.1.1" = pkgs."eventemitter3@1.1.1";
            };
            seen = [ "web3-core-promievent@1.0.0-beta.30" ];
            };
  "web3-core-requestmanager@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-core-requestmanager";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-requestmanager/-/web3-core-requestmanager-1.0.0-beta.30.tgz";
              sha1 = "6ee56fb8a6cb85fd01b3080854f50d64e52240c6";
            };
            dependencies = {
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-providers-http@1.0.0-beta.30" = pkgs."web3-providers-http@1.0.0-beta.30";
              "web3-providers-ipc@1.0.0-beta.30" = pkgs."web3-providers-ipc@1.0.0-beta.30";
              "web3-providers-ws@1.0.0-beta.30" = pkgs."web3-providers-ws@1.0.0-beta.30";
            };
            seen = [ "web3-core-requestmanager@1.0.0-beta.30" ];
            };
  "web3-core-subscriptions@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-core-subscriptions";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-subscriptions/-/web3-core-subscriptions-1.0.0-beta.30.tgz";
              sha1 = "31652c75356c3f67e5a19cd14b8d314bad4e2127";
            };
            dependencies = {
              "eventemitter3@1.1.1" = pkgs."eventemitter3@1.1.1";
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
            };
            seen = [ "web3-core-subscriptions@1.0.0-beta.30" ];
            };
  "web3-core@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-core";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core/-/web3-core-1.0.0-beta.30.tgz";
              sha1 = "f75f4d3b85be74c7674637921c3e013bc5d27679";
            };
            dependencies = {
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-core-method@1.0.0-beta.30" = pkgs."web3-core-method@1.0.0-beta.30";
              "web3-core-requestmanager@1.0.0-beta.30" = pkgs."web3-core-requestmanager@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-core@1.0.0-beta.30" ];
            };
  "web3-eth-abi@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-eth-abi";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-abi/-/web3-eth-abi-1.0.0-beta.30.tgz";
              sha1 = "6ea52c999a8505b47c2f88ba61d2a680a1066409";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-eth-abi@1.0.0-beta.30" ];
            };
  "web3-eth-accounts@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-eth-accounts";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-accounts/-/web3-eth-accounts-1.0.0-beta.30.tgz";
              sha1 = "8f0a1b342c4283812372242a6e2df268887b3b70";
            };
            dependencies = {
              "bluebird@3.3.1" = pkgs."bluebird@3.3.1";
              "crypto-browserify@3.12.0" = pkgs."crypto-browserify@3.12.0";
              "eth-lib@0.2.7" = pkgs."eth-lib@0.2.7";
              "scrypt.js@0.2.0" = pkgs."scrypt.js@0.2.0";
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "uuid@2.0.1" = pkgs."uuid@2.0.1";
              "web3-core@1.0.0-beta.30" = pkgs."web3-core@1.0.0-beta.30";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-core-method@1.0.0-beta.30" = pkgs."web3-core-method@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-eth-accounts@1.0.0-beta.30" ];
            };
  "web3-eth-contract@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-eth-contract";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-contract/-/web3-eth-contract-1.0.0-beta.30.tgz";
              sha1 = "d7eba2385084dff3c75aac48235af2c8d2d6a258";
            };
            dependencies = {
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core@1.0.0-beta.30" = pkgs."web3-core@1.0.0-beta.30";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-core-method@1.0.0-beta.30" = pkgs."web3-core-method@1.0.0-beta.30";
              "web3-core-promievent@1.0.0-beta.30" = pkgs."web3-core-promievent@1.0.0-beta.30";
              "web3-core-subscriptions@1.0.0-beta.30" = pkgs."web3-core-subscriptions@1.0.0-beta.30";
              "web3-eth-abi@1.0.0-beta.30" = pkgs."web3-eth-abi@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-eth-contract@1.0.0-beta.30" ];
            };
  "web3-eth-iban@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-eth-iban";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-iban/-/web3-eth-iban-1.0.0-beta.30.tgz";
              sha1 = "3b080a5c4da1fa37477b17e4c900781b92150645";
            };
            dependencies = {
              "bn.js@4.11.8" = pkgs."bn.js@4.11.8";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-eth-iban@1.0.0-beta.30" ];
            };
  "web3-eth-personal@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-eth-personal";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-personal/-/web3-eth-personal-1.0.0-beta.30.tgz";
              sha1 = "8bd4ef40b3b5f841dd3a8b97873d9dc791caf748";
            };
            dependencies = {
              "web3-core@1.0.0-beta.30" = pkgs."web3-core@1.0.0-beta.30";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-core-method@1.0.0-beta.30" = pkgs."web3-core-method@1.0.0-beta.30";
              "web3-net@1.0.0-beta.30" = pkgs."web3-net@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-eth-personal@1.0.0-beta.30" ];
            };
  "web3-eth@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-eth";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth/-/web3-eth-1.0.0-beta.30.tgz";
              sha1 = "029b15e14cb608b9cfe02603b504d651870f0501";
            };
            dependencies = {
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core@1.0.0-beta.30" = pkgs."web3-core@1.0.0-beta.30";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "web3-core-method@1.0.0-beta.30" = pkgs."web3-core-method@1.0.0-beta.30";
              "web3-core-subscriptions@1.0.0-beta.30" = pkgs."web3-core-subscriptions@1.0.0-beta.30";
              "web3-eth-abi@1.0.0-beta.30" = pkgs."web3-eth-abi@1.0.0-beta.30";
              "web3-eth-accounts@1.0.0-beta.30" = pkgs."web3-eth-accounts@1.0.0-beta.30";
              "web3-eth-contract@1.0.0-beta.30" = pkgs."web3-eth-contract@1.0.0-beta.30";
              "web3-eth-iban@1.0.0-beta.30" = pkgs."web3-eth-iban@1.0.0-beta.30";
              "web3-eth-personal@1.0.0-beta.30" = pkgs."web3-eth-personal@1.0.0-beta.30";
              "web3-net@1.0.0-beta.30" = pkgs."web3-net@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-eth@1.0.0-beta.30" ];
            };
  "web3-net@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-net";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-net/-/web3-net-1.0.0-beta.30.tgz";
              sha1 = "0a352ede296e6d4b7f88b67aa474e49703de73bf";
            };
            dependencies = {
              "web3-core@1.0.0-beta.30" = pkgs."web3-core@1.0.0-beta.30";
              "web3-core-method@1.0.0-beta.30" = pkgs."web3-core-method@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3-net@1.0.0-beta.30" ];
            };
  "web3-providers-http@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-providers-http";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-providers-http/-/web3-providers-http-1.0.0-beta.30.tgz";
              sha1 = "cda8d9133c6f31d1a812dc5a42af00cbea98cd86";
            };
            dependencies = {
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "xhr2@0.1.4" = pkgs."xhr2@0.1.4";
            };
            seen = [ "web3-providers-http@1.0.0-beta.30" ];
            };
  "web3-providers-ipc@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-providers-ipc";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-providers-ipc/-/web3-providers-ipc-1.0.0-beta.30.tgz";
              sha1 = "ee2d8d18a3f120b777044a56e67e0aee20854587";
            };
            dependencies = {
              "oboe@2.1.3" = pkgs."oboe@2.1.3";
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
            };
            seen = [ "web3-providers-ipc@1.0.0-beta.30" ];
            };
  "web3-providers-ws@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-providers-ws";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-providers-ws/-/web3-providers-ws-1.0.0-beta.30.tgz";
              sha1 = "9ae69a9ead8a8761f86379fa347b6db5ae44b12d";
            };
            dependencies = {
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "web3-core-helpers@1.0.0-beta.30" = pkgs."web3-core-helpers@1.0.0-beta.30";
              "websocket@1.0.24" = pkgs."websocket@1.0.24";
            };
            seen = [ "web3-providers-ws@1.0.0-beta.30" ];
            };
  "web3-shh@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-shh";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-shh/-/web3-shh-1.0.0-beta.30.tgz";
              sha1 = "2bfe3220d958ff4ca592017790852bc57b7b0ca7";
            };
            dependencies = {
              "web3-core@1.0.0-beta.30" = pkgs."web3-core@1.0.0-beta.30";
              "web3-core-method@1.0.0-beta.30" = pkgs."web3-core-method@1.0.0-beta.30";
              "web3-core-subscriptions@1.0.0-beta.30" = pkgs."web3-core-subscriptions@1.0.0-beta.30";
              "web3-net@1.0.0-beta.30" = pkgs."web3-net@1.0.0-beta.30";
            };
            seen = [ "web3-shh@1.0.0-beta.30" ];
            };
  "web3-utils@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            packageName = "web3-utils";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-utils/-/web3-utils-1.0.0-beta.30.tgz";
              sha1 = "eae408cc8d6d6fecc8d5097cfead51773f231ff9";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "eth-lib@0.1.27" = pkgs."eth-lib@0.1.27";
              "ethjs-unit@0.1.6" = pkgs."ethjs-unit@0.1.6";
              "number-to-bn@1.7.0" = pkgs."number-to-bn@1.7.0";
              "randomhex@0.1.5" = pkgs."randomhex@0.1.5";
              "underscore@1.8.3" = pkgs."underscore@1.8.3";
              "utf8@2.1.1" = pkgs."utf8@2.1.1";
            };
            seen = [ "web3-utils@1.0.0-beta.30" ];
            };
  "web3@1.0.0-beta.24" = nodeEnv.buildYarnPackage {
            packageName = "web3";
            version = "1.0.0-beta.24";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3/-/web3-1.0.0-beta.24.tgz";
              sha1 = "0b653d6a50f407b37f593371fb6ee1bd3a1f27c2";
            };
            dependencies = {
              "web3-bzz@1.0.0-beta.30" = pkgs."web3-bzz@1.0.0-beta.30";
              "web3-core@1.0.0-beta.30" = pkgs."web3-core@1.0.0-beta.30";
              "web3-eth@1.0.0-beta.30" = pkgs."web3-eth@1.0.0-beta.30";
              "web3-eth-personal@1.0.0-beta.30" = pkgs."web3-eth-personal@1.0.0-beta.30";
              "web3-net@1.0.0-beta.30" = pkgs."web3-net@1.0.0-beta.30";
              "web3-shh@1.0.0-beta.30" = pkgs."web3-shh@1.0.0-beta.30";
              "web3-utils@1.0.0-beta.30" = pkgs."web3-utils@1.0.0-beta.30";
            };
            seen = [ "web3@1.0.0-beta.24" ];
            };
  "webdriverio@4.9.10" = nodeEnv.buildYarnPackage {
            packageName = "webdriverio";
            version = "4.9.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webdriverio/-/webdriverio-4.9.10.tgz";
              sha1 = "6e1116c70d021f0ca8baaa5c567b5ed337497cd3";
            };
            dependencies = {
              "archiver@2.1.1" = pkgs."archiver@2.1.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "css-parse@2.0.0" = pkgs."css-parse@2.0.0";
              "css-value@0.0.1" = pkgs."css-value@0.0.1";
              "deepmerge@2.0.1" = pkgs."deepmerge@2.0.1";
              "ejs@2.5.7" = pkgs."ejs@2.5.7";
              "gaze@1.1.2" = pkgs."gaze@1.1.2";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "inquirer@3.3.0" = pkgs."inquirer@3.3.0";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "npm-install-package@2.1.0" = pkgs."npm-install-package@2.1.0";
              "optimist@0.6.1" = pkgs."optimist@0.6.1";
              "q@1.5.1" = pkgs."q@1.5.1";
              "request@2.83.0" = pkgs."request@2.83.0";
              "rgb2hex@0.1.0" = pkgs."rgb2hex@0.1.0";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
              "supports-color@5.0.1" = pkgs."supports-color@5.0.1";
              "url@0.11.0" = pkgs."url@0.11.0";
              "validator@9.1.2" = pkgs."validator@9.1.2";
              "wdio-dot-reporter@0.0.9" = pkgs."wdio-dot-reporter@0.0.9";
              "wgxpath@1.0.0" = pkgs."wgxpath@1.0.0";
            };
            seen = [ "webdriverio@4.9.10" ];
            };
  "webidl-conversions@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "webidl-conversions";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webidl-conversions/-/webidl-conversions-3.0.1.tgz";
              sha1 = "24534275e2a7bc6be7bc86611cc16ae0a5654871";
            };
            dependencies = {};
            seen = [ "webidl-conversions@3.0.1" ];
            };
  "webpack-core@0.6.9" = nodeEnv.buildYarnPackage {
            packageName = "webpack-core";
            version = "0.6.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-core/-/webpack-core-0.6.9.tgz";
              sha1 = "fc571588c8558da77be9efb6debdc5a3b172bdc2";
            };
            dependencies = {
              "source-list-map@0.1.7" = pkgs."source-list-map@0.1.7";
              "source-map@0.4.4" = pkgs."source-map@0.4.4";
            };
            seen = [ "webpack-core@0.6.9" ];
            };
  "webpack-dev-middleware@1.10.1" = nodeEnv.buildYarnPackage {
            packageName = "webpack-dev-middleware";
            version = "1.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-dev-middleware/-/webpack-dev-middleware-1.10.1.tgz";
              sha1 = "c6b4cf428139cf1aefbe06a0c00fdb4f8da2f893";
            };
            dependencies = {
              "memory-fs@0.4.1" = pkgs."memory-fs@0.4.1";
              "mime@1.3.4" = pkgs."mime@1.3.4";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "range-parser@1.2.0" = pkgs."range-parser@1.2.0";
            };
            seen = [ "webpack-dev-middleware@1.10.1" ];
            };
  "webpack-hot-middleware@2.17.1" = nodeEnv.buildYarnPackage {
            packageName = "webpack-hot-middleware";
            version = "2.17.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-hot-middleware/-/webpack-hot-middleware-2.17.1.tgz";
              sha1 = "0c8fbf6f93ff29c095d684b07ab6d6c0f2f951d7";
            };
            dependencies = {
              "ansi-html@0.0.7" = pkgs."ansi-html@0.0.7";
              "html-entities@1.2.0" = pkgs."html-entities@1.2.0";
              "querystring@0.2.0" = pkgs."querystring@0.2.0";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
            };
            seen = [ "webpack-hot-middleware@2.17.1" ];
            };
  "webpack-merge@0.14.1" = nodeEnv.buildYarnPackage {
            packageName = "webpack-merge";
            version = "0.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-merge/-/webpack-merge-0.14.1.tgz";
              sha1 = "d6bfe6d9360a024e1e7f8e6383ae735f1737cd23";
            };
            dependencies = {
              "lodash.find@3.2.1" = pkgs."lodash.find@3.2.1";
              "lodash.isequal@4.4.0" = pkgs."lodash.isequal@4.4.0";
              "lodash.isplainobject@3.2.0" = pkgs."lodash.isplainobject@3.2.0";
              "lodash.merge@3.3.2" = pkgs."lodash.merge@3.3.2";
            };
            seen = [ "webpack-merge@0.14.1" ];
            };
  "webpack-sources@0.1.3" = nodeEnv.buildYarnPackage {
            packageName = "webpack-sources";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-sources/-/webpack-sources-0.1.3.tgz";
              sha1 = "15ce2fb79d0a1da727444ba7c757bf164294f310";
            };
            dependencies = {
              "source-list-map@0.1.7" = pkgs."source-list-map@0.1.7";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "webpack-sources@0.1.3" ];
            };
  "webpack-validator@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "webpack-validator";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-validator/-/webpack-validator-2.3.0.tgz";
              sha1 = "235c6ea69aa930a90262bbbf9bd45ad8bd497310";
            };
            dependencies = {
              "basename@0.1.2" = pkgs."basename@0.1.2";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "common-tags@0.1.1" = pkgs."common-tags@0.1.1";
              "cross-env@3.1.4" = pkgs."cross-env@3.1.4";
              "find-node-modules@1.0.4" = pkgs."find-node-modules@1.0.4";
              "joi@9.0.0-0" = pkgs."joi@9.0.0-0";
              "lodash@4.11.1" = pkgs."lodash@4.11.1";
              "npmlog@2.0.3" = pkgs."npmlog@2.0.3";
              "shelljs@0.7.0" = pkgs."shelljs@0.7.0";
              "yargs@4.7.1" = pkgs."yargs@4.7.1";
            };
            seen = [ "webpack-validator@2.3.0" ];
            };
  "webpack@1.14.0" = nodeEnv.buildYarnPackage {
            packageName = "webpack";
            version = "1.14.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack/-/webpack-1.14.0.tgz";
              sha1 = "54f1ffb92051a328a5b2057d6ae33c289462c823";
            };
            dependencies = {
              "acorn@3.3.0" = pkgs."acorn@3.3.0";
              "async@1.5.2" = pkgs."async@1.5.2";
              "clone@1.0.2" = pkgs."clone@1.0.2";
              "enhanced-resolve@0.9.1" = pkgs."enhanced-resolve@0.9.1";
              "interpret@0.6.6" = pkgs."interpret@0.6.6";
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "memory-fs@0.3.0" = pkgs."memory-fs@0.3.0";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "node-libs-browser@0.7.0" = pkgs."node-libs-browser@0.7.0";
              "optimist@0.6.1" = pkgs."optimist@0.6.1";
              "supports-color@3.1.2" = pkgs."supports-color@3.1.2";
              "tapable@0.1.10" = pkgs."tapable@0.1.10";
              "uglify-js@2.7.5" = pkgs."uglify-js@2.7.5";
              "watchpack@0.2.9" = pkgs."watchpack@0.2.9";
              "webpack-core@0.6.9" = pkgs."webpack-core@0.6.9";
            };
            seen = [ "webpack@1.14.0" ];
            };
  "websocket@1.0.24" = nodeEnv.buildYarnPackage {
            packageName = "websocket";
            version = "1.0.24";
            src = fetchgit {
              url = "git://github.com/frozeman/WebSocket-Node.git";
              rev = "7004c39c42ac98875ab61126e5b4a925430f592c";
              sha256 = overrides."websocket@1.0.24".sha256;
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "nan@2.9.2" = pkgs."nan@2.9.2";
              "typedarray-to-buffer@3.1.4" = pkgs."typedarray-to-buffer@3.1.4";
              "yaeti@0.0.6" = pkgs."yaeti@0.0.6";
            };
            seen = [ "websocket@1.0.24" ];
            };
  "wgxpath@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "wgxpath";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wgxpath/-/wgxpath-1.0.0.tgz";
              sha1 = "eef8a4b9d558cc495ad3a9a2b751597ecd9af690";
            };
            dependencies = {};
            seen = [ "wgxpath@1.0.0" ];
            };
  "whatwg-encoding@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "whatwg-encoding";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/whatwg-encoding/-/whatwg-encoding-1.0.1.tgz";
              sha1 = "3c6c451a198ee7aec55b1ec61d0920c67801a5f4";
            };
            dependencies = {
              "iconv-lite@0.4.13" = pkgs."iconv-lite@0.4.13";
            };
            seen = [ "whatwg-encoding@1.0.1" ];
            };
  "whatwg-fetch@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "whatwg-fetch";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/whatwg-fetch/-/whatwg-fetch-2.0.1.tgz";
              sha1 = "078b9461bbe91cea73cbce8bb122a05f9e92b772";
            };
            dependencies = {};
            seen = [ "whatwg-fetch@2.0.1" ];
            };
  "whatwg-url@4.2.0" = nodeEnv.buildYarnPackage {
            packageName = "whatwg-url";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/whatwg-url/-/whatwg-url-4.2.0.tgz";
              sha1 = "abf1a3f5ff4bc2005b3f0c2119382631789d8e44";
            };
            dependencies = {
              "tr46@0.0.3" = pkgs."tr46@0.0.3";
              "webidl-conversions@3.0.1" = pkgs."webidl-conversions@3.0.1";
            };
            seen = [ "whatwg-url@4.2.0" ];
            };
  "whet.extend@0.9.9" = nodeEnv.buildYarnPackage {
            packageName = "whet.extend";
            version = "0.9.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/whet.extend/-/whet.extend-0.9.9.tgz";
              sha1 = "f877d5bf648c97e5aa542fadc16d6a259b9c11a1";
            };
            dependencies = {};
            seen = [ "whet.extend@0.9.9" ];
            };
  "which-module@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "which-module";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/which-module/-/which-module-1.0.0.tgz";
              sha1 = "bba63ca861948994ff307736089e3b96026c2a4f";
            };
            dependencies = {};
            seen = [ "which-module@1.0.0" ];
            };
  "which@1.2.12" = nodeEnv.buildYarnPackage {
            packageName = "which";
            version = "1.2.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/which/-/which-1.2.12.tgz";
              sha1 = "de67b5e450269f194909ef23ece4ebe416fa1192";
            };
            dependencies = {
              "isexe@1.1.2" = pkgs."isexe@1.1.2";
            };
            seen = [ "which@1.2.12" ];
            };
  "wide-align@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "wide-align";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wide-align/-/wide-align-1.1.0.tgz";
              sha1 = "40edde802a71fea1f070da3e62dcda2e7add96ad";
            };
            dependencies = {
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
            };
            seen = [ "wide-align@1.1.0" ];
            };
  "window-size@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "window-size";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/window-size/-/window-size-0.2.0.tgz";
              sha1 = "b4315bb4214a3d7058ebeee892e13fa24d98b075";
            };
            dependencies = {};
            seen = [ "window-size@0.2.0" ];
            };
  "winston-papertrail@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "winston-papertrail";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/winston-papertrail/-/winston-papertrail-1.0.4.tgz";
              sha1 = "95b40e2f518cf12975207b272caab08c8ea448f9";
            };
            dependencies = {
              "glossy@0.1.7" = pkgs."glossy@0.1.7";
            };
            seen = [ "winston-papertrail@1.0.4" ];
            };
  "winston@2.3.1" = nodeEnv.buildYarnPackage {
            packageName = "winston";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/winston/-/winston-2.3.1.tgz";
              sha1 = "0b48420d978c01804cf0230b648861598225a119";
            };
            dependencies = {
              "async@1.0.0" = pkgs."async@1.0.0";
              "colors@1.0.3" = pkgs."colors@1.0.3";
              "cycle@1.0.3" = pkgs."cycle@1.0.3";
              "eyes@0.1.8" = pkgs."eyes@0.1.8";
              "isstream@0.1.2" = pkgs."isstream@0.1.2";
              "stack-trace@0.0.10" = pkgs."stack-trace@0.0.10";
            };
            seen = [ "winston@2.3.1" ];
            };
  "wordwrap@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "wordwrap";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-1.0.0.tgz";
              sha1 = "27584810891456a4171c8d0226441ade90cbcaeb";
            };
            dependencies = {};
            seen = [ "wordwrap@1.0.0" ];
            };
  "wrap-ansi@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "wrap-ansi";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-2.1.0.tgz";
              sha1 = "d8fc3d284dd05794fe84973caecdd1cf824fdd85";
            };
            dependencies = {
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
            };
            seen = [ "wrap-ansi@2.1.0" ];
            };
  "wrappy@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "wrappy";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz";
              sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
            };
            dependencies = {};
            seen = [ "wrappy@1.0.2" ];
            };
  "write-file-atomic@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "write-file-atomic";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/write-file-atomic/-/write-file-atomic-2.3.0.tgz";
              sha1 = "1ff61575c2e2a4e8e510d6fa4e243cce183999ab";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "imurmurhash@0.1.4" = pkgs."imurmurhash@0.1.4";
              "signal-exit@3.0.2" = pkgs."signal-exit@3.0.2";
            };
            seen = [ "write-file-atomic@2.3.0" ];
            };
  "write@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "write";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/write/-/write-0.2.1.tgz";
              sha1 = "5fc03828e264cea3fe91455476f7a3c566cb0757";
            };
            dependencies = {
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
            };
            seen = [ "write@0.2.1" ];
            };
  "ws@3.3.3" = nodeEnv.buildYarnPackage {
            packageName = "ws";
            version = "3.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ws/-/ws-3.3.3.tgz";
              sha1 = "f1cf84fe2d5e901ebce94efaece785f187a228f2";
            };
            dependencies = {
              "async-limiter@1.0.0" = pkgs."async-limiter@1.0.0";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
              "ultron@1.1.1" = pkgs."ultron@1.1.1";
            };
            seen = [ "ws@3.3.3" ];
            };
  "xdg-basedir@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "xdg-basedir";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xdg-basedir/-/xdg-basedir-2.0.0.tgz";
              sha1 = "edbc903cc385fc04523d966a335504b5504d1bd2";
            };
            dependencies = {
              "os-homedir@1.0.2" = pkgs."os-homedir@1.0.2";
            };
            seen = [ "xdg-basedir@2.0.0" ];
            };
  "xhr-request-promise@0.1.2" = nodeEnv.buildYarnPackage {
            packageName = "xhr-request-promise";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr-request-promise/-/xhr-request-promise-0.1.2.tgz";
              sha1 = "343c44d1ee7726b8648069682d0f840c83b4261d";
            };
            dependencies = {
              "xhr-request@1.1.0" = pkgs."xhr-request@1.1.0";
            };
            seen = [ "xhr-request-promise@0.1.2" ];
            };
  "xhr-request@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "xhr-request";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr-request/-/xhr-request-1.1.0.tgz";
              sha1 = "f4a7c1868b9f198723444d82dcae317643f2e2ed";
            };
            dependencies = {
              "buffer-to-arraybuffer@0.0.5" = pkgs."buffer-to-arraybuffer@0.0.5";
              "object-assign@4.1.1" = pkgs."object-assign@4.1.1";
              "query-string@5.1.0" = pkgs."query-string@5.1.0";
              "simple-get@2.7.0" = pkgs."simple-get@2.7.0";
              "timed-out@4.0.1" = pkgs."timed-out@4.0.1";
              "url-set-query@1.0.0" = pkgs."url-set-query@1.0.0";
              "xhr@2.4.1" = pkgs."xhr@2.4.1";
            };
            seen = [ "xhr-request@1.1.0" ];
            };
  "xhr2@0.1.4" = nodeEnv.buildYarnPackage {
            packageName = "xhr2";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr2/-/xhr2-0.1.4.tgz";
              sha1 = "7f87658847716db5026323812f818cadab387a5f";
            };
            dependencies = {};
            seen = [ "xhr2@0.1.4" ];
            };
  "xhr@2.4.1" = nodeEnv.buildYarnPackage {
            packageName = "xhr";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr/-/xhr-2.4.1.tgz";
              sha1 = "ba982cced205ae5eec387169ac9dc77ca4853d38";
            };
            dependencies = {
              "global@4.3.2" = pkgs."global@4.3.2";
              "is-function@1.0.1" = pkgs."is-function@1.0.1";
              "parse-headers@2.0.1" = pkgs."parse-headers@2.0.1";
              "xtend@4.0.1" = pkgs."xtend@4.0.1";
            };
            seen = [ "xhr@2.4.1" ];
            };
  "xml-char-classes@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "xml-char-classes";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xml-char-classes/-/xml-char-classes-1.0.0.tgz";
              sha1 = "64657848a20ffc5df583a42ad8a277b4512bbc4d";
            };
            dependencies = {};
            seen = [ "xml-char-classes@1.0.0" ];
            };
  "xml-name-validator@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "xml-name-validator";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xml-name-validator/-/xml-name-validator-2.0.1.tgz";
              sha1 = "4d8b8f1eccd3419aa362061becef515e1e559635";
            };
            dependencies = {};
            seen = [ "xml-name-validator@2.0.1" ];
            };
  "xmlbuilder@8.2.2" = nodeEnv.buildYarnPackage {
            packageName = "xmlbuilder";
            version = "8.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-8.2.2.tgz";
              sha1 = "69248673410b4ba42e1a6136551d2922335aa773";
            };
            dependencies = {};
            seen = [ "xmlbuilder@8.2.2" ];
            };
  "xmldom@0.1.27" = nodeEnv.buildYarnPackage {
            packageName = "xmldom";
            version = "0.1.27";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xmldom/-/xmldom-0.1.27.tgz";
              sha1 = "d501f97b3bdb403af8ef9ecc20573187aadac0e9";
            };
            dependencies = {};
            seen = [ "xmldom@0.1.27" ];
            };
  "xss-filters@1.2.7" = nodeEnv.buildYarnPackage {
            packageName = "xss-filters";
            version = "1.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xss-filters/-/xss-filters-1.2.7.tgz";
              sha1 = "59fa1de201f36f2f3470dcac5f58ccc2830b0a9a";
            };
            dependencies = {};
            seen = [ "xss-filters@1.2.7" ];
            };
  "xtend@4.0.1" = nodeEnv.buildYarnPackage {
            packageName = "xtend";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xtend/-/xtend-4.0.1.tgz";
              sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
            };
            dependencies = {};
            seen = [ "xtend@4.0.1" ];
            };
  "y18n@3.2.1" = nodeEnv.buildYarnPackage {
            packageName = "y18n";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/y18n/-/y18n-3.2.1.tgz";
              sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
            };
            dependencies = {};
            seen = [ "y18n@3.2.1" ];
            };
  "yaeti@0.0.6" = nodeEnv.buildYarnPackage {
            packageName = "yaeti";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yaeti/-/yaeti-0.0.6.tgz";
              sha1 = "f26f484d72684cf42bedfb76970aa1608fbf9577";
            };
            dependencies = {};
            seen = [ "yaeti@0.0.6" ];
            };
  "yallist@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "yallist";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yallist/-/yallist-2.0.0.tgz";
              sha1 = "306c543835f09ee1a4cb23b7bce9ab341c91cdd4";
            };
            dependencies = {};
            seen = [ "yallist@2.0.0" ];
            };
  "yargs-parser@5.0.0" = nodeEnv.buildYarnPackage {
            packageName = "yargs-parser";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-5.0.0.tgz";
              sha1 = "275ecf0d7ffe05c77e64e7c86e4cd94bf0e1228a";
            };
            dependencies = {
              "camelcase@3.0.0" = pkgs."camelcase@3.0.0";
            };
            seen = [ "yargs-parser@5.0.0" ];
            };
  "yargs@7.1.0" = nodeEnv.buildYarnPackage {
            packageName = "yargs";
            version = "7.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs/-/yargs-7.1.0.tgz";
              sha1 = "6ba318eb16961727f5d284f8ea003e8d6154d0c8";
            };
            dependencies = {
              "camelcase@3.0.0" = pkgs."camelcase@3.0.0";
              "cliui@3.2.0" = pkgs."cliui@3.2.0";
              "decamelize@1.2.0" = pkgs."decamelize@1.2.0";
              "get-caller-file@1.0.2" = pkgs."get-caller-file@1.0.2";
              "os-locale@1.4.0" = pkgs."os-locale@1.4.0";
              "read-pkg-up@1.0.1" = pkgs."read-pkg-up@1.0.1";
              "require-directory@2.1.1" = pkgs."require-directory@2.1.1";
              "require-main-filename@1.0.1" = pkgs."require-main-filename@1.0.1";
              "set-blocking@2.0.0" = pkgs."set-blocking@2.0.0";
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
              "which-module@1.0.0" = pkgs."which-module@1.0.0";
              "y18n@3.2.1" = pkgs."y18n@3.2.1";
              "yargs-parser@5.0.0" = pkgs."yargs-parser@5.0.0";
            };
            seen = [ "yargs@7.1.0" ];
            };
  "yauzl@2.9.1" = nodeEnv.buildYarnPackage {
            packageName = "yauzl";
            version = "2.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yauzl/-/yauzl-2.9.1.tgz";
              sha1 = "a81981ea70a57946133883f029c5821a89359a7f";
            };
            dependencies = {
              "buffer-crc32@0.2.13" = pkgs."buffer-crc32@0.2.13";
              "fd-slicer@1.0.1" = pkgs."fd-slicer@1.0.1";
            };
            seen = [ "yauzl@2.9.1" ];
            };
  "zip-stream@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "zip-stream";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/zip-stream/-/zip-stream-1.2.0.tgz";
              sha1 = "a8bc45f4c1b49699c6b90198baacaacdbcd4ba04";
            };
            dependencies = {
              "archiver-utils@1.3.0" = pkgs."archiver-utils@1.3.0";
              "compress-commons@1.2.2" = pkgs."compress-commons@1.2.2";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "zip-stream@1.2.0" ];
            };
  "acorn@2.7.0" = nodeEnv.buildYarnPackage {
            packageName = "acorn";
            version = "2.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn/-/acorn-2.7.0.tgz";
              sha1 = "ab6e7d9d886aaca8b085bc3312b79a198433f0e7";
            };
            dependencies = {};
            seen = [ "acorn@2.7.0" ];
            };
  "acorn@3.3.0" = nodeEnv.buildYarnPackage {
            packageName = "acorn";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn/-/acorn-3.3.0.tgz";
              sha1 = "45e37fb39e8da3f25baee3ff5369e2bb5f22017a";
            };
            dependencies = {};
            seen = [ "acorn@3.3.0" ];
            };
  "ajv@4.10.4" = nodeEnv.buildYarnPackage {
            packageName = "ajv";
            version = "4.10.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ajv/-/ajv-4.10.4.tgz";
              sha1 = "c0974dd00b3464984892d6010aa9c2c945933254";
            };
            dependencies = {
              "co@4.6.0" = pkgs."co@4.6.0";
              "json-stable-stringify@1.0.1" = pkgs."json-stable-stringify@1.0.1";
            };
            seen = [ "ajv@4.10.4" ];
            };
  "ansi-escapes@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "ansi-escapes";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-1.4.0.tgz";
              sha1 = "d3a8a83b319aa67793662b13e761c7911422306e";
            };
            dependencies = {};
            seen = [ "ansi-escapes@1.4.0" ];
            };
  "ansi-html@0.0.6" = nodeEnv.buildYarnPackage {
            packageName = "ansi-html";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-html/-/ansi-html-0.0.6.tgz";
              sha1 = "bda8e33dd2ee1c20f54c08eb405713cbfc0ed80e";
            };
            dependencies = {};
            seen = [ "ansi-html@0.0.6" ];
            };
  "ansi-regex@0.2.1" = nodeEnv.buildYarnPackage {
            packageName = "ansi-regex";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-0.2.1.tgz";
              sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
            };
            dependencies = {};
            seen = [ "ansi-regex@0.2.1" ];
            };
  "ansi-regex@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "ansi-regex";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-2.0.0.tgz";
              sha1 = "c5061b6e0ef8a81775e50f5d66151bf6bf371107";
            };
            dependencies = {};
            seen = [ "ansi-regex@2.0.0" ];
            };
  "ansi-styles@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "ansi-styles";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-1.1.0.tgz";
              sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
            };
            dependencies = {};
            seen = [ "ansi-styles@1.1.0" ];
            };
  "ansi-styles@2.2.1" = nodeEnv.buildYarnPackage {
            packageName = "ansi-styles";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.2.1.tgz";
              sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
            };
            dependencies = {};
            seen = [ "ansi-styles@2.2.1" ];
            };
  "asar@0.13.1" = nodeEnv.buildYarnPackage {
            packageName = "asar";
            version = "0.13.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asar/-/asar-0.13.1.tgz";
              sha1 = "dfc73f574a7db256b09ba62d1f0e95cd4a6cb8d3";
            };
            dependencies = {
              "chromium-pickle-js@0.2.0" = pkgs."chromium-pickle-js@0.2.0";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "cuint@0.2.2" = pkgs."cuint@0.2.2";
              "glob@6.0.4" = pkgs."glob@6.0.4";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "mksnapshot@0.3.0" = pkgs."mksnapshot@0.3.0";
              "tmp@0.0.28" = pkgs."tmp@0.0.28";
            };
            seen = [ "asar@0.13.1" ];
            };
  "asn1@0.1.11" = nodeEnv.buildYarnPackage {
            packageName = "asn1";
            version = "0.1.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asn1/-/asn1-0.1.11.tgz";
              sha1 = "559be18376d08a4ec4dbe80877d27818639b2df7";
            };
            dependencies = {};
            seen = [ "asn1@0.1.11" ];
            };
  "assert-plus@0.1.5" = nodeEnv.buildYarnPackage {
            packageName = "assert-plus";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-0.1.5.tgz";
              sha1 = "ee74009413002d84cec7219c6ac811812e723160";
            };
            dependencies = {};
            seen = [ "assert-plus@0.1.5" ];
            };
  "assert-plus@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "assert-plus";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-0.2.0.tgz";
              sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
            };
            dependencies = {};
            seen = [ "assert-plus@0.2.0" ];
            };
  "ast-types@0.9.2" = nodeEnv.buildYarnPackage {
            packageName = "ast-types";
            version = "0.9.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ast-types/-/ast-types-0.9.2.tgz";
              sha1 = "2cc19979d15c655108bf565323b8e7ee38751f6b";
            };
            dependencies = {};
            seen = [ "ast-types@0.9.2" ];
            };
  "async@1.5.0" = nodeEnv.buildYarnPackage {
            packageName = "async";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-1.5.0.tgz";
              sha1 = "2796642723573859565633fc6274444bee2f8ce3";
            };
            dependencies = {};
            seen = [ "async@1.5.0" ];
            };
  "async@0.9.2" = nodeEnv.buildYarnPackage {
            packageName = "async";
            version = "0.9.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-0.9.2.tgz";
              sha1 = "aea74d5e61c1f899613bf64bda66d4c78f2fd17d";
            };
            dependencies = {};
            seen = [ "async@0.9.2" ];
            };
  "async@1.5.2" = nodeEnv.buildYarnPackage {
            packageName = "async";
            version = "1.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-1.5.2.tgz";
              sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
            };
            dependencies = {};
            seen = [ "async@1.5.2" ];
            };
  "async@2.1.4" = nodeEnv.buildYarnPackage {
            packageName = "async";
            version = "2.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-2.1.4.tgz";
              sha1 = "2d2160c7788032e4dd6cbe2502f1f9a2c8f6cde4";
            };
            dependencies = {
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "async@2.1.4" ];
            };
  "async@0.2.10" = nodeEnv.buildYarnPackage {
            packageName = "async";
            version = "0.2.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-0.2.10.tgz";
              sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
            };
            dependencies = {};
            seen = [ "async@0.2.10" ];
            };
  "async@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "async";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-1.0.0.tgz";
              sha1 = "f8fc04ca3a13784ade9e1641af98578cfbd647a9";
            };
            dependencies = {};
            seen = [ "async@1.0.0" ];
            };
  "aws-sign2@0.5.0" = nodeEnv.buildYarnPackage {
            packageName = "aws-sign2";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.5.0.tgz";
              sha1 = "c57103f7a17fc037f02d7c2e64b602ea223f7d63";
            };
            dependencies = {};
            seen = [ "aws-sign2@0.5.0" ];
            };
  "aws-sign2@0.6.0" = nodeEnv.buildYarnPackage {
            packageName = "aws-sign2";
            version = "0.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.6.0.tgz";
              sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
            };
            dependencies = {};
            seen = [ "aws-sign2@0.6.0" ];
            };
  "aws4@1.5.0" = nodeEnv.buildYarnPackage {
            packageName = "aws4";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws4/-/aws4-1.5.0.tgz";
              sha1 = "0a29ffb79c31c9e712eeb087e8e7a64b4a56d755";
            };
            dependencies = {};
            seen = [ "aws4@1.5.0" ];
            };
  "babel-code-frame@6.20.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-code-frame";
            version = "6.20.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-code-frame/-/babel-code-frame-6.20.0.tgz";
              sha1 = "b968f839090f9a8bc6d41938fb96cb84f7387b26";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "js-tokens@2.0.0" = pkgs."js-tokens@2.0.0";
            };
            seen = [ "babel-code-frame@6.20.0" ];
            };
  "babel-core@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-core";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-core/-/babel-core-6.21.0.tgz";
              sha1 = "75525480c21c803f826ef3867d22c19f080a3724";
            };
            dependencies = {
              "babel-code-frame@6.20.0" = pkgs."babel-code-frame@6.20.0";
              "babel-generator@6.21.0" = pkgs."babel-generator@6.21.0";
              "babel-helpers@6.16.0" = pkgs."babel-helpers@6.16.0";
              "babel-messages@6.8.0" = pkgs."babel-messages@6.8.0";
              "babel-register@6.18.0" = pkgs."babel-register@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "babylon@6.14.1" = pkgs."babylon@6.14.1";
              "convert-source-map@1.3.0" = pkgs."convert-source-map@1.3.0";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "json5@0.5.1" = pkgs."json5@0.5.1";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "private@0.1.6" = pkgs."private@0.1.6";
              "slash@1.0.0" = pkgs."slash@1.0.0";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "babel-core@6.21.0" ];
            };
  "babel-core@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-core";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-core/-/babel-core-6.26.0.tgz";
              sha1 = "af32f78b31a6fcef119c87b0fd8d9753f03a0bb8";
            };
            dependencies = {
              "babel-code-frame@6.26.0" = pkgs."babel-code-frame@6.26.0";
              "babel-generator@6.26.1" = pkgs."babel-generator@6.26.1";
              "babel-helpers@6.24.1" = pkgs."babel-helpers@6.24.1";
              "babel-messages@6.23.0" = pkgs."babel-messages@6.23.0";
              "babel-register@6.26.0" = pkgs."babel-register@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "babel-template@6.26.0" = pkgs."babel-template@6.26.0";
              "babel-traverse@6.26.0" = pkgs."babel-traverse@6.26.0";
              "babel-types@6.26.0" = pkgs."babel-types@6.26.0";
              "babylon@6.18.0" = pkgs."babylon@6.18.0";
              "convert-source-map@1.5.1" = pkgs."convert-source-map@1.5.1";
              "debug@2.6.9" = pkgs."debug@2.6.9";
              "json5@0.5.1" = pkgs."json5@0.5.1";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
              "minimatch@3.0.4" = pkgs."minimatch@3.0.4";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "private@0.1.8" = pkgs."private@0.1.8";
              "slash@1.0.0" = pkgs."slash@1.0.0";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "babel-core@6.26.0" ];
            };
  "babel-generator@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-generator";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-generator/-/babel-generator-6.21.0.tgz";
              sha1 = "605f1269c489a1c75deeca7ea16d43d4656c8494";
            };
            dependencies = {
              "babel-messages@6.8.0" = pkgs."babel-messages@6.8.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "detect-indent@4.0.0" = pkgs."detect-indent@4.0.0";
              "jsesc@1.3.0" = pkgs."jsesc@1.3.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "babel-generator@6.21.0" ];
            };
  "babel-helper-bindify-decorators@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-bindify-decorators";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-bindify-decorators/-/babel-helper-bindify-decorators-6.18.0.tgz";
              sha1 = "fc00c573676a6e702fffa00019580892ec8780a5";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-bindify-decorators@6.18.0" ];
            };
  "babel-helper-builder-binary-assignment-operator-visitor@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-builder-binary-assignment-operator-visitor";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-builder-binary-assignment-operator-visitor/-/babel-helper-builder-binary-assignment-operator-visitor-6.18.0.tgz";
              sha1 = "8ae814989f7a53682152e3401a04fabd0bb333a6";
            };
            dependencies = {
              "babel-helper-explode-assignable-expression@6.18.0" = pkgs."babel-helper-explode-assignable-expression@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-builder-binary-assignment-operator-visitor@6.18.0" ];
            };
  "babel-helper-builder-react-jsx@6.21.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-builder-react-jsx";
            version = "6.21.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-builder-react-jsx/-/babel-helper-builder-react-jsx-6.21.1.tgz";
              sha1 = "c4a24208655be9dc1cccf14d366da176f20645e4";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-helper-builder-react-jsx@6.21.1" ];
            };
  "babel-helper-call-delegate@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-call-delegate";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-call-delegate/-/babel-helper-call-delegate-6.18.0.tgz";
              sha1 = "05b14aafa430884b034097ef29e9f067ea4133bd";
            };
            dependencies = {
              "babel-helper-hoist-variables@6.18.0" = pkgs."babel-helper-hoist-variables@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-call-delegate@6.18.0" ];
            };
  "babel-helper-define-map@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-define-map";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-define-map/-/babel-helper-define-map-6.18.0.tgz";
              sha1 = "8d6c85dc7fbb4c19be3de40474d18e97c3676ec2";
            };
            dependencies = {
              "babel-helper-function-name@6.18.0" = pkgs."babel-helper-function-name@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-helper-define-map@6.18.0" ];
            };
  "babel-helper-explode-assignable-expression@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-explode-assignable-expression";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-explode-assignable-expression/-/babel-helper-explode-assignable-expression-6.18.0.tgz";
              sha1 = "14b8e8c2d03ad735d4b20f1840b24cd1f65239fe";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-explode-assignable-expression@6.18.0" ];
            };
  "babel-helper-explode-class@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-explode-class";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-explode-class/-/babel-helper-explode-class-6.18.0.tgz";
              sha1 = "c44f76f4fa23b9c5d607cbac5d4115e7a76f62cb";
            };
            dependencies = {
              "babel-helper-bindify-decorators@6.18.0" = pkgs."babel-helper-bindify-decorators@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-explode-class@6.18.0" ];
            };
  "babel-helper-function-name@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-function-name";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-function-name/-/babel-helper-function-name-6.18.0.tgz";
              sha1 = "68ec71aeba1f3e28b2a6f0730190b754a9bf30e6";
            };
            dependencies = {
              "babel-helper-get-function-arity@6.18.0" = pkgs."babel-helper-get-function-arity@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-function-name@6.18.0" ];
            };
  "babel-helper-get-function-arity@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-get-function-arity";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-get-function-arity/-/babel-helper-get-function-arity-6.18.0.tgz";
              sha1 = "a5b19695fd3f9cdfc328398b47dafcd7094f9f24";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-get-function-arity@6.18.0" ];
            };
  "babel-helper-hoist-variables@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-hoist-variables";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-hoist-variables/-/babel-helper-hoist-variables-6.18.0.tgz";
              sha1 = "a835b5ab8b46d6de9babefae4d98ea41e866b82a";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-hoist-variables@6.18.0" ];
            };
  "babel-helper-optimise-call-expression@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-optimise-call-expression";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-optimise-call-expression/-/babel-helper-optimise-call-expression-6.18.0.tgz";
              sha1 = "9261d0299ee1a4f08a6dd28b7b7c777348fd8f0f";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-optimise-call-expression@6.18.0" ];
            };
  "babel-helper-regex@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-regex";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-regex/-/babel-helper-regex-6.18.0.tgz";
              sha1 = "ae0ebfd77de86cb2f1af258e2cc20b5fe893ecc6";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-helper-regex@6.18.0" ];
            };
  "babel-helper-remap-async-to-generator@6.20.3" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-remap-async-to-generator";
            version = "6.20.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-remap-async-to-generator/-/babel-helper-remap-async-to-generator-6.20.3.tgz";
              sha1 = "9dd3b396f13e35ef63e538098500adc24c63c4e7";
            };
            dependencies = {
              "babel-helper-function-name@6.18.0" = pkgs."babel-helper-function-name@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-remap-async-to-generator@6.20.3" ];
            };
  "babel-helper-replace-supers@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helper-replace-supers";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-replace-supers/-/babel-helper-replace-supers-6.18.0.tgz";
              sha1 = "28ec69877be4144dbd64f4cc3a337e89f29a924e";
            };
            dependencies = {
              "babel-helper-optimise-call-expression@6.18.0" = pkgs."babel-helper-optimise-call-expression@6.18.0";
              "babel-messages@6.8.0" = pkgs."babel-messages@6.8.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-helper-replace-supers@6.18.0" ];
            };
  "babel-helpers@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-helpers";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helpers/-/babel-helpers-6.16.0.tgz";
              sha1 = "1095ec10d99279460553e67eb3eee9973d3867e3";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-helpers@6.16.0" ];
            };
  "babel-loader@6.2.10" = nodeEnv.buildYarnPackage {
            packageName = "babel-loader";
            version = "6.2.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-loader/-/babel-loader-6.2.10.tgz";
              sha1 = "adefc2b242320cd5d15e65b31cea0e8b1b02d4b0";
            };
            dependencies = {
              "find-cache-dir@0.1.1" = pkgs."find-cache-dir@0.1.1";
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "babel-loader@6.2.10" ];
            };
  "babel-messages@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-messages";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-messages/-/babel-messages-6.8.0.tgz";
              sha1 = "bf504736ca967e6d65ef0adb5a2a5f947c8e0eb9";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-messages@6.8.0" ];
            };
  "babel-plugin-check-es2015-constants@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-check-es2015-constants";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-check-es2015-constants/-/babel-plugin-check-es2015-constants-6.8.0.tgz";
              sha1 = "dbf024c32ed37bfda8dee1e76da02386a8d26fe7";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-check-es2015-constants@6.8.0" ];
            };
  "babel-plugin-syntax-trailing-function-commas@6.20.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-syntax-trailing-function-commas";
            version = "6.20.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-trailing-function-commas/-/babel-plugin-syntax-trailing-function-commas-6.20.0.tgz";
              sha1 = "442835e19179f45b87e92d477d70b9f1f18b5c4f";
            };
            dependencies = {};
            seen = [ "babel-plugin-syntax-trailing-function-commas@6.20.0" ];
            };
  "babel-plugin-transform-async-generator-functions@6.17.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-async-generator-functions";
            version = "6.17.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-generator-functions/-/babel-plugin-transform-async-generator-functions-6.17.0.tgz";
              sha1 = "d0b5a2b2f0940f2b245fa20a00519ed7bc6cae54";
            };
            dependencies = {
              "babel-helper-remap-async-to-generator@6.20.3" = pkgs."babel-helper-remap-async-to-generator@6.20.3";
              "babel-plugin-syntax-async-generators@6.13.0" = pkgs."babel-plugin-syntax-async-generators@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-async-generator-functions@6.17.0" ];
            };
  "babel-plugin-transform-async-to-generator@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-async-to-generator";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-to-generator/-/babel-plugin-transform-async-to-generator-6.16.0.tgz";
              sha1 = "19ec36cb1486b59f9f468adfa42ce13908ca2999";
            };
            dependencies = {
              "babel-helper-remap-async-to-generator@6.20.3" = pkgs."babel-helper-remap-async-to-generator@6.20.3";
              "babel-plugin-syntax-async-functions@6.13.0" = pkgs."babel-plugin-syntax-async-functions@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-async-to-generator@6.16.0" ];
            };
  "babel-plugin-transform-async-to-generator@6.24.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-async-to-generator";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-to-generator/-/babel-plugin-transform-async-to-generator-6.24.1.tgz";
              sha1 = "6536e378aff6cb1d5517ac0e40eb3e9fc8d08761";
            };
            dependencies = {
              "babel-helper-remap-async-to-generator@6.24.1" = pkgs."babel-helper-remap-async-to-generator@6.24.1";
              "babel-plugin-syntax-async-functions@6.13.0" = pkgs."babel-plugin-syntax-async-functions@6.13.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
            };
            seen = [ "babel-plugin-transform-async-to-generator@6.24.1" ];
            };
  "babel-plugin-transform-class-constructor-call@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-class-constructor-call";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-class-constructor-call/-/babel-plugin-transform-class-constructor-call-6.18.0.tgz";
              sha1 = "80855e38a1ab47b8c6c647f8ea1bcd2c00ca3aae";
            };
            dependencies = {
              "babel-plugin-syntax-class-constructor-call@6.18.0" = pkgs."babel-plugin-syntax-class-constructor-call@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-plugin-transform-class-constructor-call@6.18.0" ];
            };
  "babel-plugin-transform-class-properties@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-class-properties";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-class-properties/-/babel-plugin-transform-class-properties-6.16.0.tgz";
              sha1 = "969bca24d34e401d214f36b8af5c1346859bc904";
            };
            dependencies = {
              "babel-helper-function-name@6.18.0" = pkgs."babel-helper-function-name@6.18.0";
              "babel-plugin-syntax-class-properties@6.13.0" = pkgs."babel-plugin-syntax-class-properties@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-class-properties@6.16.0" ];
            };
  "babel-plugin-transform-class-properties@6.19.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-class-properties";
            version = "6.19.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-class-properties/-/babel-plugin-transform-class-properties-6.19.0.tgz";
              sha1 = "1274b349abaadc835164e2004f4a2444a2788d5f";
            };
            dependencies = {
              "babel-helper-function-name@6.18.0" = pkgs."babel-helper-function-name@6.18.0";
              "babel-plugin-syntax-class-properties@6.13.0" = pkgs."babel-plugin-syntax-class-properties@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-plugin-transform-class-properties@6.19.0" ];
            };
  "babel-plugin-transform-decorators@6.13.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-decorators";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-decorators/-/babel-plugin-transform-decorators-6.13.0.tgz";
              sha1 = "82d65c1470ae83e2d13eebecb0a1c2476d62da9d";
            };
            dependencies = {
              "babel-helper-define-map@6.18.0" = pkgs."babel-helper-define-map@6.18.0";
              "babel-helper-explode-class@6.18.0" = pkgs."babel-helper-explode-class@6.18.0";
              "babel-plugin-syntax-decorators@6.13.0" = pkgs."babel-plugin-syntax-decorators@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-decorators@6.13.0" ];
            };
  "babel-plugin-transform-do-expressions@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-do-expressions";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-do-expressions/-/babel-plugin-transform-do-expressions-6.8.0.tgz";
              sha1 = "fda692af339835cc255bb7544efb8f7c1306c273";
            };
            dependencies = {
              "babel-plugin-syntax-do-expressions@6.13.0" = pkgs."babel-plugin-syntax-do-expressions@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-do-expressions@6.8.0" ];
            };
  "babel-plugin-transform-es2015-arrow-functions@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-arrow-functions";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-arrow-functions/-/babel-plugin-transform-es2015-arrow-functions-6.8.0.tgz";
              sha1 = "5b63afc3181bdc9a8c4d481b5a4f3f7d7fef3d9d";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-arrow-functions@6.8.0" ];
            };
  "babel-plugin-transform-es2015-block-scoped-functions@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-block-scoped-functions";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-block-scoped-functions/-/babel-plugin-transform-es2015-block-scoped-functions-6.8.0.tgz";
              sha1 = "ed95d629c4b5a71ae29682b998f70d9833eb366d";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-block-scoped-functions@6.8.0" ];
            };
  "babel-plugin-transform-es2015-block-scoping@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-block-scoping";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-block-scoping/-/babel-plugin-transform-es2015-block-scoping-6.21.0.tgz";
              sha1 = "e840687f922e70fb2c42bb13501838c174a115ed";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-plugin-transform-es2015-block-scoping@6.21.0" ];
            };
  "babel-plugin-transform-es2015-classes@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-classes";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-classes/-/babel-plugin-transform-es2015-classes-6.18.0.tgz";
              sha1 = "ffe7a17321bf83e494dcda0ae3fc72df48ffd1d9";
            };
            dependencies = {
              "babel-helper-define-map@6.18.0" = pkgs."babel-helper-define-map@6.18.0";
              "babel-helper-function-name@6.18.0" = pkgs."babel-helper-function-name@6.18.0";
              "babel-helper-optimise-call-expression@6.18.0" = pkgs."babel-helper-optimise-call-expression@6.18.0";
              "babel-helper-replace-supers@6.18.0" = pkgs."babel-helper-replace-supers@6.18.0";
              "babel-messages@6.8.0" = pkgs."babel-messages@6.8.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-classes@6.18.0" ];
            };
  "babel-plugin-transform-es2015-computed-properties@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-computed-properties";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-computed-properties/-/babel-plugin-transform-es2015-computed-properties-6.8.0.tgz";
              sha1 = "f51010fd61b3bd7b6b60a5fdfd307bb7a5279870";
            };
            dependencies = {
              "babel-helper-define-map@6.18.0" = pkgs."babel-helper-define-map@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-plugin-transform-es2015-computed-properties@6.8.0" ];
            };
  "babel-plugin-transform-es2015-destructuring@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-destructuring";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.16.0.tgz";
              sha1 = "050fe0866f5d53b36062ee10cdf5bfe64f929627";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-destructuring@6.16.0" ];
            };
  "babel-plugin-transform-es2015-destructuring@6.19.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-destructuring";
            version = "6.19.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.19.0.tgz";
              sha1 = "ff1d911c4b3f4cab621bd66702a869acd1900533";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-destructuring@6.19.0" ];
            };
  "babel-plugin-transform-es2015-duplicate-keys@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-duplicate-keys";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-duplicate-keys/-/babel-plugin-transform-es2015-duplicate-keys-6.8.0.tgz";
              sha1 = "fd8f7f7171fc108cc1c70c3164b9f15a81c25f7d";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-duplicate-keys@6.8.0" ];
            };
  "babel-plugin-transform-es2015-for-of@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-for-of";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-for-of/-/babel-plugin-transform-es2015-for-of-6.18.0.tgz";
              sha1 = "4c517504db64bf8cfc119a6b8f177211f2028a70";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-for-of@6.18.0" ];
            };
  "babel-plugin-transform-es2015-function-name@6.9.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-function-name";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-function-name/-/babel-plugin-transform-es2015-function-name-6.9.0.tgz";
              sha1 = "8c135b17dbd064e5bba56ec511baaee2fca82719";
            };
            dependencies = {
              "babel-helper-function-name@6.18.0" = pkgs."babel-helper-function-name@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-function-name@6.9.0" ];
            };
  "babel-plugin-transform-es2015-literals@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-literals";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-literals/-/babel-plugin-transform-es2015-literals-6.8.0.tgz";
              sha1 = "50aa2e5c7958fc2ab25d74ec117e0cc98f046468";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-literals@6.8.0" ];
            };
  "babel-plugin-transform-es2015-modules-amd@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-amd";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-amd/-/babel-plugin-transform-es2015-modules-amd-6.18.0.tgz";
              sha1 = "49a054cbb762bdf9ae2d8a807076cfade6141e40";
            };
            dependencies = {
              "babel-plugin-transform-es2015-modules-commonjs@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-commonjs@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-amd@6.18.0" ];
            };
  "babel-plugin-transform-es2015-modules-commonjs@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-commonjs";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-commonjs/-/babel-plugin-transform-es2015-modules-commonjs-6.18.0.tgz";
              sha1 = "c15ae5bb11b32a0abdcc98a5837baa4ee8d67bcc";
            };
            dependencies = {
              "babel-plugin-transform-strict-mode@6.18.0" = pkgs."babel-plugin-transform-strict-mode@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-commonjs@6.18.0" ];
            };
  "babel-plugin-transform-es2015-modules-systemjs@6.19.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-systemjs";
            version = "6.19.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-systemjs/-/babel-plugin-transform-es2015-modules-systemjs-6.19.0.tgz";
              sha1 = "50438136eba74527efa00a5b0fefaf1dc4071da6";
            };
            dependencies = {
              "babel-helper-hoist-variables@6.18.0" = pkgs."babel-helper-hoist-variables@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-systemjs@6.19.0" ];
            };
  "babel-plugin-transform-es2015-modules-umd@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-modules-umd";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-umd/-/babel-plugin-transform-es2015-modules-umd-6.18.0.tgz";
              sha1 = "23351770ece5c1f8e83ed67cb1d7992884491e50";
            };
            dependencies = {
              "babel-plugin-transform-es2015-modules-amd@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-amd@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
            };
            seen = [ "babel-plugin-transform-es2015-modules-umd@6.18.0" ];
            };
  "babel-plugin-transform-es2015-object-super@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-object-super";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-object-super/-/babel-plugin-transform-es2015-object-super-6.8.0.tgz";
              sha1 = "1b858740a5a4400887c23dcff6f4d56eea4a24c5";
            };
            dependencies = {
              "babel-helper-replace-supers@6.18.0" = pkgs."babel-helper-replace-supers@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-object-super@6.8.0" ];
            };
  "babel-plugin-transform-es2015-parameters@6.17.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-parameters";
            version = "6.17.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.17.0.tgz";
              sha1 = "e06d30cef897f46adb4734707bbe128a0d427d58";
            };
            dependencies = {
              "babel-helper-call-delegate@6.18.0" = pkgs."babel-helper-call-delegate@6.18.0";
              "babel-helper-get-function-arity@6.18.0" = pkgs."babel-helper-get-function-arity@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-parameters@6.17.0" ];
            };
  "babel-plugin-transform-es2015-parameters@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-parameters";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.21.0.tgz";
              sha1 = "46a655e6864ef984091448cdf024d87b60b2a7d8";
            };
            dependencies = {
              "babel-helper-call-delegate@6.18.0" = pkgs."babel-helper-call-delegate@6.18.0";
              "babel-helper-get-function-arity@6.18.0" = pkgs."babel-helper-get-function-arity@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-template@6.16.0" = pkgs."babel-template@6.16.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-parameters@6.21.0" ];
            };
  "babel-plugin-transform-es2015-shorthand-properties@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-shorthand-properties";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-shorthand-properties/-/babel-plugin-transform-es2015-shorthand-properties-6.18.0.tgz";
              sha1 = "e2ede3b7df47bf980151926534d1dd0cbea58f43";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-shorthand-properties@6.18.0" ];
            };
  "babel-plugin-transform-es2015-spread@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-spread";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-spread/-/babel-plugin-transform-es2015-spread-6.8.0.tgz";
              sha1 = "0217f737e3b821fa5a669f187c6ed59205f05e9c";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-spread@6.8.0" ];
            };
  "babel-plugin-transform-es2015-sticky-regex@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-sticky-regex";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-sticky-regex/-/babel-plugin-transform-es2015-sticky-regex-6.8.0.tgz";
              sha1 = "e73d300a440a35d5c64f5c2a344dc236e3df47be";
            };
            dependencies = {
              "babel-helper-regex@6.18.0" = pkgs."babel-helper-regex@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-es2015-sticky-regex@6.8.0" ];
            };
  "babel-plugin-transform-es2015-template-literals@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-template-literals";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-template-literals/-/babel-plugin-transform-es2015-template-literals-6.8.0.tgz";
              sha1 = "86eb876d0a2c635da4ec048b4f7de9dfc897e66b";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-template-literals@6.8.0" ];
            };
  "babel-plugin-transform-es2015-typeof-symbol@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-typeof-symbol";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-typeof-symbol/-/babel-plugin-transform-es2015-typeof-symbol-6.18.0.tgz";
              sha1 = "0b14c48629c90ff47a0650077f6aa699bee35798";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-es2015-typeof-symbol@6.18.0" ];
            };
  "babel-plugin-transform-es2015-unicode-regex@6.11.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-es2015-unicode-regex";
            version = "6.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-unicode-regex/-/babel-plugin-transform-es2015-unicode-regex-6.11.0.tgz";
              sha1 = "6298ceabaad88d50a3f4f392d8de997260f6ef2c";
            };
            dependencies = {
              "babel-helper-regex@6.18.0" = pkgs."babel-helper-regex@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "regexpu-core@2.0.0" = pkgs."regexpu-core@2.0.0";
            };
            seen = [ "babel-plugin-transform-es2015-unicode-regex@6.11.0" ];
            };
  "babel-plugin-transform-exponentiation-operator@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-exponentiation-operator";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-exponentiation-operator/-/babel-plugin-transform-exponentiation-operator-6.8.0.tgz";
              sha1 = "db25742e9339eade676ca9acec46f955599a68a4";
            };
            dependencies = {
              "babel-helper-builder-binary-assignment-operator-visitor@6.18.0" = pkgs."babel-helper-builder-binary-assignment-operator-visitor@6.18.0";
              "babel-plugin-syntax-exponentiation-operator@6.13.0" = pkgs."babel-plugin-syntax-exponentiation-operator@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-exponentiation-operator@6.8.0" ];
            };
  "babel-plugin-transform-export-extensions@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-export-extensions";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-export-extensions/-/babel-plugin-transform-export-extensions-6.8.0.tgz";
              sha1 = "fa80ff655b636549431bfd38f6b817bd82e47f5b";
            };
            dependencies = {
              "babel-plugin-syntax-export-extensions@6.13.0" = pkgs."babel-plugin-syntax-export-extensions@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-export-extensions@6.8.0" ];
            };
  "babel-plugin-transform-flow-strip-types@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-flow-strip-types";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-flow-strip-types/-/babel-plugin-transform-flow-strip-types-6.21.0.tgz";
              sha1 = "2eea3f8b5bb234339b47283feac155cfb237b948";
            };
            dependencies = {
              "babel-plugin-syntax-flow@6.18.0" = pkgs."babel-plugin-syntax-flow@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-flow-strip-types@6.21.0" ];
            };
  "babel-plugin-transform-function-bind@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-function-bind";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-function-bind/-/babel-plugin-transform-function-bind-6.8.0.tgz";
              sha1 = "e7f334ce69f50d28fe850a822eaaab9fa4f4d821";
            };
            dependencies = {
              "babel-plugin-syntax-function-bind@6.13.0" = pkgs."babel-plugin-syntax-function-bind@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-function-bind@6.8.0" ];
            };
  "babel-plugin-transform-object-rest-spread@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-object-rest-spread";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-object-rest-spread/-/babel-plugin-transform-object-rest-spread-6.16.0.tgz";
              sha1 = "db441d56fffc1999052fdebe2e2f25ebd28e36a9";
            };
            dependencies = {
              "babel-plugin-syntax-object-rest-spread@6.13.0" = pkgs."babel-plugin-syntax-object-rest-spread@6.13.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-object-rest-spread@6.16.0" ];
            };
  "babel-plugin-transform-react-display-name@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-display-name";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-display-name/-/babel-plugin-transform-react-display-name-6.8.0.tgz";
              sha1 = "f7a084977383d728bdbdc2835bba0159577f660e";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-react-display-name@6.8.0" ];
            };
  "babel-plugin-transform-react-jsx-self@6.11.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-jsx-self";
            version = "6.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx-self/-/babel-plugin-transform-react-jsx-self-6.11.0.tgz";
              sha1 = "605c9450c1429f97a930f7e1dfe3f0d9d0dbd0f4";
            };
            dependencies = {
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-react-jsx-self@6.11.0" ];
            };
  "babel-plugin-transform-react-jsx-source@6.9.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-jsx-source";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx-source/-/babel-plugin-transform-react-jsx-source-6.9.0.tgz";
              sha1 = "af684a05c2067a86e0957d4f343295ccf5dccf00";
            };
            dependencies = {
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-react-jsx-source@6.9.0" ];
            };
  "babel-plugin-transform-react-jsx@6.8.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-react-jsx";
            version = "6.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx/-/babel-plugin-transform-react-jsx-6.8.0.tgz";
              sha1 = "94759942f70af18c617189aa7f3593f1644a71ab";
            };
            dependencies = {
              "babel-helper-builder-react-jsx@6.21.1" = pkgs."babel-helper-builder-react-jsx@6.21.1";
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-react-jsx@6.8.0" ];
            };
  "babel-plugin-transform-regenerator@6.16.1" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-regenerator";
            version = "6.16.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-regenerator/-/babel-plugin-transform-regenerator-6.16.1.tgz";
              sha1 = "a75de6b048a14154aae14b0122756c5bed392f59";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "private@0.1.6" = pkgs."private@0.1.6";
            };
            seen = [ "babel-plugin-transform-regenerator@6.16.1" ];
            };
  "babel-plugin-transform-regenerator@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-regenerator";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-regenerator/-/babel-plugin-transform-regenerator-6.21.0.tgz";
              sha1 = "75d0c7e7f84f379358f508451c68a2c5fa5a9703";
            };
            dependencies = {
              "regenerator-transform@0.9.8" = pkgs."regenerator-transform@0.9.8";
            };
            seen = [ "babel-plugin-transform-regenerator@6.21.0" ];
            };
  "babel-plugin-transform-runtime@6.15.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-runtime";
            version = "6.15.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-runtime/-/babel-plugin-transform-runtime-6.15.0.tgz";
              sha1 = "3d75b4d949ad81af157570273846fb59aeb0d57c";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "babel-plugin-transform-runtime@6.15.0" ];
            };
  "babel-plugin-transform-strict-mode@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-plugin-transform-strict-mode";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-strict-mode/-/babel-plugin-transform-strict-mode-6.18.0.tgz";
              sha1 = "df7cf2991fe046f44163dcd110d5ca43bc652b9d";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
            };
            seen = [ "babel-plugin-transform-strict-mode@6.18.0" ];
            };
  "babel-polyfill@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-polyfill";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-polyfill/-/babel-polyfill-6.26.0.tgz";
              sha1 = "379937abc67d7895970adc621f284cd966cf2153";
            };
            dependencies = {
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "core-js@2.5.3" = pkgs."core-js@2.5.3";
              "regenerator-runtime@0.10.5" = pkgs."regenerator-runtime@0.10.5";
            };
            seen = [ "babel-polyfill@6.26.0" ];
            };
  "babel-preset-es2015@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-es2015";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-es2015/-/babel-preset-es2015-6.18.0.tgz";
              sha1 = "b8c70df84ec948c43dcf2bf770e988eb7da88312";
            };
            dependencies = {
              "babel-plugin-check-es2015-constants@6.8.0" = pkgs."babel-plugin-check-es2015-constants@6.8.0";
              "babel-plugin-transform-es2015-arrow-functions@6.8.0" = pkgs."babel-plugin-transform-es2015-arrow-functions@6.8.0";
              "babel-plugin-transform-es2015-block-scoped-functions@6.8.0" = pkgs."babel-plugin-transform-es2015-block-scoped-functions@6.8.0";
              "babel-plugin-transform-es2015-block-scoping@6.21.0" = pkgs."babel-plugin-transform-es2015-block-scoping@6.21.0";
              "babel-plugin-transform-es2015-classes@6.18.0" = pkgs."babel-plugin-transform-es2015-classes@6.18.0";
              "babel-plugin-transform-es2015-computed-properties@6.8.0" = pkgs."babel-plugin-transform-es2015-computed-properties@6.8.0";
              "babel-plugin-transform-es2015-destructuring@6.19.0" = pkgs."babel-plugin-transform-es2015-destructuring@6.19.0";
              "babel-plugin-transform-es2015-duplicate-keys@6.8.0" = pkgs."babel-plugin-transform-es2015-duplicate-keys@6.8.0";
              "babel-plugin-transform-es2015-for-of@6.18.0" = pkgs."babel-plugin-transform-es2015-for-of@6.18.0";
              "babel-plugin-transform-es2015-function-name@6.9.0" = pkgs."babel-plugin-transform-es2015-function-name@6.9.0";
              "babel-plugin-transform-es2015-literals@6.8.0" = pkgs."babel-plugin-transform-es2015-literals@6.8.0";
              "babel-plugin-transform-es2015-modules-amd@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-amd@6.18.0";
              "babel-plugin-transform-es2015-modules-commonjs@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-commonjs@6.18.0";
              "babel-plugin-transform-es2015-modules-systemjs@6.19.0" = pkgs."babel-plugin-transform-es2015-modules-systemjs@6.19.0";
              "babel-plugin-transform-es2015-modules-umd@6.18.0" = pkgs."babel-plugin-transform-es2015-modules-umd@6.18.0";
              "babel-plugin-transform-es2015-object-super@6.8.0" = pkgs."babel-plugin-transform-es2015-object-super@6.8.0";
              "babel-plugin-transform-es2015-parameters@6.21.0" = pkgs."babel-plugin-transform-es2015-parameters@6.21.0";
              "babel-plugin-transform-es2015-shorthand-properties@6.18.0" = pkgs."babel-plugin-transform-es2015-shorthand-properties@6.18.0";
              "babel-plugin-transform-es2015-spread@6.8.0" = pkgs."babel-plugin-transform-es2015-spread@6.8.0";
              "babel-plugin-transform-es2015-sticky-regex@6.8.0" = pkgs."babel-plugin-transform-es2015-sticky-regex@6.8.0";
              "babel-plugin-transform-es2015-template-literals@6.8.0" = pkgs."babel-plugin-transform-es2015-template-literals@6.8.0";
              "babel-plugin-transform-es2015-typeof-symbol@6.18.0" = pkgs."babel-plugin-transform-es2015-typeof-symbol@6.18.0";
              "babel-plugin-transform-es2015-unicode-regex@6.11.0" = pkgs."babel-plugin-transform-es2015-unicode-regex@6.11.0";
              "babel-plugin-transform-regenerator@6.21.0" = pkgs."babel-plugin-transform-regenerator@6.21.0";
            };
            seen = [ "babel-preset-es2015@6.18.0" ];
            };
  "babel-preset-react@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-react";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react/-/babel-preset-react-6.16.0.tgz";
              sha1 = "aa117d60de0928607e343c4828906e4661824316";
            };
            dependencies = {
              "babel-plugin-syntax-flow@6.18.0" = pkgs."babel-plugin-syntax-flow@6.18.0";
              "babel-plugin-syntax-jsx@6.18.0" = pkgs."babel-plugin-syntax-jsx@6.18.0";
              "babel-plugin-transform-flow-strip-types@6.21.0" = pkgs."babel-plugin-transform-flow-strip-types@6.21.0";
              "babel-plugin-transform-react-display-name@6.8.0" = pkgs."babel-plugin-transform-react-display-name@6.8.0";
              "babel-plugin-transform-react-jsx@6.8.0" = pkgs."babel-plugin-transform-react-jsx@6.8.0";
              "babel-plugin-transform-react-jsx-self@6.11.0" = pkgs."babel-plugin-transform-react-jsx-self@6.11.0";
              "babel-plugin-transform-react-jsx-source@6.9.0" = pkgs."babel-plugin-transform-react-jsx-source@6.9.0";
            };
            seen = [ "babel-preset-react@6.16.0" ];
            };
  "babel-preset-stage-0@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-0";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-0/-/babel-preset-stage-0-6.16.0.tgz";
              sha1 = "f5a263c420532fd57491f1a7315b3036e428f823";
            };
            dependencies = {
              "babel-plugin-transform-do-expressions@6.8.0" = pkgs."babel-plugin-transform-do-expressions@6.8.0";
              "babel-plugin-transform-function-bind@6.8.0" = pkgs."babel-plugin-transform-function-bind@6.8.0";
              "babel-preset-stage-1@6.16.0" = pkgs."babel-preset-stage-1@6.16.0";
            };
            seen = [ "babel-preset-stage-0@6.16.0" ];
            };
  "babel-preset-stage-1@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-1";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-1/-/babel-preset-stage-1-6.16.0.tgz";
              sha1 = "9d31fbbdae7b17c549fd3ac93e3cf6902695e479";
            };
            dependencies = {
              "babel-plugin-transform-class-constructor-call@6.18.0" = pkgs."babel-plugin-transform-class-constructor-call@6.18.0";
              "babel-plugin-transform-export-extensions@6.8.0" = pkgs."babel-plugin-transform-export-extensions@6.8.0";
              "babel-preset-stage-2@6.18.0" = pkgs."babel-preset-stage-2@6.18.0";
            };
            seen = [ "babel-preset-stage-1@6.16.0" ];
            };
  "babel-preset-stage-2@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-2";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-2/-/babel-preset-stage-2-6.18.0.tgz";
              sha1 = "9eb7bf9a8e91c68260d5ba7500493caaada4b5b5";
            };
            dependencies = {
              "babel-plugin-syntax-dynamic-import@6.18.0" = pkgs."babel-plugin-syntax-dynamic-import@6.18.0";
              "babel-plugin-transform-class-properties@6.19.0" = pkgs."babel-plugin-transform-class-properties@6.19.0";
              "babel-plugin-transform-decorators@6.13.0" = pkgs."babel-plugin-transform-decorators@6.13.0";
              "babel-preset-stage-3@6.17.0" = pkgs."babel-preset-stage-3@6.17.0";
            };
            seen = [ "babel-preset-stage-2@6.18.0" ];
            };
  "babel-preset-stage-3@6.17.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-preset-stage-3";
            version = "6.17.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-3/-/babel-preset-stage-3-6.17.0.tgz";
              sha1 = "b6638e46db6e91e3f889013d8ce143917c685e39";
            };
            dependencies = {
              "babel-plugin-syntax-trailing-function-commas@6.20.0" = pkgs."babel-plugin-syntax-trailing-function-commas@6.20.0";
              "babel-plugin-transform-async-generator-functions@6.17.0" = pkgs."babel-plugin-transform-async-generator-functions@6.17.0";
              "babel-plugin-transform-async-to-generator@6.16.0" = pkgs."babel-plugin-transform-async-to-generator@6.16.0";
              "babel-plugin-transform-exponentiation-operator@6.8.0" = pkgs."babel-plugin-transform-exponentiation-operator@6.8.0";
              "babel-plugin-transform-object-rest-spread@6.16.0" = pkgs."babel-plugin-transform-object-rest-spread@6.16.0";
            };
            seen = [ "babel-preset-stage-3@6.17.0" ];
            };
  "babel-register@6.18.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-register";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-register/-/babel-register-6.18.0.tgz";
              sha1 = "892e2e03865078dd90ad2c715111ec4449b32a68";
            };
            dependencies = {
              "babel-core@6.21.0" = pkgs."babel-core@6.21.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "core-js@2.4.1" = pkgs."core-js@2.4.1";
              "home-or-tmp@2.0.0" = pkgs."home-or-tmp@2.0.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "source-map-support@0.4.8" = pkgs."source-map-support@0.4.8";
            };
            seen = [ "babel-register@6.18.0" ];
            };
  "babel-register@6.26.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-register";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-register/-/babel-register-6.26.0.tgz";
              sha1 = "6ed021173e2fcb486d7acb45c6009a856f647071";
            };
            dependencies = {
              "babel-core@6.26.0" = pkgs."babel-core@6.26.0";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "core-js@2.5.3" = pkgs."core-js@2.5.3";
              "home-or-tmp@2.0.0" = pkgs."home-or-tmp@2.0.0";
              "lodash@4.17.5" = pkgs."lodash@4.17.5";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "source-map-support@0.4.18" = pkgs."source-map-support@0.4.18";
            };
            seen = [ "babel-register@6.26.0" ];
            };
  "babel-runtime@6.11.6" = nodeEnv.buildYarnPackage {
            packageName = "babel-runtime";
            version = "6.11.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-runtime/-/babel-runtime-6.11.6.tgz";
              sha1 = "6db707fef2d49c49bfa3cb64efdb436b518b8222";
            };
            dependencies = {
              "core-js@2.4.1" = pkgs."core-js@2.4.1";
              "regenerator-runtime@0.9.6" = pkgs."regenerator-runtime@0.9.6";
            };
            seen = [ "babel-runtime@6.11.6" ];
            };
  "babel-runtime@6.20.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-runtime";
            version = "6.20.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-runtime/-/babel-runtime-6.20.0.tgz";
              sha1 = "87300bdcf4cd770f09bf0048c64204e17806d16f";
            };
            dependencies = {
              "core-js@2.4.1" = pkgs."core-js@2.4.1";
              "regenerator-runtime@0.10.1" = pkgs."regenerator-runtime@0.10.1";
            };
            seen = [ "babel-runtime@6.20.0" ];
            };
  "babel-template@6.16.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-template";
            version = "6.16.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-template/-/babel-template-6.16.0.tgz";
              sha1 = "e149dd1a9f03a35f817ddbc4d0481988e7ebc8ca";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-traverse@6.21.0" = pkgs."babel-traverse@6.21.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "babylon@6.14.1" = pkgs."babylon@6.14.1";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-template@6.16.0" ];
            };
  "babel-traverse@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-traverse";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-traverse/-/babel-traverse-6.21.0.tgz";
              sha1 = "69c6365804f1a4f69eb1213f85b00a818b8c21ad";
            };
            dependencies = {
              "babel-code-frame@6.20.0" = pkgs."babel-code-frame@6.20.0";
              "babel-messages@6.8.0" = pkgs."babel-messages@6.8.0";
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "babylon@6.14.1" = pkgs."babylon@6.14.1";
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "globals@9.14.0" = pkgs."globals@9.14.0";
              "invariant@2.2.2" = pkgs."invariant@2.2.2";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
            };
            seen = [ "babel-traverse@6.21.0" ];
            };
  "babel-types@6.21.0" = nodeEnv.buildYarnPackage {
            packageName = "babel-types";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-types/-/babel-types-6.21.0.tgz";
              sha1 = "314b92168891ef6d3806b7f7a917fdf87c11a4b2";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "to-fast-properties@1.0.2" = pkgs."to-fast-properties@1.0.2";
            };
            seen = [ "babel-types@6.21.0" ];
            };
  "babylon@6.14.1" = nodeEnv.buildYarnPackage {
            packageName = "babylon";
            version = "6.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babylon/-/babylon-6.14.1.tgz";
              sha1 = "956275fab72753ad9b3435d7afe58f8bf0a29815";
            };
            dependencies = {};
            seen = [ "babylon@6.14.1" ];
            };
  "babylon@5.8.38" = nodeEnv.buildYarnPackage {
            packageName = "babylon";
            version = "5.8.38";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babylon/-/babylon-5.8.38.tgz";
              sha1 = "ec9b120b11bf6ccd4173a18bf217e60b79859ffd";
            };
            dependencies = {};
            seen = [ "babylon@5.8.38" ];
            };
  "balanced-match@0.4.2" = nodeEnv.buildYarnPackage {
            packageName = "balanced-match";
            version = "0.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-0.4.2.tgz";
              sha1 = "cb3f3e3c732dc0f01ee70b403f302e61d7709838";
            };
            dependencies = {};
            seen = [ "balanced-match@0.4.2" ];
            };
  "base64-js@0.0.8" = nodeEnv.buildYarnPackage {
            packageName = "base64-js";
            version = "0.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/base64-js/-/base64-js-0.0.8.tgz";
              sha1 = "1101e9544f4a76b1bc3b26d452ca96d7a35e7978";
            };
            dependencies = {};
            seen = [ "base64-js@0.0.8" ];
            };
  "bl@0.9.5" = nodeEnv.buildYarnPackage {
            packageName = "bl";
            version = "0.9.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bl/-/bl-0.9.5.tgz";
              sha1 = "c06b797af085ea00bc527afc8efcf11de2232054";
            };
            dependencies = {
              "readable-stream@1.0.34" = pkgs."readable-stream@1.0.34";
            };
            seen = [ "bl@0.9.5" ];
            };
  "bluebird@3.3.1" = nodeEnv.buildYarnPackage {
            packageName = "bluebird";
            version = "3.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.3.1.tgz";
              sha1 = "f97ae1970f41d85177283053e9a120160e66c61d";
            };
            dependencies = {};
            seen = [ "bluebird@3.3.1" ];
            };
  "bluebird@2.11.0" = nodeEnv.buildYarnPackage {
            packageName = "bluebird";
            version = "2.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bluebird/-/bluebird-2.11.0.tgz";
              sha1 = "534b9033c022c9579c56ba3b3e5a5caafbb650e1";
            };
            dependencies = {};
            seen = [ "bluebird@2.11.0" ];
            };
  "bluebird@3.4.7" = nodeEnv.buildYarnPackage {
            packageName = "bluebird";
            version = "3.4.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.4.7.tgz";
              sha1 = "f72d760be09b7f76d08ed8fae98b289a8d05fab3";
            };
            dependencies = {};
            seen = [ "bluebird@3.4.7" ];
            };
  "bn.js@4.11.6" = nodeEnv.buildYarnPackage {
            packageName = "bn.js";
            version = "4.11.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bn.js/-/bn.js-4.11.6.tgz";
              sha1 = "53344adb14617a13f6e8dd2ce28905d1c0ba3215";
            };
            dependencies = {};
            seen = [ "bn.js@4.11.6" ];
            };
  "boom@2.10.1" = nodeEnv.buildYarnPackage {
            packageName = "boom";
            version = "2.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boom/-/boom-2.10.1.tgz";
              sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
            };
            dependencies = {
              "hoek@2.16.3" = pkgs."hoek@2.16.3";
            };
            seen = [ "boom@2.10.1" ];
            };
  "boom@4.3.1" = nodeEnv.buildYarnPackage {
            packageName = "boom";
            version = "4.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boom/-/boom-4.3.1.tgz";
              sha1 = "4f8a3005cb4a7e3889f749030fd25b96e01d2e31";
            };
            dependencies = {
              "hoek@4.1.0" = pkgs."hoek@4.1.0";
            };
            seen = [ "boom@4.3.1" ];
            };
  "brace-expansion@1.1.6" = nodeEnv.buildYarnPackage {
            packageName = "brace-expansion";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.6.tgz";
              sha1 = "7197d7eaa9b87e648390ea61fc66c84427420df9";
            };
            dependencies = {
              "balanced-match@0.4.2" = pkgs."balanced-match@0.4.2";
              "concat-map@0.0.1" = pkgs."concat-map@0.0.1";
            };
            seen = [ "brace-expansion@1.1.6" ];
            };
  "browserify-aes@0.4.0" = nodeEnv.buildYarnPackage {
            packageName = "browserify-aes";
            version = "0.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-aes/-/browserify-aes-0.4.0.tgz";
              sha1 = "067149b668df31c4b58533e02d01e806d8608e2c";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "browserify-aes@0.4.0" ];
            };
  "buffer@3.6.0" = nodeEnv.buildYarnPackage {
            packageName = "buffer";
            version = "3.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer/-/buffer-3.6.0.tgz";
              sha1 = "a72c936f77b96bf52f5f7e7b467180628551defb";
            };
            dependencies = {
              "base64-js@0.0.8" = pkgs."base64-js@0.0.8";
              "ieee754@1.1.8" = pkgs."ieee754@1.1.8";
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
            };
            seen = [ "buffer@3.6.0" ];
            };
  "buffer@4.9.1" = nodeEnv.buildYarnPackage {
            packageName = "buffer";
            version = "4.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer/-/buffer-4.9.1.tgz";
              sha1 = "6d1bb601b07a4efced97094132093027c95bc298";
            };
            dependencies = {
              "base64-js@1.1.2" = pkgs."base64-js@1.1.2";
              "ieee754@1.1.8" = pkgs."ieee754@1.1.8";
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
            };
            seen = [ "buffer@4.9.1" ];
            };
  "camelcase@1.2.1" = nodeEnv.buildYarnPackage {
            packageName = "camelcase";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase/-/camelcase-1.2.1.tgz";
              sha1 = "9bb5304d2e0b56698b2c758b08a3eaa9daa58a39";
            };
            dependencies = {};
            seen = [ "camelcase@1.2.1" ];
            };
  "camelcase@2.1.1" = nodeEnv.buildYarnPackage {
            packageName = "camelcase";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase/-/camelcase-2.1.1.tgz";
              sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
            };
            dependencies = {};
            seen = [ "camelcase@2.1.1" ];
            };
  "caseless@0.11.0" = nodeEnv.buildYarnPackage {
            packageName = "caseless";
            version = "0.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caseless/-/caseless-0.11.0.tgz";
              sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
            };
            dependencies = {};
            seen = [ "caseless@0.11.0" ];
            };
  "caseless@0.9.0" = nodeEnv.buildYarnPackage {
            packageName = "caseless";
            version = "0.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caseless/-/caseless-0.9.0.tgz";
              sha1 = "b7b65ce6bf1413886539cfd533f0b30effa9cf88";
            };
            dependencies = {};
            seen = [ "caseless@0.9.0" ];
            };
  "chalk@0.5.1" = nodeEnv.buildYarnPackage {
            packageName = "chalk";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chalk/-/chalk-0.5.1.tgz";
              sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
            };
            dependencies = {
              "ansi-styles@1.1.0" = pkgs."ansi-styles@1.1.0";
              "escape-string-regexp@1.0.5" = pkgs."escape-string-regexp@1.0.5";
              "has-ansi@0.1.0" = pkgs."has-ansi@0.1.0";
              "strip-ansi@0.3.0" = pkgs."strip-ansi@0.3.0";
              "supports-color@0.2.0" = pkgs."supports-color@0.2.0";
            };
            seen = [ "chalk@0.5.1" ];
            };
  "chalk@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "chalk";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chalk/-/chalk-1.1.3.tgz";
              sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
            };
            dependencies = {
              "ansi-styles@2.2.1" = pkgs."ansi-styles@2.2.1";
              "escape-string-regexp@1.0.5" = pkgs."escape-string-regexp@1.0.5";
              "has-ansi@2.0.0" = pkgs."has-ansi@2.0.0";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
              "supports-color@2.0.0" = pkgs."supports-color@2.0.0";
            };
            seen = [ "chalk@1.1.3" ];
            };
  "chokidar@1.6.1" = nodeEnv.buildYarnPackage {
            packageName = "chokidar";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chokidar/-/chokidar-1.6.1.tgz";
              sha1 = "2f4447ab5e96e50fb3d789fd90d4c72e0e4c70c2";
            };
            dependencies = {
              "anymatch@1.3.0" = pkgs."anymatch@1.3.0";
              "async-each@1.0.1" = pkgs."async-each@1.0.1";
              "glob-parent@2.0.0" = pkgs."glob-parent@2.0.0";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "is-binary-path@1.0.1" = pkgs."is-binary-path@1.0.1";
              "is-glob@2.0.1" = pkgs."is-glob@2.0.1";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "readdirp@2.1.0" = pkgs."readdirp@2.1.0";
            };
            seen = [ "chokidar@1.6.1" ];
            };
  "cipher-base@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "cipher-base";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cipher-base/-/cipher-base-1.0.3.tgz";
              sha1 = "eeabf194419ce900da3018c207d212f2a6df0a07";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "cipher-base@1.0.3" ];
            };
  "cli-cursor@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "cli-cursor";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-1.0.2.tgz";
              sha1 = "64da3f7d56a54412e59794bd62dc35295e8f2987";
            };
            dependencies = {
              "restore-cursor@1.0.1" = pkgs."restore-cursor@1.0.1";
            };
            seen = [ "cli-cursor@1.0.2" ];
            };
  "cliui@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "cliui";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cliui/-/cliui-2.1.0.tgz";
              sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
            };
            dependencies = {
              "center-align@0.1.3" = pkgs."center-align@0.1.3";
              "right-align@0.1.3" = pkgs."right-align@0.1.3";
              "wordwrap@0.0.2" = pkgs."wordwrap@0.0.2";
            };
            seen = [ "cliui@2.1.0" ];
            };
  "color-convert@1.8.2" = nodeEnv.buildYarnPackage {
            packageName = "color-convert";
            version = "1.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.8.2.tgz";
              sha1 = "be868184d7c8631766d54e7078e2672d7c7e3339";
            };
            dependencies = {
              "color-name@1.1.1" = pkgs."color-name@1.1.1";
            };
            seen = [ "color-convert@1.8.2" ];
            };
  "colors@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "colors";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/colors/-/colors-1.0.3.tgz";
              sha1 = "0433f44d809680fdeb60ed260f1b0c262e82a40b";
            };
            dependencies = {};
            seen = [ "colors@1.0.3" ];
            };
  "combined-stream@1.0.5" = nodeEnv.buildYarnPackage {
            packageName = "combined-stream";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.5.tgz";
              sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
            };
            dependencies = {
              "delayed-stream@1.0.0" = pkgs."delayed-stream@1.0.0";
            };
            seen = [ "combined-stream@1.0.5" ];
            };
  "combined-stream@0.0.7" = nodeEnv.buildYarnPackage {
            packageName = "combined-stream";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-0.0.7.tgz";
              sha1 = "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f";
            };
            dependencies = {
              "delayed-stream@0.0.5" = pkgs."delayed-stream@0.0.5";
            };
            seen = [ "combined-stream@0.0.7" ];
            };
  "commander@2.6.0" = nodeEnv.buildYarnPackage {
            packageName = "commander";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.6.0.tgz";
              sha1 = "9df7e52fb2a0cb0fb89058ee80c3104225f37e1d";
            };
            dependencies = {};
            seen = [ "commander@2.6.0" ];
            };
  "commander@2.9.0" = nodeEnv.buildYarnPackage {
            packageName = "commander";
            version = "2.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.9.0.tgz";
              sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
            };
            dependencies = {
              "graceful-readlink@1.0.1" = pkgs."graceful-readlink@1.0.1";
            };
            seen = [ "commander@2.9.0" ];
            };
  "commander@2.8.1" = nodeEnv.buildYarnPackage {
            packageName = "commander";
            version = "2.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.8.1.tgz";
              sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
            };
            dependencies = {
              "graceful-readlink@1.0.1" = pkgs."graceful-readlink@1.0.1";
            };
            seen = [ "commander@2.8.1" ];
            };
  "common-tags@0.1.1" = nodeEnv.buildYarnPackage {
            packageName = "common-tags";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/common-tags/-/common-tags-0.1.1.tgz";
              sha1 = "d893486ecc6df22cffe6c393c88c12f71e7e8871";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
            };
            seen = [ "common-tags@0.1.1" ];
            };
  "concat-stream@1.5.0" = nodeEnv.buildYarnPackage {
            packageName = "concat-stream";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.5.0.tgz";
              sha1 = "53f7d43c51c5e43f81c8fdd03321c631be68d611";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "readable-stream@2.0.6" = pkgs."readable-stream@2.0.6";
              "typedarray@0.0.6" = pkgs."typedarray@0.0.6";
            };
            seen = [ "concat-stream@1.5.0" ];
            };
  "concat-stream@1.6.0" = nodeEnv.buildYarnPackage {
            packageName = "concat-stream";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.0.tgz";
              sha1 = "0aac662fd52be78964d5532f694784e70110acf7";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "typedarray@0.0.6" = pkgs."typedarray@0.0.6";
            };
            seen = [ "concat-stream@1.6.0" ];
            };
  "configstore@1.4.0" = nodeEnv.buildYarnPackage {
            packageName = "configstore";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/configstore/-/configstore-1.4.0.tgz";
              sha1 = "c35781d0501d268c25c54b8b17f6240e8a4fb021";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "os-tmpdir@1.0.2" = pkgs."os-tmpdir@1.0.2";
              "osenv@0.1.4" = pkgs."osenv@0.1.4";
              "uuid@2.0.3" = pkgs."uuid@2.0.3";
              "write-file-atomic@1.3.1" = pkgs."write-file-atomic@1.3.1";
              "xdg-basedir@2.0.0" = pkgs."xdg-basedir@2.0.0";
            };
            seen = [ "configstore@1.4.0" ];
            };
  "content-disposition@0.5.1" = nodeEnv.buildYarnPackage {
            packageName = "content-disposition";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-disposition/-/content-disposition-0.5.1.tgz";
              sha1 = "87476c6a67c8daa87e32e87616df883ba7fb071b";
            };
            dependencies = {};
            seen = [ "content-disposition@0.5.1" ];
            };
  "content-type@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "content-type";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-type/-/content-type-1.0.2.tgz";
              sha1 = "b7d113aee7a8dd27bd21133c4dc2529df1721eed";
            };
            dependencies = {};
            seen = [ "content-type@1.0.2" ];
            };
  "convert-source-map@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "convert-source-map";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.3.0.tgz";
              sha1 = "e9f3e9c6e2728efc2676696a70eb382f73106a67";
            };
            dependencies = {};
            seen = [ "convert-source-map@1.3.0" ];
            };
  "core-js@2.4.1" = nodeEnv.buildYarnPackage {
            packageName = "core-js";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-js/-/core-js-2.4.1.tgz";
              sha1 = "4de911e667b0eae9124e34254b53aea6fc618d3e";
            };
            dependencies = {};
            seen = [ "core-js@2.4.1" ];
            };
  "core-js@1.2.7" = nodeEnv.buildYarnPackage {
            packageName = "core-js";
            version = "1.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-js/-/core-js-1.2.7.tgz";
              sha1 = "652294c14651db28fa93bd2d5ff2983a4f08c636";
            };
            dependencies = {};
            seen = [ "core-js@1.2.7" ];
            };
  "create-hash@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "create-hash";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hash/-/create-hash-1.1.2.tgz";
              sha1 = "51210062d7bb7479f6c65bb41a92208b1d61abad";
            };
            dependencies = {
              "cipher-base@1.0.3" = pkgs."cipher-base@1.0.3";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "ripemd160@1.0.1" = pkgs."ripemd160@1.0.1";
              "sha.js@2.4.8" = pkgs."sha.js@2.4.8";
            };
            seen = [ "create-hash@1.1.2" ];
            };
  "create-hmac@1.1.4" = nodeEnv.buildYarnPackage {
            packageName = "create-hmac";
            version = "1.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hmac/-/create-hmac-1.1.4.tgz";
              sha1 = "d3fb4ba253eb8b3f56e39ea2fbcb8af747bd3170";
            };
            dependencies = {
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "create-hmac@1.1.4" ];
            };
  "cross-env@3.1.4" = nodeEnv.buildYarnPackage {
            packageName = "cross-env";
            version = "3.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-env/-/cross-env-3.1.4.tgz";
              sha1 = "56e8bca96f17908a6eb1bc2012ca126f92842130";
            };
            dependencies = {
              "cross-spawn@3.0.1" = pkgs."cross-spawn@3.0.1";
            };
            seen = [ "cross-env@3.1.4" ];
            };
  "cross-spawn@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "cross-spawn";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-3.0.1.tgz";
              sha1 = "1256037ecb9f0c5f79e3d6ef135e30770184b982";
            };
            dependencies = {
              "lru-cache@4.0.2" = pkgs."lru-cache@4.0.2";
              "which@1.2.12" = pkgs."which@1.2.12";
            };
            seen = [ "cross-spawn@3.0.1" ];
            };
  "cryptiles@2.0.5" = nodeEnv.buildYarnPackage {
            packageName = "cryptiles";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cryptiles/-/cryptiles-2.0.5.tgz";
              sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
            };
            dependencies = {
              "boom@2.10.1" = pkgs."boom@2.10.1";
            };
            seen = [ "cryptiles@2.0.5" ];
            };
  "crypto-browserify@3.3.0" = nodeEnv.buildYarnPackage {
            packageName = "crypto-browserify";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.3.0.tgz";
              sha1 = "b9fc75bb4a0ed61dcf1cd5dae96eb30c9c3e506c";
            };
            dependencies = {
              "browserify-aes@0.4.0" = pkgs."browserify-aes@0.4.0";
              "pbkdf2-compat@2.0.1" = pkgs."pbkdf2-compat@2.0.1";
              "ripemd160@0.2.0" = pkgs."ripemd160@0.2.0";
              "sha.js@2.2.6" = pkgs."sha.js@2.2.6";
            };
            seen = [ "crypto-browserify@3.3.0" ];
            };
  "crypto-browserify@3.11.0" = nodeEnv.buildYarnPackage {
            packageName = "crypto-browserify";
            version = "3.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.11.0.tgz";
              sha1 = "3652a0906ab9b2a7e0c3ce66a408e957a2485522";
            };
            dependencies = {
              "browserify-cipher@1.0.0" = pkgs."browserify-cipher@1.0.0";
              "browserify-sign@4.0.0" = pkgs."browserify-sign@4.0.0";
              "create-ecdh@4.0.0" = pkgs."create-ecdh@4.0.0";
              "create-hash@1.1.2" = pkgs."create-hash@1.1.2";
              "create-hmac@1.1.4" = pkgs."create-hmac@1.1.4";
              "diffie-hellman@5.0.2" = pkgs."diffie-hellman@5.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "pbkdf2@3.0.9" = pkgs."pbkdf2@3.0.9";
              "public-encrypt@4.0.0" = pkgs."public-encrypt@4.0.0";
              "randombytes@2.0.3" = pkgs."randombytes@2.0.3";
            };
            seen = [ "crypto-browserify@3.11.0" ];
            };
  "css-loader@0.26.1" = nodeEnv.buildYarnPackage {
            packageName = "css-loader";
            version = "0.26.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-loader/-/css-loader-0.26.1.tgz";
              sha1 = "2ba7f20131b93597496b3e9bb500785a49cd29ea";
            };
            dependencies = {
              "babel-code-frame@6.20.0" = pkgs."babel-code-frame@6.20.0";
              "css-selector-tokenizer@0.7.0" = pkgs."css-selector-tokenizer@0.7.0";
              "cssnano@3.10.0" = pkgs."cssnano@3.10.0";
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "lodash.camelcase@4.3.0" = pkgs."lodash.camelcase@4.3.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
              "postcss-modules-extract-imports@1.0.1" = pkgs."postcss-modules-extract-imports@1.0.1";
              "postcss-modules-local-by-default@1.1.1" = pkgs."postcss-modules-local-by-default@1.1.1";
              "postcss-modules-scope@1.0.2" = pkgs."postcss-modules-scope@1.0.2";
              "postcss-modules-values@1.2.2" = pkgs."postcss-modules-values@1.2.2";
              "source-list-map@0.1.7" = pkgs."source-list-map@0.1.7";
            };
            seen = [ "css-loader@0.26.1" ];
            };
  "css-selector-tokenizer@0.6.0" = nodeEnv.buildYarnPackage {
            packageName = "css-selector-tokenizer";
            version = "0.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-selector-tokenizer/-/css-selector-tokenizer-0.6.0.tgz";
              sha1 = "6445f582c7930d241dcc5007a43d6fcb8f073152";
            };
            dependencies = {
              "cssesc@0.1.0" = pkgs."cssesc@0.1.0";
              "fastparse@1.1.1" = pkgs."fastparse@1.1.1";
              "regexpu-core@1.0.0" = pkgs."regexpu-core@1.0.0";
            };
            seen = [ "css-selector-tokenizer@0.6.0" ];
            };
  "d3-interpolate@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "d3-interpolate";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-interpolate/-/d3-interpolate-1.1.2.tgz";
              sha1 = "b52e6927a04fe1fe2a4cffc139e5389ed3e5e790";
            };
            dependencies = {
              "d3-color@1.0.2" = pkgs."d3-color@1.0.2";
            };
            seen = [ "d3-interpolate@1.1.2" ];
            };
  "debug@0.7.4" = nodeEnv.buildYarnPackage {
            packageName = "debug";
            version = "0.7.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-0.7.4.tgz";
              sha1 = "06e1ea8082c2cb14e39806e22e2f6f757f92af39";
            };
            dependencies = {};
            seen = [ "debug@0.7.4" ];
            };
  "debug@2.6.1" = nodeEnv.buildYarnPackage {
            packageName = "debug";
            version = "2.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-2.6.1.tgz";
              sha1 = "79855090ba2c4e3115cc7d8769491d58f0491351";
            };
            dependencies = {
              "ms@0.7.2" = pkgs."ms@0.7.2";
            };
            seen = [ "debug@2.6.1" ];
            };
  "debug@2.6.9" = nodeEnv.buildYarnPackage {
            packageName = "debug";
            version = "2.6.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz";
              sha1 = "5d128515df134ff327e90a4c93f4e077a536341f";
            };
            dependencies = {
              "ms@2.0.0" = pkgs."ms@2.0.0";
            };
            seen = [ "debug@2.6.9" ];
            };
  "debug@2.6.0" = nodeEnv.buildYarnPackage {
            packageName = "debug";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-2.6.0.tgz";
              sha1 = "bc596bcabe7617f11d9fa15361eded5608b8499b";
            };
            dependencies = {
              "ms@0.7.2" = pkgs."ms@0.7.2";
            };
            seen = [ "debug@2.6.0" ];
            };
  "debug@2.2.0" = nodeEnv.buildYarnPackage {
            packageName = "debug";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-2.2.0.tgz";
              sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
            };
            dependencies = {
              "ms@0.7.1" = pkgs."ms@0.7.1";
            };
            seen = [ "debug@2.2.0" ];
            };
  "delayed-stream@0.0.5" = nodeEnv.buildYarnPackage {
            packageName = "delayed-stream";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-0.0.5.tgz";
              sha1 = "d4b1f43a93e8296dfe02694f4680bc37a313c73f";
            };
            dependencies = {};
            seen = [ "delayed-stream@0.0.5" ];
            };
  "depd@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "depd";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/depd/-/depd-1.1.1.tgz";
              sha1 = "5783b4e1c459f06fa5ca27f991f3d06e7a310359";
            };
            dependencies = {};
            seen = [ "depd@1.1.1" ];
            };
  "depd@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "depd";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/depd/-/depd-1.1.0.tgz";
              sha1 = "e1bd82c6aab6ced965b97b88b17ed3e528ca18c3";
            };
            dependencies = {};
            seen = [ "depd@1.1.0" ];
            };
  "doctrine@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "doctrine";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/doctrine/-/doctrine-1.3.0.tgz";
              sha1 = "13e75682b55518424276f7c173783456ef913d26";
            };
            dependencies = {
              "esutils@2.0.2" = pkgs."esutils@2.0.2";
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
            };
            seen = [ "doctrine@1.3.0" ];
            };
  "dot-prop@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "dot-prop";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dot-prop/-/dot-prop-3.0.0.tgz";
              sha1 = "1b708af094a49c9a0e7dbcad790aba539dac1177";
            };
            dependencies = {
              "is-obj@1.0.1" = pkgs."is-obj@1.0.1";
            };
            seen = [ "dot-prop@3.0.0" ];
            };
  "electron-download@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "electron-download";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-download/-/electron-download-3.2.0.tgz";
              sha1 = "d7509b686b77855f2e6fe0014acc9cce6379c4b1";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "fs-extra@0.30.0" = pkgs."fs-extra@0.30.0";
              "home-path@1.0.3" = pkgs."home-path@1.0.3";
              "minimist@1.2.0" = pkgs."minimist@1.2.0";
              "nugget@2.0.1" = pkgs."nugget@2.0.1";
              "path-exists@2.1.0" = pkgs."path-exists@2.1.0";
              "rc@1.1.6" = pkgs."rc@1.1.6";
              "semver@5.3.0" = pkgs."semver@5.3.0";
              "sumchecker@1.3.0" = pkgs."sumchecker@1.3.0";
            };
            seen = [ "electron-download@3.2.0" ];
            };
  "elliptic@6.3.2" = nodeEnv.buildYarnPackage {
            packageName = "elliptic";
            version = "6.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/elliptic/-/elliptic-6.3.2.tgz";
              sha1 = "e4c81e0829cf0a65ab70e998b8232723b5c1bc48";
            };
            dependencies = {
              "bn.js@4.11.6" = pkgs."bn.js@4.11.6";
              "brorand@1.0.6" = pkgs."brorand@1.0.6";
              "hash.js@1.0.3" = pkgs."hash.js@1.0.3";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "elliptic@6.3.2" ];
            };
  "end-of-stream@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "end-of-stream";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.0.0.tgz";
              sha1 = "d4596e702734a93e40e9af864319eabd99ff2f0e";
            };
            dependencies = {
              "once@1.3.3" = pkgs."once@1.3.3";
            };
            seen = [ "end-of-stream@1.0.0" ];
            };
  "enhanced-resolve@0.9.1" = nodeEnv.buildYarnPackage {
            packageName = "enhanced-resolve";
            version = "0.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/enhanced-resolve/-/enhanced-resolve-0.9.1.tgz";
              sha1 = "4d6e689b3725f86090927ccc86cd9f1635b89e2e";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "memory-fs@0.2.0" = pkgs."memory-fs@0.2.0";
              "tapable@0.1.10" = pkgs."tapable@0.1.10";
            };
            seen = [ "enhanced-resolve@0.9.1" ];
            };
  "error-stack-parser@1.3.6" = nodeEnv.buildYarnPackage {
            packageName = "error-stack-parser";
            version = "1.3.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/error-stack-parser/-/error-stack-parser-1.3.6.tgz";
              sha1 = "e0e73b93e417138d1cd7c0b746b1a4a14854c292";
            };
            dependencies = {
              "stackframe@0.3.1" = pkgs."stackframe@0.3.1";
            };
            seen = [ "error-stack-parser@1.3.6" ];
            };
  "es6-promise@3.3.1" = nodeEnv.buildYarnPackage {
            packageName = "es6-promise";
            version = "3.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-promise/-/es6-promise-3.3.1.tgz";
              sha1 = "a08cdde84ccdbf34d027a1451bc91d4bcd28a613";
            };
            dependencies = {};
            seen = [ "es6-promise@3.3.1" ];
            };
  "esprima@2.7.3" = nodeEnv.buildYarnPackage {
            packageName = "esprima";
            version = "2.7.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esprima/-/esprima-2.7.3.tgz";
              sha1 = "96e3b70d5779f6ad49cd032673d1c312767ba581";
            };
            dependencies = {};
            seen = [ "esprima@2.7.3" ];
            };
  "estraverse@1.9.3" = nodeEnv.buildYarnPackage {
            packageName = "estraverse";
            version = "1.9.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/estraverse/-/estraverse-1.9.3.tgz";
              sha1 = "af67f2dc922582415950926091a4005d29c9bb44";
            };
            dependencies = {};
            seen = [ "estraverse@1.9.3" ];
            };
  "estraverse@4.1.1" = nodeEnv.buildYarnPackage {
            packageName = "estraverse";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.1.1.tgz";
              sha1 = "f6caca728933a850ef90661d0e17982ba47111a2";
            };
            dependencies = {};
            seen = [ "estraverse@4.1.1" ];
            };
  "etag@1.7.0" = nodeEnv.buildYarnPackage {
            packageName = "etag";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/etag/-/etag-1.7.0.tgz";
              sha1 = "03d30b5f67dd6e632d2945d30d6652731a34d5d8";
            };
            dependencies = {};
            seen = [ "etag@1.7.0" ];
            };
  "eth-lib@0.1.27" = nodeEnv.buildYarnPackage {
            packageName = "eth-lib";
            version = "0.1.27";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eth-lib/-/eth-lib-0.1.27.tgz";
              sha1 = "f0b0fd144f865d2d6bf8257a40004f2e75ca1dd6";
            };
            dependencies = {
              "bn.js@4.11.8" = pkgs."bn.js@4.11.8";
              "elliptic@6.4.0" = pkgs."elliptic@6.4.0";
              "keccakjs@0.2.1" = pkgs."keccakjs@0.2.1";
              "nano-json-stream-parser@0.1.2" = pkgs."nano-json-stream-parser@0.1.2";
              "servify@0.1.12" = pkgs."servify@0.1.12";
              "ws@3.3.3" = pkgs."ws@3.3.3";
              "xhr-request-promise@0.1.2" = pkgs."xhr-request-promise@0.1.2";
            };
            seen = [ "eth-lib@0.1.27" ];
            };
  "exenv@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "exenv";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/exenv/-/exenv-1.2.0.tgz";
              sha1 = "3835f127abf075bfe082d0aed4484057c78e3c89";
            };
            dependencies = {};
            seen = [ "exenv@1.2.0" ];
            };
  "express@4.14.0" = nodeEnv.buildYarnPackage {
            packageName = "express";
            version = "4.14.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/express/-/express-4.14.0.tgz";
              sha1 = "c1ee3f42cdc891fb3dc650a8922d51ec847d0d66";
            };
            dependencies = {
              "accepts@1.3.3" = pkgs."accepts@1.3.3";
              "array-flatten@1.1.1" = pkgs."array-flatten@1.1.1";
              "content-disposition@0.5.1" = pkgs."content-disposition@0.5.1";
              "content-type@1.0.2" = pkgs."content-type@1.0.2";
              "cookie@0.3.1" = pkgs."cookie@0.3.1";
              "cookie-signature@1.0.6" = pkgs."cookie-signature@1.0.6";
              "debug@2.2.0" = pkgs."debug@2.2.0";
              "depd@1.1.0" = pkgs."depd@1.1.0";
              "encodeurl@1.0.1" = pkgs."encodeurl@1.0.1";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "etag@1.7.0" = pkgs."etag@1.7.0";
              "finalhandler@0.5.0" = pkgs."finalhandler@0.5.0";
              "fresh@0.3.0" = pkgs."fresh@0.3.0";
              "merge-descriptors@1.0.1" = pkgs."merge-descriptors@1.0.1";
              "methods@1.1.2" = pkgs."methods@1.1.2";
              "on-finished@2.3.0" = pkgs."on-finished@2.3.0";
              "parseurl@1.3.1" = pkgs."parseurl@1.3.1";
              "path-to-regexp@0.1.7" = pkgs."path-to-regexp@0.1.7";
              "proxy-addr@1.1.2" = pkgs."proxy-addr@1.1.2";
              "qs@6.2.0" = pkgs."qs@6.2.0";
              "range-parser@1.2.0" = pkgs."range-parser@1.2.0";
              "send@0.14.1" = pkgs."send@0.14.1";
              "serve-static@1.11.1" = pkgs."serve-static@1.11.1";
              "type-is@1.6.14" = pkgs."type-is@1.6.14";
              "utils-merge@1.0.0" = pkgs."utils-merge@1.0.0";
              "vary@1.1.0" = pkgs."vary@1.1.0";
            };
            seen = [ "express@4.14.0" ];
            };
  "extend@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "extend";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extend/-/extend-3.0.0.tgz";
              sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
            };
            dependencies = {};
            seen = [ "extend@3.0.0" ];
            };
  "extract-zip@1.6.0" = nodeEnv.buildYarnPackage {
            packageName = "extract-zip";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extract-zip/-/extract-zip-1.6.0.tgz";
              sha1 = "7f400c9607ea866ecab7aa6d54fb978eeb11621a";
            };
            dependencies = {
              "concat-stream@1.5.0" = pkgs."concat-stream@1.5.0";
              "debug@0.7.4" = pkgs."debug@0.7.4";
              "mkdirp@0.5.0" = pkgs."mkdirp@0.5.0";
              "yauzl@2.4.1" = pkgs."yauzl@2.4.1";
            };
            seen = [ "extract-zip@1.6.0" ];
            };
  "extsprintf@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "extsprintf";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.0.2.tgz";
              sha1 = "e1080e0658e300b06294990cc70e1502235fd550";
            };
            dependencies = {};
            seen = [ "extsprintf@1.0.2" ];
            };
  "fbjs@0.8.8" = nodeEnv.buildYarnPackage {
            packageName = "fbjs";
            version = "0.8.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fbjs/-/fbjs-0.8.8.tgz";
              sha1 = "02f1b6e0ea0d46c24e0b51a2d24df069563a5ad6";
            };
            dependencies = {
              "core-js@1.2.7" = pkgs."core-js@1.2.7";
              "isomorphic-fetch@2.2.1" = pkgs."isomorphic-fetch@2.2.1";
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "promise@7.1.1" = pkgs."promise@7.1.1";
              "setimmediate@1.0.5" = pkgs."setimmediate@1.0.5";
              "ua-parser-js@0.7.12" = pkgs."ua-parser-js@0.7.12";
            };
            seen = [ "fbjs@0.8.8" ];
            };
  "figures@1.7.0" = nodeEnv.buildYarnPackage {
            packageName = "figures";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/figures/-/figures-1.7.0.tgz";
              sha1 = "cbe1e3affcf1cd44b80cadfed28dc793a9701d2e";
            };
            dependencies = {
              "escape-string-regexp@1.0.5" = pkgs."escape-string-regexp@1.0.5";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "figures@1.7.0" ];
            };
  "file-type@3.9.0" = nodeEnv.buildYarnPackage {
            packageName = "file-type";
            version = "3.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-type/-/file-type-3.9.0.tgz";
              sha1 = "257a078384d1db8087bc449d107d52a52672b9e9";
            };
            dependencies = {};
            seen = [ "file-type@3.9.0" ];
            };
  "file-type@5.2.0" = nodeEnv.buildYarnPackage {
            packageName = "file-type";
            version = "5.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-type/-/file-type-5.2.0.tgz";
              sha1 = "2ddbea7c73ffe36368dfae49dc338c058c2b8ad6";
            };
            dependencies = {};
            seen = [ "file-type@5.2.0" ];
            };
  "finalhandler@0.5.0" = nodeEnv.buildYarnPackage {
            packageName = "finalhandler";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/finalhandler/-/finalhandler-0.5.0.tgz";
              sha1 = "e9508abece9b6dba871a6942a1d7911b91911ac7";
            };
            dependencies = {
              "debug@2.2.0" = pkgs."debug@2.2.0";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "on-finished@2.3.0" = pkgs."on-finished@2.3.0";
              "statuses@1.3.1" = pkgs."statuses@1.3.1";
              "unpipe@1.0.0" = pkgs."unpipe@1.0.0";
            };
            seen = [ "finalhandler@0.5.0" ];
            };
  "find-up@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "find-up";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-up/-/find-up-1.1.2.tgz";
              sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
            };
            dependencies = {
              "path-exists@2.1.0" = pkgs."path-exists@2.1.0";
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
            };
            seen = [ "find-up@1.1.2" ];
            };
  "flow-bin@0.33.0" = nodeEnv.buildYarnPackage {
            packageName = "flow-bin";
            version = "0.33.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/flow-bin/-/flow-bin-0.33.0.tgz";
              sha1 = "ef011eace7a6100f1ae08b852db78279032b8750";
            };
            dependencies = {};
            seen = [ "flow-bin@0.33.0" ];
            };
  "form-data@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "form-data";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/form-data/-/form-data-0.2.0.tgz";
              sha1 = "26f8bc26da6440e299cbdcfb69035c4f77a6e466";
            };
            dependencies = {
              "async@0.9.2" = pkgs."async@0.9.2";
              "combined-stream@0.0.7" = pkgs."combined-stream@0.0.7";
              "mime-types@2.0.14" = pkgs."mime-types@2.0.14";
            };
            seen = [ "form-data@0.2.0" ];
            };
  "form-data@2.1.2" = nodeEnv.buildYarnPackage {
            packageName = "form-data";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/form-data/-/form-data-2.1.2.tgz";
              sha1 = "89c3534008b97eada4cbb157d58f6f5df025eae4";
            };
            dependencies = {
              "asynckit@0.4.0" = pkgs."asynckit@0.4.0";
              "combined-stream@1.0.5" = pkgs."combined-stream@1.0.5";
              "mime-types@2.1.13" = pkgs."mime-types@2.1.13";
            };
            seen = [ "form-data@2.1.2" ];
            };
  "fresh@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "fresh";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fresh/-/fresh-0.3.0.tgz";
              sha1 = "651f838e22424e7566de161d8358caa199f83d4f";
            };
            dependencies = {};
            seen = [ "fresh@0.3.0" ];
            };
  "fs-extra@0.26.7" = nodeEnv.buildYarnPackage {
            packageName = "fs-extra";
            version = "0.26.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-0.26.7.tgz";
              sha1 = "9ae1fdd94897798edab76d0918cf42d0c3184fa9";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "jsonfile@2.4.0" = pkgs."jsonfile@2.4.0";
              "klaw@1.3.1" = pkgs."klaw@1.3.1";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
            };
            seen = [ "fs-extra@0.26.7" ];
            };
  "fs-extra@0.30.0" = nodeEnv.buildYarnPackage {
            packageName = "fs-extra";
            version = "0.30.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-0.30.0.tgz";
              sha1 = "f233ffcc08d4da7d432daa449776989db1df93f0";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "jsonfile@2.4.0" = pkgs."jsonfile@2.4.0";
              "klaw@1.3.1" = pkgs."klaw@1.3.1";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
            };
            seen = [ "fs-extra@0.30.0" ];
            };
  "fs-extra@2.1.2" = nodeEnv.buildYarnPackage {
            packageName = "fs-extra";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-2.1.2.tgz";
              sha1 = "046c70163cef9aad46b0e4a7fa467fb22d71de35";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "jsonfile@2.4.0" = pkgs."jsonfile@2.4.0";
            };
            seen = [ "fs-extra@2.1.2" ];
            };
  "fs-extra@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "fs-extra";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-3.0.1.tgz";
              sha1 = "3794f378c58b342ea7dbbb23095109c4b3b62291";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "jsonfile@3.0.1" = pkgs."jsonfile@3.0.1";
              "universalify@0.1.1" = pkgs."universalify@0.1.1";
            };
            seen = [ "fs-extra@3.0.1" ];
            };
  "fstream@1.0.10" = nodeEnv.buildYarnPackage {
            packageName = "fstream";
            version = "1.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fstream/-/fstream-1.0.10.tgz";
              sha1 = "604e8a92fe26ffd9f6fae30399d4984e1ab22822";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
            };
            seen = [ "fstream@1.0.10" ];
            };
  "function-bind@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "function-bind";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.0.tgz";
              sha1 = "16176714c801798e4e8f2cf7f7529467bb4a5771";
            };
            dependencies = {};
            seen = [ "function-bind@1.1.0" ];
            };
  "gauge@1.2.7" = nodeEnv.buildYarnPackage {
            packageName = "gauge";
            version = "1.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gauge/-/gauge-1.2.7.tgz";
              sha1 = "e9cec5483d3d4ee0ef44b60a7d99e4935e136d93";
            };
            dependencies = {
              "ansi@0.3.1" = pkgs."ansi@0.3.1";
              "has-unicode@2.0.1" = pkgs."has-unicode@2.0.1";
              "lodash.pad@4.5.1" = pkgs."lodash.pad@4.5.1";
              "lodash.padend@4.6.1" = pkgs."lodash.padend@4.6.1";
              "lodash.padstart@4.6.1" = pkgs."lodash.padstart@4.6.1";
            };
            seen = [ "gauge@1.2.7" ];
            };
  "gauge@2.7.2" = nodeEnv.buildYarnPackage {
            packageName = "gauge";
            version = "2.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.2.tgz";
              sha1 = "15cecc31b02d05345a5d6b0e171cdb3ad2307774";
            };
            dependencies = {
              "aproba@1.0.4" = pkgs."aproba@1.0.4";
              "console-control-strings@1.1.0" = pkgs."console-control-strings@1.1.0";
              "has-unicode@2.0.1" = pkgs."has-unicode@2.0.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "signal-exit@3.0.2" = pkgs."signal-exit@3.0.2";
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
              "supports-color@0.2.0" = pkgs."supports-color@0.2.0";
              "wide-align@1.1.0" = pkgs."wide-align@1.1.0";
            };
            seen = [ "gauge@2.7.2" ];
            };
  "get-stream@2.3.1" = nodeEnv.buildYarnPackage {
            packageName = "get-stream";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-stream/-/get-stream-2.3.1.tgz";
              sha1 = "5f38f93f346009666ee0150a054167f91bdd95de";
            };
            dependencies = {
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
            };
            seen = [ "get-stream@2.3.1" ];
            };
  "glob@6.0.4" = nodeEnv.buildYarnPackage {
            packageName = "glob";
            version = "6.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob/-/glob-6.0.4.tgz";
              sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
            };
            dependencies = {
              "inflight@1.0.6" = pkgs."inflight@1.0.6";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "once@1.4.0" = pkgs."once@1.4.0";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
            };
            seen = [ "glob@6.0.4" ];
            };
  "global@4.3.1" = nodeEnv.buildYarnPackage {
            packageName = "global";
            version = "4.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/global/-/global-4.3.1.tgz";
              sha1 = "5f757908c7cbabce54f386ae440e11e26b7916df";
            };
            dependencies = {
              "min-document@2.19.0" = pkgs."min-document@2.19.0";
              "process@0.5.2" = pkgs."process@0.5.2";
            };
            seen = [ "global@4.3.1" ];
            };
  "globals@9.14.0" = nodeEnv.buildYarnPackage {
            packageName = "globals";
            version = "9.14.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globals/-/globals-9.14.0.tgz";
              sha1 = "8859936af0038741263053b39d0e76ca241e4034";
            };
            dependencies = {};
            seen = [ "globals@9.14.0" ];
            };
  "got@3.3.1" = nodeEnv.buildYarnPackage {
            packageName = "got";
            version = "3.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/got/-/got-3.3.1.tgz";
              sha1 = "e5d0ed4af55fc3eef4d56007769d98192bcb2eca";
            };
            dependencies = {
              "duplexify@3.5.0" = pkgs."duplexify@3.5.0";
              "infinity-agent@2.0.3" = pkgs."infinity-agent@2.0.3";
              "is-redirect@1.0.0" = pkgs."is-redirect@1.0.0";
              "is-stream@1.1.0" = pkgs."is-stream@1.1.0";
              "lowercase-keys@1.0.0" = pkgs."lowercase-keys@1.0.0";
              "nested-error-stacks@1.0.2" = pkgs."nested-error-stacks@1.0.2";
              "object-assign@3.0.0" = pkgs."object-assign@3.0.0";
              "prepend-http@1.0.4" = pkgs."prepend-http@1.0.4";
              "read-all-stream@3.1.0" = pkgs."read-all-stream@3.1.0";
              "timed-out@2.0.0" = pkgs."timed-out@2.0.0";
            };
            seen = [ "got@3.3.1" ];
            };
  "har-validator@1.8.0" = nodeEnv.buildYarnPackage {
            packageName = "har-validator";
            version = "1.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/har-validator/-/har-validator-1.8.0.tgz";
              sha1 = "d83842b0eb4c435960aeb108a067a3aa94c0eeb2";
            };
            dependencies = {
              "bluebird@2.11.0" = pkgs."bluebird@2.11.0";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "is-my-json-valid@2.15.0" = pkgs."is-my-json-valid@2.15.0";
            };
            seen = [ "har-validator@1.8.0" ];
            };
  "har-validator@2.0.6" = nodeEnv.buildYarnPackage {
            packageName = "har-validator";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/har-validator/-/har-validator-2.0.6.tgz";
              sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "commander@2.9.0" = pkgs."commander@2.9.0";
              "is-my-json-valid@2.15.0" = pkgs."is-my-json-valid@2.15.0";
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
            };
            seen = [ "har-validator@2.0.6" ];
            };
  "has-ansi@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "has-ansi";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-0.1.0.tgz";
              sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
            };
            dependencies = {
              "ansi-regex@0.2.1" = pkgs."ansi-regex@0.2.1";
            };
            seen = [ "has-ansi@0.1.0" ];
            };
  "has-flag@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "has-flag";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-flag/-/has-flag-1.0.0.tgz";
              sha1 = "9d9e793165ce017a00f00418c43f942a7b1d11fa";
            };
            dependencies = {};
            seen = [ "has-flag@1.0.0" ];
            };
  "has-flag@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "has-flag";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-flag/-/has-flag-2.0.0.tgz";
              sha1 = "e8207af1cc7b30d446cc70b734b5e8be18f88d51";
            };
            dependencies = {};
            seen = [ "has-flag@2.0.0" ];
            };
  "hash.js@1.0.3" = nodeEnv.buildYarnPackage {
            packageName = "hash.js";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hash.js/-/hash.js-1.0.3.tgz";
              sha1 = "1332ff00156c0a0ffdd8236013d07b77a0451573";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "hash.js@1.0.3" ];
            };
  "hawk@2.3.1" = nodeEnv.buildYarnPackage {
            packageName = "hawk";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hawk/-/hawk-2.3.1.tgz";
              sha1 = "1e731ce39447fa1d0f6d707f7bceebec0fd1ec1f";
            };
            dependencies = {
              "boom@2.10.1" = pkgs."boom@2.10.1";
              "cryptiles@2.0.5" = pkgs."cryptiles@2.0.5";
              "hoek@2.16.3" = pkgs."hoek@2.16.3";
              "sntp@1.0.9" = pkgs."sntp@1.0.9";
            };
            seen = [ "hawk@2.3.1" ];
            };
  "hawk@3.1.3" = nodeEnv.buildYarnPackage {
            packageName = "hawk";
            version = "3.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hawk/-/hawk-3.1.3.tgz";
              sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
            };
            dependencies = {
              "boom@2.10.1" = pkgs."boom@2.10.1";
              "cryptiles@2.0.5" = pkgs."cryptiles@2.0.5";
              "hoek@2.16.3" = pkgs."hoek@2.16.3";
              "sntp@1.0.9" = pkgs."sntp@1.0.9";
            };
            seen = [ "hawk@3.1.3" ];
            };
  "hoek@2.16.3" = nodeEnv.buildYarnPackage {
            packageName = "hoek";
            version = "2.16.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hoek/-/hoek-2.16.3.tgz";
              sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
            };
            dependencies = {};
            seen = [ "hoek@2.16.3" ];
            };
  "http-errors@1.5.1" = nodeEnv.buildYarnPackage {
            packageName = "http-errors";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.5.1.tgz";
              sha1 = "788c0d2c1de2c81b9e6e8c01843b6b97eb920750";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "setprototypeof@1.0.2" = pkgs."setprototypeof@1.0.2";
              "statuses@1.3.1" = pkgs."statuses@1.3.1";
            };
            seen = [ "http-errors@1.5.1" ];
            };
  "http-signature@0.10.1" = nodeEnv.buildYarnPackage {
            packageName = "http-signature";
            version = "0.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-signature/-/http-signature-0.10.1.tgz";
              sha1 = "4fbdac132559aa8323121e540779c0a012b27e66";
            };
            dependencies = {
              "asn1@0.1.11" = pkgs."asn1@0.1.11";
              "assert-plus@0.1.5" = pkgs."assert-plus@0.1.5";
              "ctype@0.5.3" = pkgs."ctype@0.5.3";
            };
            seen = [ "http-signature@0.10.1" ];
            };
  "http-signature@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "http-signature";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.1.1.tgz";
              sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
            };
            dependencies = {
              "assert-plus@0.2.0" = pkgs."assert-plus@0.2.0";
              "jsprim@1.3.1" = pkgs."jsprim@1.3.1";
              "sshpk@1.10.1" = pkgs."sshpk@1.10.1";
            };
            seen = [ "http-signature@1.1.1" ];
            };
  "iconv-lite@0.4.13" = nodeEnv.buildYarnPackage {
            packageName = "iconv-lite";
            version = "0.4.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.13.tgz";
              sha1 = "1f88aba4ab0b1508e8312acc39345f36e992e2f2";
            };
            dependencies = {};
            seen = [ "iconv-lite@0.4.13" ];
            };
  "iconv-lite@0.4.15" = nodeEnv.buildYarnPackage {
            packageName = "iconv-lite";
            version = "0.4.15";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.15.tgz";
              sha1 = "fe265a218ac6a57cfe854927e9d04c19825eddeb";
            };
            dependencies = {};
            seen = [ "iconv-lite@0.4.15" ];
            };
  "indent-string@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "indent-string";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indent-string/-/indent-string-2.1.0.tgz";
              sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
            };
            dependencies = {
              "repeating@2.0.1" = pkgs."repeating@2.0.1";
            };
            seen = [ "indent-string@2.1.0" ];
            };
  "inherits@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "inherits";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.1.tgz";
              sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
            };
            dependencies = {};
            seen = [ "inherits@2.0.1" ];
            };
  "inquirer@0.12.0" = nodeEnv.buildYarnPackage {
            packageName = "inquirer";
            version = "0.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inquirer/-/inquirer-0.12.0.tgz";
              sha1 = "1ef2bfd63504df0bc75785fff8c2c41df12f077e";
            };
            dependencies = {
              "ansi-escapes@1.4.0" = pkgs."ansi-escapes@1.4.0";
              "ansi-regex@2.0.0" = pkgs."ansi-regex@2.0.0";
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "cli-cursor@1.0.2" = pkgs."cli-cursor@1.0.2";
              "cli-width@2.1.0" = pkgs."cli-width@2.1.0";
              "figures@1.7.0" = pkgs."figures@1.7.0";
              "lodash@4.17.4" = pkgs."lodash@4.17.4";
              "readline2@1.0.1" = pkgs."readline2@1.0.1";
              "run-async@0.1.0" = pkgs."run-async@0.1.0";
              "rx-lite@3.1.2" = pkgs."rx-lite@3.1.2";
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "inquirer@0.12.0" ];
            };
  "interpret@0.6.6" = nodeEnv.buildYarnPackage {
            packageName = "interpret";
            version = "0.6.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/interpret/-/interpret-0.6.6.tgz";
              sha1 = "fecd7a18e7ce5ca6abfb953e1f86213a49f1625b";
            };
            dependencies = {};
            seen = [ "interpret@0.6.6" ];
            };
  "invariant@2.2.2" = nodeEnv.buildYarnPackage {
            packageName = "invariant";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/invariant/-/invariant-2.2.2.tgz";
              sha1 = "9e1f56ac0acdb6bf303306f338be3b204ae60360";
            };
            dependencies = {
              "loose-envify@1.3.0" = pkgs."loose-envify@1.3.0";
            };
            seen = [ "invariant@2.2.2" ];
            };
  "ipaddr.js@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "ipaddr.js";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ipaddr.js/-/ipaddr.js-1.1.1.tgz";
              sha1 = "c791d95f52b29c1247d5df80ada39b8a73647230";
            };
            dependencies = {};
            seen = [ "ipaddr.js@1.1.1" ];
            };
  "is-fullwidth-code-point@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "is-fullwidth-code-point";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
              sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
            };
            dependencies = {
              "number-is-nan@1.0.1" = pkgs."number-is-nan@1.0.1";
            };
            seen = [ "is-fullwidth-code-point@1.0.0" ];
            };
  "is-windows@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "is-windows";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-windows/-/is-windows-0.2.0.tgz";
              sha1 = "de1aa6d63ea29dd248737b69f1ff8b8002d2108c";
            };
            dependencies = {};
            seen = [ "is-windows@0.2.0" ];
            };
  "isarray@0.0.1" = nodeEnv.buildYarnPackage {
            packageName = "isarray";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz";
              sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
            };
            dependencies = {};
            seen = [ "isarray@0.0.1" ];
            };
  "js-tokens@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "js-tokens";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-2.0.0.tgz";
              sha1 = "79903f5563ee778cc1162e6dcf1a0027c97f9cb5";
            };
            dependencies = {};
            seen = [ "js-tokens@2.0.0" ];
            };
  "js-yaml@3.6.1" = nodeEnv.buildYarnPackage {
            packageName = "js-yaml";
            version = "3.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.6.1.tgz";
              sha1 = "6e5fe67d8b205ce4d22fad05b7781e8dadcc4b30";
            };
            dependencies = {
              "argparse@1.0.9" = pkgs."argparse@1.0.9";
              "esprima@2.7.3" = pkgs."esprima@2.7.3";
            };
            seen = [ "js-yaml@3.6.1" ];
            };
  "jsesc@0.5.0" = nodeEnv.buildYarnPackage {
            packageName = "jsesc";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsesc/-/jsesc-0.5.0.tgz";
              sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
            };
            dependencies = {};
            seen = [ "jsesc@0.5.0" ];
            };
  "jsonfile@2.4.0" = nodeEnv.buildYarnPackage {
            packageName = "jsonfile";
            version = "2.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-2.4.0.tgz";
              sha1 = "3736a2b428b87bbda0cc83b53fa3d633a35c2ae8";
            };
            dependencies = {};
            seen = [ "jsonfile@2.4.0" ];
            };
  "jsonfile@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "jsonfile";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-3.0.1.tgz";
              sha1 = "a5ecc6f65f53f662c4415c7675a0331d0992ec66";
            };
            dependencies = {};
            seen = [ "jsonfile@3.0.1" ];
            };
  "load-json-file@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "load-json-file";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/load-json-file/-/load-json-file-1.1.0.tgz";
              sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "parse-json@2.2.0" = pkgs."parse-json@2.2.0";
              "pify@2.3.0" = pkgs."pify@2.3.0";
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
              "strip-bom@2.0.0" = pkgs."strip-bom@2.0.0";
            };
            seen = [ "load-json-file@1.1.0" ];
            };
  "loader-utils@0.2.16" = nodeEnv.buildYarnPackage {
            packageName = "loader-utils";
            version = "0.2.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loader-utils/-/loader-utils-0.2.16.tgz";
              sha1 = "f08632066ed8282835dff88dfb52704765adee6d";
            };
            dependencies = {
              "big.js@3.1.3" = pkgs."big.js@3.1.3";
              "emojis-list@2.1.0" = pkgs."emojis-list@2.1.0";
              "json5@0.5.1" = pkgs."json5@0.5.1";
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
            };
            seen = [ "loader-utils@0.2.16" ];
            };
  "lodash.assign@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.assign";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.assign/-/lodash.assign-3.2.0.tgz";
              sha1 = "3ce9f0234b4b2223e296b8fa0ac1fee8ebca64fa";
            };
            dependencies = {
              "lodash._baseassign@3.2.0" = pkgs."lodash._baseassign@3.2.0";
              "lodash._createassigner@3.1.1" = pkgs."lodash._createassigner@3.1.1";
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
            };
            seen = [ "lodash.assign@3.2.0" ];
            };
  "lodash.camelcase@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.camelcase";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.camelcase/-/lodash.camelcase-3.0.1.tgz";
              sha1 = "932c8b87f8a4377897c67197533282f97aeac298";
            };
            dependencies = {
              "lodash._createcompounder@3.0.0" = pkgs."lodash._createcompounder@3.0.0";
            };
            seen = [ "lodash.camelcase@3.0.1" ];
            };
  "lodash.find@3.2.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash.find";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.find/-/lodash.find-3.2.1.tgz";
              sha1 = "046e319f3ace912ac6c9246c7f683c5ec07b36ad";
            };
            dependencies = {
              "lodash._basecallback@3.3.1" = pkgs."lodash._basecallback@3.3.1";
              "lodash._baseeach@3.0.4" = pkgs."lodash._baseeach@3.0.4";
              "lodash._basefind@3.0.0" = pkgs."lodash._basefind@3.0.0";
              "lodash._basefindindex@3.6.0" = pkgs."lodash._basefindindex@3.6.0";
              "lodash.isarray@3.0.4" = pkgs."lodash.isarray@3.0.4";
              "lodash.keys@3.1.2" = pkgs."lodash.keys@3.1.2";
            };
            seen = [ "lodash.find@3.2.1" ];
            };
  "lodash.get@3.7.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.get";
            version = "3.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.get/-/lodash.get-3.7.0.tgz";
              sha1 = "3ce68ae2c91683b281cc5394128303cbf75e691f";
            };
            dependencies = {
              "lodash._baseget@3.7.2" = pkgs."lodash._baseget@3.7.2";
              "lodash._topath@3.8.1" = pkgs."lodash._topath@3.8.1";
            };
            seen = [ "lodash.get@3.7.0" ];
            };
  "lodash.isplainobject@3.2.0" = nodeEnv.buildYarnPackage {
            packageName = "lodash.isplainobject";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isplainobject/-/lodash.isplainobject-3.2.0.tgz";
              sha1 = "9a8238ae16b200432960cd7346512d0123fbf4c5";
            };
            dependencies = {
              "lodash._basefor@3.0.3" = pkgs."lodash._basefor@3.0.3";
              "lodash.isarguments@3.1.0" = pkgs."lodash.isarguments@3.1.0";
              "lodash.keysin@3.0.8" = pkgs."lodash.keysin@3.0.8";
            };
            seen = [ "lodash.isplainobject@3.2.0" ];
            };
  "lodash@4.11.1" = nodeEnv.buildYarnPackage {
            packageName = "lodash";
            version = "4.11.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash/-/lodash-4.11.1.tgz";
              sha1 = "a32106eb8e2ec8e82c241611414773c9df15f8bc";
            };
            dependencies = {};
            seen = [ "lodash@4.11.1" ];
            };
  "lodash@4.17.5" = nodeEnv.buildYarnPackage {
            packageName = "lodash";
            version = "4.17.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.5.tgz";
              sha1 = "99a92d65c0272debe8c96b6057bc8fbfa3bed511";
            };
            dependencies = {};
            seen = [ "lodash@4.17.5" ];
            };
  "lodash@4.16.6" = nodeEnv.buildYarnPackage {
            packageName = "lodash";
            version = "4.16.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash/-/lodash-4.16.6.tgz";
              sha1 = "d22c9ac660288f3843e16ba7d2b5d06cca27d777";
            };
            dependencies = {};
            seen = [ "lodash@4.16.6" ];
            };
  "log-symbols@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "log-symbols";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/log-symbols/-/log-symbols-1.0.2.tgz";
              sha1 = "376ff7b58ea3086a0f09facc74617eca501e1a18";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
            };
            seen = [ "log-symbols@1.0.2" ];
            };
  "loose-envify@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "loose-envify";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loose-envify/-/loose-envify-1.3.0.tgz";
              sha1 = "6b26248c42f6d4fa4b0d8542f78edfcde35642a8";
            };
            dependencies = {
              "js-tokens@2.0.0" = pkgs."js-tokens@2.0.0";
            };
            seen = [ "loose-envify@1.3.0" ];
            };
  "memory-fs@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "memory-fs";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.2.0.tgz";
              sha1 = "f2bb25368bc121e391c2520de92969caee0a0290";
            };
            dependencies = {};
            seen = [ "memory-fs@0.2.0" ];
            };
  "memory-fs@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "memory-fs";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.3.0.tgz";
              sha1 = "7bcc6b629e3a43e871d7e29aca6ae8a7f15cbb20";
            };
            dependencies = {
              "errno@0.1.4" = pkgs."errno@0.1.4";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
            };
            seen = [ "memory-fs@0.3.0" ];
            };
  "mime-db@1.12.0" = nodeEnv.buildYarnPackage {
            packageName = "mime-db";
            version = "1.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.12.0.tgz";
              sha1 = "3d0c63180f458eb10d325aaa37d7c58ae312e9d7";
            };
            dependencies = {};
            seen = [ "mime-db@1.12.0" ];
            };
  "mime-db@1.25.0" = nodeEnv.buildYarnPackage {
            packageName = "mime-db";
            version = "1.25.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.25.0.tgz";
              sha1 = "c18dbd7c73a5dbf6f44a024dc0d165a1e7b1c392";
            };
            dependencies = {};
            seen = [ "mime-db@1.25.0" ];
            };
  "mime-types@2.1.13" = nodeEnv.buildYarnPackage {
            packageName = "mime-types";
            version = "2.1.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.13.tgz";
              sha1 = "e07aaa9c6c6b9a7ca3012c69003ad25a39e92a88";
            };
            dependencies = {
              "mime-db@1.25.0" = pkgs."mime-db@1.25.0";
            };
            seen = [ "mime-types@2.1.13" ];
            };
  "mime-types@2.0.14" = nodeEnv.buildYarnPackage {
            packageName = "mime-types";
            version = "2.0.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.0.14.tgz";
              sha1 = "310e159db23e077f8bb22b748dabfa4957140aa6";
            };
            dependencies = {
              "mime-db@1.12.0" = pkgs."mime-db@1.12.0";
            };
            seen = [ "mime-types@2.0.14" ];
            };
  "mime@1.2.11" = nodeEnv.buildYarnPackage {
            packageName = "mime";
            version = "1.2.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime/-/mime-1.2.11.tgz";
              sha1 = "58203eed86e3a5ef17aed2b7d9ebd47f0a60dd10";
            };
            dependencies = {};
            seen = [ "mime@1.2.11" ];
            };
  "mime@1.3.4" = nodeEnv.buildYarnPackage {
            packageName = "mime";
            version = "1.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime/-/mime-1.3.4.tgz";
              sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
            };
            dependencies = {};
            seen = [ "mime@1.3.4" ];
            };
  "minimatch@3.0.3" = nodeEnv.buildYarnPackage {
            packageName = "minimatch";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.3.tgz";
              sha1 = "2a4e4090b96b2db06a9d7df01055a62a77c9b774";
            };
            dependencies = {
              "brace-expansion@1.1.6" = pkgs."brace-expansion@1.1.6";
            };
            seen = [ "minimatch@3.0.3" ];
            };
  "minimist@0.0.8" = nodeEnv.buildYarnPackage {
            packageName = "minimist";
            version = "0.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.8.tgz";
              sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
            };
            dependencies = {};
            seen = [ "minimist@0.0.8" ];
            };
  "mkdirp@0.5.0" = nodeEnv.buildYarnPackage {
            packageName = "mkdirp";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.0.tgz";
              sha1 = "1d73076a6df986cd9344e15e71fcc05a4c9abf12";
            };
            dependencies = {
              "minimist@0.0.8" = pkgs."minimist@0.0.8";
            };
            seen = [ "mkdirp@0.5.0" ];
            };
  "mobx@2.7.0" = nodeEnv.buildYarnPackage {
            packageName = "mobx";
            version = "2.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx/-/mobx-2.7.0.tgz";
              sha1 = "cf3d82d18c0ca7f458d8f2a240817b3dc7e54a01";
            };
            dependencies = {};
            seen = [ "mobx@2.7.0" ];
            };
  "moment@2.17.1" = nodeEnv.buildYarnPackage {
            packageName = "moment";
            version = "2.17.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/moment/-/moment-2.17.1.tgz";
              sha1 = "fed9506063f36b10f066c8b59a144d7faebe1d82";
            };
            dependencies = {};
            seen = [ "moment@2.17.1" ];
            };
  "ms@0.7.1" = nodeEnv.buildYarnPackage {
            packageName = "ms";
            version = "0.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ms/-/ms-0.7.1.tgz";
              sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
            };
            dependencies = {};
            seen = [ "ms@0.7.1" ];
            };
  "ms@0.7.2" = nodeEnv.buildYarnPackage {
            packageName = "ms";
            version = "0.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ms/-/ms-0.7.2.tgz";
              sha1 = "ae25cf2512b3885a1d95d7f037868d8431124765";
            };
            dependencies = {};
            seen = [ "ms@0.7.2" ];
            };
  "mute-stream@0.0.5" = nodeEnv.buildYarnPackage {
            packageName = "mute-stream";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.5.tgz";
              sha1 = "8fbfabb0a98a253d3184331f9e8deb7372fac6c0";
            };
            dependencies = {};
            seen = [ "mute-stream@0.0.5" ];
            };
  "nan@2.5.0" = nodeEnv.buildYarnPackage {
            packageName = "nan";
            version = "2.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nan/-/nan-2.5.0.tgz";
              sha1 = "aa8f1e34531d807e9e27755b234b4a6ec0c152a8";
            };
            dependencies = {};
            seen = [ "nan@2.5.0" ];
            };
  "node-gyp@3.4.0" = nodeEnv.buildYarnPackage {
            packageName = "node-gyp";
            version = "3.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-gyp/-/node-gyp-3.4.0.tgz";
              sha1 = "dda558393b3ecbbe24c9e6b8703c71194c63fa36";
            };
            dependencies = {
              "fstream@1.0.10" = pkgs."fstream@1.0.10";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "minimatch@3.0.3" = pkgs."minimatch@3.0.3";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "nopt@3.0.6" = pkgs."nopt@3.0.6";
              "npmlog@2.0.3" = pkgs."npmlog@2.0.3";
              "osenv@0.1.4" = pkgs."osenv@0.1.4";
              "path-array@1.0.1" = pkgs."path-array@1.0.1";
              "request@2.79.0" = pkgs."request@2.79.0";
              "rimraf@2.5.4" = pkgs."rimraf@2.5.4";
              "semver@5.3.0" = pkgs."semver@5.3.0";
              "tar@2.2.1" = pkgs."tar@2.2.1";
              "which@1.2.12" = pkgs."which@1.2.12";
            };
            seen = [ "node-gyp@3.4.0" ];
            };
  "node-libs-browser@0.7.0" = nodeEnv.buildYarnPackage {
            packageName = "node-libs-browser";
            version = "0.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-libs-browser/-/node-libs-browser-0.7.0.tgz";
              sha1 = "3e272c0819e308935e26674408d7af0e1491b83b";
            };
            dependencies = {
              "assert@1.4.1" = pkgs."assert@1.4.1";
              "browserify-zlib@0.1.4" = pkgs."browserify-zlib@0.1.4";
              "buffer@4.9.1" = pkgs."buffer@4.9.1";
              "console-browserify@1.1.0" = pkgs."console-browserify@1.1.0";
              "constants-browserify@1.0.0" = pkgs."constants-browserify@1.0.0";
              "crypto-browserify@3.3.0" = pkgs."crypto-browserify@3.3.0";
              "domain-browser@1.1.7" = pkgs."domain-browser@1.1.7";
              "events@1.1.1" = pkgs."events@1.1.1";
              "https-browserify@0.0.1" = pkgs."https-browserify@0.0.1";
              "os-browserify@0.2.1" = pkgs."os-browserify@0.2.1";
              "path-browserify@0.0.0" = pkgs."path-browserify@0.0.0";
              "process@0.11.9" = pkgs."process@0.11.9";
              "punycode@1.4.1" = pkgs."punycode@1.4.1";
              "querystring-es3@0.2.1" = pkgs."querystring-es3@0.2.1";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "stream-browserify@2.0.1" = pkgs."stream-browserify@2.0.1";
              "stream-http@2.6.0" = pkgs."stream-http@2.6.0";
              "string_decoder@0.10.31" = pkgs."string_decoder@0.10.31";
              "timers-browserify@2.0.2" = pkgs."timers-browserify@2.0.2";
              "tty-browserify@0.0.0" = pkgs."tty-browserify@0.0.0";
              "url@0.11.0" = pkgs."url@0.11.0";
              "util@0.10.3" = pkgs."util@0.10.3";
              "vm-browserify@0.0.4" = pkgs."vm-browserify@0.0.4";
            };
            seen = [ "node-libs-browser@0.7.0" ];
            };
  "nopt@1.0.10" = nodeEnv.buildYarnPackage {
            packageName = "nopt";
            version = "1.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nopt/-/nopt-1.0.10.tgz";
              sha1 = "6ddd21bd2a31417b92727dd585f8a6f37608ebee";
            };
            dependencies = {
              "abbrev@1.0.9" = pkgs."abbrev@1.0.9";
            };
            seen = [ "nopt@1.0.10" ];
            };
  "npmlog@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "npmlog";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npmlog/-/npmlog-2.0.3.tgz";
              sha1 = "020f99351f0c02e399c674ba256e7c4d3b3dd298";
            };
            dependencies = {
              "ansi@0.3.1" = pkgs."ansi@0.3.1";
              "are-we-there-yet@1.1.2" = pkgs."are-we-there-yet@1.1.2";
              "gauge@1.2.7" = pkgs."gauge@1.2.7";
            };
            seen = [ "npmlog@2.0.3" ];
            };
  "npmlog@4.0.2" = nodeEnv.buildYarnPackage {
            packageName = "npmlog";
            version = "4.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.0.2.tgz";
              sha1 = "d03950e0e78ce1527ba26d2a7592e9348ac3e75f";
            };
            dependencies = {
              "are-we-there-yet@1.1.2" = pkgs."are-we-there-yet@1.1.2";
              "console-control-strings@1.1.0" = pkgs."console-control-strings@1.1.0";
              "gauge@2.7.2" = pkgs."gauge@2.7.2";
              "set-blocking@2.0.0" = pkgs."set-blocking@2.0.0";
            };
            seen = [ "npmlog@4.0.2" ];
            };
  "oauth-sign@0.6.0" = nodeEnv.buildYarnPackage {
            packageName = "oauth-sign";
            version = "0.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.6.0.tgz";
              sha1 = "7dbeae44f6ca454e1f168451d630746735813ce3";
            };
            dependencies = {};
            seen = [ "oauth-sign@0.6.0" ];
            };
  "object-assign@3.0.0" = nodeEnv.buildYarnPackage {
            packageName = "object-assign";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-assign/-/object-assign-3.0.0.tgz";
              sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
            };
            dependencies = {};
            seen = [ "object-assign@3.0.0" ];
            };
  "object-assign@4.1.0" = nodeEnv.buildYarnPackage {
            packageName = "object-assign";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.0.tgz";
              sha1 = "7a3b3d0e98063d43f4c03f2e8ae6cd51a86883a0";
            };
            dependencies = {};
            seen = [ "object-assign@4.1.0" ];
            };
  "object-keys@0.4.0" = nodeEnv.buildYarnPackage {
            packageName = "object-keys";
            version = "0.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-keys/-/object-keys-0.4.0.tgz";
              sha1 = "28a6aae7428dd2c3a92f3d95f21335dd204e0336";
            };
            dependencies = {};
            seen = [ "object-keys@0.4.0" ];
            };
  "once@1.3.3" = nodeEnv.buildYarnPackage {
            packageName = "once";
            version = "1.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/once/-/once-1.3.3.tgz";
              sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
            };
            dependencies = {
              "wrappy@1.0.2" = pkgs."wrappy@1.0.2";
            };
            seen = [ "once@1.3.3" ];
            };
  "onetime@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "onetime";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/onetime/-/onetime-1.1.0.tgz";
              sha1 = "a1f7838f8314c516f05ecefcbc4ccfe04b4ed789";
            };
            dependencies = {};
            seen = [ "onetime@1.1.0" ];
            };
  "parseurl@1.3.1" = nodeEnv.buildYarnPackage {
            packageName = "parseurl";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.1.tgz";
              sha1 = "c8ab8c9223ba34888aa64a297b28853bec18da56";
            };
            dependencies = {};
            seen = [ "parseurl@1.3.1" ];
            };
  "path-exists@2.1.0" = nodeEnv.buildYarnPackage {
            packageName = "path-exists";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-exists/-/path-exists-2.1.0.tgz";
              sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
            };
            dependencies = {
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
            };
            seen = [ "path-exists@2.1.0" ];
            };
  "path-type@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "path-type";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-type/-/path-type-1.1.0.tgz";
              sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "pify@2.3.0" = pkgs."pify@2.3.0";
              "pinkie-promise@2.0.1" = pkgs."pinkie-promise@2.0.1";
            };
            seen = [ "path-type@1.1.0" ];
            };
  "pbkdf2@3.0.9" = nodeEnv.buildYarnPackage {
            packageName = "pbkdf2";
            version = "3.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pbkdf2/-/pbkdf2-3.0.9.tgz";
              sha1 = "f2c4b25a600058b3c3773c086c37dbbee1ffe693";
            };
            dependencies = {
              "create-hmac@1.1.4" = pkgs."create-hmac@1.1.4";
            };
            seen = [ "pbkdf2@3.0.9" ];
            };
  "performance-now@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "performance-now";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/performance-now/-/performance-now-0.2.0.tgz";
              sha1 = "33ef30c5c77d4ea21c5a53869d91b56d8f2555e5";
            };
            dependencies = {};
            seen = [ "performance-now@0.2.0" ];
            };
  "pify@2.3.0" = nodeEnv.buildYarnPackage {
            packageName = "pify";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pify/-/pify-2.3.0.tgz";
              sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
            };
            dependencies = {};
            seen = [ "pify@2.3.0" ];
            };
  "pkg-up@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "pkg-up";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pkg-up/-/pkg-up-1.0.0.tgz";
              sha1 = "3e08fb461525c4421624a33b9f7e6d0af5b05a26";
            };
            dependencies = {
              "find-up@1.1.2" = pkgs."find-up@1.1.2";
            };
            seen = [ "pkg-up@1.0.0" ];
            };
  "postcss-modules-extract-imports@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "postcss-modules-extract-imports";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.0.0.tgz";
              sha1 = "5b07f368e350cda6fd5c8844b79123a7bd3e37be";
            };
            dependencies = {
              "postcss@5.2.9" = pkgs."postcss@5.2.9";
            };
            seen = [ "postcss-modules-extract-imports@1.0.0" ];
            };
  "postcss@5.1.2" = nodeEnv.buildYarnPackage {
            packageName = "postcss";
            version = "5.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss/-/postcss-5.1.2.tgz";
              sha1 = "bd84886a66bcad489afaf7c673eed5ef639551e2";
            };
            dependencies = {
              "js-base64@2.1.9" = pkgs."js-base64@2.1.9";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
              "supports-color@3.1.2" = pkgs."supports-color@3.1.2";
            };
            seen = [ "postcss@5.1.2" ];
            };
  "postcss@5.2.9" = nodeEnv.buildYarnPackage {
            packageName = "postcss";
            version = "5.2.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss/-/postcss-5.2.9.tgz";
              sha1 = "282a644f92d4b871ade2d3ce8bd0ea46f18317b6";
            };
            dependencies = {
              "chalk@1.1.3" = pkgs."chalk@1.1.3";
              "js-base64@2.1.9" = pkgs."js-base64@2.1.9";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
              "supports-color@3.1.2" = pkgs."supports-color@3.1.2";
            };
            seen = [ "postcss@5.2.9" ];
            };
  "private@0.1.6" = nodeEnv.buildYarnPackage {
            packageName = "private";
            version = "0.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/private/-/private-0.1.6.tgz";
              sha1 = "55c6a976d0f9bafb9924851350fe47b9b5fbb7c1";
            };
            dependencies = {};
            seen = [ "private@0.1.6" ];
            };
  "process@0.5.2" = nodeEnv.buildYarnPackage {
            packageName = "process";
            version = "0.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/process/-/process-0.5.2.tgz";
              sha1 = "1638d8a8e34c2f440a91db95ab9aeb677fc185cf";
            };
            dependencies = {};
            seen = [ "process@0.5.2" ];
            };
  "progress@1.1.8" = nodeEnv.buildYarnPackage {
            packageName = "progress";
            version = "1.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/progress/-/progress-1.1.8.tgz";
              sha1 = "e260c78f6161cdd9b0e56cc3e0a85de17c7a57be";
            };
            dependencies = {};
            seen = [ "progress@1.1.8" ];
            };
  "prop-types@15.5.10" = nodeEnv.buildYarnPackage {
            packageName = "prop-types";
            version = "15.5.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prop-types/-/prop-types-15.5.10.tgz";
              sha1 = "2797dfc3126182e3a95e3dfbb2e893ddd7456154";
            };
            dependencies = {
              "fbjs@0.8.16" = pkgs."fbjs@0.8.16";
              "loose-envify@1.3.1" = pkgs."loose-envify@1.3.1";
            };
            seen = [ "prop-types@15.5.10" ];
            };
  "proxy-addr@1.1.2" = nodeEnv.buildYarnPackage {
            packageName = "proxy-addr";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/proxy-addr/-/proxy-addr-1.1.2.tgz";
              sha1 = "b4cc5f22610d9535824c123aef9d3cf73c40ba37";
            };
            dependencies = {
              "forwarded@0.1.0" = pkgs."forwarded@0.1.0";
              "ipaddr.js@1.1.1" = pkgs."ipaddr.js@1.1.1";
            };
            seen = [ "proxy-addr@1.1.2" ];
            };
  "punycode@1.3.2" = nodeEnv.buildYarnPackage {
            packageName = "punycode";
            version = "1.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/punycode/-/punycode-1.3.2.tgz";
              sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
            };
            dependencies = {};
            seen = [ "punycode@1.3.2" ];
            };
  "q@1.4.1" = nodeEnv.buildYarnPackage {
            packageName = "q";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/q/-/q-1.4.1.tgz";
              sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
            };
            dependencies = {};
            seen = [ "q@1.4.1" ];
            };
  "qs@6.2.0" = nodeEnv.buildYarnPackage {
            packageName = "qs";
            version = "6.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-6.2.0.tgz";
              sha1 = "3b7848c03c2dece69a9522b0fae8c4126d745f3b";
            };
            dependencies = {};
            seen = [ "qs@6.2.0" ];
            };
  "qs@6.4.0" = nodeEnv.buildYarnPackage {
            packageName = "qs";
            version = "6.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-6.4.0.tgz";
              sha1 = "13e26d28ad6b0ffaa91312cd3bf708ed351e7233";
            };
            dependencies = {};
            seen = [ "qs@6.4.0" ];
            };
  "qs@2.4.2" = nodeEnv.buildYarnPackage {
            packageName = "qs";
            version = "2.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-2.4.2.tgz";
              sha1 = "f7ce788e5777df0b5010da7f7c4e73ba32470f5a";
            };
            dependencies = {};
            seen = [ "qs@2.4.2" ];
            };
  "qs@6.3.0" = nodeEnv.buildYarnPackage {
            packageName = "qs";
            version = "6.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-6.3.0.tgz";
              sha1 = "f403b264f23bc01228c74131b407f18d5ea5d442";
            };
            dependencies = {};
            seen = [ "qs@6.3.0" ];
            };
  "query-string@4.2.3" = nodeEnv.buildYarnPackage {
            packageName = "query-string";
            version = "4.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/query-string/-/query-string-4.2.3.tgz";
              sha1 = "9f27273d207a25a8ee4c7b8c74dcd45d556db822";
            };
            dependencies = {
              "object-assign@4.1.0" = pkgs."object-assign@4.1.0";
              "strict-uri-encode@1.1.0" = pkgs."strict-uri-encode@1.1.0";
            };
            seen = [ "query-string@4.2.3" ];
            };
  "randombytes@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "randombytes";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randombytes/-/randombytes-2.0.3.tgz";
              sha1 = "674c99760901c3c4112771a31e521dc349cc09ec";
            };
            dependencies = {};
            seen = [ "randombytes@2.0.3" ];
            };
  "react-komposer@1.13.1" = nodeEnv.buildYarnPackage {
            packageName = "react-komposer";
            version = "1.13.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-komposer/-/react-komposer-1.13.1.tgz";
              sha1 = "4b8ac4bcc71323bd7413dcab95c831197f50eed0";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "hoist-non-react-statics@1.2.0" = pkgs."hoist-non-react-statics@1.2.0";
              "invariant@2.2.2" = pkgs."invariant@2.2.2";
              "mobx@2.7.0" = pkgs."mobx@2.7.0";
              "shallowequal@0.2.2" = pkgs."shallowequal@0.2.2";
            };
            seen = [ "react-komposer@1.13.1" ];
            };
  "react-modal@1.6.5" = nodeEnv.buildYarnPackage {
            packageName = "react-modal";
            version = "1.6.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-modal/-/react-modal-1.6.5.tgz";
              sha1 = "f720d99bd81b1def5c2c32e0ffaa48bdaf484862";
            };
            dependencies = {
              "element-class@0.2.2" = pkgs."element-class@0.2.2";
              "exenv@1.2.0" = pkgs."exenv@1.2.0";
              "lodash.assign@4.2.0" = pkgs."lodash.assign@4.2.0";
            };
            seen = [ "react-modal@1.6.5" ];
            };
  "read-pkg-up@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "read-pkg-up";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
              sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
            };
            dependencies = {
              "find-up@1.1.2" = pkgs."find-up@1.1.2";
              "read-pkg@1.1.0" = pkgs."read-pkg@1.1.0";
            };
            seen = [ "read-pkg-up@1.0.1" ];
            };
  "read-pkg@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "read-pkg";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-1.1.0.tgz";
              sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
            };
            dependencies = {
              "load-json-file@1.1.0" = pkgs."load-json-file@1.1.0";
              "normalize-package-data@2.3.5" = pkgs."normalize-package-data@2.3.5";
              "path-type@1.1.0" = pkgs."path-type@1.1.0";
            };
            seen = [ "read-pkg@1.1.0" ];
            };
  "readable-stream@1.1.14" = nodeEnv.buildYarnPackage {
            packageName = "readable-stream";
            version = "1.1.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.1.14.tgz";
              sha1 = "7cf4c54ef648e3813084c636dd2079e166c081d9";
            };
            dependencies = {
              "core-util-is@1.0.2" = pkgs."core-util-is@1.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "isarray@0.0.1" = pkgs."isarray@0.0.1";
              "string_decoder@0.10.31" = pkgs."string_decoder@0.10.31";
            };
            seen = [ "readable-stream@1.1.14" ];
            };
  "readable-stream@1.0.34" = nodeEnv.buildYarnPackage {
            packageName = "readable-stream";
            version = "1.0.34";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.0.34.tgz";
              sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
            };
            dependencies = {
              "core-util-is@1.0.2" = pkgs."core-util-is@1.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "isarray@0.0.1" = pkgs."isarray@0.0.1";
              "string_decoder@0.10.31" = pkgs."string_decoder@0.10.31";
            };
            seen = [ "readable-stream@1.0.34" ];
            };
  "readable-stream@2.0.6" = nodeEnv.buildYarnPackage {
            packageName = "readable-stream";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.0.6.tgz";
              sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
            };
            dependencies = {
              "core-util-is@1.0.2" = pkgs."core-util-is@1.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
              "process-nextick-args@1.0.7" = pkgs."process-nextick-args@1.0.7";
              "string_decoder@0.10.31" = pkgs."string_decoder@0.10.31";
              "util-deprecate@1.0.2" = pkgs."util-deprecate@1.0.2";
            };
            seen = [ "readable-stream@2.0.6" ];
            };
  "readable-stream@2.1.5" = nodeEnv.buildYarnPackage {
            packageName = "readable-stream";
            version = "2.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.1.5.tgz";
              sha1 = "66fa8b720e1438b364681f2ad1a63c618448c9d0";
            };
            dependencies = {
              "buffer-shims@1.0.0" = pkgs."buffer-shims@1.0.0";
              "core-util-is@1.0.2" = pkgs."core-util-is@1.0.2";
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
              "isarray@1.0.0" = pkgs."isarray@1.0.0";
              "process-nextick-args@1.0.7" = pkgs."process-nextick-args@1.0.7";
              "string_decoder@0.10.31" = pkgs."string_decoder@0.10.31";
              "util-deprecate@1.0.2" = pkgs."util-deprecate@1.0.2";
            };
            seen = [ "readable-stream@2.1.5" ];
            };
  "recast@0.11.18" = nodeEnv.buildYarnPackage {
            packageName = "recast";
            version = "0.11.18";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recast/-/recast-0.11.18.tgz";
              sha1 = "07af6257ca769868815209401d4d60eef1b5b947";
            };
            dependencies = {
              "ast-types@0.9.2" = pkgs."ast-types@0.9.2";
              "esprima@3.1.3" = pkgs."esprima@3.1.3";
              "private@0.1.6" = pkgs."private@0.1.6";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "recast@0.11.18" ];
            };
  "regenerator-runtime@0.10.1" = nodeEnv.buildYarnPackage {
            packageName = "regenerator-runtime";
            version = "0.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.10.1.tgz";
              sha1 = "257f41961ce44558b18f7814af48c17559f9faeb";
            };
            dependencies = {};
            seen = [ "regenerator-runtime@0.10.1" ];
            };
  "regenerator-runtime@0.10.5" = nodeEnv.buildYarnPackage {
            packageName = "regenerator-runtime";
            version = "0.10.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.10.5.tgz";
              sha1 = "336c3efc1220adcedda2c9fab67b5a7955a33658";
            };
            dependencies = {};
            seen = [ "regenerator-runtime@0.10.5" ];
            };
  "regenerator-runtime@0.9.6" = nodeEnv.buildYarnPackage {
            packageName = "regenerator-runtime";
            version = "0.9.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.9.6.tgz";
              sha1 = "d33eb95d0d2001a4be39659707c51b0cb71ce029";
            };
            dependencies = {};
            seen = [ "regenerator-runtime@0.9.6" ];
            };
  "regenerator-transform@0.9.8" = nodeEnv.buildYarnPackage {
            packageName = "regenerator-transform";
            version = "0.9.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-transform/-/regenerator-transform-0.9.8.tgz";
              sha1 = "0f88bb2bc03932ddb7b6b7312e68078f01026d6c";
            };
            dependencies = {
              "babel-runtime@6.20.0" = pkgs."babel-runtime@6.20.0";
              "babel-types@6.21.0" = pkgs."babel-types@6.21.0";
              "private@0.1.6" = pkgs."private@0.1.6";
            };
            seen = [ "regenerator-transform@0.9.8" ];
            };
  "regexpu-core@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "regexpu-core";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regexpu-core/-/regexpu-core-1.0.0.tgz";
              sha1 = "86a763f58ee4d7c2f6b102e4764050de7ed90c6b";
            };
            dependencies = {
              "regenerate@1.3.2" = pkgs."regenerate@1.3.2";
              "regjsgen@0.2.0" = pkgs."regjsgen@0.2.0";
              "regjsparser@0.1.5" = pkgs."regjsparser@0.1.5";
            };
            seen = [ "regexpu-core@1.0.0" ];
            };
  "repeating@1.1.3" = nodeEnv.buildYarnPackage {
            packageName = "repeating";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/repeating/-/repeating-1.1.3.tgz";
              sha1 = "3d4114218877537494f97f77f9785fab810fa4ac";
            };
            dependencies = {
              "is-finite@1.0.2" = pkgs."is-finite@1.0.2";
            };
            seen = [ "repeating@1.1.3" ];
            };
  "request@2.79.0" = nodeEnv.buildYarnPackage {
            packageName = "request";
            version = "2.79.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/request/-/request-2.79.0.tgz";
              sha1 = "4dfe5bf6be8b8cdc37fcf93e04b65577722710de";
            };
            dependencies = {
              "aws-sign2@0.6.0" = pkgs."aws-sign2@0.6.0";
              "aws4@1.5.0" = pkgs."aws4@1.5.0";
              "caseless@0.11.0" = pkgs."caseless@0.11.0";
              "combined-stream@1.0.5" = pkgs."combined-stream@1.0.5";
              "extend@3.0.0" = pkgs."extend@3.0.0";
              "forever-agent@0.6.1" = pkgs."forever-agent@0.6.1";
              "form-data@2.1.2" = pkgs."form-data@2.1.2";
              "har-validator@2.0.6" = pkgs."har-validator@2.0.6";
              "hawk@3.1.3" = pkgs."hawk@3.1.3";
              "http-signature@1.1.1" = pkgs."http-signature@1.1.1";
              "is-typedarray@1.0.0" = pkgs."is-typedarray@1.0.0";
              "isstream@0.1.2" = pkgs."isstream@0.1.2";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "mime-types@2.1.13" = pkgs."mime-types@2.1.13";
              "oauth-sign@0.8.2" = pkgs."oauth-sign@0.8.2";
              "qs@6.3.0" = pkgs."qs@6.3.0";
              "stringstream@0.0.5" = pkgs."stringstream@0.0.5";
              "tough-cookie@2.3.2" = pkgs."tough-cookie@2.3.2";
              "tunnel-agent@0.4.3" = pkgs."tunnel-agent@0.4.3";
              "uuid@3.0.1" = pkgs."uuid@3.0.1";
            };
            seen = [ "request@2.79.0" ];
            };
  "request@2.55.0" = nodeEnv.buildYarnPackage {
            packageName = "request";
            version = "2.55.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/request/-/request-2.55.0.tgz";
              sha1 = "d75c1cdf679d76bb100f9bffe1fe551b5c24e93d";
            };
            dependencies = {
              "aws-sign2@0.5.0" = pkgs."aws-sign2@0.5.0";
              "bl@0.9.5" = pkgs."bl@0.9.5";
              "caseless@0.9.0" = pkgs."caseless@0.9.0";
              "combined-stream@0.0.7" = pkgs."combined-stream@0.0.7";
              "forever-agent@0.6.1" = pkgs."forever-agent@0.6.1";
              "form-data@0.2.0" = pkgs."form-data@0.2.0";
              "har-validator@1.8.0" = pkgs."har-validator@1.8.0";
              "hawk@2.3.1" = pkgs."hawk@2.3.1";
              "http-signature@0.10.1" = pkgs."http-signature@0.10.1";
              "isstream@0.1.2" = pkgs."isstream@0.1.2";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "mime-types@2.0.14" = pkgs."mime-types@2.0.14";
              "node-uuid@1.4.7" = pkgs."node-uuid@1.4.7";
              "oauth-sign@0.6.0" = pkgs."oauth-sign@0.6.0";
              "qs@2.4.2" = pkgs."qs@2.4.2";
              "stringstream@0.0.5" = pkgs."stringstream@0.0.5";
              "tough-cookie@2.3.2" = pkgs."tough-cookie@2.3.2";
              "tunnel-agent@0.4.3" = pkgs."tunnel-agent@0.4.3";
            };
            seen = [ "request@2.55.0" ];
            };
  "resolve@1.2.0" = nodeEnv.buildYarnPackage {
            packageName = "resolve";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve/-/resolve-1.2.0.tgz";
              sha1 = "9589c3f2f6149d1417a40becc1663db6ec6bc26c";
            };
            dependencies = {};
            seen = [ "resolve@1.2.0" ];
            };
  "restore-cursor@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "restore-cursor";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-1.0.1.tgz";
              sha1 = "34661f46886327fed2991479152252df92daa541";
            };
            dependencies = {
              "exit-hook@1.1.1" = pkgs."exit-hook@1.1.1";
              "onetime@1.1.0" = pkgs."onetime@1.1.0";
            };
            seen = [ "restore-cursor@1.0.1" ];
            };
  "rimraf@2.5.4" = nodeEnv.buildYarnPackage {
            packageName = "rimraf";
            version = "2.5.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.5.4.tgz";
              sha1 = "96800093cbf1a0c86bd95b4625467535c29dfa04";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
            };
            seen = [ "rimraf@2.5.4" ];
            };
  "ripemd160@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "ripemd160";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-0.2.0.tgz";
              sha1 = "2bf198bde167cacfa51c0a928e84b68bbe171fce";
            };
            dependencies = {};
            seen = [ "ripemd160@0.2.0" ];
            };
  "ripemd160@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "ripemd160";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-1.0.1.tgz";
              sha1 = "93a4bbd4942bc574b69a8fa57c71de10ecca7d6e";
            };
            dependencies = {};
            seen = [ "ripemd160@1.0.1" ];
            };
  "run-async@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "run-async";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/run-async/-/run-async-0.1.0.tgz";
              sha1 = "c8ad4a5e110661e402a7d21b530e009f25f8e389";
            };
            dependencies = {
              "once@1.4.0" = pkgs."once@1.4.0";
            };
            seen = [ "run-async@0.1.0" ];
            };
  "rx-lite@3.1.2" = nodeEnv.buildYarnPackage {
            packageName = "rx-lite";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rx-lite/-/rx-lite-3.1.2.tgz";
              sha1 = "19ce502ca572665f3b647b10939f97fd1615f102";
            };
            dependencies = {};
            seen = [ "rx-lite@3.1.2" ];
            };
  "semver@5.3.0" = nodeEnv.buildYarnPackage {
            packageName = "semver";
            version = "5.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/semver/-/semver-5.3.0.tgz";
              sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
            };
            dependencies = {};
            seen = [ "semver@5.3.0" ];
            };
  "send@0.14.1" = nodeEnv.buildYarnPackage {
            packageName = "send";
            version = "0.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/send/-/send-0.14.1.tgz";
              sha1 = "a954984325392f51532a7760760e459598c89f7a";
            };
            dependencies = {
              "debug@2.2.0" = pkgs."debug@2.2.0";
              "depd@1.1.0" = pkgs."depd@1.1.0";
              "destroy@1.0.4" = pkgs."destroy@1.0.4";
              "encodeurl@1.0.1" = pkgs."encodeurl@1.0.1";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "etag@1.7.0" = pkgs."etag@1.7.0";
              "fresh@0.3.0" = pkgs."fresh@0.3.0";
              "http-errors@1.5.1" = pkgs."http-errors@1.5.1";
              "mime@1.3.4" = pkgs."mime@1.3.4";
              "ms@0.7.1" = pkgs."ms@0.7.1";
              "on-finished@2.3.0" = pkgs."on-finished@2.3.0";
              "range-parser@1.2.0" = pkgs."range-parser@1.2.0";
              "statuses@1.3.1" = pkgs."statuses@1.3.1";
            };
            seen = [ "send@0.14.1" ];
            };
  "serve-static@1.11.1" = nodeEnv.buildYarnPackage {
            packageName = "serve-static";
            version = "1.11.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.11.1.tgz";
              sha1 = "d6cce7693505f733c759de57befc1af76c0f0805";
            };
            dependencies = {
              "encodeurl@1.0.1" = pkgs."encodeurl@1.0.1";
              "escape-html@1.0.3" = pkgs."escape-html@1.0.3";
              "parseurl@1.3.1" = pkgs."parseurl@1.3.1";
              "send@0.14.1" = pkgs."send@0.14.1";
            };
            seen = [ "serve-static@1.11.1" ];
            };
  "set-blocking@1.0.0" = nodeEnv.buildYarnPackage {
            packageName = "set-blocking";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/set-blocking/-/set-blocking-1.0.0.tgz";
              sha1 = "cd5e5d938048df1ac92dfe92e1f16add656f5ec5";
            };
            dependencies = {};
            seen = [ "set-blocking@1.0.0" ];
            };
  "setprototypeof@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "setprototypeof";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.0.2.tgz";
              sha1 = "81a552141ec104b88e89ce383103ad5c66564d08";
            };
            dependencies = {};
            seen = [ "setprototypeof@1.0.2" ];
            };
  "sha.js@2.2.6" = nodeEnv.buildYarnPackage {
            packageName = "sha.js";
            version = "2.2.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sha.js/-/sha.js-2.2.6.tgz";
              sha1 = "17ddeddc5f722fb66501658895461977867315ba";
            };
            dependencies = {};
            seen = [ "sha.js@2.2.6" ];
            };
  "sha.js@2.4.8" = nodeEnv.buildYarnPackage {
            packageName = "sha.js";
            version = "2.4.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sha.js/-/sha.js-2.4.8.tgz";
              sha1 = "37068c2c476b6baf402d14a49c67f597921f634f";
            };
            dependencies = {
              "inherits@2.0.3" = pkgs."inherits@2.0.3";
            };
            seen = [ "sha.js@2.4.8" ];
            };
  "shelljs@0.7.0" = nodeEnv.buildYarnPackage {
            packageName = "shelljs";
            version = "0.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shelljs/-/shelljs-0.7.0.tgz";
              sha1 = "3f6f2e4965cec565f65ff3861d644f879281a576";
            };
            dependencies = {
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "interpret@1.0.1" = pkgs."interpret@1.0.1";
              "rechoir@0.6.2" = pkgs."rechoir@0.6.2";
            };
            seen = [ "shelljs@0.7.0" ];
            };
  "sntp@1.0.9" = nodeEnv.buildYarnPackage {
            packageName = "sntp";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sntp/-/sntp-1.0.9.tgz";
              sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
            };
            dependencies = {
              "hoek@2.16.3" = pkgs."hoek@2.16.3";
            };
            seen = [ "sntp@1.0.9" ];
            };
  "source-map-support@0.4.18" = nodeEnv.buildYarnPackage {
            packageName = "source-map-support";
            version = "0.4.18";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.4.18.tgz";
              sha1 = "0286a6de8be42641338594e97ccea75f0a2c585f";
            };
            dependencies = {
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "source-map-support@0.4.18" ];
            };
  "source-map-support@0.4.8" = nodeEnv.buildYarnPackage {
            packageName = "source-map-support";
            version = "0.4.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.4.8.tgz";
              sha1 = "4871918d8a3af07289182e974e32844327b2e98b";
            };
            dependencies = {
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
            };
            seen = [ "source-map-support@0.4.8" ];
            };
  "source-map@0.5.6" = nodeEnv.buildYarnPackage {
            packageName = "source-map";
            version = "0.5.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.6.tgz";
              sha1 = "75ce38f52bf0733c5a7f0c118d81334a2bb5f412";
            };
            dependencies = {};
            seen = [ "source-map@0.5.6" ];
            };
  "source-map@0.5.7" = nodeEnv.buildYarnPackage {
            packageName = "source-map";
            version = "0.5.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.7.tgz";
              sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
            };
            dependencies = {};
            seen = [ "source-map@0.5.7" ];
            };
  "source-map@0.1.43" = nodeEnv.buildYarnPackage {
            packageName = "source-map";
            version = "0.1.43";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.1.43.tgz";
              sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
            };
            dependencies = {
              "amdefine@1.0.1" = pkgs."amdefine@1.0.1";
            };
            seen = [ "source-map@0.1.43" ];
            };
  "source-map@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "source-map";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.2.0.tgz";
              sha1 = "dab73fbcfc2ba819b4de03bd6f6eaa48164b3f9d";
            };
            dependencies = {
              "amdefine@1.0.1" = pkgs."amdefine@1.0.1";
            };
            seen = [ "source-map@0.2.0" ];
            };
  "source-map@0.4.4" = nodeEnv.buildYarnPackage {
            packageName = "source-map";
            version = "0.4.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.4.4.tgz";
              sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
            };
            dependencies = {
              "amdefine@1.0.1" = pkgs."amdefine@1.0.1";
            };
            seen = [ "source-map@0.4.4" ];
            };
  "split@0.3.3" = nodeEnv.buildYarnPackage {
            packageName = "split";
            version = "0.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/split/-/split-0.3.3.tgz";
              sha1 = "cd0eea5e63a211dfff7eb0f091c4133e2d0dd28f";
            };
            dependencies = {
              "through@2.3.8" = pkgs."through@2.3.8";
            };
            seen = [ "split@0.3.3" ];
            };
  "stackframe@0.3.1" = nodeEnv.buildYarnPackage {
            packageName = "stackframe";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stackframe/-/stackframe-0.3.1.tgz";
              sha1 = "33aa84f1177a5548c8935533cbfeb3420975f5a4";
            };
            dependencies = {};
            seen = [ "stackframe@0.3.1" ];
            };
  "string-width@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "string-width";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-width/-/string-width-1.0.2.tgz";
              sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
            };
            dependencies = {
              "code-point-at@1.1.0" = pkgs."code-point-at@1.1.0";
              "is-fullwidth-code-point@1.0.0" = pkgs."is-fullwidth-code-point@1.0.0";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
            };
            seen = [ "string-width@1.0.2" ];
            };
  "string-width@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "string-width";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-width/-/string-width-2.0.0.tgz";
              sha1 = "635c5436cc72a6e0c387ceca278d4e2eec52687e";
            };
            dependencies = {
              "is-fullwidth-code-point@2.0.0" = pkgs."is-fullwidth-code-point@2.0.0";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
            };
            seen = [ "string-width@2.0.0" ];
            };
  "strip-ansi@0.3.0" = nodeEnv.buildYarnPackage {
            packageName = "strip-ansi";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-0.3.0.tgz";
              sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
            };
            dependencies = {
              "ansi-regex@0.2.1" = pkgs."ansi-regex@0.2.1";
            };
            seen = [ "strip-ansi@0.3.0" ];
            };
  "strip-ansi@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "strip-ansi";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-3.0.1.tgz";
              sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
            };
            dependencies = {
              "ansi-regex@2.0.0" = pkgs."ansi-regex@2.0.0";
            };
            seen = [ "strip-ansi@3.0.1" ];
            };
  "strip-bom@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "strip-bom";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-2.0.0.tgz";
              sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
            };
            dependencies = {
              "is-utf8@0.2.1" = pkgs."is-utf8@0.2.1";
            };
            seen = [ "strip-bom@2.0.0" ];
            };
  "strip-json-comments@1.0.4" = nodeEnv.buildYarnPackage {
            packageName = "strip-json-comments";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
              sha1 = "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91";
            };
            dependencies = {};
            seen = [ "strip-json-comments@1.0.4" ];
            };
  "style-loader@0.13.1" = nodeEnv.buildYarnPackage {
            packageName = "style-loader";
            version = "0.13.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/style-loader/-/style-loader-0.13.1.tgz";
              sha1 = "468280efbc0473023cd3a6cd56e33b5a1d7fc3a9";
            };
            dependencies = {
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
            };
            seen = [ "style-loader@0.13.1" ];
            };
  "sumchecker@1.3.0" = nodeEnv.buildYarnPackage {
            packageName = "sumchecker";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sumchecker/-/sumchecker-1.3.0.tgz";
              sha1 = "6e3004d7bf3b5ad5567abf13a828946d8a19911b";
            };
            dependencies = {
              "debug@2.6.0" = pkgs."debug@2.6.0";
              "es6-promise@4.0.5" = pkgs."es6-promise@4.0.5";
            };
            seen = [ "sumchecker@1.3.0" ];
            };
  "supports-color@0.2.0" = nodeEnv.buildYarnPackage {
            packageName = "supports-color";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-0.2.0.tgz";
              sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
            };
            dependencies = {};
            seen = [ "supports-color@0.2.0" ];
            };
  "supports-color@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "supports-color";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-2.0.0.tgz";
              sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
            };
            dependencies = {};
            seen = [ "supports-color@2.0.0" ];
            };
  "supports-color@3.1.2" = nodeEnv.buildYarnPackage {
            packageName = "supports-color";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-3.1.2.tgz";
              sha1 = "72a262894d9d408b956ca05ff37b2ed8a6e2a2d5";
            };
            dependencies = {
              "has-flag@1.0.0" = pkgs."has-flag@1.0.0";
            };
            seen = [ "supports-color@3.1.2" ];
            };
  "supports-color@3.2.3" = nodeEnv.buildYarnPackage {
            packageName = "supports-color";
            version = "3.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-3.2.3.tgz";
              sha1 = "65ac0504b3954171d8a64946b2ae3cbb8a5f54f6";
            };
            dependencies = {
              "has-flag@1.0.0" = pkgs."has-flag@1.0.0";
            };
            seen = [ "supports-color@3.2.3" ];
            };
  "supports-color@5.0.1" = nodeEnv.buildYarnPackage {
            packageName = "supports-color";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-5.0.1.tgz";
              sha1 = "1c5331f22250c84202805b2f17adf16699f3a39a";
            };
            dependencies = {
              "has-flag@2.0.0" = pkgs."has-flag@2.0.0";
            };
            seen = [ "supports-color@5.0.1" ];
            };
  "symbol-observable@1.0.1" = nodeEnv.buildYarnPackage {
            packageName = "symbol-observable";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/symbol-observable/-/symbol-observable-1.0.1.tgz";
              sha1 = "8340fc4702c3122df5d22288f88283f513d3fdd4";
            };
            dependencies = {};
            seen = [ "symbol-observable@1.0.1" ];
            };
  "tapable@0.1.10" = nodeEnv.buildYarnPackage {
            packageName = "tapable";
            version = "0.1.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tapable/-/tapable-0.1.10.tgz";
              sha1 = "29c35707c2b70e50d07482b5d202e8ed446dafd4";
            };
            dependencies = {};
            seen = [ "tapable@0.1.10" ];
            };
  "tar-stream@1.5.2" = nodeEnv.buildYarnPackage {
            packageName = "tar-stream";
            version = "1.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar-stream/-/tar-stream-1.5.2.tgz";
              sha1 = "fbc6c6e83c1a19d4cb48c7d96171fc248effc7bf";
            };
            dependencies = {
              "bl@1.1.2" = pkgs."bl@1.1.2";
              "end-of-stream@1.1.0" = pkgs."end-of-stream@1.1.0";
              "readable-stream@2.2.2" = pkgs."readable-stream@2.2.2";
              "xtend@4.0.1" = pkgs."xtend@4.0.1";
            };
            seen = [ "tar-stream@1.5.2" ];
            };
  "through2@0.2.3" = nodeEnv.buildYarnPackage {
            packageName = "through2";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/through2/-/through2-0.2.3.tgz";
              sha1 = "eb3284da4ea311b6cc8ace3653748a52abf25a3f";
            };
            dependencies = {
              "readable-stream@1.1.14" = pkgs."readable-stream@1.1.14";
              "xtend@2.1.2" = pkgs."xtend@2.1.2";
            };
            seen = [ "through2@0.2.3" ];
            };
  "timed-out@2.0.0" = nodeEnv.buildYarnPackage {
            packageName = "timed-out";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/timed-out/-/timed-out-2.0.0.tgz";
              sha1 = "f38b0ae81d3747d628001f41dafc652ace671c0a";
            };
            dependencies = {};
            seen = [ "timed-out@2.0.0" ];
            };
  "timers-browserify@1.4.2" = nodeEnv.buildYarnPackage {
            packageName = "timers-browserify";
            version = "1.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/timers-browserify/-/timers-browserify-1.4.2.tgz";
              sha1 = "c9c58b575be8407375cb5e2462dacee74359f41d";
            };
            dependencies = {
              "process@0.11.9" = pkgs."process@0.11.9";
            };
            seen = [ "timers-browserify@1.4.2" ];
            };
  "tmp@0.0.28" = nodeEnv.buildYarnPackage {
            packageName = "tmp";
            version = "0.0.28";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.28.tgz";
              sha1 = "172735b7f614ea7af39664fa84cf0de4e515d120";
            };
            dependencies = {
              "os-tmpdir@1.0.2" = pkgs."os-tmpdir@1.0.2";
            };
            seen = [ "tmp@0.0.28" ];
            };
  "to-fast-properties@1.0.2" = nodeEnv.buildYarnPackage {
            packageName = "to-fast-properties";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-1.0.2.tgz";
              sha1 = "f3f5c0c3ba7299a7ef99427e44633257ade43320";
            };
            dependencies = {};
            seen = [ "to-fast-properties@1.0.2" ];
            };
  "touch@0.0.3" = nodeEnv.buildYarnPackage {
            packageName = "touch";
            version = "0.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/touch/-/touch-0.0.3.tgz";
              sha1 = "51aef3d449571d4f287a5d87c9c8b49181a0db1d";
            };
            dependencies = {
              "nopt@1.0.10" = pkgs."nopt@1.0.10";
            };
            seen = [ "touch@0.0.3" ];
            };
  "tough-cookie@2.3.2" = nodeEnv.buildYarnPackage {
            packageName = "tough-cookie";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.3.2.tgz";
              sha1 = "f081f76e4c85720e6c37a5faced737150d84072a";
            };
            dependencies = {
              "punycode@1.4.1" = pkgs."punycode@1.4.1";
            };
            seen = [ "tough-cookie@2.3.2" ];
            };
  "tunnel-agent@0.4.3" = nodeEnv.buildYarnPackage {
            packageName = "tunnel-agent";
            version = "0.4.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.4.3.tgz";
              sha1 = "6373db76909fe570e08d73583365ed828a74eeeb";
            };
            dependencies = {};
            seen = [ "tunnel-agent@0.4.3" ];
            };
  "type-is@1.6.14" = nodeEnv.buildYarnPackage {
            packageName = "type-is";
            version = "1.6.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-is/-/type-is-1.6.14.tgz";
              sha1 = "e219639c17ded1ca0789092dd54a03826b817cb2";
            };
            dependencies = {
              "media-typer@0.3.0" = pkgs."media-typer@0.3.0";
              "mime-types@2.1.13" = pkgs."mime-types@2.1.13";
            };
            seen = [ "type-is@1.6.14" ];
            };
  "uglify-js@2.7.5" = nodeEnv.buildYarnPackage {
            packageName = "uglify-js";
            version = "2.7.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-2.7.5.tgz";
              sha1 = "4612c0c7baaee2ba7c487de4904ae122079f2ca8";
            };
            dependencies = {
              "async@0.2.10" = pkgs."async@0.2.10";
              "source-map@0.5.6" = pkgs."source-map@0.5.6";
              "uglify-to-browserify@1.0.2" = pkgs."uglify-to-browserify@1.0.2";
              "yargs@3.10.0" = pkgs."yargs@3.10.0";
            };
            seen = [ "uglify-js@2.7.5" ];
            };
  "url-loader@0.5.7" = nodeEnv.buildYarnPackage {
            packageName = "url-loader";
            version = "0.5.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-loader/-/url-loader-0.5.7.tgz";
              sha1 = "67e8779759f8000da74994906680c943a9b0925d";
            };
            dependencies = {
              "loader-utils@0.2.16" = pkgs."loader-utils@0.2.16";
              "mime@1.2.11" = pkgs."mime@1.2.11";
            };
            seen = [ "url-loader@0.5.7" ];
            };
  "user-home@1.1.1" = nodeEnv.buildYarnPackage {
            packageName = "user-home";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/user-home/-/user-home-1.1.1.tgz";
              sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
            };
            dependencies = {};
            seen = [ "user-home@1.1.1" ];
            };
  "uuid@2.0.1" = nodeEnv.buildYarnPackage {
            packageName = "uuid";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uuid/-/uuid-2.0.1.tgz";
              sha1 = "c2a30dedb3e535d72ccf82e343941a50ba8533ac";
            };
            dependencies = {};
            seen = [ "uuid@2.0.1" ];
            };
  "uuid@2.0.3" = nodeEnv.buildYarnPackage {
            packageName = "uuid";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uuid/-/uuid-2.0.3.tgz";
              sha1 = "67e2e863797215530dff318e5bf9dcebfd47b21a";
            };
            dependencies = {};
            seen = [ "uuid@2.0.3" ];
            };
  "uuid@3.0.1" = nodeEnv.buildYarnPackage {
            packageName = "uuid";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uuid/-/uuid-3.0.1.tgz";
              sha1 = "6544bba2dfda8c1cf17e629a3a305e2bb1fee6c1";
            };
            dependencies = {};
            seen = [ "uuid@3.0.1" ];
            };
  "validator@9.1.2" = nodeEnv.buildYarnPackage {
            packageName = "validator";
            version = "9.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/validator/-/validator-9.1.2.tgz";
              sha1 = "5711b6413f78bd9d56003130c81b47c39e86546c";
            };
            dependencies = {};
            seen = [ "validator@9.1.2" ];
            };
  "vary@1.1.0" = nodeEnv.buildYarnPackage {
            packageName = "vary";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vary/-/vary-1.1.0.tgz";
              sha1 = "e1e5affbbd16ae768dd2674394b9ad3022653140";
            };
            dependencies = {};
            seen = [ "vary@1.1.0" ];
            };
  "verror@1.3.6" = nodeEnv.buildYarnPackage {
            packageName = "verror";
            version = "1.3.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/verror/-/verror-1.3.6.tgz";
              sha1 = "cff5df12946d297d2baaefaa2689e25be01c005c";
            };
            dependencies = {
              "extsprintf@1.0.2" = pkgs."extsprintf@1.0.2";
            };
            seen = [ "verror@1.3.6" ];
            };
  "webdriverio@4.11.0" = nodeEnv.buildYarnPackage {
            packageName = "webdriverio";
            version = "4.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webdriverio/-/webdriverio-4.11.0.tgz";
              sha1 = "289baae2257301d95cfecefdec2038a6aa6b94c5";
            };
            dependencies = {
              "archiver@2.1.1" = pkgs."archiver@2.1.1";
              "babel-runtime@6.26.0" = pkgs."babel-runtime@6.26.0";
              "css-parse@2.0.0" = pkgs."css-parse@2.0.0";
              "css-value@0.0.1" = pkgs."css-value@0.0.1";
              "deepmerge@2.0.1" = pkgs."deepmerge@2.0.1";
              "ejs@2.5.7" = pkgs."ejs@2.5.7";
              "gaze@1.1.2" = pkgs."gaze@1.1.2";
              "glob@7.1.1" = pkgs."glob@7.1.1";
              "inquirer@3.3.0" = pkgs."inquirer@3.3.0";
              "json-stringify-safe@5.0.1" = pkgs."json-stringify-safe@5.0.1";
              "mkdirp@0.5.1" = pkgs."mkdirp@0.5.1";
              "npm-install-package@2.1.0" = pkgs."npm-install-package@2.1.0";
              "optimist@0.6.1" = pkgs."optimist@0.6.1";
              "q@1.5.1" = pkgs."q@1.5.1";
              "request@2.83.0" = pkgs."request@2.83.0";
              "rgb2hex@0.1.0" = pkgs."rgb2hex@0.1.0";
              "safe-buffer@5.1.1" = pkgs."safe-buffer@5.1.1";
              "supports-color@5.0.1" = pkgs."supports-color@5.0.1";
              "url@0.11.0" = pkgs."url@0.11.0";
              "wdio-dot-reporter@0.0.9" = pkgs."wdio-dot-reporter@0.0.9";
              "wgxpath@1.0.0" = pkgs."wgxpath@1.0.0";
            };
            seen = [ "webdriverio@4.11.0" ];
            };
  "webpack-dev-middleware@1.9.0" = nodeEnv.buildYarnPackage {
            packageName = "webpack-dev-middleware";
            version = "1.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-dev-middleware/-/webpack-dev-middleware-1.9.0.tgz";
              sha1 = "a1c67a3dfd8a5c5d62740aa0babe61758b4c84aa";
            };
            dependencies = {
              "memory-fs@0.4.1" = pkgs."memory-fs@0.4.1";
              "mime@1.3.4" = pkgs."mime@1.3.4";
              "path-is-absolute@1.0.1" = pkgs."path-is-absolute@1.0.1";
              "range-parser@1.2.0" = pkgs."range-parser@1.2.0";
            };
            seen = [ "webpack-dev-middleware@1.9.0" ];
            };
  "webpack-hot-middleware@2.15.0" = nodeEnv.buildYarnPackage {
            packageName = "webpack-hot-middleware";
            version = "2.15.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-hot-middleware/-/webpack-hot-middleware-2.15.0.tgz";
              sha1 = "71995af7c0025f109df482f86f1e10379526d026";
            };
            dependencies = {
              "ansi-html@0.0.6" = pkgs."ansi-html@0.0.6";
              "html-entities@1.2.0" = pkgs."html-entities@1.2.0";
              "querystring@0.2.0" = pkgs."querystring@0.2.0";
              "strip-ansi@3.0.1" = pkgs."strip-ansi@3.0.1";
            };
            seen = [ "webpack-hot-middleware@2.15.0" ];
            };
  "window-size@0.1.0" = nodeEnv.buildYarnPackage {
            packageName = "window-size";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/window-size/-/window-size-0.1.0.tgz";
              sha1 = "5438cd2ea93b202efa3a19fe8887aee7c94f9c9d";
            };
            dependencies = {};
            seen = [ "window-size@0.1.0" ];
            };
  "wordwrap@0.0.2" = nodeEnv.buildYarnPackage {
            packageName = "wordwrap";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.2.tgz";
              sha1 = "b79669bb42ecb409f83d583cad52ca17eaa1643f";
            };
            dependencies = {};
            seen = [ "wordwrap@0.0.2" ];
            };
  "wordwrap@0.0.3" = nodeEnv.buildYarnPackage {
            packageName = "wordwrap";
            version = "0.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.3.tgz";
              sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
            };
            dependencies = {};
            seen = [ "wordwrap@0.0.3" ];
            };
  "write-file-atomic@1.3.1" = nodeEnv.buildYarnPackage {
            packageName = "write-file-atomic";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/write-file-atomic/-/write-file-atomic-1.3.1.tgz";
              sha1 = "7d45ba32316328dd1ec7d90f60ebc0d845bb759a";
            };
            dependencies = {
              "graceful-fs@4.1.11" = pkgs."graceful-fs@4.1.11";
              "imurmurhash@0.1.4" = pkgs."imurmurhash@0.1.4";
              "slide@1.1.6" = pkgs."slide@1.1.6";
            };
            seen = [ "write-file-atomic@1.3.1" ];
            };
  "xtend@2.1.2" = nodeEnv.buildYarnPackage {
            packageName = "xtend";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xtend/-/xtend-2.1.2.tgz";
              sha1 = "6efecc2a4dad8e6962c4901b337ce7ba87b5d28b";
            };
            dependencies = {
              "object-keys@0.4.0" = pkgs."object-keys@0.4.0";
            };
            seen = [ "xtend@2.1.2" ];
            };
  "yargs-parser@2.4.1" = nodeEnv.buildYarnPackage {
            packageName = "yargs-parser";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-2.4.1.tgz";
              sha1 = "85568de3cf150ff49fa51825f03a8c880ddcc5c4";
            };
            dependencies = {
              "camelcase@3.0.0" = pkgs."camelcase@3.0.0";
              "lodash.assign@4.2.0" = pkgs."lodash.assign@4.2.0";
            };
            seen = [ "yargs-parser@2.4.1" ];
            };
  "yargs@4.7.1" = nodeEnv.buildYarnPackage {
            packageName = "yargs";
            version = "4.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs/-/yargs-4.7.1.tgz";
              sha1 = "e60432658a3387ff269c028eacde4a512e438dff";
            };
            dependencies = {
              "camelcase@3.0.0" = pkgs."camelcase@3.0.0";
              "cliui@3.2.0" = pkgs."cliui@3.2.0";
              "decamelize@1.2.0" = pkgs."decamelize@1.2.0";
              "lodash.assign@4.2.0" = pkgs."lodash.assign@4.2.0";
              "os-locale@1.4.0" = pkgs."os-locale@1.4.0";
              "pkg-conf@1.1.3" = pkgs."pkg-conf@1.1.3";
              "read-pkg-up@1.0.1" = pkgs."read-pkg-up@1.0.1";
              "require-main-filename@1.0.1" = pkgs."require-main-filename@1.0.1";
              "set-blocking@1.0.0" = pkgs."set-blocking@1.0.0";
              "string-width@1.0.2" = pkgs."string-width@1.0.2";
              "window-size@0.2.0" = pkgs."window-size@0.2.0";
              "y18n@3.2.1" = pkgs."y18n@3.2.1";
              "yargs-parser@2.4.1" = pkgs."yargs-parser@2.4.1";
            };
            seen = [ "yargs@4.7.1" ];
            };
  "yargs@3.10.0" = nodeEnv.buildYarnPackage {
            packageName = "yargs";
            version = "3.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs/-/yargs-3.10.0.tgz";
              sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
            };
            dependencies = {
              "camelcase@1.2.1" = pkgs."camelcase@1.2.1";
              "cliui@2.1.0" = pkgs."cliui@2.1.0";
              "decamelize@1.2.0" = pkgs."decamelize@1.2.0";
              "window-size@0.1.0" = pkgs."window-size@0.1.0";
            };
            seen = [ "yargs@3.10.0" ];
            };
  "yauzl@2.4.1" = nodeEnv.buildYarnPackage {
            packageName = "yauzl";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yauzl/-/yauzl-2.4.1.tgz";
              sha1 = "9528f442dab1b2284e58b4379bb194e22e0c4005";
            };
            dependencies = {
              "fd-slicer@1.0.1" = pkgs."fd-slicer@1.0.1";
            };
            seen = [ "yauzl@2.4.1" ];
            };

};
}


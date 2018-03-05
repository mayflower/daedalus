{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? [], overrides ? {}}:

rec { pkgs = {

  "7zip@0.0.6" = nodeEnv.buildYarnPackage {
            name = "7zip-0.0.6";
            packageName = "7zip";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/7zip/-/7zip-0.0.6.tgz";
              sha1 = "9cafb171af82329490353b4816f03347aa150a30";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@babel/code-frame@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-code-frame-7.0.0-beta.40";
            packageName = "@babel/code-frame";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/code-frame/-/code-frame-7.0.0-beta.40.tgz";
              sha1 = "37e2b0cf7c56026b4b21d3927cadf81adec32ac6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@babel/generator@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-generator-7.0.0-beta.40";
            packageName = "@babel/generator";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/generator/-/generator-7.0.0-beta.40.tgz";
              sha1 = "ab61f9556f4f71dbd1138949c795bb9a21e302ea";
            };
            dependencies = [ pkgs."source-map@0.5.7" ];
            dontNpmInstall = true;
            };
  "@babel/helper-function-name@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-helper-function-name-7.0.0-beta.40";
            packageName = "@babel/helper-function-name";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/helper-function-name/-/helper-function-name-7.0.0-beta.40.tgz";
              sha1 = "9d033341ab16517f40d43a73f2d81fc431ccd7b6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@babel/helper-get-function-arity@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-helper-get-function-arity-7.0.0-beta.40";
            packageName = "@babel/helper-get-function-arity";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/helper-get-function-arity/-/helper-get-function-arity-7.0.0-beta.40.tgz";
              sha1 = "ac0419cf067b0ec16453e1274f03878195791c6e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@babel/highlight@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-highlight-7.0.0-beta.40";
            packageName = "@babel/highlight";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/highlight/-/highlight-7.0.0-beta.40.tgz";
              sha1 = "b43d67d76bf46e1d10d227f68cddcd263786b255";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@babel/template@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-template-7.0.0-beta.40";
            packageName = "@babel/template";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/template/-/template-7.0.0-beta.40.tgz";
              sha1 = "034988c6424eb5c3268fe6a608626de1f4410fc8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@babel/traverse@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-traverse-7.0.0-beta.40";
            packageName = "@babel/traverse";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/traverse/-/traverse-7.0.0-beta.40.tgz";
              sha1 = "d140e449b2e093ef9fe1a2eecc28421ffb4e521e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@babel/types@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "-babel-types-7.0.0-beta.40";
            packageName = "@babel/types";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@babel/types/-/types-7.0.0-beta.40.tgz";
              sha1 = "25c3d7aae14126abe05fcb098c65a66b6d6b8c14";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/addon-actions@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-addon-actions-3.3.14";
            packageName = "@storybook/addon-actions";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/addon-actions/-/addon-actions-3.3.14.tgz";
              sha1 = "b78e707b32130ad16ea8a0af62a66f23b5df502b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/addon-links@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-addon-links-3.3.14";
            packageName = "@storybook/addon-links";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/addon-links/-/addon-links-3.3.14.tgz";
              sha1 = "1de63e9b3819927fbb2f963fdabc65f86fde33cc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/addons@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-addons-3.3.14";
            packageName = "@storybook/addons";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/addons/-/addons-3.3.14.tgz";
              sha1 = "20a65085b834898ea6154b9061ebc65a74c6cb33";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/channel-postmessage@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-channel-postmessage-3.3.14";
            packageName = "@storybook/channel-postmessage";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/channel-postmessage/-/channel-postmessage-3.3.14.tgz";
              sha1 = "324fe89323b10fe300c746b452ec0dc7e2f5d72c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/channels@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-channels-3.3.14";
            packageName = "@storybook/channels";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/channels/-/channels-3.3.14.tgz";
              sha1 = "b43f767f7775bb17cec5ab0696f918a475043df9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/client-logger@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-client-logger-3.3.14";
            packageName = "@storybook/client-logger";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/client-logger/-/client-logger-3.3.14.tgz";
              sha1 = "03d5bc6036a8e82351a349bec11a8c89f06c901e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/components@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-components-3.3.14";
            packageName = "@storybook/components";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/components/-/components-3.3.14.tgz";
              sha1 = "84ffcb5ac6a7d40e145402ed0d1521e6ad1b2d4d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/mantra-core@1.7.2" = nodeEnv.buildYarnPackage {
            name = "-storybook-mantra-core-1.7.2";
            packageName = "@storybook/mantra-core";
            version = "1.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/mantra-core/-/mantra-core-1.7.2.tgz";
              sha1 = "e10c7faca29769e97131e0e0308ef7cfb655b70c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/node-logger@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-node-logger-3.3.14";
            packageName = "@storybook/node-logger";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/node-logger/-/node-logger-3.3.14.tgz";
              sha1 = "c769a0763053ff6d32d52d29172fb61acab1122f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/podda@1.2.3" = nodeEnv.buildYarnPackage {
            name = "-storybook-podda-1.2.3";
            packageName = "@storybook/podda";
            version = "1.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/podda/-/podda-1.2.3.tgz";
              sha1 = "53c4a1a3f8c7bbd5755dff5c34576fd1af9d38ba";
            };
            dependencies = [ pkgs."babel-runtime@6.20.0" ];
            dontNpmInstall = true;
            };
  "@storybook/react-komposer@2.0.3" = nodeEnv.buildYarnPackage {
            name = "-storybook-react-komposer-2.0.3";
            packageName = "@storybook/react-komposer";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/react-komposer/-/react-komposer-2.0.3.tgz";
              sha1 = "f9e12a9586b2ce95c24c137eabb8b71527ddb369";
            };
            dependencies = [ pkgs."babel-runtime@6.20.0" ];
            dontNpmInstall = true;
            };
  "@storybook/react-simple-di@1.3.0" = nodeEnv.buildYarnPackage {
            name = "-storybook-react-simple-di-1.3.0";
            packageName = "@storybook/react-simple-di";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/react-simple-di/-/react-simple-di-1.3.0.tgz";
              sha1 = "13116d89a2f42898716a7f8c4095b47415526371";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/react-stubber@1.0.1" = nodeEnv.buildYarnPackage {
            name = "-storybook-react-stubber-1.0.1";
            packageName = "@storybook/react-stubber";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/react-stubber/-/react-stubber-1.0.1.tgz";
              sha1 = "8c312c2658b9eeafce470e1c39e4193f0b5bf9b1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/react@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-react-3.3.14";
            packageName = "@storybook/react";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/react/-/react-3.3.14.tgz";
              sha1 = "89a11e786846b7bcbca8a2baf8972733b3609ab2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@storybook/ui@3.3.14" = nodeEnv.buildYarnPackage {
            name = "-storybook-ui-3.3.14";
            packageName = "@storybook/ui";
            version = "3.3.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@storybook/ui/-/ui-3.3.14.tgz";
              sha1 = "85fdbb08d77edf79e8d4a3dee42673157e4b132d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "@types/node@7.0.55" = nodeEnv.buildYarnPackage {
            name = "-types-node-7.0.55";
            packageName = "@types/node";
            version = "7.0.55";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/@types/node/-/node-7.0.55.tgz";
              sha1 = "7bb6215ff9425a1d714106be9f0d3e0e28829288";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "abbrev@1.0.9" = nodeEnv.buildYarnPackage {
            name = "abbrev-1.0.9";
            packageName = "abbrev";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/abbrev/-/abbrev-1.0.9.tgz";
              sha1 = "91b4792588a7738c25f35dd6f63752a2f8776135";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "accepts@1.3.4" = nodeEnv.buildYarnPackage {
            name = "accepts-1.3.4";
            packageName = "accepts";
            version = "1.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/accepts/-/accepts-1.3.4.tgz";
              sha1 = "86246758c7dd6d21a6474ff084a4740ec05eb21f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "accessibility-developer-tools@2.12.0" = nodeEnv.buildYarnPackage {
            name = "accessibility-developer-tools-2.12.0";
            packageName = "accessibility-developer-tools";
            version = "2.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/accessibility-developer-tools/-/accessibility-developer-tools-2.12.0.tgz";
              sha1 = "3da0cce9d6ec6373964b84f35db7cfc3df7ab514";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "acorn-dynamic-import@2.0.2" = nodeEnv.buildYarnPackage {
            name = "acorn-dynamic-import-2.0.2";
            packageName = "acorn-dynamic-import";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn-dynamic-import/-/acorn-dynamic-import-2.0.2.tgz";
              sha1 = "c752bd210bef679501b6c6cb7fc84f8f47158cc4";
            };
            dependencies = [ pkgs."acorn@4.0.13" ];
            dontNpmInstall = true;
            };
  "acorn-jsx@3.0.1" = nodeEnv.buildYarnPackage {
            name = "acorn-jsx-3.0.1";
            packageName = "acorn-jsx";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-3.0.1.tgz";
              sha1 = "afdf9488fb1ecefc8348f6fb22f464e32a58b36b";
            };
            dependencies = [ pkgs."acorn@3.3.0" ];
            dontNpmInstall = true;
            };
  "acorn@5.4.1" = nodeEnv.buildYarnPackage {
            name = "acorn-5.4.1";
            packageName = "acorn";
            version = "5.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn/-/acorn-5.4.1.tgz";
              sha1 = "fdc58d9d17f4a4e98d102ded826a9b9759125102";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "aes-js@2.1.1" = nodeEnv.buildYarnPackage {
            name = "aes-js-2.1.1";
            packageName = "aes-js";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aes-js/-/aes-js-2.1.1.tgz";
              sha1 = "68989763bbade2a39172ea48f4953d1272ff38a7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "airbnb-js-shims@1.4.1" = nodeEnv.buildYarnPackage {
            name = "airbnb-js-shims-1.4.1";
            packageName = "airbnb-js-shims";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/airbnb-js-shims/-/airbnb-js-shims-1.4.1.tgz";
              sha1 = "cc3e8eb8d35877f9d0fdc6583e26b0ee75b98ad0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ajv-keywords@3.1.0" = nodeEnv.buildYarnPackage {
            name = "ajv-keywords-3.1.0";
            packageName = "ajv-keywords";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-3.1.0.tgz";
              sha1 = "ac2b27939c543e95d2c06e7f7f5c27be4aa543be";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ajv@6.1.1" = nodeEnv.buildYarnPackage {
            name = "ajv-6.1.1";
            packageName = "ajv";
            version = "6.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ajv/-/ajv-6.1.1.tgz";
              sha1 = "978d597fbc2b7d0e5a5c3ddeb149a682f2abfa0e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "align-text@0.1.4" = nodeEnv.buildYarnPackage {
            name = "align-text-0.1.4";
            packageName = "align-text";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/align-text/-/align-text-0.1.4.tgz";
              sha1 = "0cd90a561093f35d0a99256c22b7069433fad117";
            };
            dependencies = [ pkgs."kind-of@3.1.0" ];
            dontNpmInstall = true;
            };
  "alphanum-sort@1.0.2" = nodeEnv.buildYarnPackage {
            name = "alphanum-sort-1.0.2";
            packageName = "alphanum-sort";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/alphanum-sort/-/alphanum-sort-1.0.2.tgz";
              sha1 = "97a1119649b211ad33691d9f9f486a8ec9fbe0a3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "amdefine@1.0.1" = nodeEnv.buildYarnPackage {
            name = "amdefine-1.0.1";
            packageName = "amdefine";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/amdefine/-/amdefine-1.0.1.tgz";
              sha1 = "4a5282ac164729e93619bcfd3ad151f817ce91f5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-escapes@3.0.0" = nodeEnv.buildYarnPackage {
            name = "ansi-escapes-3.0.0";
            packageName = "ansi-escapes";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-3.0.0.tgz";
              sha1 = "ec3e8b4e9f8064fc02c3ac9b65f1c275bda8ef92";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-gray@0.1.1" = nodeEnv.buildYarnPackage {
            name = "ansi-gray-0.1.1";
            packageName = "ansi-gray";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-gray/-/ansi-gray-0.1.1.tgz";
              sha1 = "2962cf54ec9792c48510a3deb524436861ef7251";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-html@0.0.7" = nodeEnv.buildYarnPackage {
            name = "ansi-html-0.0.7";
            packageName = "ansi-html";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-html/-/ansi-html-0.0.7.tgz";
              sha1 = "813584021962a9e9e6fd039f940d12f56ca7859e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-regex@3.0.0" = nodeEnv.buildYarnPackage {
            name = "ansi-regex-3.0.0";
            packageName = "ansi-regex";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-3.0.0.tgz";
              sha1 = "ed0317c322064f79466c02966bddb605ab37d998";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-styles@3.2.0" = nodeEnv.buildYarnPackage {
            name = "ansi-styles-3.2.0";
            packageName = "ansi-styles";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.0.tgz";
              sha1 = "c159b8d5be0f9e5a6f346dab94f16ce022161b88";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-wrap@0.1.0" = nodeEnv.buildYarnPackage {
            name = "ansi-wrap-0.1.0";
            packageName = "ansi-wrap";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-wrap/-/ansi-wrap-0.1.0.tgz";
              sha1 = "a82250ddb0015e9a27ca82e82ea603bbfa45efaf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "any-promise@1.3.0" = nodeEnv.buildYarnPackage {
            name = "any-promise-1.3.0";
            packageName = "any-promise";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/any-promise/-/any-promise-1.3.0.tgz";
              sha1 = "abc6afeedcea52e809cdc0376aed3ce39635d17f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "anymatch@1.3.0" = nodeEnv.buildYarnPackage {
            name = "anymatch-1.3.0";
            packageName = "anymatch";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/anymatch/-/anymatch-1.3.0.tgz";
              sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "aproba@1.2.0" = nodeEnv.buildYarnPackage {
            name = "aproba-1.2.0";
            packageName = "aproba";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aproba/-/aproba-1.2.0.tgz";
              sha1 = "6802e6264efd18c790a1b0d517f0f2627bf2c94a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "archiver-utils@1.3.0" = nodeEnv.buildYarnPackage {
            name = "archiver-utils-1.3.0";
            packageName = "archiver-utils";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/archiver-utils/-/archiver-utils-1.3.0.tgz";
              sha1 = "e50b4c09c70bf3d680e32ff1b7994e9f9d895174";
            };
            dependencies = [ pkgs."glob@7.1.1" pkgs."lodash@4.17.5" pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "archiver@2.1.1" = nodeEnv.buildYarnPackage {
            name = "archiver-2.1.1";
            packageName = "archiver";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/archiver/-/archiver-2.1.1.tgz";
              sha1 = "ff662b4a78201494a3ee544d3a33fe7496509ebc";
            };
            dependencies = [ pkgs."glob@7.1.1" pkgs."lodash@4.17.5" pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "are-we-there-yet@1.1.2" = nodeEnv.buildYarnPackage {
            name = "are-we-there-yet-1.1.2";
            packageName = "are-we-there-yet";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/are-we-there-yet/-/are-we-there-yet-1.1.2.tgz";
              sha1 = "80e470e95a084794fe1899262c5667c6e88de1b3";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "argparse@1.0.9" = nodeEnv.buildYarnPackage {
            name = "argparse-1.0.9";
            packageName = "argparse";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/argparse/-/argparse-1.0.9.tgz";
              sha1 = "73d83bc263f86e97f8cc4f6bae1b0e90a7d22c86";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "aria-query@0.7.1" = nodeEnv.buildYarnPackage {
            name = "aria-query-0.7.1";
            packageName = "aria-query";
            version = "0.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aria-query/-/aria-query-0.7.1.tgz";
              sha1 = "26cbb5aff64144b0a825be1846e0b16cfa00b11e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "arr-diff@2.0.0" = nodeEnv.buildYarnPackage {
            name = "arr-diff-2.0.0";
            packageName = "arr-diff";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-2.0.0.tgz";
              sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "arr-flatten@1.0.1" = nodeEnv.buildYarnPackage {
            name = "arr-flatten-1.0.1";
            packageName = "arr-flatten";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/arr-flatten/-/arr-flatten-1.0.1.tgz";
              sha1 = "e5ffe54d45e19f32f216e91eb99c8ce892bb604b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-differ@1.0.0" = nodeEnv.buildYarnPackage {
            name = "array-differ-1.0.0";
            packageName = "array-differ";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-differ/-/array-differ-1.0.0.tgz";
              sha1 = "eff52e3758249d33be402b8bb8e564bb2b5d4031";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-find-index@1.0.2" = nodeEnv.buildYarnPackage {
            name = "array-find-index-1.0.2";
            packageName = "array-find-index";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-find-index/-/array-find-index-1.0.2.tgz";
              sha1 = "df010aa1287e164bbda6f9723b0a96a1ec4187a1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-find@1.0.0" = nodeEnv.buildYarnPackage {
            name = "array-find-1.0.0";
            packageName = "array-find";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-find/-/array-find-1.0.0.tgz";
              sha1 = "6c8e286d11ed768327f8e62ecee87353ca3e78b8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-flatten@1.1.1" = nodeEnv.buildYarnPackage {
            name = "array-flatten-1.1.1";
            packageName = "array-flatten";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-flatten/-/array-flatten-1.1.1.tgz";
              sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-includes@3.0.3" = nodeEnv.buildYarnPackage {
            name = "array-includes-3.0.3";
            packageName = "array-includes";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-includes/-/array-includes-3.0.3.tgz";
              sha1 = "184b48f62d92d7452bb31b323165c7f8bd02266d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-union@1.0.2" = nodeEnv.buildYarnPackage {
            name = "array-union-1.0.2";
            packageName = "array-union";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-union/-/array-union-1.0.2.tgz";
              sha1 = "9a34410e4f4e3da23dea375be5be70f24778ec39";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-uniq@1.0.3" = nodeEnv.buildYarnPackage {
            name = "array-uniq-1.0.3";
            packageName = "array-uniq";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-uniq/-/array-uniq-1.0.3.tgz";
              sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array-unique@0.2.1" = nodeEnv.buildYarnPackage {
            name = "array-unique-0.2.1";
            packageName = "array-unique";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.2.1.tgz";
              sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array.prototype.flatmap@1.2.0" = nodeEnv.buildYarnPackage {
            name = "array.prototype.flatmap-1.2.0";
            packageName = "array.prototype.flatmap";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array.prototype.flatmap/-/array.prototype.flatmap-1.2.0.tgz";
              sha1 = "279f7ed4eeb1cedfe5515e92e63cfb40ca15b74b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "array.prototype.flatten@1.2.0" = nodeEnv.buildYarnPackage {
            name = "array.prototype.flatten-1.2.0";
            packageName = "array.prototype.flatten";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/array.prototype.flatten/-/array.prototype.flatten-1.2.0.tgz";
              sha1 = "e46fb18954f8796381a73755e122570647984be3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "arrify@1.0.1" = nodeEnv.buildYarnPackage {
            name = "arrify-1.0.1";
            packageName = "arrify";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/arrify/-/arrify-1.0.1.tgz";
              sha1 = "898508da2226f380df904728456849c1501a4b0d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "asap@2.0.5" = nodeEnv.buildYarnPackage {
            name = "asap-2.0.5";
            packageName = "asap";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asap/-/asap-2.0.5.tgz";
              sha1 = "522765b50c3510490e52d7dcfe085ef9ba96958f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "asar@0.14.2" = nodeEnv.buildYarnPackage {
            name = "asar-0.14.2";
            packageName = "asar";
            version = "0.14.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asar/-/asar-0.14.2.tgz";
              sha1 = "9ec5ec8dcb1904de288fd5ff94f2a8ed4014b094";
            };
            dependencies = [ pkgs."commander@2.9.0" pkgs."glob@6.0.4" pkgs."tmp@0.0.28" ];
            dontNpmInstall = true;
            };
  "asn1.js@4.9.1" = nodeEnv.buildYarnPackage {
            name = "asn1.js-4.9.1";
            packageName = "asn1.js";
            version = "4.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asn1.js/-/asn1.js-4.9.1.tgz";
              sha1 = "48ba240b45a9280e94748990ba597d216617fd40";
            };
            dependencies = [ pkgs."bn.js@4.11.6" ];
            dontNpmInstall = true;
            };
  "asn1@0.2.3" = nodeEnv.buildYarnPackage {
            name = "asn1-0.2.3";
            packageName = "asn1";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asn1/-/asn1-0.2.3.tgz";
              sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "assert-plus@1.0.0" = nodeEnv.buildYarnPackage {
            name = "assert-plus-1.0.0";
            packageName = "assert-plus";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-1.0.0.tgz";
              sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "assert@1.4.1" = nodeEnv.buildYarnPackage {
            name = "assert-1.4.1";
            packageName = "assert";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assert/-/assert-1.4.1.tgz";
              sha1 = "99912d591836b5a6f5b345c0f07eefc08fc65d91";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "assertion-error-formatter@2.0.1" = nodeEnv.buildYarnPackage {
            name = "assertion-error-formatter-2.0.1";
            packageName = "assertion-error-formatter";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assertion-error-formatter/-/assertion-error-formatter-2.0.1.tgz";
              sha1 = "6bbdffaec8e2fa9e2b0eb158bfe353132d7c0a9b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "assertion-error@1.1.0" = nodeEnv.buildYarnPackage {
            name = "assertion-error-1.1.0";
            packageName = "assertion-error";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assertion-error/-/assertion-error-1.1.0.tgz";
              sha1 = "e60b6b0e8f301bd97e5375215bda406c85118c0b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ast-types-flow@0.0.7" = nodeEnv.buildYarnPackage {
            name = "ast-types-flow-0.0.7";
            packageName = "ast-types-flow";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ast-types-flow/-/ast-types-flow-0.0.7.tgz";
              sha1 = "f70b735c6bca1a5c9c22d982c3e39e7feba3bdad";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ast-types@0.10.1" = nodeEnv.buildYarnPackage {
            name = "ast-types-0.10.1";
            packageName = "ast-types";
            version = "0.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ast-types/-/ast-types-0.10.1.tgz";
              sha1 = "f52fca9715579a14f841d67d7f8d25432ab6a3dd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "async-each@1.0.1" = nodeEnv.buildYarnPackage {
            name = "async-each-1.0.1";
            packageName = "async-each";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async-each/-/async-each-1.0.1.tgz";
              sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "async-foreach@0.1.3" = nodeEnv.buildYarnPackage {
            name = "async-foreach-0.1.3";
            packageName = "async-foreach";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async-foreach/-/async-foreach-0.1.3.tgz";
              sha1 = "36121f845c0578172de419a97dbeb1d16ec34542";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "async-limiter@1.0.0" = nodeEnv.buildYarnPackage {
            name = "async-limiter-1.0.0";
            packageName = "async-limiter";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async-limiter/-/async-limiter-1.0.0.tgz";
              sha1 = "78faed8c3d074ab81f22b4e985d79e8738f720f8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "async@2.6.0" = nodeEnv.buildYarnPackage {
            name = "async-2.6.0";
            packageName = "async";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-2.6.0.tgz";
              sha1 = "61a29abb6fcc026fea77e56d1c6ec53a795951f4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "asynckit@0.4.0" = nodeEnv.buildYarnPackage {
            name = "asynckit-0.4.0";
            packageName = "asynckit";
            version = "0.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
              sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "atob@1.1.3" = nodeEnv.buildYarnPackage {
            name = "atob-1.1.3";
            packageName = "atob";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/atob/-/atob-1.1.3.tgz";
              sha1 = "95f13629b12c3a51a5d215abdce2aa9f32f80773";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "attr-accept@1.1.0" = nodeEnv.buildYarnPackage {
            name = "attr-accept-1.1.0";
            packageName = "attr-accept";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/attr-accept/-/attr-accept-1.1.0.tgz";
              sha1 = "b5cd35227f163935a8f1de10ed3eba16941f6be6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "author-regex@1.0.0" = nodeEnv.buildYarnPackage {
            name = "author-regex-1.0.0";
            packageName = "author-regex";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/author-regex/-/author-regex-1.0.0.tgz";
              sha1 = "d08885be6b9bbf9439fe087c76287245f0a81450";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "autoprefixer@7.2.6" = nodeEnv.buildYarnPackage {
            name = "autoprefixer-7.2.6";
            packageName = "autoprefixer";
            version = "7.2.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/autoprefixer/-/autoprefixer-7.2.6.tgz";
              sha1 = "256672f86f7c735da849c4f07d008abb056067dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "aws-sign2@0.7.0" = nodeEnv.buildYarnPackage {
            name = "aws-sign2-0.7.0";
            packageName = "aws-sign2";
            version = "0.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.7.0.tgz";
              sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "aws4@1.6.0" = nodeEnv.buildYarnPackage {
            name = "aws4-1.6.0";
            packageName = "aws4";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws4/-/aws4-1.6.0.tgz";
              sha1 = "83ef5ca860b2b32e4a0deedee8c771b9db57471e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "axobject-query@0.1.0" = nodeEnv.buildYarnPackage {
            name = "axobject-query-0.1.0";
            packageName = "axobject-query";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/axobject-query/-/axobject-query-0.1.0.tgz";
              sha1 = "62f59dbc59c9f9242759ca349960e7a2fe3c36c0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-code-frame@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-code-frame-6.26.0";
            packageName = "babel-code-frame";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-code-frame/-/babel-code-frame-6.26.0.tgz";
              sha1 = "63fd43f7dc1e3bb7ce35947db8fe369a3f58c74b";
            };
            dependencies = [ pkgs."chalk@1.1.3" ];
            dontNpmInstall = true;
            };
  "babel-core@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-core-6.26.0";
            packageName = "babel-core";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-core/-/babel-core-6.26.0.tgz";
              sha1 = "af32f78b31a6fcef119c87b0fd8d9753f03a0bb8";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."babylon@6.18.0" pkgs."debug@2.6.9" pkgs."lodash@4.17.5" pkgs."source-map@0.5.6" ];
            dontNpmInstall = true;
            };
  "babel-eslint@8.2.2" = nodeEnv.buildYarnPackage {
            name = "babel-eslint-8.2.2";
            packageName = "babel-eslint";
            version = "8.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-eslint/-/babel-eslint-8.2.2.tgz";
              sha1 = "1102273354c6f0b29b4ea28a65f97d122296b68b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-generator@6.26.1" = nodeEnv.buildYarnPackage {
            name = "babel-generator-6.26.1";
            packageName = "babel-generator";
            version = "6.26.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-generator/-/babel-generator-6.26.1.tgz";
              sha1 = "1844408d3b8f0d35a404ea7ac180f087a601bd90";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."jsesc@1.3.0" pkgs."lodash@4.17.5" pkgs."source-map@0.5.7" ];
            dontNpmInstall = true;
            };
  "babel-helper-bindify-decorators@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-bindify-decorators-6.24.1";
            packageName = "babel-helper-bindify-decorators";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-bindify-decorators/-/babel-helper-bindify-decorators-6.24.1.tgz";
              sha1 = "14c19e5f142d7b47f19a52431e52b1ccbc40a330";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-builder-binary-assignment-operator-visitor@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-builder-binary-assignment-operator-visitor-6.24.1";
            packageName = "babel-helper-builder-binary-assignment-operator-visitor";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-builder-binary-assignment-operator-visitor/-/babel-helper-builder-binary-assignment-operator-visitor-6.24.1.tgz";
              sha1 = "cce4517ada356f4220bcae8a02c2b346f9a56664";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-builder-react-jsx@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-builder-react-jsx-6.26.0";
            packageName = "babel-helper-builder-react-jsx";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-builder-react-jsx/-/babel-helper-builder-react-jsx-6.26.0.tgz";
              sha1 = "39ff8313b75c8b65dceff1f31d383e0ff2a408a0";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-call-delegate@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-call-delegate-6.24.1";
            packageName = "babel-helper-call-delegate";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-call-delegate/-/babel-helper-call-delegate-6.24.1.tgz";
              sha1 = "ece6aacddc76e41c3461f88bfc575bd0daa2df8d";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-define-map@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-define-map-6.26.0";
            packageName = "babel-helper-define-map";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-define-map/-/babel-helper-define-map-6.26.0.tgz";
              sha1 = "a5f56dab41a25f97ecb498c7ebaca9819f95be5f";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-helper-evaluate-path@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-evaluate-path-0.2.0";
            packageName = "babel-helper-evaluate-path";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-evaluate-path/-/babel-helper-evaluate-path-0.2.0.tgz";
              sha1 = "0bb2eb01996c0cef53c5e8405e999fe4a0244c08";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-explode-assignable-expression@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-explode-assignable-expression-6.24.1";
            packageName = "babel-helper-explode-assignable-expression";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-explode-assignable-expression/-/babel-helper-explode-assignable-expression-6.24.1.tgz";
              sha1 = "f25b82cf7dc10433c55f70592d5746400ac22caa";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-explode-class@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-explode-class-6.24.1";
            packageName = "babel-helper-explode-class";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-explode-class/-/babel-helper-explode-class-6.24.1.tgz";
              sha1 = "7dc2a3910dee007056e1e31d640ced3d54eaa9eb";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-flip-expressions@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-flip-expressions-0.2.0";
            packageName = "babel-helper-flip-expressions";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-flip-expressions/-/babel-helper-flip-expressions-0.2.0.tgz";
              sha1 = "160d2090a3d9f9c64a750905321a0bc218f884ec";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-function-name@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-function-name-6.24.1";
            packageName = "babel-helper-function-name";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-function-name/-/babel-helper-function-name-6.24.1.tgz";
              sha1 = "d3475b8c03ed98242a25b48351ab18399d3580a9";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-get-function-arity@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-get-function-arity-6.24.1";
            packageName = "babel-helper-get-function-arity";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-get-function-arity/-/babel-helper-get-function-arity-6.24.1.tgz";
              sha1 = "8f7782aa93407c41d3aa50908f89b031b1b6853d";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-hoist-variables@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-hoist-variables-6.24.1";
            packageName = "babel-helper-hoist-variables";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-hoist-variables/-/babel-helper-hoist-variables-6.24.1.tgz";
              sha1 = "1ecb27689c9d25513eadbc9914a73f5408be7a76";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-is-nodes-equiv@0.0.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-is-nodes-equiv-0.0.1";
            packageName = "babel-helper-is-nodes-equiv";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-is-nodes-equiv/-/babel-helper-is-nodes-equiv-0.0.1.tgz";
              sha1 = "34e9b300b1479ddd98ec77ea0bbe9342dfe39684";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-is-react-class@1.0.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-is-react-class-1.0.0";
            packageName = "babel-helper-is-react-class";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-is-react-class/-/babel-helper-is-react-class-1.0.0.tgz";
              sha1 = "ef6f3678b05c76dbdeedadead7af98c2724d8431";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-is-void-0@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-is-void-0-0.2.0";
            packageName = "babel-helper-is-void-0";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-is-void-0/-/babel-helper-is-void-0-0.2.0.tgz";
              sha1 = "6ed0ada8a9b1c5b6e88af6b47c1b3b5c080860eb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-mark-eval-scopes@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-mark-eval-scopes-0.2.0";
            packageName = "babel-helper-mark-eval-scopes";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-mark-eval-scopes/-/babel-helper-mark-eval-scopes-0.2.0.tgz";
              sha1 = "7648aaf2ec92aae9b09a20ad91e8df5e1fcc94b2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-module-imports@7.0.0-beta.3" = nodeEnv.buildYarnPackage {
            name = "babel-helper-module-imports-7.0.0-beta.3";
            packageName = "babel-helper-module-imports";
            version = "7.0.0-beta.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-module-imports/-/babel-helper-module-imports-7.0.0-beta.3.tgz";
              sha1 = "e15764e3af9c8e11810c09f78f498a2bdc71585a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-optimise-call-expression@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-optimise-call-expression-6.24.1";
            packageName = "babel-helper-optimise-call-expression";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-optimise-call-expression/-/babel-helper-optimise-call-expression-6.24.1.tgz";
              sha1 = "f7a13427ba9f73f8f4fa993c54a97882d1244257";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-regex@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-regex-6.26.0";
            packageName = "babel-helper-regex";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-regex/-/babel-helper-regex-6.26.0.tgz";
              sha1 = "325c59f902f82f24b74faceed0363954f6495e72";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-helper-remap-async-to-generator@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-remap-async-to-generator-6.24.1";
            packageName = "babel-helper-remap-async-to-generator";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-remap-async-to-generator/-/babel-helper-remap-async-to-generator-6.24.1.tgz";
              sha1 = "5ec581827ad723fecdd381f1c928390676e4551b";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-remove-or-void@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-remove-or-void-0.2.0";
            packageName = "babel-helper-remove-or-void";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-remove-or-void/-/babel-helper-remove-or-void-0.2.0.tgz";
              sha1 = "8e46ad5b30560d57d7510b3fd93f332ee7c67386";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helper-replace-supers@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helper-replace-supers-6.24.1";
            packageName = "babel-helper-replace-supers";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-replace-supers/-/babel-helper-replace-supers-6.24.1.tgz";
              sha1 = "bf6dbfe43938d17369a213ca8a8bf74b6a90ab1a";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-helper-to-multiple-sequence-expressions@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-helper-to-multiple-sequence-expressions-0.2.0";
            packageName = "babel-helper-to-multiple-sequence-expressions";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helper-to-multiple-sequence-expressions/-/babel-helper-to-multiple-sequence-expressions-0.2.0.tgz";
              sha1 = "d1a419634c6cb301f27858c659167cfee0a9d318";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-helpers@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-helpers-6.24.1";
            packageName = "babel-helpers";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-helpers/-/babel-helpers-6.24.1.tgz";
              sha1 = "3471de9caec388e5c850e597e58a26ddf37602b2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-loader@7.1.2" = nodeEnv.buildYarnPackage {
            name = "babel-loader-7.1.2";
            packageName = "babel-loader";
            version = "7.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-loader/-/babel-loader-7.1.2.tgz";
              sha1 = "f6cbe122710f1aa2af4d881c6d5b54358ca24126";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-messages@6.23.0" = nodeEnv.buildYarnPackage {
            name = "babel-messages-6.23.0";
            packageName = "babel-messages";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-messages/-/babel-messages-6.23.0.tgz";
              sha1 = "f3cdf4703858035b2a2951c6ec5edf6c62f2630e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-add-module-exports@0.2.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-add-module-exports-0.2.1";
            packageName = "babel-plugin-add-module-exports";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-add-module-exports/-/babel-plugin-add-module-exports-0.2.1.tgz";
              sha1 = "9ae9a1f4a8dc67f0cdec4f4aeda1e43a5ff65e25";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-check-es2015-constants@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-check-es2015-constants-6.22.0";
            packageName = "babel-plugin-check-es2015-constants";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-check-es2015-constants/-/babel-plugin-check-es2015-constants-6.22.0.tgz";
              sha1 = "35157b101426fd2ffd3da3f75c7d1e91835bbf8a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-dev-expression@0.2.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-dev-expression-0.2.1";
            packageName = "babel-plugin-dev-expression";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-dev-expression/-/babel-plugin-dev-expression-0.2.1.tgz";
              sha1 = "d4a7beefefbb50e3f2734990a82a2486cf9eb9ee";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-dynamic-import-node@1.1.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-dynamic-import-node-1.1.0";
            packageName = "babel-plugin-dynamic-import-node";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-dynamic-import-node/-/babel-plugin-dynamic-import-node-1.1.0.tgz";
              sha1 = "bd1d88ac7aaf98df4917c384373b04d971a2b37a";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-lodash@3.3.2" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-lodash-3.3.2";
            packageName = "babel-plugin-lodash";
            version = "3.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-lodash/-/babel-plugin-lodash-3.3.2.tgz";
              sha1 = "da3a5b49ba27447f54463f6c4fa81396ccdd463f";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-builtins@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-builtins-0.2.0";
            packageName = "babel-plugin-minify-builtins";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-builtins/-/babel-plugin-minify-builtins-0.2.0.tgz";
              sha1 = "317f824b0907210b6348671bb040ca072e2e0c82";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-constant-folding@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-constant-folding-0.2.0";
            packageName = "babel-plugin-minify-constant-folding";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-constant-folding/-/babel-plugin-minify-constant-folding-0.2.0.tgz";
              sha1 = "8c70b528b2eb7c13e94d95c8789077d4cdbc3970";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-dead-code-elimination@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-dead-code-elimination-0.2.0";
            packageName = "babel-plugin-minify-dead-code-elimination";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-dead-code-elimination/-/babel-plugin-minify-dead-code-elimination-0.2.0.tgz";
              sha1 = "e8025ee10a1e5e4f202633a6928ce892c33747e3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-flip-comparisons@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-flip-comparisons-0.2.0";
            packageName = "babel-plugin-minify-flip-comparisons";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-flip-comparisons/-/babel-plugin-minify-flip-comparisons-0.2.0.tgz";
              sha1 = "0c9c8e93155c8f09dedad8118b634c259f709ef5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-guarded-expressions@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-guarded-expressions-0.2.0";
            packageName = "babel-plugin-minify-guarded-expressions";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-guarded-expressions/-/babel-plugin-minify-guarded-expressions-0.2.0.tgz";
              sha1 = "8a8c950040fce3e258a12e6eb21eab94ad7235ab";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-infinity@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-infinity-0.2.0";
            packageName = "babel-plugin-minify-infinity";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-infinity/-/babel-plugin-minify-infinity-0.2.0.tgz";
              sha1 = "30960c615ddbc657c045bb00a1d8eb4af257cf03";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-mangle-names@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-mangle-names-0.2.0";
            packageName = "babel-plugin-minify-mangle-names";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-mangle-names/-/babel-plugin-minify-mangle-names-0.2.0.tgz";
              sha1 = "719892297ff0106a6ec1a4b0fc062f1f8b6a8529";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-numeric-literals@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-numeric-literals-0.2.0";
            packageName = "babel-plugin-minify-numeric-literals";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-numeric-literals/-/babel-plugin-minify-numeric-literals-0.2.0.tgz";
              sha1 = "5746e851700167a380c05e93f289a7070459a0d1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-replace@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-replace-0.2.0";
            packageName = "babel-plugin-minify-replace";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-replace/-/babel-plugin-minify-replace-0.2.0.tgz";
              sha1 = "3c1f06bc4e6d3e301eacb763edc1be611efc39b0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-simplify@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-simplify-0.2.0";
            packageName = "babel-plugin-minify-simplify";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-simplify/-/babel-plugin-minify-simplify-0.2.0.tgz";
              sha1 = "21ceec4857100c5476d7cef121f351156e5c9bc0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-minify-type-constructors@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-minify-type-constructors-0.2.0";
            packageName = "babel-plugin-minify-type-constructors";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-minify-type-constructors/-/babel-plugin-minify-type-constructors-0.2.0.tgz";
              sha1 = "7f3b6458be0863cfd59e9985bed6d134aa7a2e17";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-react-docgen@1.8.2" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-react-docgen-1.8.2";
            packageName = "babel-plugin-react-docgen";
            version = "1.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-react-docgen/-/babel-plugin-react-docgen-1.8.2.tgz";
              sha1 = "4615da43588c8cf5bdcae028f217954c70e6770b";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-plugin-react-intl@2.4.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-react-intl-2.4.0";
            packageName = "babel-plugin-react-intl";
            version = "2.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-react-intl/-/babel-plugin-react-intl-2.4.0.tgz";
              sha1 = "292fca8030603a9e0476973290836aa0c7da17e2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-react-transform@2.0.2" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-react-transform-2.0.2";
            packageName = "babel-plugin-react-transform";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-react-transform/-/babel-plugin-react-transform-2.0.2.tgz";
              sha1 = "515bbfa996893981142d90b1f9b1635de2995109";
            };
            dependencies = [ pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-async-functions@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-async-functions-6.13.0";
            packageName = "babel-plugin-syntax-async-functions";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-async-functions/-/babel-plugin-syntax-async-functions-6.13.0.tgz";
              sha1 = "cad9cad1191b5ad634bf30ae0872391e0647be95";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-async-generators@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-async-generators-6.13.0";
            packageName = "babel-plugin-syntax-async-generators";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-async-generators/-/babel-plugin-syntax-async-generators-6.13.0.tgz";
              sha1 = "6bc963ebb16eccbae6b92b596eb7f35c342a8b9a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-class-constructor-call@6.18.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-class-constructor-call-6.18.0";
            packageName = "babel-plugin-syntax-class-constructor-call";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-class-constructor-call/-/babel-plugin-syntax-class-constructor-call-6.18.0.tgz";
              sha1 = "9cb9d39fe43c8600bec8146456ddcbd4e1a76416";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-class-properties@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-class-properties-6.13.0";
            packageName = "babel-plugin-syntax-class-properties";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-class-properties/-/babel-plugin-syntax-class-properties-6.13.0.tgz";
              sha1 = "d7eb23b79a317f8543962c505b827c7d6cac27de";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-decorators@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-decorators-6.13.0";
            packageName = "babel-plugin-syntax-decorators";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-decorators/-/babel-plugin-syntax-decorators-6.13.0.tgz";
              sha1 = "312563b4dbde3cc806cee3e416cceeaddd11ac0b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-do-expressions@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-do-expressions-6.13.0";
            packageName = "babel-plugin-syntax-do-expressions";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-do-expressions/-/babel-plugin-syntax-do-expressions-6.13.0.tgz";
              sha1 = "5747756139aa26d390d09410b03744ba07e4796d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-dynamic-import@6.18.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-dynamic-import-6.18.0";
            packageName = "babel-plugin-syntax-dynamic-import";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-dynamic-import/-/babel-plugin-syntax-dynamic-import-6.18.0.tgz";
              sha1 = "8d6a26229c83745a9982a441051572caa179b1da";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-exponentiation-operator@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-exponentiation-operator-6.13.0";
            packageName = "babel-plugin-syntax-exponentiation-operator";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-exponentiation-operator/-/babel-plugin-syntax-exponentiation-operator-6.13.0.tgz";
              sha1 = "9ee7e8337290da95288201a6a57f4170317830de";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-export-extensions@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-export-extensions-6.13.0";
            packageName = "babel-plugin-syntax-export-extensions";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-export-extensions/-/babel-plugin-syntax-export-extensions-6.13.0.tgz";
              sha1 = "70a1484f0f9089a4e84ad44bac353c95b9b12721";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-flow@6.18.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-flow-6.18.0";
            packageName = "babel-plugin-syntax-flow";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-flow/-/babel-plugin-syntax-flow-6.18.0.tgz";
              sha1 = "4c3ab20a2af26aa20cd25995c398c4eb70310c8d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-function-bind@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-function-bind-6.13.0";
            packageName = "babel-plugin-syntax-function-bind";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-function-bind/-/babel-plugin-syntax-function-bind-6.13.0.tgz";
              sha1 = "48c495f177bdf31a981e732f55adc0bdd2601f46";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-jsx@6.18.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-jsx-6.18.0";
            packageName = "babel-plugin-syntax-jsx";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-jsx/-/babel-plugin-syntax-jsx-6.18.0.tgz";
              sha1 = "0af32a9a6e13ca7a3fd5069e62d7b0f58d0d8946";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-object-rest-spread@6.13.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-object-rest-spread-6.13.0";
            packageName = "babel-plugin-syntax-object-rest-spread";
            version = "6.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-object-rest-spread/-/babel-plugin-syntax-object-rest-spread-6.13.0.tgz";
              sha1 = "fd6536f2bce13836ffa3a5458c4903a597bb3bf5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-syntax-trailing-function-commas@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-syntax-trailing-function-commas-6.22.0";
            packageName = "babel-plugin-syntax-trailing-function-commas";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-syntax-trailing-function-commas/-/babel-plugin-syntax-trailing-function-commas-6.22.0.tgz";
              sha1 = "ba0360937f8d06e40180a43fe0d5616fff532cf3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-async-generator-functions@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-async-generator-functions-6.24.1";
            packageName = "babel-plugin-transform-async-generator-functions";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-generator-functions/-/babel-plugin-transform-async-generator-functions-6.24.1.tgz";
              sha1 = "f058900145fd3e9907a6ddf28da59f215258a5db";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-async-to-generator@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-async-to-generator-6.24.1";
            packageName = "babel-plugin-transform-async-to-generator";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-async-to-generator/-/babel-plugin-transform-async-to-generator-6.24.1.tgz";
              sha1 = "6536e378aff6cb1d5517ac0e40eb3e9fc8d08761";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-class-constructor-call@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-class-constructor-call-6.24.1";
            packageName = "babel-plugin-transform-class-constructor-call";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-class-constructor-call/-/babel-plugin-transform-class-constructor-call-6.24.1.tgz";
              sha1 = "80dc285505ac067dcb8d6c65e2f6f11ab7765ef9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-class-properties@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-class-properties-6.24.1";
            packageName = "babel-plugin-transform-class-properties";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-class-properties/-/babel-plugin-transform-class-properties-6.24.1.tgz";
              sha1 = "6a79763ea61d33d36f37b611aa9def81a81b46ac";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-decorators-legacy@1.3.4" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-decorators-legacy-1.3.4";
            packageName = "babel-plugin-transform-decorators-legacy";
            version = "1.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-decorators-legacy/-/babel-plugin-transform-decorators-legacy-1.3.4.tgz";
              sha1 = "741b58f6c5bce9e6027e0882d9c994f04f366925";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-decorators@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-decorators-6.24.1";
            packageName = "babel-plugin-transform-decorators";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-decorators/-/babel-plugin-transform-decorators-6.24.1.tgz";
              sha1 = "788013d8f8c6b5222bdf7b344390dfd77569e24d";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-do-expressions@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-do-expressions-6.22.0";
            packageName = "babel-plugin-transform-do-expressions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-do-expressions/-/babel-plugin-transform-do-expressions-6.22.0.tgz";
              sha1 = "28ccaf92812d949c2cd1281f690c8fdc468ae9bb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-arrow-functions@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-arrow-functions-6.22.0";
            packageName = "babel-plugin-transform-es2015-arrow-functions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-arrow-functions/-/babel-plugin-transform-es2015-arrow-functions-6.22.0.tgz";
              sha1 = "452692cb711d5f79dc7f85e440ce41b9f244d221";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-block-scoped-functions@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-block-scoped-functions-6.22.0";
            packageName = "babel-plugin-transform-es2015-block-scoped-functions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-block-scoped-functions/-/babel-plugin-transform-es2015-block-scoped-functions-6.22.0.tgz";
              sha1 = "bbc51b49f964d70cb8d8e0b94e820246ce3a6141";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-block-scoping@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-block-scoping-6.26.0";
            packageName = "babel-plugin-transform-es2015-block-scoping";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-block-scoping/-/babel-plugin-transform-es2015-block-scoping-6.26.0.tgz";
              sha1 = "d70f5299c1308d05c12f463813b0a09e73b1895f";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-classes@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-classes-6.24.1";
            packageName = "babel-plugin-transform-es2015-classes";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-classes/-/babel-plugin-transform-es2015-classes-6.24.1.tgz";
              sha1 = "5a4c58a50c9c9461e564b4b2a3bfabc97a2584db";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-computed-properties@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-computed-properties-6.24.1";
            packageName = "babel-plugin-transform-es2015-computed-properties";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-computed-properties/-/babel-plugin-transform-es2015-computed-properties-6.24.1.tgz";
              sha1 = "6fe2a8d16895d5634f4cd999b6d3480a308159b3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-destructuring@6.23.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-destructuring-6.23.0";
            packageName = "babel-plugin-transform-es2015-destructuring";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.23.0.tgz";
              sha1 = "997bb1f1ab967f682d2b0876fe358d60e765c56d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-duplicate-keys@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-duplicate-keys-6.24.1";
            packageName = "babel-plugin-transform-es2015-duplicate-keys";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-duplicate-keys/-/babel-plugin-transform-es2015-duplicate-keys-6.24.1.tgz";
              sha1 = "73eb3d310ca969e3ef9ec91c53741a6f1576423e";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-for-of@6.23.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-for-of-6.23.0";
            packageName = "babel-plugin-transform-es2015-for-of";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-for-of/-/babel-plugin-transform-es2015-for-of-6.23.0.tgz";
              sha1 = "f47c95b2b613df1d3ecc2fdb7573623c75248691";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-function-name@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-function-name-6.24.1";
            packageName = "babel-plugin-transform-es2015-function-name";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-function-name/-/babel-plugin-transform-es2015-function-name-6.24.1.tgz";
              sha1 = "834c89853bc36b1af0f3a4c5dbaa94fd8eacaa8b";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-literals@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-literals-6.22.0";
            packageName = "babel-plugin-transform-es2015-literals";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-literals/-/babel-plugin-transform-es2015-literals-6.22.0.tgz";
              sha1 = "4f54a02d6cd66cf915280019a31d31925377ca2e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-modules-amd@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-modules-amd-6.24.1";
            packageName = "babel-plugin-transform-es2015-modules-amd";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-amd/-/babel-plugin-transform-es2015-modules-amd-6.24.1.tgz";
              sha1 = "3b3e54017239842d6d19c3011c4bd2f00a00d154";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-modules-commonjs@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-modules-commonjs-6.26.0";
            packageName = "babel-plugin-transform-es2015-modules-commonjs";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-commonjs/-/babel-plugin-transform-es2015-modules-commonjs-6.26.0.tgz";
              sha1 = "0d8394029b7dc6abe1a97ef181e00758dd2e5d8a";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-modules-systemjs@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-modules-systemjs-6.24.1";
            packageName = "babel-plugin-transform-es2015-modules-systemjs";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-systemjs/-/babel-plugin-transform-es2015-modules-systemjs-6.24.1.tgz";
              sha1 = "ff89a142b9119a906195f5f106ecf305d9407d23";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-modules-umd@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-modules-umd-6.24.1";
            packageName = "babel-plugin-transform-es2015-modules-umd";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-modules-umd/-/babel-plugin-transform-es2015-modules-umd-6.24.1.tgz";
              sha1 = "ac997e6285cd18ed6176adb607d602344ad38468";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-object-super@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-object-super-6.24.1";
            packageName = "babel-plugin-transform-es2015-object-super";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-object-super/-/babel-plugin-transform-es2015-object-super-6.24.1.tgz";
              sha1 = "24cef69ae21cb83a7f8603dad021f572eb278f8d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-parameters@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-parameters-6.24.1";
            packageName = "babel-plugin-transform-es2015-parameters";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.24.1.tgz";
              sha1 = "57ac351ab49caf14a97cd13b09f66fdf0a625f2b";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-shorthand-properties@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-shorthand-properties-6.24.1";
            packageName = "babel-plugin-transform-es2015-shorthand-properties";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-shorthand-properties/-/babel-plugin-transform-es2015-shorthand-properties-6.24.1.tgz";
              sha1 = "24f875d6721c87661bbd99a4622e51f14de38aa0";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-spread@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-spread-6.22.0";
            packageName = "babel-plugin-transform-es2015-spread";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-spread/-/babel-plugin-transform-es2015-spread-6.22.0.tgz";
              sha1 = "d6d68a99f89aedc4536c81a542e8dd9f1746f8d1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-sticky-regex@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-sticky-regex-6.24.1";
            packageName = "babel-plugin-transform-es2015-sticky-regex";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-sticky-regex/-/babel-plugin-transform-es2015-sticky-regex-6.24.1.tgz";
              sha1 = "00c1cdb1aca71112cdf0cf6126c2ed6b457ccdbc";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-template-literals@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-template-literals-6.22.0";
            packageName = "babel-plugin-transform-es2015-template-literals";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-template-literals/-/babel-plugin-transform-es2015-template-literals-6.22.0.tgz";
              sha1 = "a84b3450f7e9f8f1f6839d6d687da84bb1236d8d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-typeof-symbol@6.23.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-typeof-symbol-6.23.0";
            packageName = "babel-plugin-transform-es2015-typeof-symbol";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-typeof-symbol/-/babel-plugin-transform-es2015-typeof-symbol-6.23.0.tgz";
              sha1 = "dec09f1cddff94b52ac73d505c84df59dcceb372";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es2015-unicode-regex@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es2015-unicode-regex-6.24.1";
            packageName = "babel-plugin-transform-es2015-unicode-regex";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es2015-unicode-regex/-/babel-plugin-transform-es2015-unicode-regex-6.24.1.tgz";
              sha1 = "d38b12f42ea7323f729387f18a7c5ae1faeb35e9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es3-member-expression-literals@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es3-member-expression-literals-6.22.0";
            packageName = "babel-plugin-transform-es3-member-expression-literals";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es3-member-expression-literals/-/babel-plugin-transform-es3-member-expression-literals-6.22.0.tgz";
              sha1 = "733d3444f3ecc41bef8ed1a6a4e09657b8969ebb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-es3-property-literals@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-es3-property-literals-6.22.0";
            packageName = "babel-plugin-transform-es3-property-literals";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-es3-property-literals/-/babel-plugin-transform-es3-property-literals-6.22.0.tgz";
              sha1 = "b2078d5842e22abf40f73e8cde9cd3711abd5758";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-exponentiation-operator@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-exponentiation-operator-6.24.1";
            packageName = "babel-plugin-transform-exponentiation-operator";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-exponentiation-operator/-/babel-plugin-transform-exponentiation-operator-6.24.1.tgz";
              sha1 = "2ab0c9c7f3098fa48907772bb813fe41e8de3a0e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-export-extensions@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-export-extensions-6.22.0";
            packageName = "babel-plugin-transform-export-extensions";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-export-extensions/-/babel-plugin-transform-export-extensions-6.22.0.tgz";
              sha1 = "53738b47e75e8218589eea946cbbd39109bbe653";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-flow-strip-types@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-flow-strip-types-6.22.0";
            packageName = "babel-plugin-transform-flow-strip-types";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-flow-strip-types/-/babel-plugin-transform-flow-strip-types-6.22.0.tgz";
              sha1 = "84cb672935d43714fdc32bce84568d87441cf7cf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-function-bind@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-function-bind-6.22.0";
            packageName = "babel-plugin-transform-function-bind";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-function-bind/-/babel-plugin-transform-function-bind-6.22.0.tgz";
              sha1 = "c6fb8e96ac296a310b8cf8ea401462407ddf6a97";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-inline-consecutive-adds@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-inline-consecutive-adds-0.2.0";
            packageName = "babel-plugin-transform-inline-consecutive-adds";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-inline-consecutive-adds/-/babel-plugin-transform-inline-consecutive-adds-0.2.0.tgz";
              sha1 = "15dae78921057f4004f8eafd79e15ddc5f12f426";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-member-expression-literals@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-member-expression-literals-6.9.0";
            packageName = "babel-plugin-transform-member-expression-literals";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-member-expression-literals/-/babel-plugin-transform-member-expression-literals-6.9.0.tgz";
              sha1 = "ab07ad52a11ff7d2528c71388e8f901a4499c2b2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-merge-sibling-variables@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-merge-sibling-variables-6.9.0";
            packageName = "babel-plugin-transform-merge-sibling-variables";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-merge-sibling-variables/-/babel-plugin-transform-merge-sibling-variables-6.9.0.tgz";
              sha1 = "140017e305f8eb4f60d2f2db61154fbd71a9fcdd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-minify-booleans@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-minify-booleans-6.9.0";
            packageName = "babel-plugin-transform-minify-booleans";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-minify-booleans/-/babel-plugin-transform-minify-booleans-6.9.0.tgz";
              sha1 = "e36ceaa49aadcae70ec98bd9dbccb660719a667a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-object-rest-spread@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-object-rest-spread-6.26.0";
            packageName = "babel-plugin-transform-object-rest-spread";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-object-rest-spread/-/babel-plugin-transform-object-rest-spread-6.26.0.tgz";
              sha1 = "0f36692d50fef6b7e2d4b3ac1478137a963b7b06";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-property-literals@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-property-literals-6.9.0";
            packageName = "babel-plugin-transform-property-literals";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-property-literals/-/babel-plugin-transform-property-literals-6.9.0.tgz";
              sha1 = "4ddc12ada888927eacab4daff8a535ebc5de5a61";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-constant-elements@6.23.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-constant-elements-6.23.0";
            packageName = "babel-plugin-transform-react-constant-elements";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-constant-elements/-/babel-plugin-transform-react-constant-elements-6.23.0.tgz";
              sha1 = "2f119bf4d2cdd45eb9baaae574053c604f6147dd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-display-name@6.25.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-display-name-6.25.0";
            packageName = "babel-plugin-transform-react-display-name";
            version = "6.25.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-display-name/-/babel-plugin-transform-react-display-name-6.25.0.tgz";
              sha1 = "67e2bf1f1e9c93ab08db96792e05392bf2cc28d1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-inline-elements@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-inline-elements-6.22.0";
            packageName = "babel-plugin-transform-react-inline-elements";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-inline-elements/-/babel-plugin-transform-react-inline-elements-6.22.0.tgz";
              sha1 = "6687211a32b49a52f22c573a2b5504a25ef17c53";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-jsx-self@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-jsx-self-6.22.0";
            packageName = "babel-plugin-transform-react-jsx-self";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx-self/-/babel-plugin-transform-react-jsx-self-6.22.0.tgz";
              sha1 = "df6d80a9da2612a121e6ddd7558bcbecf06e636e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-jsx-source@6.22.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-jsx-source-6.22.0";
            packageName = "babel-plugin-transform-react-jsx-source";
            version = "6.22.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx-source/-/babel-plugin-transform-react-jsx-source-6.22.0.tgz";
              sha1 = "66ac12153f5cd2d17b3c19268f4bf0197f44ecd6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-jsx@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-jsx-6.24.1";
            packageName = "babel-plugin-transform-react-jsx";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-jsx/-/babel-plugin-transform-react-jsx-6.24.1.tgz";
              sha1 = "840a028e7df460dfc3a2d29f0c0d91f6376e66a3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-pure-class-to-function@1.0.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-pure-class-to-function-1.0.1";
            packageName = "babel-plugin-transform-react-pure-class-to-function";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-pure-class-to-function/-/babel-plugin-transform-react-pure-class-to-function-1.0.1.tgz";
              sha1 = "32a649c97d653250b419cfd1489331b0290d9ee4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-react-remove-prop-types@0.2.12" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-react-remove-prop-types-0.2.12";
            packageName = "babel-plugin-transform-react-remove-prop-types";
            version = "0.2.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-react-remove-prop-types/-/babel-plugin-transform-react-remove-prop-types-0.2.12.tgz";
              sha1 = "3406696df0b8b456089f9d726d27e7e123d2f929";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-regenerator@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-regenerator-6.26.0";
            packageName = "babel-plugin-transform-regenerator";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-regenerator/-/babel-plugin-transform-regenerator-6.26.0.tgz";
              sha1 = "e0703696fbde27f0a3efcacf8b4dca2f7b3a8f2f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-regexp-constructors@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-regexp-constructors-0.2.0";
            packageName = "babel-plugin-transform-regexp-constructors";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-regexp-constructors/-/babel-plugin-transform-regexp-constructors-0.2.0.tgz";
              sha1 = "6aa5dd0acc515db4be929bbcec4ed4c946c534a3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-remove-console@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-remove-console-6.9.0";
            packageName = "babel-plugin-transform-remove-console";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-remove-console/-/babel-plugin-transform-remove-console-6.9.0.tgz";
              sha1 = "a7b671aab050dd30ef7cf2142b61a7d10efb327f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-remove-debugger@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-remove-debugger-6.9.0";
            packageName = "babel-plugin-transform-remove-debugger";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-remove-debugger/-/babel-plugin-transform-remove-debugger-6.9.0.tgz";
              sha1 = "b465e74b3fbe1970da561fb1331e30aefac3f1fe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-remove-undefined@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-remove-undefined-0.2.0";
            packageName = "babel-plugin-transform-remove-undefined";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-remove-undefined/-/babel-plugin-transform-remove-undefined-0.2.0.tgz";
              sha1 = "94f052062054c707e8d094acefe79416b63452b1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-runtime@6.23.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-runtime-6.23.0";
            packageName = "babel-plugin-transform-runtime";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-runtime/-/babel-plugin-transform-runtime-6.23.0.tgz";
              sha1 = "88490d446502ea9b8e7efb0fe09ec4d99479b1ee";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-simplify-comparison-operators@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-simplify-comparison-operators-6.9.0";
            packageName = "babel-plugin-transform-simplify-comparison-operators";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-simplify-comparison-operators/-/babel-plugin-transform-simplify-comparison-operators-6.9.0.tgz";
              sha1 = "586252fea023cb13f2400a09c0ab178dc0844f0a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-strict-mode@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-strict-mode-6.24.1";
            packageName = "babel-plugin-transform-strict-mode";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-strict-mode/-/babel-plugin-transform-strict-mode-6.24.1.tgz";
              sha1 = "d5faf7aa578a65bbe591cf5edae04a0c67020758";
            };
            dependencies = [ pkgs."babel-types@6.26.0" ];
            dontNpmInstall = true;
            };
  "babel-plugin-transform-undefined-to-void@6.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-transform-undefined-to-void-6.9.0";
            packageName = "babel-plugin-transform-undefined-to-void";
            version = "6.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-transform-undefined-to-void/-/babel-plugin-transform-undefined-to-void-6.9.0.tgz";
              sha1 = "eb5db0554caffe9ded0206468ec0c6c3b332b9d2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-plugin-webpack-loaders@0.9.0" = nodeEnv.buildYarnPackage {
            name = "babel-plugin-webpack-loaders-0.9.0";
            packageName = "babel-plugin-webpack-loaders";
            version = "0.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-plugin-webpack-loaders/-/babel-plugin-webpack-loaders-0.9.0.tgz";
              sha1 = "686ec1cab9db348958f990a95f57090f7e16b743";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."babylon@6.18.0" pkgs."enhanced-resolve@2.3.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-polyfill@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-polyfill-6.26.0";
            packageName = "babel-polyfill";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-polyfill/-/babel-polyfill-6.26.0.tgz";
              sha1 = "379937abc67d7895970adc621f284cd966cf2153";
            };
            dependencies = [ pkgs."regenerator-runtime@0.10.5" ];
            dontNpmInstall = true;
            };
  "babel-preset-env@1.6.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-env-1.6.1";
            packageName = "babel-preset-env";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-env/-/babel-preset-env-1.6.1.tgz";
              sha1 = "a18b564cc9b9afdf4aae57ae3c1b0d99188e6f48";
            };
            dependencies = [ pkgs."invariant@2.2.2" ];
            dontNpmInstall = true;
            };
  "babel-preset-es2015@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-es2015-6.24.1";
            packageName = "babel-preset-es2015";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-es2015/-/babel-preset-es2015-6.24.1.tgz";
              sha1 = "d44050d6bc2c9feea702aaf38d727a0210538939";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-fbjs@2.1.4" = nodeEnv.buildYarnPackage {
            name = "babel-preset-fbjs-2.1.4";
            packageName = "babel-preset-fbjs";
            version = "2.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-fbjs/-/babel-preset-fbjs-2.1.4.tgz";
              sha1 = "22f358e6654073acf61e47a052a777d7bccf03af";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-flow@6.23.0" = nodeEnv.buildYarnPackage {
            name = "babel-preset-flow-6.23.0";
            packageName = "babel-preset-flow";
            version = "6.23.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-flow/-/babel-preset-flow-6.23.0.tgz";
              sha1 = "e71218887085ae9a24b5be4169affb599816c49d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-minify@0.2.0" = nodeEnv.buildYarnPackage {
            name = "babel-preset-minify-0.2.0";
            packageName = "babel-preset-minify";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-minify/-/babel-preset-minify-0.2.0.tgz";
              sha1 = "006566552d9b83834472273f306c0131062a0acc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-react-app@3.1.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-react-app-3.1.1";
            packageName = "babel-preset-react-app";
            version = "3.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react-app/-/babel-preset-react-app-3.1.1.tgz";
              sha1 = "d3f06a79742f0e89d7afcb72e282d9809c850920";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-react-hmre@1.1.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-react-hmre-1.1.1";
            packageName = "babel-preset-react-hmre";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react-hmre/-/babel-preset-react-hmre-1.1.1.tgz";
              sha1 = "d216e60cb5b8d4c873e19ed0f54eaff1437bc492";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-react-optimize@1.0.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-react-optimize-1.0.1";
            packageName = "babel-preset-react-optimize";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react-optimize/-/babel-preset-react-optimize-1.0.1.tgz";
              sha1 = "c23509fba7cbc76d7de7050e7d26bcd22bc304e8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-react@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-react-6.24.1";
            packageName = "babel-preset-react";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-react/-/babel-preset-react-6.24.1.tgz";
              sha1 = "ba69dfaea45fc3ec639b6a4ecea6e17702c91380";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-stage-0@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-stage-0-6.24.1";
            packageName = "babel-preset-stage-0";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-0/-/babel-preset-stage-0-6.24.1.tgz";
              sha1 = "5642d15042f91384d7e5af8bc88b1db95b039e6a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-stage-1@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-stage-1-6.24.1";
            packageName = "babel-preset-stage-1";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-1/-/babel-preset-stage-1-6.24.1.tgz";
              sha1 = "7692cd7dcd6849907e6ae4a0a85589cfb9e2bfb0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-stage-2@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-stage-2-6.24.1";
            packageName = "babel-preset-stage-2";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-2/-/babel-preset-stage-2-6.24.1.tgz";
              sha1 = "d9e2960fb3d71187f0e64eec62bc07767219bdc1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-preset-stage-3@6.24.1" = nodeEnv.buildYarnPackage {
            name = "babel-preset-stage-3-6.24.1";
            packageName = "babel-preset-stage-3";
            version = "6.24.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-preset-stage-3/-/babel-preset-stage-3-6.24.1.tgz";
              sha1 = "836ada0a9e7a7fa37cb138fb9326f87934a48395";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-register@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-register-6.26.0";
            packageName = "babel-register";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-register/-/babel-register-6.26.0.tgz";
              sha1 = "6ed021173e2fcb486d7acb45c6009a856f647071";
            };
            dependencies = [ pkgs."lodash@4.17.5" pkgs."source-map-support@0.4.18" ];
            dontNpmInstall = true;
            };
  "babel-runtime@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-runtime-6.26.0";
            packageName = "babel-runtime";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-runtime/-/babel-runtime-6.26.0.tgz";
              sha1 = "965c7058668e82b55d7bfe04ff2337bc8b5647fe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-template@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-template-6.26.0";
            packageName = "babel-template";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-template/-/babel-template-6.26.0.tgz";
              sha1 = "de03e2d16396b069f46dd9fff8521fb1a0e35e02";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."babylon@6.18.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-traverse@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-traverse-6.26.0";
            packageName = "babel-traverse";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-traverse/-/babel-traverse-6.26.0.tgz";
              sha1 = "46a9cbd7edcc62c8e5c064e2d2d8d0f4035766ee";
            };
            dependencies = [ pkgs."babel-types@6.26.0" pkgs."babylon@6.18.0" pkgs."debug@2.6.9" pkgs."globals@9.18.0" pkgs."invariant@2.2.2" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "babel-types@7.0.0-beta.3" = nodeEnv.buildYarnPackage {
            name = "babel-types-7.0.0-beta.3";
            packageName = "babel-types";
            version = "7.0.0-beta.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-types/-/babel-types-7.0.0-beta.3.tgz";
              sha1 = "cd927ca70e0ae8ab05f4aab83778cfb3e6eb20b4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babylon@7.0.0-beta.40" = nodeEnv.buildYarnPackage {
            name = "babylon-7.0.0-beta.40";
            packageName = "babylon";
            version = "7.0.0-beta.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babylon/-/babylon-7.0.0-beta.40.tgz";
              sha1 = "91fc8cd56d5eb98b28e6fde41045f2957779940a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "balanced-match@1.0.0" = nodeEnv.buildYarnPackage {
            name = "balanced-match-1.0.0";
            packageName = "balanced-match";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz";
              sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "base-x@3.0.4" = nodeEnv.buildYarnPackage {
            name = "base-x-3.0.4";
            packageName = "base-x";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/base-x/-/base-x-3.0.4.tgz";
              sha1 = "94c1788736da065edb1d68808869e357c977fa77";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "base64-js@1.2.0" = nodeEnv.buildYarnPackage {
            name = "base64-js-1.2.0";
            packageName = "base64-js";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/base64-js/-/base64-js-1.2.0.tgz";
              sha1 = "a39992d723584811982be5e290bb6a53d86700f1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bcrypt-pbkdf@1.0.1" = nodeEnv.buildYarnPackage {
            name = "bcrypt-pbkdf-1.0.1";
            packageName = "bcrypt-pbkdf";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.1.tgz";
              sha1 = "63bc5dcb61331b92bc05fd528953c33462a06f8d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "becke-ch--regex--s0-0-v1--base--pl--lib@1.2.0" = nodeEnv.buildYarnPackage {
            name = "becke-ch--regex--s0-0-v1--base--pl--lib-1.2.0";
            packageName = "becke-ch--regex--s0-0-v1--base--pl--lib";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/becke-ch--regex--s0-0-v1--base--pl--lib/-/becke-ch--regex--s0-0-v1--base--pl--lib-1.2.0.tgz";
              sha1 = "2e73e9d21f2c2e6f5a5454045636f0ab93e46130";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "beeper@1.1.1" = nodeEnv.buildYarnPackage {
            name = "beeper-1.1.1";
            packageName = "beeper";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/beeper/-/beeper-1.1.1.tgz";
              sha1 = "e6d5ea8c5dad001304a70b22638447f69cb2f809";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "big.js@3.2.0" = nodeEnv.buildYarnPackage {
            name = "big.js-3.2.0";
            packageName = "big.js";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/big.js/-/big.js-3.2.0.tgz";
              sha1 = "a5fc298b81b9e0dca2e458824784b65c52ba588e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bignumber.js@4.0.0" = nodeEnv.buildYarnPackage {
            name = "bignumber.js-4.0.0";
            packageName = "bignumber.js";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bignumber.js/-/bignumber.js-4.0.0.tgz";
              sha1 = "26b23a3240820fb6b875f07de822004c7d34b682";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "binary-extensions@1.8.0" = nodeEnv.buildYarnPackage {
            name = "binary-extensions-1.8.0";
            packageName = "binary-extensions";
            version = "1.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-1.8.0.tgz";
              sha1 = "48ec8d16df4377eae5fa5884682480af4d95c774";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "binary@0.3.0" = nodeEnv.buildYarnPackage {
            name = "binary-0.3.0";
            packageName = "binary";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/binary/-/binary-0.3.0.tgz";
              sha1 = "9f60553bc5ce8c3386f3b553cff47462adecaa79";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bip39@2.3.0" = nodeEnv.buildYarnPackage {
            name = "bip39-2.3.0";
            packageName = "bip39";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bip39/-/bip39-2.3.0.tgz";
              sha1 = "e4ee6c6d1bd90ca00ffd57ad446bdf8c017ff484";
            };
            dependencies = [ pkgs."create-hash@1.1.2" pkgs."randombytes@2.0.3" ];
            dontNpmInstall = true;
            };
  "bl@1.1.2" = nodeEnv.buildYarnPackage {
            name = "bl-1.1.2";
            packageName = "bl";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bl/-/bl-1.1.2.tgz";
              sha1 = "fdca871a99713aa00d19e3bbba41c44787a65398";
            };
            dependencies = [ pkgs."readable-stream@2.0.6" ];
            dontNpmInstall = true;
            };
  "blakejs@1.0.1" = nodeEnv.buildYarnPackage {
            name = "blakejs-1.0.1";
            packageName = "blakejs";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/blakejs/-/blakejs-1.0.1.tgz";
              sha1 = "ae54b631fb4ab820c4f7a226a4b430a95f87065e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "block-stream@0.0.9" = nodeEnv.buildYarnPackage {
            name = "block-stream-0.0.9";
            packageName = "block-stream";
            version = "0.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/block-stream/-/block-stream-0.0.9.tgz";
              sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bluebird@3.5.1" = nodeEnv.buildYarnPackage {
            name = "bluebird-3.5.1";
            packageName = "bluebird";
            version = "3.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.5.1.tgz";
              sha1 = "d9551f9de98f1fcda1e683d17ee91a0602ee2eb9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bn.js@4.11.8" = nodeEnv.buildYarnPackage {
            name = "bn.js-4.11.8";
            packageName = "bn.js";
            version = "4.11.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bn.js/-/bn.js-4.11.8.tgz";
              sha1 = "2cde09eb5ee341f484746bb0309b3253b1b1442f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "body-parser@1.18.2" = nodeEnv.buildYarnPackage {
            name = "body-parser-1.18.2";
            packageName = "body-parser";
            version = "1.18.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/body-parser/-/body-parser-1.18.2.tgz";
              sha1 = "87678a19d84b47d859b83199bd59bce222b10454";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "boolbase@1.0.0" = nodeEnv.buildYarnPackage {
            name = "boolbase-1.0.0";
            packageName = "boolbase";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boolbase/-/boolbase-1.0.0.tgz";
              sha1 = "68dff5fbe60c51eb37725ea9e3ed310dcc1e776e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "boom@5.2.0" = nodeEnv.buildYarnPackage {
            name = "boom-5.2.0";
            packageName = "boom";
            version = "5.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boom/-/boom-5.2.0.tgz";
              sha1 = "5dd9da6ee3a5f302077436290cb717d3f4a54e02";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bowser@1.9.2" = nodeEnv.buildYarnPackage {
            name = "bowser-1.9.2";
            packageName = "bowser";
            version = "1.9.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bowser/-/bowser-1.9.2.tgz";
              sha1 = "d66fc868ca5f4ba895bee1363c343fe7b37d3394";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "brace-expansion@1.1.11" = nodeEnv.buildYarnPackage {
            name = "brace-expansion-1.1.11";
            packageName = "brace-expansion";
            version = "1.1.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz";
              sha1 = "3c7fcbf529d87226f3d2f52b966ff5271eb441dd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "braces@1.8.5" = nodeEnv.buildYarnPackage {
            name = "braces-1.8.5";
            packageName = "braces";
            version = "1.8.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/braces/-/braces-1.8.5.tgz";
              sha1 = "ba77962e12dff969d6b76711e914b737857bf6a7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "brcast@3.0.1" = nodeEnv.buildYarnPackage {
            name = "brcast-3.0.1";
            packageName = "brcast";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/brcast/-/brcast-3.0.1.tgz";
              sha1 = "6256a8349b20de9eed44257a9b24d71493cd48dd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "brorand@1.0.6" = nodeEnv.buildYarnPackage {
            name = "brorand-1.0.6";
            packageName = "brorand";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/brorand/-/brorand-1.0.6.tgz";
              sha1 = "4028706b915f91f7b349a2e0bf3c376039d216e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "browserify-aes@1.0.6" = nodeEnv.buildYarnPackage {
            name = "browserify-aes-1.0.6";
            packageName = "browserify-aes";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-aes/-/browserify-aes-1.0.6.tgz";
              sha1 = "5e7725dbdef1fd5930d4ebab48567ce451c48a0a";
            };
            dependencies = [ pkgs."cipher-base@1.0.3" pkgs."create-hash@1.1.2" ];
            dontNpmInstall = true;
            };
  "browserify-cipher@1.0.0" = nodeEnv.buildYarnPackage {
            name = "browserify-cipher-1.0.0";
            packageName = "browserify-cipher";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-cipher/-/browserify-cipher-1.0.0.tgz";
              sha1 = "9988244874bf5ed4e28da95666dcd66ac8fc363a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "browserify-des@1.0.0" = nodeEnv.buildYarnPackage {
            name = "browserify-des-1.0.0";
            packageName = "browserify-des";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-des/-/browserify-des-1.0.0.tgz";
              sha1 = "daa277717470922ed2fe18594118a175439721dd";
            };
            dependencies = [ pkgs."cipher-base@1.0.3" ];
            dontNpmInstall = true;
            };
  "browserify-rsa@4.0.1" = nodeEnv.buildYarnPackage {
            name = "browserify-rsa-4.0.1";
            packageName = "browserify-rsa";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-rsa/-/browserify-rsa-4.0.1.tgz";
              sha1 = "21e0abfaf6f2029cf2fafb133567a701d4135524";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."randombytes@2.0.3" ];
            dontNpmInstall = true;
            };
  "browserify-sha3@0.0.1" = nodeEnv.buildYarnPackage {
            name = "browserify-sha3-0.0.1";
            packageName = "browserify-sha3";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-sha3/-/browserify-sha3-0.0.1.tgz";
              sha1 = "3ff34a3006ef15c0fb3567e541b91a2340123d11";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "browserify-sign@4.0.0" = nodeEnv.buildYarnPackage {
            name = "browserify-sign-4.0.0";
            packageName = "browserify-sign";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-sign/-/browserify-sign-4.0.0.tgz";
              sha1 = "10773910c3c206d5420a46aad8694f820b85968f";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."create-hash@1.1.2" pkgs."create-hmac@1.1.4" pkgs."elliptic@6.3.2" ];
            dontNpmInstall = true;
            };
  "browserify-zlib@0.2.0" = nodeEnv.buildYarnPackage {
            name = "browserify-zlib-0.2.0";
            packageName = "browserify-zlib";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.2.0.tgz";
              sha1 = "2869459d9aa3be245fe8fe2ca1f46e2e7f54d73f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "browserslist@2.11.3" = nodeEnv.buildYarnPackage {
            name = "browserslist-2.11.3";
            packageName = "browserslist";
            version = "2.11.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserslist/-/browserslist-2.11.3.tgz";
              sha1 = "fe36167aed1bbcde4827ebfe71347a2cc70b99b2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bs58@4.0.1" = nodeEnv.buildYarnPackage {
            name = "bs58-4.0.1";
            packageName = "bs58";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bs58/-/bs58-4.0.1.tgz";
              sha1 = "be161e76c354f6f788ae4071f63f34e8c4f0a42a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "buffer-crc32@0.2.13" = nodeEnv.buildYarnPackage {
            name = "buffer-crc32-0.2.13";
            packageName = "buffer-crc32";
            version = "0.2.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-crc32/-/buffer-crc32-0.2.13.tgz";
              sha1 = "0d333e3f00eac50aa1454abd30ef8c2a5d9a7242";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "buffer-shims@1.0.0" = nodeEnv.buildYarnPackage {
            name = "buffer-shims-1.0.0";
            packageName = "buffer-shims";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-shims/-/buffer-shims-1.0.0.tgz";
              sha1 = "9978ce317388c649ad8793028c3477ef044a8b51";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "buffer-to-arraybuffer@0.0.5" = nodeEnv.buildYarnPackage {
            name = "buffer-to-arraybuffer-0.0.5";
            packageName = "buffer-to-arraybuffer";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-to-arraybuffer/-/buffer-to-arraybuffer-0.0.5.tgz";
              sha1 = "6064a40fa76eb43c723aba9ef8f6e1216d10511a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "buffer-xor@1.0.3" = nodeEnv.buildYarnPackage {
            name = "buffer-xor-1.0.3";
            packageName = "buffer-xor";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer-xor/-/buffer-xor-1.0.3.tgz";
              sha1 = "26e61ed1422fb70dd42e6e36729ed51d855fe8d9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "buffer@5.1.0" = nodeEnv.buildYarnPackage {
            name = "buffer-5.1.0";
            packageName = "buffer";
            version = "5.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer/-/buffer-5.1.0.tgz";
              sha1 = "c913e43678c7cb7c8bd16afbcddb6c5505e8f9fe";
            };
            dependencies = [ pkgs."base64-js@1.1.2" ];
            dontNpmInstall = true;
            };
  "buffers@0.1.1" = nodeEnv.buildYarnPackage {
            name = "buffers-0.1.1";
            packageName = "buffers";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffers/-/buffers-0.1.1.tgz";
              sha1 = "b24579c3bed4d6d396aeee6d9a8ae7f5482ab7bb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "builtin-modules@1.1.1" = nodeEnv.buildYarnPackage {
            name = "builtin-modules-1.1.1";
            packageName = "builtin-modules";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/builtin-modules/-/builtin-modules-1.1.1.tgz";
              sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "builtin-status-codes@3.0.0" = nodeEnv.buildYarnPackage {
            name = "builtin-status-codes-3.0.0";
            packageName = "builtin-status-codes";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/builtin-status-codes/-/builtin-status-codes-3.0.0.tgz";
              sha1 = "85982878e21b98e1c66425e03d0174788f569ee8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bytes@3.0.0" = nodeEnv.buildYarnPackage {
            name = "bytes-3.0.0";
            packageName = "bytes";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bytes/-/bytes-3.0.0.tgz";
              sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cacache@10.0.4" = nodeEnv.buildYarnPackage {
            name = "cacache-10.0.4";
            packageName = "cacache";
            version = "10.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cacache/-/cacache-10.0.4.tgz";
              sha1 = "6452367999eff9d4188aefd9a14e9d7c6a263460";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "caller-path@0.1.0" = nodeEnv.buildYarnPackage {
            name = "caller-path-0.1.0";
            packageName = "caller-path";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caller-path/-/caller-path-0.1.0.tgz";
              sha1 = "94085ef63581ecd3daa92444a8fe94e82577751f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "callsites@0.2.0" = nodeEnv.buildYarnPackage {
            name = "callsites-0.2.0";
            packageName = "callsites";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/callsites/-/callsites-0.2.0.tgz";
              sha1 = "afab96262910a7f33c19a5775825c69f34e350ca";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "camel-case@3.0.0" = nodeEnv.buildYarnPackage {
            name = "camel-case-3.0.0";
            packageName = "camel-case";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camel-case/-/camel-case-3.0.0.tgz";
              sha1 = "ca3c3688a4e9cf3a4cda777dc4dcbc713249cf73";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "camelcase-keys@2.1.0" = nodeEnv.buildYarnPackage {
            name = "camelcase-keys-2.1.0";
            packageName = "camelcase-keys";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
              sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
            };
            dependencies = [ pkgs."camelcase@2.1.1" ];
            dontNpmInstall = true;
            };
  "camelcase@4.1.0" = nodeEnv.buildYarnPackage {
            name = "camelcase-4.1.0";
            packageName = "camelcase";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase/-/camelcase-4.1.0.tgz";
              sha1 = "d545635be1e33c542649c69173e5de6acfae34dd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "caniuse-api@1.5.2" = nodeEnv.buildYarnPackage {
            name = "caniuse-api-1.5.2";
            packageName = "caniuse-api";
            version = "1.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caniuse-api/-/caniuse-api-1.5.2.tgz";
              sha1 = "8f393c682f661c0a997b77bba6e826483fb3600e";
            };
            dependencies = [ pkgs."browserslist@1.5.2" pkgs."shelljs@0.7.6" ];
            dontNpmInstall = true;
            };
  "caniuse-db@1.0.30000604" = nodeEnv.buildYarnPackage {
            name = "caniuse-db-1.0.30000604";
            packageName = "caniuse-db";
            version = "1.0.30000604";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caniuse-db/-/caniuse-db-1.0.30000604.tgz";
              sha1 = "bc139270a777564d19c0aadcd832b491d093bda5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "caniuse-lite@1.0.30000810" = nodeEnv.buildYarnPackage {
            name = "caniuse-lite-1.0.30000810";
            packageName = "caniuse-lite";
            version = "1.0.30000810";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caniuse-lite/-/caniuse-lite-1.0.30000810.tgz";
              sha1 = "47585fffce0e9f3593a6feea4673b945424351d9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "case-sensitive-paths-webpack-plugin@2.1.1" = nodeEnv.buildYarnPackage {
            name = "case-sensitive-paths-webpack-plugin-2.1.1";
            packageName = "case-sensitive-paths-webpack-plugin";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/case-sensitive-paths-webpack-plugin/-/case-sensitive-paths-webpack-plugin-2.1.1.tgz";
              sha1 = "3d29ced8c1f124bf6f53846fb3f5894731fdc909";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "caseless@0.12.0" = nodeEnv.buildYarnPackage {
            name = "caseless-0.12.0";
            packageName = "caseless";
            version = "0.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caseless/-/caseless-0.12.0.tgz";
              sha1 = "1b681c21ff84033c826543090689420d187151dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "center-align@0.1.3" = nodeEnv.buildYarnPackage {
            name = "center-align-0.1.3";
            packageName = "center-align";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/center-align/-/center-align-0.1.3.tgz";
              sha1 = "aa0d32629b6ee972200411cbd4461c907bc2b7ad";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chai@4.1.2" = nodeEnv.buildYarnPackage {
            name = "chai-4.1.2";
            packageName = "chai";
            version = "4.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chai/-/chai-4.1.2.tgz";
              sha1 = "0f64584ba642f0f2ace2806279f4f06ca23ad73c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chain-function@1.0.0" = nodeEnv.buildYarnPackage {
            name = "chain-function-1.0.0";
            packageName = "chain-function";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chain-function/-/chain-function-1.0.0.tgz";
              sha1 = "0d4ab37e7e18ead0bdc47b920764118ce58733dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chainsaw@0.1.0" = nodeEnv.buildYarnPackage {
            name = "chainsaw-0.1.0";
            packageName = "chainsaw";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chainsaw/-/chainsaw-0.1.0.tgz";
              sha1 = "5eab50b28afe58074d0d58291388828b5e5fbc98";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chalk@2.3.1" = nodeEnv.buildYarnPackage {
            name = "chalk-2.3.1";
            packageName = "chalk";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chalk/-/chalk-2.3.1.tgz";
              sha1 = "523fe2678aec7b04e8041909292fe8b17059b796";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chardet@0.4.2" = nodeEnv.buildYarnPackage {
            name = "chardet-0.4.2";
            packageName = "chardet";
            version = "0.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chardet/-/chardet-0.4.2.tgz";
              sha1 = "b5473b33dc97c424e5d98dc87d55d4d8a29c8bf2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "check-error@1.0.2" = nodeEnv.buildYarnPackage {
            name = "check-error-1.0.2";
            packageName = "check-error";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/check-error/-/check-error-1.0.2.tgz";
              sha1 = "574d312edd88bb5dd8912e9286dd6c0aed4aac82";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chokidar@1.7.0" = nodeEnv.buildYarnPackage {
            name = "chokidar-1.7.0";
            packageName = "chokidar";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chokidar/-/chokidar-1.7.0.tgz";
              sha1 = "798e689778151c8076b4b360e5edd28cda2bb468";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chownr@1.0.1" = nodeEnv.buildYarnPackage {
            name = "chownr-1.0.1";
            packageName = "chownr";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chownr/-/chownr-1.0.1.tgz";
              sha1 = "e2a75042a9551908bebd25b8523d5f9769d79181";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chromium-pickle-js@0.2.0" = nodeEnv.buildYarnPackage {
            name = "chromium-pickle-js-0.2.0";
            packageName = "chromium-pickle-js";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chromium-pickle-js/-/chromium-pickle-js-0.2.0.tgz";
              sha1 = "04a106672c18b085ab774d983dfa3ea138f22205";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cipher-base@1.0.4" = nodeEnv.buildYarnPackage {
            name = "cipher-base-1.0.4";
            packageName = "cipher-base";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cipher-base/-/cipher-base-1.0.4.tgz";
              sha1 = "8760e4ecc272f4c363532f926d874aae2c1397de";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "circular-json@0.3.3" = nodeEnv.buildYarnPackage {
            name = "circular-json-0.3.3";
            packageName = "circular-json";
            version = "0.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/circular-json/-/circular-json-0.3.3.tgz";
              sha1 = "815c99ea84f6809529d2f45791bdf82711352d66";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "clap@1.1.2" = nodeEnv.buildYarnPackage {
            name = "clap-1.1.2";
            packageName = "clap";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clap/-/clap-1.1.2.tgz";
              sha1 = "316545bf22229225a2cecaa6824cd2f56a9709ed";
            };
            dependencies = [ pkgs."chalk@1.1.3" ];
            dontNpmInstall = true;
            };
  "classnames@2.2.5" = nodeEnv.buildYarnPackage {
            name = "classnames-2.2.5";
            packageName = "classnames";
            version = "2.2.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/classnames/-/classnames-2.2.5.tgz";
              sha1 = "fb3801d453467649ef3603c7d61a02bd129bde6d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "clean-css@4.1.9" = nodeEnv.buildYarnPackage {
            name = "clean-css-4.1.9";
            packageName = "clean-css";
            version = "4.1.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clean-css/-/clean-css-4.1.9.tgz";
              sha1 = "35cee8ae7687a49b98034f70de00c4edd3826301";
            };
            dependencies = [ pkgs."source-map@0.5.7" ];
            dontNpmInstall = true;
            };
  "cli-cursor@2.1.0" = nodeEnv.buildYarnPackage {
            name = "cli-cursor-2.1.0";
            packageName = "cli-cursor";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-2.1.0.tgz";
              sha1 = "b35dac376479facc3e94747d41d0d0f5238ffcb5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cli-table@0.3.1" = nodeEnv.buildYarnPackage {
            name = "cli-table-0.3.1";
            packageName = "cli-table";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-table/-/cli-table-0.3.1.tgz";
              sha1 = "f53b05266a8b1a0b934b3d0821e6e2dc5914ae23";
            };
            dependencies = [ pkgs."colors@1.0.3" ];
            dontNpmInstall = true;
            };
  "cli-width@2.2.0" = nodeEnv.buildYarnPackage {
            name = "cli-width-2.2.0";
            packageName = "cli-width";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cli-width/-/cli-width-2.2.0.tgz";
              sha1 = "ff19ede8a9a5e579324147b0c11f0fbcbabed639";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cliui@3.2.0" = nodeEnv.buildYarnPackage {
            name = "cliui-3.2.0";
            packageName = "cliui";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cliui/-/cliui-3.2.0.tgz";
              sha1 = "120601537a916d29940f934da3b48d585a39213d";
            };
            dependencies = [ pkgs."string-width@1.0.2" pkgs."strip-ansi@3.0.1" ];
            dontNpmInstall = true;
            };
  "clone-deep@0.3.0" = nodeEnv.buildYarnPackage {
            name = "clone-deep-0.3.0";
            packageName = "clone-deep";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clone-deep/-/clone-deep-0.3.0.tgz";
              sha1 = "348c61ae9cdbe0edfe053d91ff4cc521d790ede8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "clone-stats@0.0.1" = nodeEnv.buildYarnPackage {
            name = "clone-stats-0.0.1";
            packageName = "clone-stats";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clone-stats/-/clone-stats-0.0.1.tgz";
              sha1 = "b88f94a82cf38b8791d58046ea4029ad88ca99d1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "clone@1.0.3" = nodeEnv.buildYarnPackage {
            name = "clone-1.0.3";
            packageName = "clone";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clone/-/clone-1.0.3.tgz";
              sha1 = "298d7e2231660f40c003c2ed3140decf3f53085f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "co@4.6.0" = nodeEnv.buildYarnPackage {
            name = "co-4.6.0";
            packageName = "co";
            version = "4.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/co/-/co-4.6.0.tgz";
              sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "coa@1.0.1" = nodeEnv.buildYarnPackage {
            name = "coa-1.0.1";
            packageName = "coa";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/coa/-/coa-1.0.1.tgz";
              sha1 = "7f959346cfc8719e3f7233cd6852854a7c67d8a3";
            };
            dependencies = [ pkgs."q@1.4.1" ];
            dontNpmInstall = true;
            };
  "code-point-at@1.1.0" = nodeEnv.buildYarnPackage {
            name = "code-point-at-1.1.0";
            packageName = "code-point-at";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/code-point-at/-/code-point-at-1.1.0.tgz";
              sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "color-convert@1.9.1" = nodeEnv.buildYarnPackage {
            name = "color-convert-1.9.1";
            packageName = "color-convert";
            version = "1.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.9.1.tgz";
              sha1 = "c1261107aeb2f294ebffec9ed9ecad529a6097ed";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "color-name@1.1.1" = nodeEnv.buildYarnPackage {
            name = "color-name-1.1.1";
            packageName = "color-name";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-name/-/color-name-1.1.1.tgz";
              sha1 = "4b1415304cf50028ea81643643bd82ea05803689";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "color-string@0.3.0" = nodeEnv.buildYarnPackage {
            name = "color-string-0.3.0";
            packageName = "color-string";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-string/-/color-string-0.3.0.tgz";
              sha1 = "27d46fb67025c5c2fa25993bfbf579e47841b991";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "color-support@1.1.3" = nodeEnv.buildYarnPackage {
            name = "color-support-1.1.3";
            packageName = "color-support";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-support/-/color-support-1.1.3.tgz";
              sha1 = "93834379a1cc9a0c61f82f52f0d04322251bd5a2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "color@0.11.4" = nodeEnv.buildYarnPackage {
            name = "color-0.11.4";
            packageName = "color";
            version = "0.11.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color/-/color-0.11.4.tgz";
              sha1 = "6d7b5c74fb65e841cd48792ad1ed5e07b904d764";
            };
            dependencies = [ pkgs."clone@1.0.2" pkgs."color-convert@1.8.2" ];
            dontNpmInstall = true;
            };
  "colormin@1.1.2" = nodeEnv.buildYarnPackage {
            name = "colormin-1.1.2";
            packageName = "colormin";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/colormin/-/colormin-1.1.2.tgz";
              sha1 = "ea2f7420a72b96881a38aae59ec124a6f7298133";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "colors@1.1.2" = nodeEnv.buildYarnPackage {
            name = "colors-1.1.2";
            packageName = "colors";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/colors/-/colors-1.1.2.tgz";
              sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "combined-stream@1.0.6" = nodeEnv.buildYarnPackage {
            name = "combined-stream-1.0.6";
            packageName = "combined-stream";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.6.tgz";
              sha1 = "723e7df6e801ac5613113a7e445a9b69cb632818";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commander@2.14.1" = nodeEnv.buildYarnPackage {
            name = "commander-2.14.1";
            packageName = "commander";
            version = "2.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.14.1.tgz";
              sha1 = "2235123e37af8ca3c65df45b026dbd357b01b9aa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "common-tags@1.7.2" = nodeEnv.buildYarnPackage {
            name = "common-tags-1.7.2";
            packageName = "common-tags";
            version = "1.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/common-tags/-/common-tags-1.7.2.tgz";
              sha1 = "24d9768c63d253a56ecff93845b44b4df1d52771";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commondir@1.0.1" = nodeEnv.buildYarnPackage {
            name = "commondir-1.0.1";
            packageName = "commondir";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commondir/-/commondir-1.0.1.tgz";
              sha1 = "ddd800da0c66127393cca5950ea968a3aaf1253b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commonmark-react-renderer@4.3.4" = nodeEnv.buildYarnPackage {
            name = "commonmark-react-renderer-4.3.4";
            packageName = "commonmark-react-renderer";
            version = "4.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commonmark-react-renderer/-/commonmark-react-renderer-4.3.4.tgz";
              sha1 = "29f345357951ab36eb386d45ea6bc08006f3ff9b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commonmark@0.24.0" = nodeEnv.buildYarnPackage {
            name = "commonmark-0.24.0";
            packageName = "commonmark";
            version = "0.24.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commonmark/-/commonmark-0.24.0.tgz";
              sha1 = "b80de0182c546355643aa15db12bfb282368278f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "compare-version@0.1.2" = nodeEnv.buildYarnPackage {
            name = "compare-version-0.1.2";
            packageName = "compare-version";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/compare-version/-/compare-version-0.1.2.tgz";
              sha1 = "0162ec2d9351f5ddd59a9202cba935366a725080";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "compress-commons@1.2.2" = nodeEnv.buildYarnPackage {
            name = "compress-commons-1.2.2";
            packageName = "compress-commons";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/compress-commons/-/compress-commons-1.2.2.tgz";
              sha1 = "524a9f10903f3a813389b0225d27c48bb751890f";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "concat-map@0.0.1" = nodeEnv.buildYarnPackage {
            name = "concat-map-0.0.1";
            packageName = "concat-map";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz";
              sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "concat-stream@1.6.0" = nodeEnv.buildYarnPackage {
            name = "concat-stream-1.6.0";
            packageName = "concat-stream";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.0.tgz";
              sha1 = "0aac662fd52be78964d5532f694784e70110acf7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "concurrently@3.5.1" = nodeEnv.buildYarnPackage {
            name = "concurrently-3.5.1";
            packageName = "concurrently";
            version = "3.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/concurrently/-/concurrently-3.5.1.tgz";
              sha1 = "ee8b60018bbe86b02df13e5249453c6ececd2521";
            };
            dependencies = [ pkgs."chalk@0.5.1" pkgs."commander@2.6.0" pkgs."lodash@4.17.5" pkgs."supports-color@3.2.3" ];
            dontNpmInstall = true;
            };
  "conf@1.4.0" = nodeEnv.buildYarnPackage {
            name = "conf-1.4.0";
            packageName = "conf";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/conf/-/conf-1.4.0.tgz";
              sha1 = "1ea66c9d7a9b601674a5bb9d2b8dc3c726625e67";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "configstore@3.1.1" = nodeEnv.buildYarnPackage {
            name = "configstore-3.1.1";
            packageName = "configstore";
            version = "3.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/configstore/-/configstore-3.1.1.tgz";
              sha1 = "094ee662ab83fad9917678de114faaea8fcdca90";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "console-browserify@1.1.0" = nodeEnv.buildYarnPackage {
            name = "console-browserify-1.1.0";
            packageName = "console-browserify";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/console-browserify/-/console-browserify-1.1.0.tgz";
              sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "console-control-strings@1.1.0" = nodeEnv.buildYarnPackage {
            name = "console-control-strings-1.1.0";
            packageName = "console-control-strings";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/console-control-strings/-/console-control-strings-1.1.0.tgz";
              sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "constants-browserify@1.0.0" = nodeEnv.buildYarnPackage {
            name = "constants-browserify-1.0.0";
            packageName = "constants-browserify";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/constants-browserify/-/constants-browserify-1.0.0.tgz";
              sha1 = "c20b96d8c617748aaf1c16021760cd27fcb8cb75";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "contains-path@0.1.0" = nodeEnv.buildYarnPackage {
            name = "contains-path-0.1.0";
            packageName = "contains-path";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/contains-path/-/contains-path-0.1.0.tgz";
              sha1 = "fe8cf184ff6670b6baef01a9d4861a5cbec4120a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "content-disposition@0.5.2" = nodeEnv.buildYarnPackage {
            name = "content-disposition-0.5.2";
            packageName = "content-disposition";
            version = "0.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-disposition/-/content-disposition-0.5.2.tgz";
              sha1 = "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "content-type@1.0.4" = nodeEnv.buildYarnPackage {
            name = "content-type-1.0.4";
            packageName = "content-type";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-type/-/content-type-1.0.4.tgz";
              sha1 = "e138cc75e040c727b1966fe5e5f8c9aee256fe3b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "convert-source-map@1.5.1" = nodeEnv.buildYarnPackage {
            name = "convert-source-map-1.5.1";
            packageName = "convert-source-map";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.5.1.tgz";
              sha1 = "b8278097b9bc229365de5c62cf5fcaed8b5599e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cookie-signature@1.0.6" = nodeEnv.buildYarnPackage {
            name = "cookie-signature-1.0.6";
            packageName = "cookie-signature";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cookie-signature/-/cookie-signature-1.0.6.tgz";
              sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cookie@0.3.1" = nodeEnv.buildYarnPackage {
            name = "cookie-0.3.1";
            packageName = "cookie";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cookie/-/cookie-0.3.1.tgz";
              sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "copy-concurrently@1.0.5" = nodeEnv.buildYarnPackage {
            name = "copy-concurrently-1.0.5";
            packageName = "copy-concurrently";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/copy-concurrently/-/copy-concurrently-1.0.5.tgz";
              sha1 = "92297398cae34937fcafd6ec8139c18051f0b5e0";
            };
            dependencies = [ pkgs."rimraf@2.5.4" ];
            dontNpmInstall = true;
            };
  "copy-to-clipboard@3.0.8" = nodeEnv.buildYarnPackage {
            name = "copy-to-clipboard-3.0.8";
            packageName = "copy-to-clipboard";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/copy-to-clipboard/-/copy-to-clipboard-3.0.8.tgz";
              sha1 = "f4e82f4a8830dce4666b7eb8ded0c9bcc313aba9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "core-js@2.5.3" = nodeEnv.buildYarnPackage {
            name = "core-js-2.5.3";
            packageName = "core-js";
            version = "2.5.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-js/-/core-js-2.5.3.tgz";
              sha1 = "8acc38345824f16d8365b7c9b4259168e8ed603e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "core-util-is@1.0.2" = nodeEnv.buildYarnPackage {
            name = "core-util-is-1.0.2";
            packageName = "core-util-is";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz";
              sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cors@2.8.4" = nodeEnv.buildYarnPackage {
            name = "cors-2.8.4";
            packageName = "cors";
            version = "2.8.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cors/-/cors-2.8.4.tgz";
              sha1 = "2bd381f2eb201020105cd50ea59da63090694686";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cosmiconfig@2.2.2" = nodeEnv.buildYarnPackage {
            name = "cosmiconfig-2.2.2";
            packageName = "cosmiconfig";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cosmiconfig/-/cosmiconfig-2.2.2.tgz";
              sha1 = "6173cebd56fac042c1f4390edf7af6c07c7cb892";
            };
            dependencies = [ pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "crc32-stream@2.0.0" = nodeEnv.buildYarnPackage {
            name = "crc32-stream-2.0.0";
            packageName = "crc32-stream";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crc32-stream/-/crc32-stream-2.0.0.tgz";
              sha1 = "e3cdd3b4df3168dd74e3de3fbbcb7b297fe908f4";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "crc@3.5.0" = nodeEnv.buildYarnPackage {
            name = "crc-3.5.0";
            packageName = "crc";
            version = "3.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crc/-/crc-3.5.0.tgz";
              sha1 = "98b8ba7d489665ba3979f59b21381374101a1964";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "create-ecdh@4.0.0" = nodeEnv.buildYarnPackage {
            name = "create-ecdh-4.0.0";
            packageName = "create-ecdh";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-ecdh/-/create-ecdh-4.0.0.tgz";
              sha1 = "888c723596cdf7612f6498233eebd7a35301737d";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."elliptic@6.3.2" ];
            dontNpmInstall = true;
            };
  "create-hash@1.1.3" = nodeEnv.buildYarnPackage {
            name = "create-hash-1.1.3";
            packageName = "create-hash";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hash/-/create-hash-1.1.3.tgz";
              sha1 = "606042ac8b9262750f483caddab0f5819172d8fd";
            };
            dependencies = [ pkgs."cipher-base@1.0.3" ];
            dontNpmInstall = true;
            };
  "create-hmac@1.1.6" = nodeEnv.buildYarnPackage {
            name = "create-hmac-1.1.6";
            packageName = "create-hmac";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hmac/-/create-hmac-1.1.6.tgz";
              sha1 = "acb9e221a4e17bdb076e90657c42b93e3726cf06";
            };
            dependencies = [ pkgs."create-hash@1.1.2" ];
            dontNpmInstall = true;
            };
  "create-react-class@15.6.3" = nodeEnv.buildYarnPackage {
            name = "create-react-class-15.6.3";
            packageName = "create-react-class";
            version = "15.6.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-react-class/-/create-react-class-15.6.3.tgz";
              sha1 = "2d73237fb3f970ae6ebe011a9e66f46dbca80036";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cross-env@5.1.3" = nodeEnv.buildYarnPackage {
            name = "cross-env-5.1.3";
            packageName = "cross-env";
            version = "5.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-env/-/cross-env-5.1.3.tgz";
              sha1 = "f8ae18faac87692b0a8b4d2f7000d4ec3a85dfd7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cross-spawn@5.1.0" = nodeEnv.buildYarnPackage {
            name = "cross-spawn-5.1.0";
            packageName = "cross-spawn";
            version = "5.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-5.1.0.tgz";
              sha1 = "e8bd0efee58fcff6f8f94510a0a554bbfa235449";
            };
            dependencies = [ pkgs."lru-cache@4.0.2" pkgs."which@1.2.12" ];
            dontNpmInstall = true;
            };
  "cross-unzip@0.0.2" = nodeEnv.buildYarnPackage {
            name = "cross-unzip-0.0.2";
            packageName = "cross-unzip";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-unzip/-/cross-unzip-0.0.2.tgz";
              sha1 = "5183bc47a09559befcf98cc4657964999359372f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cryptiles@3.1.2" = nodeEnv.buildYarnPackage {
            name = "cryptiles-3.1.2";
            packageName = "cryptiles";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cryptiles/-/cryptiles-3.1.2.tgz";
              sha1 = "a89fbb220f5ce25ec56e8c4aa8a4fd7b5b0d29fe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "crypto-browserify@3.12.0" = nodeEnv.buildYarnPackage {
            name = "crypto-browserify-3.12.0";
            packageName = "crypto-browserify";
            version = "3.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.12.0.tgz";
              sha1 = "396cf9f3137f03e4b8e532c58f698254e00f80ec";
            };
            dependencies = [ pkgs."create-hash@1.1.2" pkgs."create-hmac@1.1.4" pkgs."pbkdf2@3.0.9" pkgs."randombytes@2.0.3" ];
            dontNpmInstall = true;
            };
  "crypto-random-string@1.0.0" = nodeEnv.buildYarnPackage {
            name = "crypto-random-string-1.0.0";
            packageName = "crypto-random-string";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crypto-random-string/-/crypto-random-string-1.0.0.tgz";
              sha1 = "a230f64f568310e1498009940790ec99545bca7e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "css-color-names@0.0.4" = nodeEnv.buildYarnPackage {
            name = "css-color-names-0.0.4";
            packageName = "css-color-names";
            version = "0.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-color-names/-/css-color-names-0.0.4.tgz";
              sha1 = "808adc2e79cf84738069b646cb20ec27beb629e0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "css-in-js-utils@2.0.0" = nodeEnv.buildYarnPackage {
            name = "css-in-js-utils-2.0.0";
            packageName = "css-in-js-utils";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-in-js-utils/-/css-in-js-utils-2.0.0.tgz";
              sha1 = "5af1dd70f4b06b331f48d22a3d86e0786c0b9435";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "css-loader@0.28.9" = nodeEnv.buildYarnPackage {
            name = "css-loader-0.28.9";
            packageName = "css-loader";
            version = "0.28.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-loader/-/css-loader-0.28.9.tgz";
              sha1 = "68064b85f4e271d7ce4c48a58300928e535d1c95";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "css-parse@2.0.0" = nodeEnv.buildYarnPackage {
            name = "css-parse-2.0.0";
            packageName = "css-parse";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-parse/-/css-parse-2.0.0.tgz";
              sha1 = "a468ee667c16d81ccf05c58c38d2a97c780dbfd4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "css-select@1.2.0" = nodeEnv.buildYarnPackage {
            name = "css-select-1.2.0";
            packageName = "css-select";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-select/-/css-select-1.2.0.tgz";
              sha1 = "2b3a110539c5355f1cd8d314623e870b121ec858";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "css-selector-tokenizer@0.7.0" = nodeEnv.buildYarnPackage {
            name = "css-selector-tokenizer-0.7.0";
            packageName = "css-selector-tokenizer";
            version = "0.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-selector-tokenizer/-/css-selector-tokenizer-0.7.0.tgz";
              sha1 = "e6988474ae8c953477bf5e7efecfceccd9cf4c86";
            };
            dependencies = [ pkgs."regexpu-core@1.0.0" ];
            dontNpmInstall = true;
            };
  "css-value@0.0.1" = nodeEnv.buildYarnPackage {
            name = "css-value-0.0.1";
            packageName = "css-value";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-value/-/css-value-0.0.1.tgz";
              sha1 = "5efd6c2eea5ea1fd6b6ac57ec0427b18452424ea";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "css-what@2.1.0" = nodeEnv.buildYarnPackage {
            name = "css-what-2.1.0";
            packageName = "css-what";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css-what/-/css-what-2.1.0.tgz";
              sha1 = "9467d032c38cfaefb9f2d79501253062f87fa1bd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "css@2.2.1" = nodeEnv.buildYarnPackage {
            name = "css-2.2.1";
            packageName = "css";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/css/-/css-2.2.1.tgz";
              sha1 = "73a4c81de85db664d4ee674f7d47085e3b2d55dc";
            };
            dependencies = [ pkgs."source-map@0.1.43" ];
            dontNpmInstall = true;
            };
  "cssesc@0.1.0" = nodeEnv.buildYarnPackage {
            name = "cssesc-0.1.0";
            packageName = "cssesc";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cssesc/-/cssesc-0.1.0.tgz";
              sha1 = "c814903e45623371a0477b40109aaafbeeaddbb4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cssnano@3.10.0" = nodeEnv.buildYarnPackage {
            name = "cssnano-3.10.0";
            packageName = "cssnano";
            version = "3.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cssnano/-/cssnano-3.10.0.tgz";
              sha1 = "4f38f6cea2b9b17fa01490f23f1dc68ea65c1c38";
            };
            dependencies = [ pkgs."autoprefixer@6.6.1" pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "csso@2.2.1" = nodeEnv.buildYarnPackage {
            name = "csso-2.2.1";
            packageName = "csso";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/csso/-/csso-2.2.1.tgz";
              sha1 = "51fbb5347e50e81e6ed51668a48490ae6fe2afe2";
            };
            dependencies = [ pkgs."source-map@0.5.6" ];
            dontNpmInstall = true;
            };
  "cucumber-expressions@5.0.13" = nodeEnv.buildYarnPackage {
            name = "cucumber-expressions-5.0.13";
            packageName = "cucumber-expressions";
            version = "5.0.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cucumber-expressions/-/cucumber-expressions-5.0.13.tgz";
              sha1 = "f174597dae6d2f0121294ac2ea65443249cf1587";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cucumber-tag-expressions@1.1.1" = nodeEnv.buildYarnPackage {
            name = "cucumber-tag-expressions-1.1.1";
            packageName = "cucumber-tag-expressions";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cucumber-tag-expressions/-/cucumber-tag-expressions-1.1.1.tgz";
              sha1 = "7f5c7b70009bc2b666591bfe64854578bedee85a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cucumber@3.2.1" = nodeEnv.buildYarnPackage {
            name = "cucumber-3.2.1";
            packageName = "cucumber";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cucumber/-/cucumber-3.2.1.tgz";
              sha1 = "7898509bf6f3fe4ef5fa30ba987bd53d88d53251";
            };
            dependencies = [ pkgs."babel-runtime@6.20.0" pkgs."commander@2.9.0" pkgs."glob@7.1.1" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "cuint@0.2.2" = nodeEnv.buildYarnPackage {
            name = "cuint-0.2.2";
            packageName = "cuint";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cuint/-/cuint-0.2.2.tgz";
              sha1 = "408086d409550c2631155619e9fa7bcadc3b991b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "currently-unhandled@0.4.1" = nodeEnv.buildYarnPackage {
            name = "currently-unhandled-0.4.1";
            packageName = "currently-unhandled";
            version = "0.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/currently-unhandled/-/currently-unhandled-0.4.1.tgz";
              sha1 = "988df33feab191ef799a61369dd76c17adf957ea";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cycle@1.0.3" = nodeEnv.buildYarnPackage {
            name = "cycle-1.0.3";
            packageName = "cycle";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cycle/-/cycle-1.0.3.tgz";
              sha1 = "21e80b2be8580f98b468f379430662b046c34ad2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cyclist@0.2.2" = nodeEnv.buildYarnPackage {
            name = "cyclist-0.2.2";
            packageName = "cyclist";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cyclist/-/cyclist-0.2.2.tgz";
              sha1 = "1b33792e11e914a2fd6d6ed6447464444e5fa640";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-array@1.0.2" = nodeEnv.buildYarnPackage {
            name = "d3-array-1.0.2";
            packageName = "d3-array";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-array/-/d3-array-1.0.2.tgz";
              sha1 = "174237bf356a852fadd6af87743d928631de7655";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-collection@1.0.2" = nodeEnv.buildYarnPackage {
            name = "d3-collection-1.0.2";
            packageName = "d3-collection";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-collection/-/d3-collection-1.0.2.tgz";
              sha1 = "df5acb5400443e9eabe9c1379896c67e52426b39";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-color@1.0.2" = nodeEnv.buildYarnPackage {
            name = "d3-color-1.0.2";
            packageName = "d3-color";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-color/-/d3-color-1.0.2.tgz";
              sha1 = "83cb4b3a9474e40795f009d97e97a15649830bbc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-format@1.0.2" = nodeEnv.buildYarnPackage {
            name = "d3-format-1.0.2";
            packageName = "d3-format";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-format/-/d3-format-1.0.2.tgz";
              sha1 = "138618320b4bbeb43b5c0ff30519079fbbd7375e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-interpolate@1.1.6" = nodeEnv.buildYarnPackage {
            name = "d3-interpolate-1.1.6";
            packageName = "d3-interpolate";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-interpolate/-/d3-interpolate-1.1.6.tgz";
              sha1 = "2cf395ae2381804df08aa1bf766b7f97b5f68fb6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-path@1.0.3" = nodeEnv.buildYarnPackage {
            name = "d3-path-1.0.3";
            packageName = "d3-path";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-path/-/d3-path-1.0.3.tgz";
              sha1 = "60103d0dea9a6cd6ca58de86c6d56724002d3fde";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-scale@1.0.4" = nodeEnv.buildYarnPackage {
            name = "d3-scale-1.0.4";
            packageName = "d3-scale";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-scale/-/d3-scale-1.0.4.tgz";
              sha1 = "50e28bf6a193b706745528515ed9b3d44205a033";
            };
            dependencies = [ pkgs."d3-interpolate@1.1.2" ];
            dontNpmInstall = true;
            };
  "d3-shape@1.0.4" = nodeEnv.buildYarnPackage {
            name = "d3-shape-1.0.4";
            packageName = "d3-shape";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-shape/-/d3-shape-1.0.4.tgz";
              sha1 = "145ee100ccbec42f8e3f1996cd05c786f79fe1c6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-time-format@2.0.3" = nodeEnv.buildYarnPackage {
            name = "d3-time-format-2.0.3";
            packageName = "d3-time-format";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-time-format/-/d3-time-format-2.0.3.tgz";
              sha1 = "3241569b74ddc9c42e0689c0e8a903579fd6280a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d3-time@1.0.4" = nodeEnv.buildYarnPackage {
            name = "d3-time-1.0.4";
            packageName = "d3-time";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-time/-/d3-time-1.0.4.tgz";
              sha1 = "2ceba09a76b7450c992a1ded4e10fc6195e69649";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "d@0.1.1" = nodeEnv.buildYarnPackage {
            name = "d-0.1.1";
            packageName = "d";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d/-/d-0.1.1.tgz";
              sha1 = "da184c535d18d8ee7ba2aa229b914009fae11309";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "damerau-levenshtein@1.0.4" = nodeEnv.buildYarnPackage {
            name = "damerau-levenshtein-1.0.4";
            packageName = "damerau-levenshtein";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/damerau-levenshtein/-/damerau-levenshtein-1.0.4.tgz";
              sha1 = "03191c432cb6eea168bb77f3a55ffdccb8978514";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dashdash@1.14.1" = nodeEnv.buildYarnPackage {
            name = "dashdash-1.14.1";
            packageName = "dashdash";
            version = "1.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dashdash/-/dashdash-1.14.1.tgz";
              sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "date-fns@1.29.0" = nodeEnv.buildYarnPackage {
            name = "date-fns-1.29.0";
            packageName = "date-fns";
            version = "1.29.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/date-fns/-/date-fns-1.29.0.tgz";
              sha1 = "12e609cdcb935127311d04d33334e2960a2a54e6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "date-now@0.1.4" = nodeEnv.buildYarnPackage {
            name = "date-now-0.1.4";
            packageName = "date-now";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/date-now/-/date-now-0.1.4.tgz";
              sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dateformat@2.2.0" = nodeEnv.buildYarnPackage {
            name = "dateformat-2.2.0";
            packageName = "dateformat";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dateformat/-/dateformat-2.2.0.tgz";
              sha1 = "4065e2013cf9fb916ddfd82efb506ad4c6769062";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "debug@3.1.0" = nodeEnv.buildYarnPackage {
            name = "debug-3.1.0";
            packageName = "debug";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-3.1.0.tgz";
              sha1 = "5bb5a0672628b64149566ba16819e61518c67261";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "decamelize@1.2.0" = nodeEnv.buildYarnPackage {
            name = "decamelize-1.2.0";
            packageName = "decamelize";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decamelize/-/decamelize-1.2.0.tgz";
              sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "decode-uri-component@0.2.0" = nodeEnv.buildYarnPackage {
            name = "decode-uri-component-0.2.0";
            packageName = "decode-uri-component";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decode-uri-component/-/decode-uri-component-0.2.0.tgz";
              sha1 = "eb3913333458775cb84cd1a1fae062106bb87545";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "decompress-response@3.3.0" = nodeEnv.buildYarnPackage {
            name = "decompress-response-3.3.0";
            packageName = "decompress-response";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-response/-/decompress-response-3.3.0.tgz";
              sha1 = "80a4dd323748384bfa248083622aedec982adff3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "decompress-tar@4.1.1" = nodeEnv.buildYarnPackage {
            name = "decompress-tar-4.1.1";
            packageName = "decompress-tar";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-tar/-/decompress-tar-4.1.1.tgz";
              sha1 = "718cbd3fcb16209716e70a26b84e7ba4592e5af1";
            };
            dependencies = [ pkgs."file-type@5.2.0" ];
            dontNpmInstall = true;
            };
  "decompress-tarbz2@4.1.1" = nodeEnv.buildYarnPackage {
            name = "decompress-tarbz2-4.1.1";
            packageName = "decompress-tarbz2";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-tarbz2/-/decompress-tarbz2-4.1.1.tgz";
              sha1 = "3082a5b880ea4043816349f378b56c516be1a39b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "decompress-targz@4.1.1" = nodeEnv.buildYarnPackage {
            name = "decompress-targz-4.1.1";
            packageName = "decompress-targz";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-targz/-/decompress-targz-4.1.1.tgz";
              sha1 = "c09bc35c4d11f3de09f2d2da53e9de23e7ce1eee";
            };
            dependencies = [ pkgs."file-type@5.2.0" ];
            dontNpmInstall = true;
            };
  "decompress-unzip@4.0.1" = nodeEnv.buildYarnPackage {
            name = "decompress-unzip-4.0.1";
            packageName = "decompress-unzip";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-unzip/-/decompress-unzip-4.0.1.tgz";
              sha1 = "deaaccdfd14aeaf85578f733ae8210f9b4848f69";
            };
            dependencies = [ pkgs."file-type@3.9.0" pkgs."get-stream@2.3.1" pkgs."pify@2.3.0" ];
            dontNpmInstall = true;
            };
  "decompress-zip@0.3.0" = nodeEnv.buildYarnPackage {
            name = "decompress-zip-0.3.0";
            packageName = "decompress-zip";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress-zip/-/decompress-zip-0.3.0.tgz";
              sha1 = "ae3bcb7e34c65879adfe77e19c30f86602b4bdb0";
            };
            dependencies = [ pkgs."q@1.4.1" pkgs."readable-stream@1.1.14" ];
            dontNpmInstall = true;
            };
  "decompress@4.2.0" = nodeEnv.buildYarnPackage {
            name = "decompress-4.2.0";
            packageName = "decompress";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/decompress/-/decompress-4.2.0.tgz";
              sha1 = "7aedd85427e5a92dacfe55674a7c505e96d01f9d";
            };
            dependencies = [ pkgs."pify@2.3.0" ];
            dontNpmInstall = true;
            };
  "deep-eql@3.0.1" = nodeEnv.buildYarnPackage {
            name = "deep-eql-3.0.1";
            packageName = "deep-eql";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-eql/-/deep-eql-3.0.1.tgz";
              sha1 = "dfc9404400ad1c8fe023e7da1df1c147c4b444df";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "deep-equal@1.0.1" = nodeEnv.buildYarnPackage {
            name = "deep-equal-1.0.1";
            packageName = "deep-equal";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-equal/-/deep-equal-1.0.1.tgz";
              sha1 = "f5d260292b660e084eff4cdbc9f08ad3247448b5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "deep-extend@0.4.2" = nodeEnv.buildYarnPackage {
            name = "deep-extend-0.4.2";
            packageName = "deep-extend";
            version = "0.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-extend/-/deep-extend-0.4.2.tgz";
              sha1 = "48b699c27e334bf89f10892be432f6e4c7d34a7f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "deep-is@0.1.3" = nodeEnv.buildYarnPackage {
            name = "deep-is-0.1.3";
            packageName = "deep-is";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deep-is/-/deep-is-0.1.3.tgz";
              sha1 = "b369d6fb5dbc13eecf524f91b070feedc357cf34";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "deepmerge@2.0.1" = nodeEnv.buildYarnPackage {
            name = "deepmerge-2.0.1";
            packageName = "deepmerge";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/deepmerge/-/deepmerge-2.0.1.tgz";
              sha1 = "25c1c24f110fb914f80001b925264dd77f3f4312";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "define-properties@1.1.2" = nodeEnv.buildYarnPackage {
            name = "define-properties-1.1.2";
            packageName = "define-properties";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/define-properties/-/define-properties-1.1.2.tgz";
              sha1 = "83a73f2fea569898fb737193c8f873caf6d45c94";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "defined@1.0.0" = nodeEnv.buildYarnPackage {
            name = "defined-1.0.0";
            packageName = "defined";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/defined/-/defined-1.0.0.tgz";
              sha1 = "c98d9bcef75674188e110969151199e39b1fa693";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "del@2.2.2" = nodeEnv.buildYarnPackage {
            name = "del-2.2.2";
            packageName = "del";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/del/-/del-2.2.2.tgz";
              sha1 = "c12c981d067846c84bcaf862cff930d907ffd1a8";
            };
            dependencies = [ pkgs."pify@2.3.0" ];
            dontNpmInstall = true;
            };
  "delayed-stream@1.0.0" = nodeEnv.buildYarnPackage {
            name = "delayed-stream-1.0.0";
            packageName = "delayed-stream";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
              sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "delegates@1.0.0" = nodeEnv.buildYarnPackage {
            name = "delegates-1.0.0";
            packageName = "delegates";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz";
              sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "depd@1.1.2" = nodeEnv.buildYarnPackage {
            name = "depd-1.1.2";
            packageName = "depd";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/depd/-/depd-1.1.2.tgz";
              sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "des.js@1.0.0" = nodeEnv.buildYarnPackage {
            name = "des.js-1.0.0";
            packageName = "des.js";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/des.js/-/des.js-1.0.0.tgz";
              sha1 = "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "destroy@1.0.4" = nodeEnv.buildYarnPackage {
            name = "destroy-1.0.4";
            packageName = "destroy";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/destroy/-/destroy-1.0.4.tgz";
              sha1 = "978857442c44749e4206613e37946205826abd80";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "detect-indent@4.0.0" = nodeEnv.buildYarnPackage {
            name = "detect-indent-4.0.0";
            packageName = "detect-indent";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/detect-indent/-/detect-indent-4.0.0.tgz";
              sha1 = "f76d064352cdf43a1cb6ce619c4ee3a9475de208";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dev-null@0.1.1" = nodeEnv.buildYarnPackage {
            name = "dev-null-0.1.1";
            packageName = "dev-null";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dev-null/-/dev-null-0.1.1.tgz";
              sha1 = "5a205ce3c2b2ef77b6238d6ba179eb74c6a0e818";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "devtron@1.4.0" = nodeEnv.buildYarnPackage {
            name = "devtron-1.4.0";
            packageName = "devtron";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/devtron/-/devtron-1.4.0.tgz";
              sha1 = "b5e748bd6e95bbe70bfcc68aae6fe696119441e1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "diff@3.4.0" = nodeEnv.buildYarnPackage {
            name = "diff-3.4.0";
            packageName = "diff";
            version = "3.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/diff/-/diff-3.4.0.tgz";
              sha1 = "b1d85507daf3964828de54b37d0d73ba67dda56c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "diffie-hellman@5.0.2" = nodeEnv.buildYarnPackage {
            name = "diffie-hellman-5.0.2";
            packageName = "diffie-hellman";
            version = "5.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/diffie-hellman/-/diffie-hellman-5.0.2.tgz";
              sha1 = "b5835739270cfe26acf632099fded2a07f209e5e";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."randombytes@2.0.3" ];
            dontNpmInstall = true;
            };
  "doctrine@2.1.0" = nodeEnv.buildYarnPackage {
            name = "doctrine-2.1.0";
            packageName = "doctrine";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/doctrine/-/doctrine-2.1.0.tgz";
              sha1 = "5cd01fc101621b42c4cd7f5d1a66243716d3f39d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dom-converter@0.1.4" = nodeEnv.buildYarnPackage {
            name = "dom-converter-0.1.4";
            packageName = "dom-converter";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dom-converter/-/dom-converter-0.1.4.tgz";
              sha1 = "a45ef5727b890c9bffe6d7c876e7b19cb0e17f3b";
            };
            dependencies = [ pkgs."utila@0.3.3" ];
            dontNpmInstall = true;
            };
  "dom-helpers@3.3.1" = nodeEnv.buildYarnPackage {
            name = "dom-helpers-3.3.1";
            packageName = "dom-helpers";
            version = "3.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dom-helpers/-/dom-helpers-3.3.1.tgz";
              sha1 = "fc1a4e15ffdf60ddde03a480a9c0fece821dd4a6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dom-serializer@0.1.0" = nodeEnv.buildYarnPackage {
            name = "dom-serializer-0.1.0";
            packageName = "dom-serializer";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dom-serializer/-/dom-serializer-0.1.0.tgz";
              sha1 = "073c697546ce0780ce23be4a28e293e40bc30c82";
            };
            dependencies = [ pkgs."domelementtype@1.1.3" ];
            dontNpmInstall = true;
            };
  "dom-walk@0.1.1" = nodeEnv.buildYarnPackage {
            name = "dom-walk-0.1.1";
            packageName = "dom-walk";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dom-walk/-/dom-walk-0.1.1.tgz";
              sha1 = "672226dc74c8f799ad35307df936aba11acd6018";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "domain-browser@1.1.7" = nodeEnv.buildYarnPackage {
            name = "domain-browser-1.1.7";
            packageName = "domain-browser";
            version = "1.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/domain-browser/-/domain-browser-1.1.7.tgz";
              sha1 = "867aa4b093faa05f1de08c06f4d7b21fdf8698bc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "domelementtype@1.3.0" = nodeEnv.buildYarnPackage {
            name = "domelementtype-1.3.0";
            packageName = "domelementtype";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/domelementtype/-/domelementtype-1.3.0.tgz";
              sha1 = "b17aed82e8ab59e52dd9c19b1756e0fc187204c2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "domhandler@2.1.0" = nodeEnv.buildYarnPackage {
            name = "domhandler-2.1.0";
            packageName = "domhandler";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/domhandler/-/domhandler-2.1.0.tgz";
              sha1 = "d2646f5e57f6c3bab11cf6cb05d3c0acf7412594";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "domutils@1.5.1" = nodeEnv.buildYarnPackage {
            name = "domutils-1.5.1";
            packageName = "domutils";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/domutils/-/domutils-1.5.1.tgz";
              sha1 = "dcd8488a26f563d61079e48c9f7b7e32373682cf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dot-prop@4.2.0" = nodeEnv.buildYarnPackage {
            name = "dot-prop-4.2.0";
            packageName = "dot-prop";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dot-prop/-/dot-prop-4.2.0.tgz";
              sha1 = "1f19e0c2e1aa0e32797c49799f2837ac6af69c57";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dotenv-webpack@1.5.4" = nodeEnv.buildYarnPackage {
            name = "dotenv-webpack-1.5.4";
            packageName = "dotenv-webpack";
            version = "1.5.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dotenv-webpack/-/dotenv-webpack-1.5.4.tgz";
              sha1 = "9c92e46e412a1cfbc60217ed33d69d2bbfddbf9f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "dotenv@4.0.0" = nodeEnv.buildYarnPackage {
            name = "dotenv-4.0.0";
            packageName = "dotenv";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/dotenv/-/dotenv-4.0.0.tgz";
              sha1 = "864ef1379aced55ce6f95debecdce179f7a0cd1d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "duplexer2@0.0.2" = nodeEnv.buildYarnPackage {
            name = "duplexer2-0.0.2";
            packageName = "duplexer2";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexer2/-/duplexer2-0.0.2.tgz";
              sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
            };
            dependencies = [ pkgs."readable-stream@1.1.14" ];
            dontNpmInstall = true;
            };
  "duplexer3@0.1.4" = nodeEnv.buildYarnPackage {
            name = "duplexer3-0.1.4";
            packageName = "duplexer3";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexer3/-/duplexer3-0.1.4.tgz";
              sha1 = "ee01dd1cac0ed3cbc7fdbea37dc0a8f1ce002ce2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "duplexer@0.1.1" = nodeEnv.buildYarnPackage {
            name = "duplexer-0.1.1";
            packageName = "duplexer";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexer/-/duplexer-0.1.1.tgz";
              sha1 = "ace6ff808c1ce66b57d1ebf97977acb02334cfc1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "duplexify@3.5.3" = nodeEnv.buildYarnPackage {
            name = "duplexify-3.5.3";
            packageName = "duplexify";
            version = "3.5.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duplexify/-/duplexify-3.5.3.tgz";
              sha1 = "8b5818800df92fd0125b27ab896491912858243e";
            };
            dependencies = [ pkgs."end-of-stream@1.1.0" pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "duration@0.2.0" = nodeEnv.buildYarnPackage {
            name = "duration-0.2.0";
            packageName = "duration";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/duration/-/duration-0.2.0.tgz";
              sha1 = "5f9c4dfaafff655de986112efe25c5978dd85146";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ecc-jsbn@0.1.1" = nodeEnv.buildYarnPackage {
            name = "ecc-jsbn-0.1.1";
            packageName = "ecc-jsbn";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
              sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ee-first@1.1.1" = nodeEnv.buildYarnPackage {
            name = "ee-first-1.1.1";
            packageName = "ee-first";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ee-first/-/ee-first-1.1.1.tgz";
              sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ejs@2.5.7" = nodeEnv.buildYarnPackage {
            name = "ejs-2.5.7";
            packageName = "ejs";
            version = "2.5.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ejs/-/ejs-2.5.7.tgz";
              sha1 = "cc872c168880ae3c7189762fd5ffc00896c9518a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-chromedriver@1.7.1" = nodeEnv.buildYarnPackage {
            name = "electron-chromedriver-1.7.1";
            packageName = "electron-chromedriver";
            version = "1.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-chromedriver/-/electron-chromedriver-1.7.1.tgz";
              sha1 = "008c97976007aa4eb18491ee095e94d17ee47610";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-debug@1.1.0" = nodeEnv.buildYarnPackage {
            name = "electron-debug-1.1.0";
            packageName = "electron-debug";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-debug/-/electron-debug-1.1.0.tgz";
              sha1 = "050a9c3f906fffc2492510cf8ac31d0f32a579e1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-devtools-installer@2.2.3" = nodeEnv.buildYarnPackage {
            name = "electron-devtools-installer-2.2.3";
            packageName = "electron-devtools-installer";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-devtools-installer/-/electron-devtools-installer-2.2.3.tgz";
              sha1 = "58b9a4ec507377bc46e091cd43714188e0c369be";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-download@4.1.0" = nodeEnv.buildYarnPackage {
            name = "electron-download-4.1.0";
            packageName = "electron-download";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-download/-/electron-download-4.1.0.tgz";
              sha1 = "bf932c746f2f87ffcc09d1dd472f2ff6b9187845";
            };
            dependencies = [ pkgs."debug@2.6.9" pkgs."fs-extra@2.1.2" ];
            dontNpmInstall = true;
            };
  "electron-is-dev@0.1.2" = nodeEnv.buildYarnPackage {
            name = "electron-is-dev-0.1.2";
            packageName = "electron-is-dev";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-is-dev/-/electron-is-dev-0.1.2.tgz";
              sha1 = "8a1043e32b3a1da1c3f553dce28ce764246167e3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-localshortcut@0.6.1" = nodeEnv.buildYarnPackage {
            name = "electron-localshortcut-0.6.1";
            packageName = "electron-localshortcut";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-localshortcut/-/electron-localshortcut-0.6.1.tgz";
              sha1 = "c4e268c38a6e42f40de5618fc906d1ed608f11aa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-log@2.0.2" = nodeEnv.buildYarnPackage {
            name = "electron-log-2.0.2";
            packageName = "electron-log";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-log/-/electron-log-2.0.2.tgz";
              sha1 = "ea7c3d584da1e02df48e68f16fb750b61e3ab05b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-osx-sign@0.4.8" = nodeEnv.buildYarnPackage {
            name = "electron-osx-sign-0.4.8";
            packageName = "electron-osx-sign";
            version = "0.4.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-osx-sign/-/electron-osx-sign-0.4.8.tgz";
              sha1 = "f0b9fadded9e1e54ec35fa89877b5c6c34c7bc40";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "electron-packager@11.0.1" = nodeEnv.buildYarnPackage {
            name = "electron-packager-11.0.1";
            packageName = "electron-packager";
            version = "11.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-packager/-/electron-packager-11.0.1.tgz";
              sha1 = "c2d1ff9eca8110be9ebc81826e2a921c04d1200e";
            };
            dependencies = [ pkgs."resolve@1.2.0" ];
            dontNpmInstall = true;
            };
  "electron-store@1.3.0" = nodeEnv.buildYarnPackage {
            name = "electron-store-1.3.0";
            packageName = "electron-store";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-store/-/electron-store-1.3.0.tgz";
              sha1 = "ee488a28a61fb982fd35b658fb9cb6331eb201f8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-to-chromium@1.3.33" = nodeEnv.buildYarnPackage {
            name = "electron-to-chromium-1.3.33";
            packageName = "electron-to-chromium";
            version = "1.3.33";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-to-chromium/-/electron-to-chromium-1.3.33.tgz";
              sha1 = "bf00703d62a7c65238136578c352d6c5c042a545";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron@1.7.11" = nodeEnv.buildYarnPackage {
            name = "electron-1.7.11";
            packageName = "electron";
            version = "1.7.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron/-/electron-1.7.11.tgz";
              sha1 = "993b6aa79e0e79a7cfcc369f4c813fbd9a0b08d9";
            };
            dependencies = [ pkgs."electron-download@3.3.0" ];
            dontNpmInstall = true;
            };
  "elliptic@6.4.0" = nodeEnv.buildYarnPackage {
            name = "elliptic-6.4.0";
            packageName = "elliptic";
            version = "6.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/elliptic/-/elliptic-6.4.0.tgz";
              sha1 = "cac9af8762c85836187003c8dfe193e5e2eae5df";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."hash.js@1.0.3" ];
            dontNpmInstall = true;
            };
  "emoji-regex@6.5.1" = nodeEnv.buildYarnPackage {
            name = "emoji-regex-6.5.1";
            packageName = "emoji-regex";
            version = "6.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-6.5.1.tgz";
              sha1 = "9baea929b155565c11ea41c6626eaa65cef992c2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "emojis-list@2.1.0" = nodeEnv.buildYarnPackage {
            name = "emojis-list-2.1.0";
            packageName = "emojis-list";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/emojis-list/-/emojis-list-2.1.0.tgz";
              sha1 = "4daa4d9db00f9819880c79fa457ae5b09a1fd389";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "encodeurl@1.0.1" = nodeEnv.buildYarnPackage {
            name = "encodeurl-1.0.1";
            packageName = "encodeurl";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/encodeurl/-/encodeurl-1.0.1.tgz";
              sha1 = "79e3d58655346909fe6f0f45a5de68103b294d20";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "encoding@0.1.12" = nodeEnv.buildYarnPackage {
            name = "encoding-0.1.12";
            packageName = "encoding";
            version = "0.1.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/encoding/-/encoding-0.1.12.tgz";
              sha1 = "538b66f3ee62cd1ab51ec323829d1f9480c74beb";
            };
            dependencies = [ pkgs."iconv-lite@0.4.15" ];
            dontNpmInstall = true;
            };
  "end-of-stream@1.4.1" = nodeEnv.buildYarnPackage {
            name = "end-of-stream-1.4.1";
            packageName = "end-of-stream";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.4.1.tgz";
              sha1 = "ed29634d19baba463b6ce6b80a37213eab71ec43";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "enhanced-resolve@3.4.1" = nodeEnv.buildYarnPackage {
            name = "enhanced-resolve-3.4.1";
            packageName = "enhanced-resolve";
            version = "3.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/enhanced-resolve/-/enhanced-resolve-3.4.1.tgz";
              sha1 = "0421e339fd71419b3da13d129b3979040230476e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "entities@1.1.1" = nodeEnv.buildYarnPackage {
            name = "entities-1.1.1";
            packageName = "entities";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/entities/-/entities-1.1.1.tgz";
              sha1 = "6e5c2d0a5621b5dadaecef80b90edfb5cd7772f0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "env-paths@1.0.0" = nodeEnv.buildYarnPackage {
            name = "env-paths-1.0.0";
            packageName = "env-paths";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/env-paths/-/env-paths-1.0.0.tgz";
              sha1 = "4168133b42bb05c38a35b1ae4397c8298ab369e0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "errno@0.1.7" = nodeEnv.buildYarnPackage {
            name = "errno-0.1.7";
            packageName = "errno";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/errno/-/errno-0.1.7.tgz";
              sha1 = "4684d71779ad39af177e3f007996f7c67c852618";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "error-ex@1.3.1" = nodeEnv.buildYarnPackage {
            name = "error-ex-1.3.1";
            packageName = "error-ex";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/error-ex/-/error-ex-1.3.1.tgz";
              sha1 = "f855a86ce61adc4e8621c3cda21e7a7612c3a8dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "error-stack-parser@2.0.1" = nodeEnv.buildYarnPackage {
            name = "error-stack-parser-2.0.1";
            packageName = "error-stack-parser";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/error-stack-parser/-/error-stack-parser-2.0.1.tgz";
              sha1 = "a3202b8fb03114aa9b40a0e3669e48b2b65a010a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es-abstract@1.10.0" = nodeEnv.buildYarnPackage {
            name = "es-abstract-1.10.0";
            packageName = "es-abstract";
            version = "1.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.10.0.tgz";
              sha1 = "1ecb36c197842a00d8ee4c2dfd8646bb97d60864";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es-to-primitive@1.1.1" = nodeEnv.buildYarnPackage {
            name = "es-to-primitive-1.1.1";
            packageName = "es-to-primitive";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.1.1.tgz";
              sha1 = "45355248a88979034b6792e19bb81f2b7975dd0d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es5-ext@0.10.12" = nodeEnv.buildYarnPackage {
            name = "es5-ext-0.10.12";
            packageName = "es5-ext";
            version = "0.10.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es5-ext/-/es5-ext-0.10.12.tgz";
              sha1 = "aa84641d4db76b62abba5e45fd805ecbab140047";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es5-shim@4.5.10" = nodeEnv.buildYarnPackage {
            name = "es5-shim-4.5.10";
            packageName = "es5-shim";
            version = "4.5.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es5-shim/-/es5-shim-4.5.10.tgz";
              sha1 = "b7e17ef4df2a145b821f1497b50c25cf94026205";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-error@4.0.2" = nodeEnv.buildYarnPackage {
            name = "es6-error-4.0.2";
            packageName = "es6-error";
            version = "4.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-error/-/es6-error-4.0.2.tgz";
              sha1 = "eec5c726eacef51b7f6b73c20db6e1b13b069c98";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-iterator@2.0.0" = nodeEnv.buildYarnPackage {
            name = "es6-iterator-2.0.0";
            packageName = "es6-iterator";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-iterator/-/es6-iterator-2.0.0.tgz";
              sha1 = "bd968567d61635e33c0b80727613c9cb4b096bac";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-map@0.1.4" = nodeEnv.buildYarnPackage {
            name = "es6-map-0.1.4";
            packageName = "es6-map";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-map/-/es6-map-0.1.4.tgz";
              sha1 = "a34b147be224773a4d7da8072794cefa3632b897";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-promise@4.2.4" = nodeEnv.buildYarnPackage {
            name = "es6-promise-4.2.4";
            packageName = "es6-promise";
            version = "4.2.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-promise/-/es6-promise-4.2.4.tgz";
              sha1 = "dc4221c2b16518760bd8c39a52d8f356fc00ed29";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-set@0.1.4" = nodeEnv.buildYarnPackage {
            name = "es6-set-0.1.4";
            packageName = "es6-set";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-set/-/es6-set-0.1.4.tgz";
              sha1 = "9516b6761c2964b92ff479456233a247dc707ce8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-shim@0.35.3" = nodeEnv.buildYarnPackage {
            name = "es6-shim-0.35.3";
            packageName = "es6-shim";
            version = "0.35.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-shim/-/es6-shim-0.35.3.tgz";
              sha1 = "9bfb7363feffff87a6cdb6cd93e405ec3c4b6f26";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-symbol@3.1.0" = nodeEnv.buildYarnPackage {
            name = "es6-symbol-3.1.0";
            packageName = "es6-symbol";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-symbol/-/es6-symbol-3.1.0.tgz";
              sha1 = "94481c655e7a7cad82eba832d97d5433496d7ffa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "es6-templates@0.2.3" = nodeEnv.buildYarnPackage {
            name = "es6-templates-0.2.3";
            packageName = "es6-templates";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-templates/-/es6-templates-0.2.3.tgz";
              sha1 = "5cb9ac9fb1ded6eb1239342b81d792bbb4078ee4";
            };
            dependencies = [ pkgs."recast@0.11.23" ];
            dontNpmInstall = true;
            };
  "es6-weak-map@2.0.1" = nodeEnv.buildYarnPackage {
            name = "es6-weak-map-2.0.1";
            packageName = "es6-weak-map";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/es6-weak-map/-/es6-weak-map-2.0.1.tgz";
              sha1 = "0d2bbd8827eb5fb4ba8f97fbfea50d43db21ea81";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "escape-html@1.0.3" = nodeEnv.buildYarnPackage {
            name = "escape-html-1.0.3";
            packageName = "escape-html";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/escape-html/-/escape-html-1.0.3.tgz";
              sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "escape-string-regexp@1.0.5" = nodeEnv.buildYarnPackage {
            name = "escape-string-regexp-1.0.5";
            packageName = "escape-string-regexp";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
              sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "escope@3.6.0" = nodeEnv.buildYarnPackage {
            name = "escope-3.6.0";
            packageName = "escope";
            version = "3.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/escope/-/escope-3.6.0.tgz";
              sha1 = "e01975e812781a163a6dadfdd80398dc64c889c3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-config-airbnb-base@12.1.0" = nodeEnv.buildYarnPackage {
            name = "eslint-config-airbnb-base-12.1.0";
            packageName = "eslint-config-airbnb-base";
            version = "12.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-config-airbnb-base/-/eslint-config-airbnb-base-12.1.0.tgz";
              sha1 = "386441e54a12ccd957b0a92564a4bafebd747944";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-config-airbnb@16.1.0" = nodeEnv.buildYarnPackage {
            name = "eslint-config-airbnb-16.1.0";
            packageName = "eslint-config-airbnb";
            version = "16.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-config-airbnb/-/eslint-config-airbnb-16.1.0.tgz";
              sha1 = "2546bfb02cc9fe92284bf1723ccf2e87bc45ca46";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-formatter-pretty@1.3.0" = nodeEnv.buildYarnPackage {
            name = "eslint-formatter-pretty-1.3.0";
            packageName = "eslint-formatter-pretty";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-formatter-pretty/-/eslint-formatter-pretty-1.3.0.tgz";
              sha1 = "985d9e41c1f8475f4a090c5dbd2dfcf2821d607e";
            };
            dependencies = [ pkgs."ansi-escapes@2.0.0" pkgs."string-width@2.0.0" ];
            dontNpmInstall = true;
            };
  "eslint-import-resolver-node@0.3.2" = nodeEnv.buildYarnPackage {
            name = "eslint-import-resolver-node-0.3.2";
            packageName = "eslint-import-resolver-node";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-import-resolver-node/-/eslint-import-resolver-node-0.3.2.tgz";
              sha1 = "58f15fb839b8d0576ca980413476aab2472db66a";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "eslint-module-utils@2.1.1" = nodeEnv.buildYarnPackage {
            name = "eslint-module-utils-2.1.1";
            packageName = "eslint-module-utils";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-module-utils/-/eslint-module-utils-2.1.1.tgz";
              sha1 = "abaec824177613b8a95b299639e1b6facf473449";
            };
            dependencies = [ pkgs."debug@2.6.9" pkgs."pkg-dir@1.0.0" ];
            dontNpmInstall = true;
            };
  "eslint-plugin-import@2.9.0" = nodeEnv.buildYarnPackage {
            name = "eslint-plugin-import-2.9.0";
            packageName = "eslint-plugin-import";
            version = "2.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-import/-/eslint-plugin-import-2.9.0.tgz";
              sha1 = "26002efbfca5989b7288ac047508bd24f217b169";
            };
            dependencies = [ pkgs."debug@2.6.9" pkgs."doctrine@1.5.0" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "eslint-plugin-jsx-a11y@6.0.3" = nodeEnv.buildYarnPackage {
            name = "eslint-plugin-jsx-a11y-6.0.3";
            packageName = "eslint-plugin-jsx-a11y";
            version = "6.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-jsx-a11y/-/eslint-plugin-jsx-a11y-6.0.3.tgz";
              sha1 = "54583d1ae442483162e040e13cc31865465100e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-plugin-promise@3.6.0" = nodeEnv.buildYarnPackage {
            name = "eslint-plugin-promise-3.6.0";
            packageName = "eslint-plugin-promise";
            version = "3.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-promise/-/eslint-plugin-promise-3.6.0.tgz";
              sha1 = "54b7658c8f454813dc2a870aff8152ec4969ba75";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-plugin-react@7.7.0" = nodeEnv.buildYarnPackage {
            name = "eslint-plugin-react-7.7.0";
            packageName = "eslint-plugin-react";
            version = "7.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-plugin-react/-/eslint-plugin-react-7.7.0.tgz";
              sha1 = "f606c719dbd8a1a2b3d25c16299813878cca0160";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-restricted-globals@0.1.1" = nodeEnv.buildYarnPackage {
            name = "eslint-restricted-globals-0.1.1";
            packageName = "eslint-restricted-globals";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-restricted-globals/-/eslint-restricted-globals-0.1.1.tgz";
              sha1 = "35f0d5cbc64c2e3ed62e93b4b1a7af05ba7ed4d7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-scope@3.7.1" = nodeEnv.buildYarnPackage {
            name = "eslint-scope-3.7.1";
            packageName = "eslint-scope";
            version = "3.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-3.7.1.tgz";
              sha1 = "3d63c3edfda02e06e01a452ad88caacc7cdcb6e8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint-visitor-keys@1.0.0" = nodeEnv.buildYarnPackage {
            name = "eslint-visitor-keys-1.0.0";
            packageName = "eslint-visitor-keys";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint-visitor-keys/-/eslint-visitor-keys-1.0.0.tgz";
              sha1 = "3f3180fb2e291017716acb4c9d6d5b5c34a6a81d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eslint@4.18.1" = nodeEnv.buildYarnPackage {
            name = "eslint-4.18.1";
            packageName = "eslint";
            version = "4.18.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eslint/-/eslint-4.18.1.tgz";
              sha1 = "b9138440cb1e98b2f44a0d578c6ecf8eae6150b0";
            };
            dependencies = [ pkgs."ajv@5.5.2" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "espree@3.5.3" = nodeEnv.buildYarnPackage {
            name = "espree-3.5.3";
            packageName = "espree";
            version = "3.5.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/espree/-/espree-3.5.3.tgz";
              sha1 = "931e0af64e7fbbed26b050a29daad1fc64799fa6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "esprima@4.0.0" = nodeEnv.buildYarnPackage {
            name = "esprima-4.0.0";
            packageName = "esprima";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esprima/-/esprima-4.0.0.tgz";
              sha1 = "4499eddcd1110e0b218bacf2fa7f7f59f55ca804";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "esquery@1.0.0" = nodeEnv.buildYarnPackage {
            name = "esquery-1.0.0";
            packageName = "esquery";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esquery/-/esquery-1.0.0.tgz";
              sha1 = "cfba8b57d7fba93f17298a8a006a04cda13d80fa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "esrecurse@4.1.0" = nodeEnv.buildYarnPackage {
            name = "esrecurse-4.1.0";
            packageName = "esrecurse";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esrecurse/-/esrecurse-4.1.0.tgz";
              sha1 = "4713b6536adf7f2ac4f327d559e7756bff648220";
            };
            dependencies = [ pkgs."estraverse@4.1.1" ];
            dontNpmInstall = true;
            };
  "estraverse@4.2.0" = nodeEnv.buildYarnPackage {
            name = "estraverse-4.2.0";
            packageName = "estraverse";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.2.0.tgz";
              sha1 = "0dee3fed31fcd469618ce7342099fc1afa0bdb13";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "esutils@2.0.2" = nodeEnv.buildYarnPackage {
            name = "esutils-2.0.2";
            packageName = "esutils";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esutils/-/esutils-2.0.2.tgz";
              sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "etag@1.8.1" = nodeEnv.buildYarnPackage {
            name = "etag-1.8.1";
            packageName = "etag";
            version = "1.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/etag/-/etag-1.8.1.tgz";
              sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eth-lib@0.2.7" = nodeEnv.buildYarnPackage {
            name = "eth-lib-0.2.7";
            packageName = "eth-lib";
            version = "0.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eth-lib/-/eth-lib-0.2.7.tgz";
              sha1 = "2f93f17b1e23aec3759cd4a3fe20c1286a3fc1ca";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ethjs-unit@0.1.6" = nodeEnv.buildYarnPackage {
            name = "ethjs-unit-0.1.6";
            packageName = "ethjs-unit";
            version = "0.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ethjs-unit/-/ethjs-unit-0.1.6.tgz";
              sha1 = "c665921e476e87bce2a9d588a6fe0405b2c41699";
            };
            dependencies = [ pkgs."bn.js@4.11.6" ];
            dontNpmInstall = true;
            };
  "event-emitter@0.3.4" = nodeEnv.buildYarnPackage {
            name = "event-emitter-0.3.4";
            packageName = "event-emitter";
            version = "0.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/event-emitter/-/event-emitter-0.3.4.tgz";
              sha1 = "8d63ddfb4cfe1fae3b32ca265c4c720222080bb5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "event-stream@3.3.4" = nodeEnv.buildYarnPackage {
            name = "event-stream-3.3.4";
            packageName = "event-stream";
            version = "3.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/event-stream/-/event-stream-3.3.4.tgz";
              sha1 = "4ab4c9a0f5a54db9338b4c34d86bfce8f4b35571";
            };
            dependencies = [ pkgs."split@0.3.3" ];
            dontNpmInstall = true;
            };
  "eventemitter3@1.1.1" = nodeEnv.buildYarnPackage {
            name = "eventemitter3-1.1.1";
            packageName = "eventemitter3";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eventemitter3/-/eventemitter3-1.1.1.tgz";
              sha1 = "47786bdaa087caf7b1b75e73abc5c7d540158cd0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "events@1.1.1" = nodeEnv.buildYarnPackage {
            name = "events-1.1.1";
            packageName = "events";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/events/-/events-1.1.1.tgz";
              sha1 = "9ebdb7635ad099c70dcc4c2a1f5004288e8bd924";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "evp_bytestokey@1.0.0" = nodeEnv.buildYarnPackage {
            name = "evp_bytestokey-1.0.0";
            packageName = "evp_bytestokey";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/evp_bytestokey/-/evp_bytestokey-1.0.0.tgz";
              sha1 = "497b66ad9fef65cd7c08a6180824ba1476b66e53";
            };
            dependencies = [ pkgs."create-hash@1.1.2" ];
            dontNpmInstall = true;
            };
  "execa@0.7.0" = nodeEnv.buildYarnPackage {
            name = "execa-0.7.0";
            packageName = "execa";
            version = "0.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/execa/-/execa-0.7.0.tgz";
              sha1 = "944becd34cc41ee32a63a9faf27ad5a65fc59777";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "exenv@1.2.2" = nodeEnv.buildYarnPackage {
            name = "exenv-1.2.2";
            packageName = "exenv";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/exenv/-/exenv-1.2.2.tgz";
              sha1 = "2ae78e85d9894158670b03d47bec1f03bd91bb9d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "expand-brackets@0.1.5" = nodeEnv.buildYarnPackage {
            name = "expand-brackets-0.1.5";
            packageName = "expand-brackets";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-0.1.5.tgz";
              sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "expand-range@1.8.2" = nodeEnv.buildYarnPackage {
            name = "expand-range-1.8.2";
            packageName = "expand-range";
            version = "1.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/expand-range/-/expand-range-1.8.2.tgz";
              sha1 = "a299effd335fe2721ebae8e257ec79644fc85337";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "express@4.16.2" = nodeEnv.buildYarnPackage {
            name = "express-4.16.2";
            packageName = "express";
            version = "4.16.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/express/-/express-4.16.2.tgz";
              sha1 = "e35c6dfe2d64b7dca0a5cd4f21781be3299e076c";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "extend@3.0.1" = nodeEnv.buildYarnPackage {
            name = "extend-3.0.1";
            packageName = "extend";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extend/-/extend-3.0.1.tgz";
              sha1 = "a755ea7bc1adfcc5a31ce7e762dbaadc5e636444";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "external-editor@2.1.0" = nodeEnv.buildYarnPackage {
            name = "external-editor-2.1.0";
            packageName = "external-editor";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/external-editor/-/external-editor-2.1.0.tgz";
              sha1 = "3d026a21b7f95b5726387d4200ac160d372c3b48";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "extglob@0.3.2" = nodeEnv.buildYarnPackage {
            name = "extglob-0.3.2";
            packageName = "extglob";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extglob/-/extglob-0.3.2.tgz";
              sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "extract-text-webpack-plugin@3.0.2" = nodeEnv.buildYarnPackage {
            name = "extract-text-webpack-plugin-3.0.2";
            packageName = "extract-text-webpack-plugin";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extract-text-webpack-plugin/-/extract-text-webpack-plugin-3.0.2.tgz";
              sha1 = "5f043eaa02f9750a9258b78c0a6e0dc1408fb2f7";
            };
            dependencies = [ pkgs."schema-utils@0.3.0" ];
            dontNpmInstall = true;
            };
  "extract-zip@1.6.6" = nodeEnv.buildYarnPackage {
            name = "extract-zip-1.6.6";
            packageName = "extract-zip";
            version = "1.6.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extract-zip/-/extract-zip-1.6.6.tgz";
              sha1 = "1290ede8d20d0872b429fd3f351ca128ec5ef85c";
            };
            dependencies = [ pkgs."debug@2.6.9" pkgs."mkdirp@0.5.0" pkgs."yauzl@2.4.1" ];
            dontNpmInstall = true;
            };
  "extsprintf@1.4.0" = nodeEnv.buildYarnPackage {
            name = "extsprintf-1.4.0";
            packageName = "extsprintf";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.4.0.tgz";
              sha1 = "e2689f8f356fad62cca65a3a91c5df5f9551692f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eyes@0.1.8" = nodeEnv.buildYarnPackage {
            name = "eyes-0.1.8";
            packageName = "eyes";
            version = "0.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eyes/-/eyes-0.1.8.tgz";
              sha1 = "62cf120234c683785d902348a800ef3e0cc20bc0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "faker@4.1.0" = nodeEnv.buildYarnPackage {
            name = "faker-4.1.0";
            packageName = "faker";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/faker/-/faker-4.1.0.tgz";
              sha1 = "1e45bbbecc6774b3c195fad2835109c6d748cc3f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fancy-log@1.3.2" = nodeEnv.buildYarnPackage {
            name = "fancy-log-1.3.2";
            packageName = "fancy-log";
            version = "1.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fancy-log/-/fancy-log-1.3.2.tgz";
              sha1 = "f41125e3d84f2e7d89a43d06d958c8f78be16be1";
            };
            dependencies = [ pkgs."time-stamp@1.1.0" ];
            dontNpmInstall = true;
            };
  "fast-deep-equal@1.1.0" = nodeEnv.buildYarnPackage {
            name = "fast-deep-equal-1.1.0";
            packageName = "fast-deep-equal";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz";
              sha1 = "c053477817c86b51daa853c81e059b733d023614";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fast-json-stable-stringify@2.0.0" = nodeEnv.buildYarnPackage {
            name = "fast-json-stable-stringify-2.0.0";
            packageName = "fast-json-stable-stringify";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
              sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fast-levenshtein@2.0.6" = nodeEnv.buildYarnPackage {
            name = "fast-levenshtein-2.0.6";
            packageName = "fast-levenshtein";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz";
              sha1 = "3d8a5c66883a16a30ca8643e851f19baa7797917";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fast-memoize@2.3.0" = nodeEnv.buildYarnPackage {
            name = "fast-memoize-2.3.0";
            packageName = "fast-memoize";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fast-memoize/-/fast-memoize-2.3.0.tgz";
              sha1 = "d7f81dc864489f582e30538923c423d85887af32";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fastparse@1.1.1" = nodeEnv.buildYarnPackage {
            name = "fastparse-1.1.1";
            packageName = "fastparse";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fastparse/-/fastparse-1.1.1.tgz";
              sha1 = "d1e2643b38a94d7583b479060e6c4affc94071f8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fbjs-scripts@0.8.1" = nodeEnv.buildYarnPackage {
            name = "fbjs-scripts-0.8.1";
            packageName = "fbjs-scripts";
            version = "0.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fbjs-scripts/-/fbjs-scripts-0.8.1.tgz";
              sha1 = "c1c6efbecb7f008478468976b783880c2f669765";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fbjs@0.8.16" = nodeEnv.buildYarnPackage {
            name = "fbjs-0.8.16";
            packageName = "fbjs";
            version = "0.8.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fbjs/-/fbjs-0.8.16.tgz";
              sha1 = "5e67432f550dc41b572bf55847b8aca64e5337db";
            };
            dependencies = [ pkgs."core-js@1.2.7" pkgs."loose-envify@1.3.0" pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "fd-slicer@1.0.1" = nodeEnv.buildYarnPackage {
            name = "fd-slicer-1.0.1";
            packageName = "fd-slicer";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fd-slicer/-/fd-slicer-1.0.1.tgz";
              sha1 = "8b5bcbd9ec327c5041bf9ab023fd6750f1177e65";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "figures@2.0.0" = nodeEnv.buildYarnPackage {
            name = "figures-2.0.0";
            packageName = "figures";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/figures/-/figures-2.0.0.tgz";
              sha1 = "3ab1a2d2a62c8bfb431a0c94cb797a2fce27c962";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "file-entry-cache@2.0.0" = nodeEnv.buildYarnPackage {
            name = "file-entry-cache-2.0.0";
            packageName = "file-entry-cache";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-2.0.0.tgz";
              sha1 = "c392990c3e684783d838b8c84a45d8a048458361";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "file-loader@1.1.8" = nodeEnv.buildYarnPackage {
            name = "file-loader-1.1.8";
            packageName = "file-loader";
            version = "1.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-loader/-/file-loader-1.1.8.tgz";
              sha1 = "a62592ed732667d7482dc3268c381c7f0c913086";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "file-type@6.2.0" = nodeEnv.buildYarnPackage {
            name = "file-type-6.2.0";
            packageName = "file-type";
            version = "6.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-type/-/file-type-6.2.0.tgz";
              sha1 = "e50cd75d356ffed4e306dc4f5bcf52a79903a919";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "filename-regex@2.0.0" = nodeEnv.buildYarnPackage {
            name = "filename-regex-2.0.0";
            packageName = "filename-regex";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/filename-regex/-/filename-regex-2.0.0.tgz";
              sha1 = "996e3e80479b98b9897f15a8a58b3d084e926775";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fill-range@2.2.3" = nodeEnv.buildYarnPackage {
            name = "fill-range-2.2.3";
            packageName = "fill-range";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fill-range/-/fill-range-2.2.3.tgz";
              sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
            };
            dependencies = [ pkgs."isobject@2.1.0" ];
            dontNpmInstall = true;
            };
  "filter-react-dom-props@0.0.2" = nodeEnv.buildYarnPackage {
            name = "filter-react-dom-props-0.0.2";
            packageName = "filter-react-dom-props";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/filter-react-dom-props/-/filter-react-dom-props-0.0.2.tgz";
              sha1 = "d5c1e5a89c13534cebe3930a22afa9ae3238813b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "finalhandler@1.1.0" = nodeEnv.buildYarnPackage {
            name = "finalhandler-1.1.0";
            packageName = "finalhandler";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/finalhandler/-/finalhandler-1.1.0.tgz";
              sha1 = "ce0b6855b45853e791b2fcc680046d88253dd7f5";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "find-cache-dir@1.0.0" = nodeEnv.buildYarnPackage {
            name = "find-cache-dir-1.0.0";
            packageName = "find-cache-dir";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-cache-dir/-/find-cache-dir-1.0.0.tgz";
              sha1 = "9288e3e9e3cc3748717d39eade17cf71fc30ee6f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "find-up@2.1.0" = nodeEnv.buildYarnPackage {
            name = "find-up-2.1.0";
            packageName = "find-up";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-up/-/find-up-2.1.0.tgz";
              sha1 = "45d1b7e506c717ddd482775a2b77920a3c0c57a7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "flat-cache@1.3.0" = nodeEnv.buildYarnPackage {
            name = "flat-cache-1.3.0";
            packageName = "flat-cache";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/flat-cache/-/flat-cache-1.3.0.tgz";
              sha1 = "d3030b32b38154f4e3b7e9c709f490f7ef97c481";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "flatten@1.0.2" = nodeEnv.buildYarnPackage {
            name = "flatten-1.0.2";
            packageName = "flatten";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/flatten/-/flatten-1.0.2.tgz";
              sha1 = "dae46a9d78fbe25292258cc1e780a41d95c03782";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "flush-write-stream@1.0.2" = nodeEnv.buildYarnPackage {
            name = "flush-write-stream-1.0.2";
            packageName = "flush-write-stream";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/flush-write-stream/-/flush-write-stream-1.0.2.tgz";
              sha1 = "c81b90d8746766f1a609a46809946c45dd8ae417";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "for-each@0.3.2" = nodeEnv.buildYarnPackage {
            name = "for-each-0.3.2";
            packageName = "for-each";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-each/-/for-each-0.3.2.tgz";
              sha1 = "2c40450b9348e97f281322593ba96704b9abd4d4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "for-in@1.0.2" = nodeEnv.buildYarnPackage {
            name = "for-in-1.0.2";
            packageName = "for-in";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-in/-/for-in-1.0.2.tgz";
              sha1 = "81068d295a8142ec0ac726c6e2200c30fb6d5e80";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "for-own@1.0.0" = nodeEnv.buildYarnPackage {
            name = "for-own-1.0.0";
            packageName = "for-own";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-own/-/for-own-1.0.0.tgz";
              sha1 = "c63332f415cedc4b04dbfe70cf836494c53cb44b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "foreach@2.0.5" = nodeEnv.buildYarnPackage {
            name = "foreach-2.0.5";
            packageName = "foreach";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/foreach/-/foreach-2.0.5.tgz";
              sha1 = "0bee005018aeb260d0a3af3ae658dd0136ec1b99";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "forever-agent@0.6.1" = nodeEnv.buildYarnPackage {
            name = "forever-agent-0.6.1";
            packageName = "forever-agent";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/forever-agent/-/forever-agent-0.6.1.tgz";
              sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "form-data@2.3.2" = nodeEnv.buildYarnPackage {
            name = "form-data-2.3.2";
            packageName = "form-data";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/form-data/-/form-data-2.3.2.tgz";
              sha1 = "4970498be604c20c005d4f5c23aecd21d6b49099";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "forwarded@0.1.2" = nodeEnv.buildYarnPackage {
            name = "forwarded-0.1.2";
            packageName = "forwarded";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/forwarded/-/forwarded-0.1.2.tgz";
              sha1 = "98c23dab1175657b8c0573e8ceccd91b0ff18c84";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fresh@0.5.2" = nodeEnv.buildYarnPackage {
            name = "fresh-0.5.2";
            packageName = "fresh";
            version = "0.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fresh/-/fresh-0.5.2.tgz";
              sha1 = "3d8cadd90d976569fa835ab1f8e4b23a105605a7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "from2@2.3.0" = nodeEnv.buildYarnPackage {
            name = "from2-2.3.0";
            packageName = "from2";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/from2/-/from2-2.3.0.tgz";
              sha1 = "8bfb5502bde4a4d36cfdeea007fcca21d7e382af";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "from@0.1.7" = nodeEnv.buildYarnPackage {
            name = "from-0.1.7";
            packageName = "from";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/from/-/from-0.1.7.tgz";
              sha1 = "83c60afc58b9c56997007ed1a768b3ab303a44fe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fs-extra@5.0.0" = nodeEnv.buildYarnPackage {
            name = "fs-extra-5.0.0";
            packageName = "fs-extra";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-5.0.0.tgz";
              sha1 = "414d0110cdd06705734d055652c5411260c31abd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fs-promise@2.0.3" = nodeEnv.buildYarnPackage {
            name = "fs-promise-2.0.3";
            packageName = "fs-promise";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-promise/-/fs-promise-2.0.3.tgz";
              sha1 = "f64e4f854bcf689aa8bddcba268916db3db46854";
            };
            dependencies = [ pkgs."fs-extra@2.1.2" ];
            dontNpmInstall = true;
            };
  "fs-write-stream-atomic@1.0.10" = nodeEnv.buildYarnPackage {
            name = "fs-write-stream-atomic-1.0.10";
            packageName = "fs-write-stream-atomic";
            version = "1.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-write-stream-atomic/-/fs-write-stream-atomic-1.0.10.tgz";
              sha1 = "b47df53493ef911df75731e70a9ded0189db40c9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fs.realpath@1.0.0" = nodeEnv.buildYarnPackage {
            name = "fs.realpath-1.0.0";
            packageName = "fs.realpath";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz";
              sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fsevents@1.0.17" = nodeEnv.buildYarnPackage {
            name = "fsevents-1.0.17";
            packageName = "fsevents";
            version = "1.0.17";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fsevents/-/fsevents-1.0.17.tgz";
              sha1 = "8537f3f12272678765b4fd6528c0f1f66f8f4558";
            };
            dependencies = [ pkgs."nan@2.5.0" ];
            dontNpmInstall = true;
            };
  "fstream-ignore@1.0.5" = nodeEnv.buildYarnPackage {
            name = "fstream-ignore-1.0.5";
            packageName = "fstream-ignore";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fstream-ignore/-/fstream-ignore-1.0.5.tgz";
              sha1 = "9c31dae34767018fe1d249b24dada67d092da105";
            };
            dependencies = [ pkgs."fstream@1.0.10" pkgs."minimatch@3.0.3" ];
            dontNpmInstall = true;
            };
  "fstream@1.0.11" = nodeEnv.buildYarnPackage {
            name = "fstream-1.0.11";
            packageName = "fstream";
            version = "1.0.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fstream/-/fstream-1.0.11.tgz";
              sha1 = "5c1fb1f117477114f0632a0eb4b71b3cb0fd3171";
            };
            dependencies = [ pkgs."rimraf@2.5.4" ];
            dontNpmInstall = true;
            };
  "function-bind@1.1.1" = nodeEnv.buildYarnPackage {
            name = "function-bind-1.1.1";
            packageName = "function-bind";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz";
              sha1 = "a56899d3ea3c9bab874bb9773b7c5ede92f4895d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "function.prototype.name@1.1.0" = nodeEnv.buildYarnPackage {
            name = "function.prototype.name-1.1.0";
            packageName = "function.prototype.name";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/function.prototype.name/-/function.prototype.name-1.1.0.tgz";
              sha1 = "8bd763cc0af860a859cc5d49384d74b932cd2327";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "functional-red-black-tree@1.0.1" = nodeEnv.buildYarnPackage {
            name = "functional-red-black-tree-1.0.1";
            packageName = "functional-red-black-tree";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/functional-red-black-tree/-/functional-red-black-tree-1.0.1.tgz";
              sha1 = "1b0ab3bd553b2a0d6399d29c0e3ea0b252078327";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fuse.js@3.2.0" = nodeEnv.buildYarnPackage {
            name = "fuse.js-3.2.0";
            packageName = "fuse.js";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fuse.js/-/fuse.js-3.2.0.tgz";
              sha1 = "f0448e8069855bf2a3e683cdc1d320e7e2a07ef4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "gauge@2.7.4" = nodeEnv.buildYarnPackage {
            name = "gauge-2.7.4";
            packageName = "gauge";
            version = "2.7.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.4.tgz";
              sha1 = "2c03405c7538c39d7eb37b317022e325fb018bf7";
            };
            dependencies = [ pkgs."aproba@1.0.4" pkgs."object-assign@4.1.0" pkgs."string-width@1.0.2" pkgs."strip-ansi@3.0.1" ];
            dontNpmInstall = true;
            };
  "gaze@1.1.2" = nodeEnv.buildYarnPackage {
            name = "gaze-1.1.2";
            packageName = "gaze";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gaze/-/gaze-1.1.2.tgz";
              sha1 = "847224677adb8870d679257ed3388fdb61e40105";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "generate-function@2.0.0" = nodeEnv.buildYarnPackage {
            name = "generate-function-2.0.0";
            packageName = "generate-function";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/generate-function/-/generate-function-2.0.0.tgz";
              sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "generate-object-property@1.2.0" = nodeEnv.buildYarnPackage {
            name = "generate-object-property-1.2.0";
            packageName = "generate-object-property";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/generate-object-property/-/generate-object-property-1.2.0.tgz";
              sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "get-caller-file@1.0.2" = nodeEnv.buildYarnPackage {
            name = "get-caller-file-1.0.2";
            packageName = "get-caller-file";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-1.0.2.tgz";
              sha1 = "f702e63127e7e231c160a80c1554acb70d5047e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "get-func-name@2.0.0" = nodeEnv.buildYarnPackage {
            name = "get-func-name-2.0.0";
            packageName = "get-func-name";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-func-name/-/get-func-name-2.0.0.tgz";
              sha1 = "ead774abee72e20409433a066366023dd6887a41";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "get-package-info@1.0.0" = nodeEnv.buildYarnPackage {
            name = "get-package-info-1.0.0";
            packageName = "get-package-info";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-package-info/-/get-package-info-1.0.0.tgz";
              sha1 = "6432796563e28113cd9474dbbd00052985a4999c";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "get-stdin@4.0.1" = nodeEnv.buildYarnPackage {
            name = "get-stdin-4.0.1";
            packageName = "get-stdin";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-stdin/-/get-stdin-4.0.1.tgz";
              sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "get-stream@3.0.0" = nodeEnv.buildYarnPackage {
            name = "get-stream-3.0.0";
            packageName = "get-stream";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-stream/-/get-stream-3.0.0.tgz";
              sha1 = "8e943d1358dc37555054ecbe2edb05aa174ede14";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "getpass@0.1.7" = nodeEnv.buildYarnPackage {
            name = "getpass-0.1.7";
            packageName = "getpass";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/getpass/-/getpass-0.1.7.tgz";
              sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "gherkin@5.0.0" = nodeEnv.buildYarnPackage {
            name = "gherkin-5.0.0";
            packageName = "gherkin";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gherkin/-/gherkin-5.0.0.tgz";
              sha1 = "96def41198ec3908258b511af74f655a2764d2a1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glamor@2.20.40" = nodeEnv.buildYarnPackage {
            name = "glamor-2.20.40";
            packageName = "glamor";
            version = "2.20.40";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glamor/-/glamor-2.20.40.tgz";
              sha1 = "f606660357b7cf18dface731ad1a2cfa93817f05";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glamorous@4.11.6" = nodeEnv.buildYarnPackage {
            name = "glamorous-4.11.6";
            packageName = "glamorous";
            version = "4.11.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glamorous/-/glamorous-4.11.6.tgz";
              sha1 = "337d9ec370ef3fa7cd0cd8f9f1c058fa3c55a424";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glob-base@0.3.0" = nodeEnv.buildYarnPackage {
            name = "glob-base-0.3.0";
            packageName = "glob-base";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob-base/-/glob-base-0.3.0.tgz";
              sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glob-parent@2.0.0" = nodeEnv.buildYarnPackage {
            name = "glob-parent-2.0.0";
            packageName = "glob-parent";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-2.0.0.tgz";
              sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glob@7.1.2" = nodeEnv.buildYarnPackage {
            name = "glob-7.1.2";
            packageName = "glob";
            version = "7.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob/-/glob-7.1.2.tgz";
              sha1 = "c19c9df9a028702d678612384a6552404c636d15";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "global@4.3.2" = nodeEnv.buildYarnPackage {
            name = "global-4.3.2";
            packageName = "global";
            version = "4.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/global/-/global-4.3.2.tgz";
              sha1 = "e76989268a6c74c38908b1305b10fc0e394e9d0f";
            };
            dependencies = [ pkgs."process@0.5.2" ];
            dontNpmInstall = true;
            };
  "globals@11.3.0" = nodeEnv.buildYarnPackage {
            name = "globals-11.3.0";
            packageName = "globals";
            version = "11.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globals/-/globals-11.3.0.tgz";
              sha1 = "e04fdb7b9796d8adac9c8f64c14837b2313378b0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "globby@5.0.0" = nodeEnv.buildYarnPackage {
            name = "globby-5.0.0";
            packageName = "globby";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globby/-/globby-5.0.0.tgz";
              sha1 = "ebd84667ca0dbb330b99bcfc68eac2bc54370e0d";
            };
            dependencies = [ pkgs."pify@2.3.0" ];
            dontNpmInstall = true;
            };
  "globule@1.2.0" = nodeEnv.buildYarnPackage {
            name = "globule-1.2.0";
            packageName = "globule";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globule/-/globule-1.2.0.tgz";
              sha1 = "1dc49c6822dd9e8a2fa00ba2a295006e8664bd09";
            };
            dependencies = [ pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "glogg@1.0.1" = nodeEnv.buildYarnPackage {
            name = "glogg-1.0.1";
            packageName = "glogg";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glogg/-/glogg-1.0.1.tgz";
              sha1 = "dcf758e44789cc3f3d32c1f3562a3676e6a34810";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glossy@0.1.7" = nodeEnv.buildYarnPackage {
            name = "glossy-0.1.7";
            packageName = "glossy";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glossy/-/glossy-0.1.7.tgz";
              sha1 = "769b5984a96f6066ab9ea758224825ee6c210f0b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "got@7.1.0" = nodeEnv.buildYarnPackage {
            name = "got-7.1.0";
            packageName = "got";
            version = "7.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/got/-/got-7.1.0.tgz";
              sha1 = "05450fd84094e6bbea56f451a43a9c289166385a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "graceful-fs@4.1.11" = nodeEnv.buildYarnPackage {
            name = "graceful-fs-4.1.11";
            packageName = "graceful-fs";
            version = "4.1.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.1.11.tgz";
              sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "graceful-readlink@1.0.1" = nodeEnv.buildYarnPackage {
            name = "graceful-readlink-1.0.1";
            packageName = "graceful-readlink";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
              sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "gulp-util@3.0.8" = nodeEnv.buildYarnPackage {
            name = "gulp-util-3.0.8";
            packageName = "gulp-util";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gulp-util/-/gulp-util-3.0.8.tgz";
              sha1 = "0054e1e744502e27c04c187c3ecc505dd54bbb4f";
            };
            dependencies = [ pkgs."chalk@1.1.3" pkgs."object-assign@3.0.0" ];
            dontNpmInstall = true;
            };
  "gulplog@1.0.0" = nodeEnv.buildYarnPackage {
            name = "gulplog-1.0.0";
            packageName = "gulplog";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gulplog/-/gulplog-1.0.0.tgz";
              sha1 = "e28c4d45d05ecbbed818363ce8f9c5926229ffe5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "happypack@4.0.1" = nodeEnv.buildYarnPackage {
            name = "happypack-4.0.1";
            packageName = "happypack";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/happypack/-/happypack-4.0.1.tgz";
              sha1 = "d71a6520d13c1ddf6cc5ca040cfe22711cba5209";
            };
            dependencies = [ pkgs."async@1.5.0" ];
            dontNpmInstall = true;
            };
  "har-schema@2.0.0" = nodeEnv.buildYarnPackage {
            name = "har-schema-2.0.0";
            packageName = "har-schema";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/har-schema/-/har-schema-2.0.0.tgz";
              sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "har-validator@5.0.3" = nodeEnv.buildYarnPackage {
            name = "har-validator-5.0.3";
            packageName = "har-validator";
            version = "5.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/har-validator/-/har-validator-5.0.3.tgz";
              sha1 = "ba402c266194f15956ef15e0fcf242993f6a7dfd";
            };
            dependencies = [ pkgs."ajv@5.5.2" ];
            dontNpmInstall = true;
            };
  "has-ansi@2.0.0" = nodeEnv.buildYarnPackage {
            name = "has-ansi-2.0.0";
            packageName = "has-ansi";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-2.0.0.tgz";
              sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
            };
            dependencies = [ pkgs."ansi-regex@2.1.1" ];
            dontNpmInstall = true;
            };
  "has-flag@3.0.0" = nodeEnv.buildYarnPackage {
            name = "has-flag-3.0.0";
            packageName = "has-flag";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-flag/-/has-flag-3.0.0.tgz";
              sha1 = "b5d454dc2199ae225699f3467e5a07f3b955bafd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "has-gulplog@0.1.0" = nodeEnv.buildYarnPackage {
            name = "has-gulplog-0.1.0";
            packageName = "has-gulplog";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-gulplog/-/has-gulplog-0.1.0.tgz";
              sha1 = "6414c82913697da51590397dafb12f22967811ce";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "has-symbol-support-x@1.4.1" = nodeEnv.buildYarnPackage {
            name = "has-symbol-support-x-1.4.1";
            packageName = "has-symbol-support-x";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-symbol-support-x/-/has-symbol-support-x-1.4.1.tgz";
              sha1 = "66ec2e377e0c7d7ccedb07a3a84d77510ff1bc4c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "has-to-string-tag-x@1.4.1" = nodeEnv.buildYarnPackage {
            name = "has-to-string-tag-x-1.4.1";
            packageName = "has-to-string-tag-x";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-to-string-tag-x/-/has-to-string-tag-x-1.4.1.tgz";
              sha1 = "a045ab383d7b4b2012a00148ab0aa5f290044d4d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "has-unicode@2.0.1" = nodeEnv.buildYarnPackage {
            name = "has-unicode-2.0.1";
            packageName = "has-unicode";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-unicode/-/has-unicode-2.0.1.tgz";
              sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "has@1.0.1" = nodeEnv.buildYarnPackage {
            name = "has-1.0.1";
            packageName = "has";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has/-/has-1.0.1.tgz";
              sha1 = "8461733f538b0837c9361e39a9ab9e9704dc2f28";
            };
            dependencies = [ pkgs."function-bind@1.1.0" ];
            dontNpmInstall = true;
            };
  "hash-base@2.0.2" = nodeEnv.buildYarnPackage {
            name = "hash-base-2.0.2";
            packageName = "hash-base";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hash-base/-/hash-base-2.0.2.tgz";
              sha1 = "66ea1d856db4e8a5470cadf6fce23ae5244ef2e1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hash.js@1.1.3" = nodeEnv.buildYarnPackage {
            name = "hash.js-1.1.3";
            packageName = "hash.js";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hash.js/-/hash.js-1.1.3.tgz";
              sha1 = "340dedbe6290187151c1ea1d777a3448935df846";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hawk@6.0.2" = nodeEnv.buildYarnPackage {
            name = "hawk-6.0.2";
            packageName = "hawk";
            version = "6.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hawk/-/hawk-6.0.2.tgz";
              sha1 = "af4d914eb065f9b5ce4d9d11c1cb2126eecc3038";
            };
            dependencies = [ pkgs."boom@4.3.1" ];
            dontNpmInstall = true;
            };
  "he@1.1.1" = nodeEnv.buildYarnPackage {
            name = "he-1.1.1";
            packageName = "he";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/he/-/he-1.1.1.tgz";
              sha1 = "93410fd21b009735151f8868c2f271f3427e23fd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "highlight.js@9.12.0" = nodeEnv.buildYarnPackage {
            name = "highlight.js-9.12.0";
            packageName = "highlight.js";
            version = "9.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/highlight.js/-/highlight.js-9.12.0.tgz";
              sha1 = "e6d9dbe57cbefe60751f02af336195870c90c01e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "history@3.2.1" = nodeEnv.buildYarnPackage {
            name = "history-3.2.1";
            packageName = "history";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/history/-/history-3.2.1.tgz";
              sha1 = "71c7497f4e6090363d19a6713bb52a1bfcdd99aa";
            };
            dependencies = [ pkgs."invariant@2.2.2" pkgs."loose-envify@1.3.0" pkgs."query-string@4.2.3" ];
            dontNpmInstall = true;
            };
  "hmac-drbg@1.0.1" = nodeEnv.buildYarnPackage {
            name = "hmac-drbg-1.0.1";
            packageName = "hmac-drbg";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hmac-drbg/-/hmac-drbg-1.0.1.tgz";
              sha1 = "d2745701025a6c775a6c545793ed502fc0c649a1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hoek@4.2.1" = nodeEnv.buildYarnPackage {
            name = "hoek-4.2.1";
            packageName = "hoek";
            version = "4.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hoek/-/hoek-4.2.1.tgz";
              sha1 = "9634502aa12c445dd5a7c5734b572bb8738aacbb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hoist-non-react-statics@1.2.0" = nodeEnv.buildYarnPackage {
            name = "hoist-non-react-statics-1.2.0";
            packageName = "hoist-non-react-statics";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hoist-non-react-statics/-/hoist-non-react-statics-1.2.0.tgz";
              sha1 = "aa448cf0986d55cc40773b17174b7dd066cb7cfb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "home-or-tmp@2.0.0" = nodeEnv.buildYarnPackage {
            name = "home-or-tmp-2.0.0";
            packageName = "home-or-tmp";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/home-or-tmp/-/home-or-tmp-2.0.0.tgz";
              sha1 = "e36c3f2d2cae7d746a857e38d18d5f32a7882db8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "home-path@1.0.5" = nodeEnv.buildYarnPackage {
            name = "home-path-1.0.5";
            packageName = "home-path";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/home-path/-/home-path-1.0.5.tgz";
              sha1 = "788b29815b12d53bacf575648476e6f9041d133f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hosted-git-info@2.5.0" = nodeEnv.buildYarnPackage {
            name = "hosted-git-info-2.5.0";
            packageName = "hosted-git-info";
            version = "2.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.5.0.tgz";
              sha1 = "6d60e34b3abbc8313062c3b798ef8d901a07af3c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "html-comment-regex@1.1.1" = nodeEnv.buildYarnPackage {
            name = "html-comment-regex-1.1.1";
            packageName = "html-comment-regex";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-comment-regex/-/html-comment-regex-1.1.1.tgz";
              sha1 = "668b93776eaae55ebde8f3ad464b307a4963625e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "html-element-attributes@1.3.0" = nodeEnv.buildYarnPackage {
            name = "html-element-attributes-1.3.0";
            packageName = "html-element-attributes";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-element-attributes/-/html-element-attributes-1.3.0.tgz";
              sha1 = "f06ebdfce22de979db82020265cac541fb17d4fc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "html-entities@1.2.0" = nodeEnv.buildYarnPackage {
            name = "html-entities-1.2.0";
            packageName = "html-entities";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-entities/-/html-entities-1.2.0.tgz";
              sha1 = "41948caf85ce82fed36e4e6a0ed371a6664379e2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "html-loader@0.5.5" = nodeEnv.buildYarnPackage {
            name = "html-loader-0.5.5";
            packageName = "html-loader";
            version = "0.5.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-loader/-/html-loader-0.5.5.tgz";
              sha1 = "6356dbeb0c49756d8ebd5ca327f16ff06ab5faea";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "html-minifier@3.5.9" = nodeEnv.buildYarnPackage {
            name = "html-minifier-3.5.9";
            packageName = "html-minifier";
            version = "3.5.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-minifier/-/html-minifier-3.5.9.tgz";
              sha1 = "74424014b872598d4bb0e20ac420926ec61024b6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "html-tag-names@1.1.2" = nodeEnv.buildYarnPackage {
            name = "html-tag-names-1.1.2";
            packageName = "html-tag-names";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-tag-names/-/html-tag-names-1.1.2.tgz";
              sha1 = "f65168964c5a9c82675efda882875dcb2a875c22";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "html-webpack-plugin@2.30.1" = nodeEnv.buildYarnPackage {
            name = "html-webpack-plugin-2.30.1";
            packageName = "html-webpack-plugin";
            version = "2.30.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/html-webpack-plugin/-/html-webpack-plugin-2.30.1.tgz";
              sha1 = "7f9c421b7ea91ec460f56527d78df484ee7537d5";
            };
            dependencies = [ pkgs."loader-utils@0.2.16" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "htmlparser2@3.3.0" = nodeEnv.buildYarnPackage {
            name = "htmlparser2-3.3.0";
            packageName = "htmlparser2";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/htmlparser2/-/htmlparser2-3.3.0.tgz";
              sha1 = "cc70d05a59f6542e43f0e685c982e14c924a9efe";
            };
            dependencies = [ pkgs."domutils@1.1.6" pkgs."readable-stream@1.0.34" ];
            dontNpmInstall = true;
            };
  "http-errors@1.6.2" = nodeEnv.buildYarnPackage {
            name = "http-errors-1.6.2";
            packageName = "http-errors";
            version = "1.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.6.2.tgz";
              sha1 = "0a002cc85707192a7e7946ceedc11155f60ec736";
            };
            dependencies = [ pkgs."depd@1.1.1" pkgs."setprototypeof@1.0.3" ];
            dontNpmInstall = true;
            };
  "http-https@1.0.0" = nodeEnv.buildYarnPackage {
            name = "http-https-1.0.0";
            packageName = "http-https";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-https/-/http-https-1.0.0.tgz";
              sha1 = "2f908dd5f1db4068c058cd6e6d4ce392c913389b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "http-signature@1.2.0" = nodeEnv.buildYarnPackage {
            name = "http-signature-1.2.0";
            packageName = "http-signature";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.2.0.tgz";
              sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "https-browserify@1.0.0" = nodeEnv.buildYarnPackage {
            name = "https-browserify-1.0.0";
            packageName = "https-browserify";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/https-browserify/-/https-browserify-1.0.0.tgz";
              sha1 = "ec06c10e0a34c0f2faf199f7fd7fc78fffd03c73";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "humanize-duration@3.12.0" = nodeEnv.buildYarnPackage {
            name = "humanize-duration-3.12.0";
            packageName = "humanize-duration";
            version = "3.12.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/humanize-duration/-/humanize-duration-3.12.0.tgz";
              sha1 = "be2fb3062f5d7abc0892e715b5dd2bd152c7055e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "humanize-plus@1.8.2" = nodeEnv.buildYarnPackage {
            name = "humanize-plus-1.8.2";
            packageName = "humanize-plus";
            version = "1.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/humanize-plus/-/humanize-plus-1.8.2.tgz";
              sha1 = "a65b34459ad6367adbb3707a82a3c9f916167030";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hyphenate-style-name@1.0.2" = nodeEnv.buildYarnPackage {
            name = "hyphenate-style-name-1.0.2";
            packageName = "hyphenate-style-name";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hyphenate-style-name/-/hyphenate-style-name-1.0.2.tgz";
              sha1 = "31160a36930adaf1fc04c6074f7eb41465d4ec4b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "iconv-lite@0.4.19" = nodeEnv.buildYarnPackage {
            name = "iconv-lite-0.4.19";
            packageName = "iconv-lite";
            version = "0.4.19";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.19.tgz";
              sha1 = "f7468f60135f5e5dad3399c0a81be9a1603a082b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "icss-replace-symbols@1.1.0" = nodeEnv.buildYarnPackage {
            name = "icss-replace-symbols-1.1.0";
            packageName = "icss-replace-symbols";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/icss-replace-symbols/-/icss-replace-symbols-1.1.0.tgz";
              sha1 = "06ea6f83679a7749e386cfe1fe812ae5db223ded";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "icss-utils@2.1.0" = nodeEnv.buildYarnPackage {
            name = "icss-utils-2.1.0";
            packageName = "icss-utils";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/icss-utils/-/icss-utils-2.1.0.tgz";
              sha1 = "83f0a0ec378bf3246178b6c2ad9136f135b1c962";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ieee754@1.1.8" = nodeEnv.buildYarnPackage {
            name = "ieee754-1.1.8";
            packageName = "ieee754";
            version = "1.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ieee754/-/ieee754-1.1.8.tgz";
              sha1 = "be33d40ac10ef1926701f6f08a2d86fbfd1ad3e4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "iferr@0.1.5" = nodeEnv.buildYarnPackage {
            name = "iferr-0.1.5";
            packageName = "iferr";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/iferr/-/iferr-0.1.5.tgz";
              sha1 = "c60eed69e6d8fdb6b3104a1fcbca1c192dc5b501";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ignore@3.3.7" = nodeEnv.buildYarnPackage {
            name = "ignore-3.3.7";
            packageName = "ignore";
            version = "3.3.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ignore/-/ignore-3.3.7.tgz";
              sha1 = "612289bfb3c220e186a58118618d5be8c1bab021";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "immutable@3.8.2" = nodeEnv.buildYarnPackage {
            name = "immutable-3.8.2";
            packageName = "immutable";
            version = "3.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/immutable/-/immutable-3.8.2.tgz";
              sha1 = "c2439951455bb39913daf281376f1530e104adf3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "imurmurhash@0.1.4" = nodeEnv.buildYarnPackage {
            name = "imurmurhash-0.1.4";
            packageName = "imurmurhash";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/imurmurhash/-/imurmurhash-0.1.4.tgz";
              sha1 = "9218b9b2b928a238b13dc4fb6b6d576f231453ea";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "in-publish@2.0.0" = nodeEnv.buildYarnPackage {
            name = "in-publish-2.0.0";
            packageName = "in-publish";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/in-publish/-/in-publish-2.0.0.tgz";
              sha1 = "e20ff5e3a2afc2690320b6dc552682a9c7fadf51";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "indent-string@3.2.0" = nodeEnv.buildYarnPackage {
            name = "indent-string-3.2.0";
            packageName = "indent-string";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indent-string/-/indent-string-3.2.0.tgz";
              sha1 = "4a5fd6d27cc332f37e5419a504dbb837105c9289";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "indexes-of@1.0.1" = nodeEnv.buildYarnPackage {
            name = "indexes-of-1.0.1";
            packageName = "indexes-of";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indexes-of/-/indexes-of-1.0.1.tgz";
              sha1 = "f30f716c8e2bd346c7b67d3df3915566a7c05607";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "indexof@0.0.1" = nodeEnv.buildYarnPackage {
            name = "indexof-0.0.1";
            packageName = "indexof";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indexof/-/indexof-0.0.1.tgz";
              sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "inflight@1.0.6" = nodeEnv.buildYarnPackage {
            name = "inflight-1.0.6";
            packageName = "inflight";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz";
              sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "inherits@2.0.3" = nodeEnv.buildYarnPackage {
            name = "inherits-2.0.3";
            packageName = "inherits";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz";
              sha1 = "633c2c83e3da42a502f52466022480f4208261de";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ini@1.3.5" = nodeEnv.buildYarnPackage {
            name = "ini-1.3.5";
            packageName = "ini";
            version = "1.3.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ini/-/ini-1.3.5.tgz";
              sha1 = "eee25f56db1c9ec6085e0c22778083f596abf927";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "inline-style-prefixer@3.0.8" = nodeEnv.buildYarnPackage {
            name = "inline-style-prefixer-3.0.8";
            packageName = "inline-style-prefixer";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inline-style-prefixer/-/inline-style-prefixer-3.0.8.tgz";
              sha1 = "8551b8e5b4d573244e66a34b04f7d32076a2b534";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "inquirer@3.3.0" = nodeEnv.buildYarnPackage {
            name = "inquirer-3.3.0";
            packageName = "inquirer";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inquirer/-/inquirer-3.3.0.tgz";
              sha1 = "9dd2f2ad765dcab1ff0443b491442a20ba227dc9";
            };
            dependencies = [ pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "interpret@1.0.1" = nodeEnv.buildYarnPackage {
            name = "interpret-1.0.1";
            packageName = "interpret";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/interpret/-/interpret-1.0.1.tgz";
              sha1 = "d579fb7f693b858004947af39fa0db49f795602c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "intl-format-cache@2.0.5" = nodeEnv.buildYarnPackage {
            name = "intl-format-cache-2.0.5";
            packageName = "intl-format-cache";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-format-cache/-/intl-format-cache-2.0.5.tgz";
              sha1 = "b484cefcb9353f374f25de389a3ceea1af18d7c9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "intl-messageformat-parser@1.4.0" = nodeEnv.buildYarnPackage {
            name = "intl-messageformat-parser-1.4.0";
            packageName = "intl-messageformat-parser";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-messageformat-parser/-/intl-messageformat-parser-1.4.0.tgz";
              sha1 = "b43d45a97468cadbe44331d74bb1e8dea44fc075";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "intl-messageformat@1.3.0" = nodeEnv.buildYarnPackage {
            name = "intl-messageformat-1.3.0";
            packageName = "intl-messageformat";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-messageformat/-/intl-messageformat-1.3.0.tgz";
              sha1 = "f7d926aded7a3ab19b2dc601efd54e99a4bd4eae";
            };
            dependencies = [ pkgs."intl-messageformat-parser@1.2.0" ];
            dontNpmInstall = true;
            };
  "intl-relativeformat@1.3.0" = nodeEnv.buildYarnPackage {
            name = "intl-relativeformat-1.3.0";
            packageName = "intl-relativeformat";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-relativeformat/-/intl-relativeformat-1.3.0.tgz";
              sha1 = "893dc7076fccd380cf091a2300c380fa57ace45b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "invariant@2.2.3" = nodeEnv.buildYarnPackage {
            name = "invariant-2.2.3";
            packageName = "invariant";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/invariant/-/invariant-2.2.3.tgz";
              sha1 = "1a827dfde7dcbd7c323f0ca826be8fa7c5e9d688";
            };
            dependencies = [ pkgs."loose-envify@1.3.0" ];
            dontNpmInstall = true;
            };
  "invert-kv@1.0.0" = nodeEnv.buildYarnPackage {
            name = "invert-kv-1.0.0";
            packageName = "invert-kv";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-1.0.0.tgz";
              sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ipaddr.js@1.6.0" = nodeEnv.buildYarnPackage {
            name = "ipaddr.js-1.6.0";
            packageName = "ipaddr.js";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ipaddr.js/-/ipaddr.js-1.6.0.tgz";
              sha1 = "e3fa357b773da619f26e95f049d055c72796f86b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "irregular-plurals@1.4.0" = nodeEnv.buildYarnPackage {
            name = "irregular-plurals-1.4.0";
            packageName = "irregular-plurals";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/irregular-plurals/-/irregular-plurals-1.4.0.tgz";
              sha1 = "2ca9b033651111855412f16be5d77c62a458a766";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-absolute-url@2.1.0" = nodeEnv.buildYarnPackage {
            name = "is-absolute-url-2.1.0";
            packageName = "is-absolute-url";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-absolute-url/-/is-absolute-url-2.1.0.tgz";
              sha1 = "50530dfb84fcc9aa7dbe7852e83a37b93b9f2aa6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-arrayish@0.2.1" = nodeEnv.buildYarnPackage {
            name = "is-arrayish-0.2.1";
            packageName = "is-arrayish";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-arrayish/-/is-arrayish-0.2.1.tgz";
              sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-binary-path@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-binary-path-1.0.1";
            packageName = "is-binary-path";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-1.0.1.tgz";
              sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-buffer@1.1.6" = nodeEnv.buildYarnPackage {
            name = "is-buffer-1.1.6";
            packageName = "is-buffer";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.6.tgz";
              sha1 = "efaa2ea9daa0d7ab2ea13a97b2b8ad51fefbe8be";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-builtin-module@1.0.0" = nodeEnv.buildYarnPackage {
            name = "is-builtin-module-1.0.0";
            packageName = "is-builtin-module";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
              sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-callable@1.1.3" = nodeEnv.buildYarnPackage {
            name = "is-callable-1.1.3";
            packageName = "is-callable";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-callable/-/is-callable-1.1.3.tgz";
              sha1 = "86eb75392805ddc33af71c92a0eedf74ee7604b2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-date-object@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-date-object-1.0.1";
            packageName = "is-date-object";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.1.tgz";
              sha1 = "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-directory@0.3.1" = nodeEnv.buildYarnPackage {
            name = "is-directory-0.3.1";
            packageName = "is-directory";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-directory/-/is-directory-0.3.1.tgz";
              sha1 = "61339b6f2475fc772fd9c9d83f5c8575dc154ae1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-dom@1.0.9" = nodeEnv.buildYarnPackage {
            name = "is-dom-1.0.9";
            packageName = "is-dom";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-dom/-/is-dom-1.0.9.tgz";
              sha1 = "483832d52972073de12b9fe3f60320870da8370d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-dotfile@1.0.2" = nodeEnv.buildYarnPackage {
            name = "is-dotfile-1.0.2";
            packageName = "is-dotfile";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-dotfile/-/is-dotfile-1.0.2.tgz";
              sha1 = "2c132383f39199f8edc268ca01b9b007d205cc4d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-equal-shallow@0.1.3" = nodeEnv.buildYarnPackage {
            name = "is-equal-shallow-0.1.3";
            packageName = "is-equal-shallow";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
              sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-extendable@0.1.1" = nodeEnv.buildYarnPackage {
            name = "is-extendable-0.1.1";
            packageName = "is-extendable";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-0.1.1.tgz";
              sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-extglob@1.0.0" = nodeEnv.buildYarnPackage {
            name = "is-extglob-1.0.0";
            packageName = "is-extglob";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-1.0.0.tgz";
              sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-finite@1.0.2" = nodeEnv.buildYarnPackage {
            name = "is-finite-1.0.2";
            packageName = "is-finite";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-finite/-/is-finite-1.0.2.tgz";
              sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-fullwidth-code-point@2.0.0" = nodeEnv.buildYarnPackage {
            name = "is-fullwidth-code-point-2.0.0";
            packageName = "is-fullwidth-code-point";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz";
              sha1 = "a3b30a5c4f199183167aaab93beefae3ddfb654f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-function@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-function-1.0.1";
            packageName = "is-function";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-function/-/is-function-1.0.1.tgz";
              sha1 = "12cfb98b65b57dd3d193a3121f5f6e2f437602b5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-generator@1.0.3" = nodeEnv.buildYarnPackage {
            name = "is-generator-1.0.3";
            packageName = "is-generator";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-generator/-/is-generator-1.0.3.tgz";
              sha1 = "c14c21057ed36e328db80347966c693f886389f3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-glob@2.0.1" = nodeEnv.buildYarnPackage {
            name = "is-glob-2.0.1";
            packageName = "is-glob";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-glob/-/is-glob-2.0.1.tgz";
              sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-hex-prefixed@1.0.0" = nodeEnv.buildYarnPackage {
            name = "is-hex-prefixed-1.0.0";
            packageName = "is-hex-prefixed";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-hex-prefixed/-/is-hex-prefixed-1.0.0.tgz";
              sha1 = "7d8d37e6ad77e5d127148913c573e082d777f554";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-my-json-valid@2.15.0" = nodeEnv.buildYarnPackage {
            name = "is-my-json-valid-2.15.0";
            packageName = "is-my-json-valid";
            version = "2.15.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-my-json-valid/-/is-my-json-valid-2.15.0.tgz";
              sha1 = "936edda3ca3c211fd98f3b2d3e08da43f7b2915b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-natural-number@4.0.1" = nodeEnv.buildYarnPackage {
            name = "is-natural-number-4.0.1";
            packageName = "is-natural-number";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-natural-number/-/is-natural-number-4.0.1.tgz";
              sha1 = "ab9d76e1db4ced51e35de0c72ebecf09f734cde8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-number@2.1.0" = nodeEnv.buildYarnPackage {
            name = "is-number-2.1.0";
            packageName = "is-number";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-number/-/is-number-2.1.0.tgz";
              sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
            };
            dependencies = [ pkgs."kind-of@3.1.0" ];
            dontNpmInstall = true;
            };
  "is-obj@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-obj-1.0.1";
            packageName = "is-obj";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-obj/-/is-obj-1.0.1.tgz";
              sha1 = "3e4729ac1f5fde025cd7d83a896dab9f4f67db0f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-object@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-object-1.0.1";
            packageName = "is-object";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-object/-/is-object-1.0.1.tgz";
              sha1 = "8952688c5ec2ffd6b03ecc85e769e02903083470";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-path-cwd@1.0.0" = nodeEnv.buildYarnPackage {
            name = "is-path-cwd-1.0.0";
            packageName = "is-path-cwd";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-path-cwd/-/is-path-cwd-1.0.0.tgz";
              sha1 = "d225ec23132e89edd38fda767472e62e65f1106d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-path-in-cwd@1.0.0" = nodeEnv.buildYarnPackage {
            name = "is-path-in-cwd-1.0.0";
            packageName = "is-path-in-cwd";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-path-in-cwd/-/is-path-in-cwd-1.0.0.tgz";
              sha1 = "6477582b8214d602346094567003be8a9eac04dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-path-inside@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-path-inside-1.0.1";
            packageName = "is-path-inside";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-path-inside/-/is-path-inside-1.0.1.tgz";
              sha1 = "8ef5b7de50437a3fdca6b4e865ef7aa55cb48036";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-plain-obj@1.1.0" = nodeEnv.buildYarnPackage {
            name = "is-plain-obj-1.1.0";
            packageName = "is-plain-obj";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
              sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-plain-object@2.0.4" = nodeEnv.buildYarnPackage {
            name = "is-plain-object-2.0.4";
            packageName = "is-plain-object";
            version = "2.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-plain-object/-/is-plain-object-2.0.4.tgz";
              sha1 = "2c163b3fafb1b606d9d17928f05c2a1c38e07677";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-posix-bracket@0.1.1" = nodeEnv.buildYarnPackage {
            name = "is-posix-bracket-0.1.1";
            packageName = "is-posix-bracket";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
              sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-primitive@2.0.0" = nodeEnv.buildYarnPackage {
            name = "is-primitive-2.0.0";
            packageName = "is-primitive";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-primitive/-/is-primitive-2.0.0.tgz";
              sha1 = "207bab91638499c07b2adf240a41a87210034575";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-promise@2.1.0" = nodeEnv.buildYarnPackage {
            name = "is-promise-2.1.0";
            packageName = "is-promise";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-promise/-/is-promise-2.1.0.tgz";
              sha1 = "79a2a9ece7f096e80f36d2b2f3bc16c1ff4bf3fa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-property@1.0.2" = nodeEnv.buildYarnPackage {
            name = "is-property-1.0.2";
            packageName = "is-property";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-property/-/is-property-1.0.2.tgz";
              sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-regex@1.0.4" = nodeEnv.buildYarnPackage {
            name = "is-regex-1.0.4";
            packageName = "is-regex";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-regex/-/is-regex-1.0.4.tgz";
              sha1 = "5517489b547091b0930e095654ced25ee97e9491";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-resolvable@1.1.0" = nodeEnv.buildYarnPackage {
            name = "is-resolvable-1.1.0";
            packageName = "is-resolvable";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-resolvable/-/is-resolvable-1.1.0.tgz";
              sha1 = "fb18f87ce1feb925169c9a407c19318a3206ed88";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-retry-allowed@1.1.0" = nodeEnv.buildYarnPackage {
            name = "is-retry-allowed-1.1.0";
            packageName = "is-retry-allowed";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-retry-allowed/-/is-retry-allowed-1.1.0.tgz";
              sha1 = "11a060568b67339444033d0125a61a20d564fb34";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-stream@1.1.0" = nodeEnv.buildYarnPackage {
            name = "is-stream-1.1.0";
            packageName = "is-stream";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-stream/-/is-stream-1.1.0.tgz";
              sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-svg@2.1.0" = nodeEnv.buildYarnPackage {
            name = "is-svg-2.1.0";
            packageName = "is-svg";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-svg/-/is-svg-2.1.0.tgz";
              sha1 = "cf61090da0d9efbcab8722deba6f032208dbb0e9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-symbol@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-symbol-1.0.1";
            packageName = "is-symbol";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.1.tgz";
              sha1 = "3cc59f00025194b6ab2e38dbae6689256b660572";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-typedarray@1.0.0" = nodeEnv.buildYarnPackage {
            name = "is-typedarray-1.0.0";
            packageName = "is-typedarray";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-typedarray/-/is-typedarray-1.0.0.tgz";
              sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-utf8@0.2.1" = nodeEnv.buildYarnPackage {
            name = "is-utf8-0.2.1";
            packageName = "is-utf8";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-utf8/-/is-utf8-0.2.1.tgz";
              sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-windows@1.0.2" = nodeEnv.buildYarnPackage {
            name = "is-windows-1.0.2";
            packageName = "is-windows";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-windows/-/is-windows-1.0.2.tgz";
              sha1 = "d1850eb9791ecd18e6182ce12a30f396634bb19d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isarray@1.0.0" = nodeEnv.buildYarnPackage {
            name = "isarray-1.0.0";
            packageName = "isarray";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz";
              sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isbinaryfile@3.0.2" = nodeEnv.buildYarnPackage {
            name = "isbinaryfile-3.0.2";
            packageName = "isbinaryfile";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isbinaryfile/-/isbinaryfile-3.0.2.tgz";
              sha1 = "4a3e974ec0cba9004d3fc6cde7209ea69368a621";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isexe@2.0.0" = nodeEnv.buildYarnPackage {
            name = "isexe-2.0.0";
            packageName = "isexe";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz";
              sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isobject@3.0.1" = nodeEnv.buildYarnPackage {
            name = "isobject-3.0.1";
            packageName = "isobject";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isobject/-/isobject-3.0.1.tgz";
              sha1 = "4e431e92b11a9731636aa1f9c8d1ccbcfdab78df";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isomorphic-fetch@2.2.1" = nodeEnv.buildYarnPackage {
            name = "isomorphic-fetch-2.2.1";
            packageName = "isomorphic-fetch";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isomorphic-fetch/-/isomorphic-fetch-2.2.1.tgz";
              sha1 = "611ae1acf14f5e81f729507472819fe9733558a9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isstream@0.1.2" = nodeEnv.buildYarnPackage {
            name = "isstream-0.1.2";
            packageName = "isstream";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isstream/-/isstream-0.1.2.tgz";
              sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isurl@1.0.0" = nodeEnv.buildYarnPackage {
            name = "isurl-1.0.0";
            packageName = "isurl";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isurl/-/isurl-1.0.0.tgz";
              sha1 = "b27f4f49f3cdaa3ea44a0a5b7f3462e6edc39d67";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "js-base64@2.4.3" = nodeEnv.buildYarnPackage {
            name = "js-base64-2.4.3";
            packageName = "js-base64";
            version = "2.4.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-base64/-/js-base64-2.4.3.tgz";
              sha1 = "2e545ec2b0f2957f41356510205214e98fad6582";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "js-sha3@0.3.1" = nodeEnv.buildYarnPackage {
            name = "js-sha3-0.3.1";
            packageName = "js-sha3";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-sha3/-/js-sha3-0.3.1.tgz";
              sha1 = "86122802142f0828502a0d1dee1d95e253bb0243";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "js-tokens@3.0.2" = nodeEnv.buildYarnPackage {
            name = "js-tokens-3.0.2";
            packageName = "js-tokens";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-3.0.2.tgz";
              sha1 = "9866df395102130e38f7f996bceb65443209c25b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "js-yaml@3.10.0" = nodeEnv.buildYarnPackage {
            name = "js-yaml-3.10.0";
            packageName = "js-yaml";
            version = "3.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.10.0.tgz";
              sha1 = "2e78441646bd4682e963f22b6e92823c309c62dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "jsbn@0.1.1" = nodeEnv.buildYarnPackage {
            name = "jsbn-0.1.1";
            packageName = "jsbn";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsbn/-/jsbn-0.1.1.tgz";
              sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "jsesc@2.5.1" = nodeEnv.buildYarnPackage {
            name = "jsesc-2.5.1";
            packageName = "jsesc";
            version = "2.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsesc/-/jsesc-2.5.1.tgz";
              sha1 = "e421a2a8e20d6b0819df28908f782526b96dd1fe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "json-loader@0.5.7" = nodeEnv.buildYarnPackage {
            name = "json-loader-0.5.7";
            packageName = "json-loader";
            version = "0.5.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-loader/-/json-loader-0.5.7.tgz";
              sha1 = "dca14a70235ff82f0ac9a3abeb60d337a365185d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "json-schema-traverse@0.3.1" = nodeEnv.buildYarnPackage {
            name = "json-schema-traverse-0.3.1";
            packageName = "json-schema-traverse";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
              sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "json-schema@0.2.3" = nodeEnv.buildYarnPackage {
            name = "json-schema-0.2.3";
            packageName = "json-schema";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-schema/-/json-schema-0.2.3.tgz";
              sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "json-stable-stringify-without-jsonify@1.0.1" = nodeEnv.buildYarnPackage {
            name = "json-stable-stringify-without-jsonify-1.0.1";
            packageName = "json-stable-stringify-without-jsonify";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz";
              sha1 = "9db7b59496ad3f3cfef30a75142d2d930ad72651";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "json-stringify-safe@5.0.1" = nodeEnv.buildYarnPackage {
            name = "json-stringify-safe-5.0.1";
            packageName = "json-stringify-safe";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
              sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "json5@0.5.1" = nodeEnv.buildYarnPackage {
            name = "json5-0.5.1";
            packageName = "json5";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/json5/-/json5-0.5.1.tgz";
              sha1 = "1eade7acc012034ad84e2396767ead9fa5495821";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "jsonfile@4.0.0" = nodeEnv.buildYarnPackage {
            name = "jsonfile-4.0.0";
            packageName = "jsonfile";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-4.0.0.tgz";
              sha1 = "8771aae0799b64076b76640fca058f9c10e33ecb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "jsonpointer@4.0.1" = nodeEnv.buildYarnPackage {
            name = "jsonpointer-4.0.1";
            packageName = "jsonpointer";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonpointer/-/jsonpointer-4.0.1.tgz";
              sha1 = "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "jsprim@1.4.1" = nodeEnv.buildYarnPackage {
            name = "jsprim-1.4.1";
            packageName = "jsprim";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsprim/-/jsprim-1.4.1.tgz";
              sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
            };
            dependencies = [ pkgs."extsprintf@1.3.0" ];
            dontNpmInstall = true;
            };
  "jsx-ast-utils@2.0.1" = nodeEnv.buildYarnPackage {
            name = "jsx-ast-utils-2.0.1";
            packageName = "jsx-ast-utils";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsx-ast-utils/-/jsx-ast-utils-2.0.1.tgz";
              sha1 = "e801b1b39985e20fffc87b40e3748080e2dcac7f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "keccakjs@0.2.1" = nodeEnv.buildYarnPackage {
            name = "keccakjs-0.2.1";
            packageName = "keccakjs";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/keccakjs/-/keccakjs-0.2.1.tgz";
              sha1 = "1d633af907ef305bbf9f2fa616d56c44561dfa4d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "keycode@2.1.9" = nodeEnv.buildYarnPackage {
            name = "keycode-2.1.9";
            packageName = "keycode";
            version = "2.1.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/keycode/-/keycode-2.1.9.tgz";
              sha1 = "964a23c54e4889405b4861a5c9f0480d45141dfa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "kind-of@3.2.2" = nodeEnv.buildYarnPackage {
            name = "kind-of-3.2.2";
            packageName = "kind-of";
            version = "3.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/kind-of/-/kind-of-3.2.2.tgz";
              sha1 = "31ea21a734bab9bbb0f32466d893aea51e4a3c64";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "klaw@1.3.1" = nodeEnv.buildYarnPackage {
            name = "klaw-1.3.1";
            packageName = "klaw";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/klaw/-/klaw-1.3.1.tgz";
              sha1 = "4088433b46b3b1ba259d78785d8e96f73ba02439";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lazy-cache@1.0.4" = nodeEnv.buildYarnPackage {
            name = "lazy-cache-1.0.4";
            packageName = "lazy-cache";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lazy-cache/-/lazy-cache-1.0.4.tgz";
              sha1 = "a1d78fc3a50474cb80845d3b3b6e1da49a446e8e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lazystream@1.0.0" = nodeEnv.buildYarnPackage {
            name = "lazystream-1.0.0";
            packageName = "lazystream";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lazystream/-/lazystream-1.0.0.tgz";
              sha1 = "f6995fe0f820392f61396be89462407bb77168e4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lcid@1.0.0" = nodeEnv.buildYarnPackage {
            name = "lcid-1.0.0";
            packageName = "lcid";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lcid/-/lcid-1.0.0.tgz";
              sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "levn@0.3.0" = nodeEnv.buildYarnPackage {
            name = "levn-0.3.0";
            packageName = "levn";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/levn/-/levn-0.3.0.tgz";
              sha1 = "3b09924edf9f083c0490fdd4c0bc4421e04764ee";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "load-json-file@2.0.0" = nodeEnv.buildYarnPackage {
            name = "load-json-file-2.0.0";
            packageName = "load-json-file";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/load-json-file/-/load-json-file-2.0.0.tgz";
              sha1 = "7947e42149af80d696cbf797bcaabcfe1fe29ca8";
            };
            dependencies = [ pkgs."pify@2.3.0" ];
            dontNpmInstall = true;
            };
  "loader-runner@2.3.0" = nodeEnv.buildYarnPackage {
            name = "loader-runner-2.3.0";
            packageName = "loader-runner";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loader-runner/-/loader-runner-2.3.0.tgz";
              sha1 = "f482aea82d543e07921700d5a46ef26fdac6b8a2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "loader-utils@1.1.0" = nodeEnv.buildYarnPackage {
            name = "loader-utils-1.1.0";
            packageName = "loader-utils";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loader-utils/-/loader-utils-1.1.0.tgz";
              sha1 = "c98aef488bcceda2ffb5e2de646d6a754429f5cd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "locate-path@2.0.0" = nodeEnv.buildYarnPackage {
            name = "locate-path-2.0.0";
            packageName = "locate-path";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/locate-path/-/locate-path-2.0.0.tgz";
              sha1 = "2b568b265eec944c6d9c0de9c3dbbbca0354cd8e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash-es@4.17.5" = nodeEnv.buildYarnPackage {
            name = "lodash-es-4.17.5";
            packageName = "lodash-es";
            version = "4.17.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash-es/-/lodash-es-4.17.5.tgz";
              sha1 = "9fc6e737b1c4d151d8f9cae2247305d552ce748f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._basecopy@3.0.1" = nodeEnv.buildYarnPackage {
            name = "lodash._basecopy-3.0.1";
            packageName = "lodash._basecopy";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
              sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._basetostring@3.0.1" = nodeEnv.buildYarnPackage {
            name = "lodash._basetostring-3.0.1";
            packageName = "lodash._basetostring";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basetostring/-/lodash._basetostring-3.0.1.tgz";
              sha1 = "d1861d877f824a52f669832dcaf3ee15566a07d5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._basevalues@3.0.0" = nodeEnv.buildYarnPackage {
            name = "lodash._basevalues-3.0.0";
            packageName = "lodash._basevalues";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._basevalues/-/lodash._basevalues-3.0.0.tgz";
              sha1 = "5b775762802bde3d3297503e26300820fdf661b7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._getnative@3.9.1" = nodeEnv.buildYarnPackage {
            name = "lodash._getnative-3.9.1";
            packageName = "lodash._getnative";
            version = "3.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._getnative/-/lodash._getnative-3.9.1.tgz";
              sha1 = "570bc7dede46d61cdcde687d65d3eecbaa3aaff5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._isiterateecall@3.0.9" = nodeEnv.buildYarnPackage {
            name = "lodash._isiterateecall-3.0.9";
            packageName = "lodash._isiterateecall";
            version = "3.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
              sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._reescape@3.0.0" = nodeEnv.buildYarnPackage {
            name = "lodash._reescape-3.0.0";
            packageName = "lodash._reescape";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._reescape/-/lodash._reescape-3.0.0.tgz";
              sha1 = "2b1d6f5dfe07c8a355753e5f27fac7f1cde1616a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._reevaluate@3.0.0" = nodeEnv.buildYarnPackage {
            name = "lodash._reevaluate-3.0.0";
            packageName = "lodash._reevaluate";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._reevaluate/-/lodash._reevaluate-3.0.0.tgz";
              sha1 = "58bc74c40664953ae0b124d806996daca431e2ed";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._reinterpolate@3.0.0" = nodeEnv.buildYarnPackage {
            name = "lodash._reinterpolate-3.0.0";
            packageName = "lodash._reinterpolate";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._reinterpolate/-/lodash._reinterpolate-3.0.0.tgz";
              sha1 = "0ccf2d89166af03b3663c796538b75ac6e114d9d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash._root@3.0.1" = nodeEnv.buildYarnPackage {
            name = "lodash._root-3.0.1";
            packageName = "lodash._root";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash._root/-/lodash._root-3.0.1.tgz";
              sha1 = "fba1c4524c19ee9a5f8136b4609f017cf4ded692";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.assign@4.2.0" = nodeEnv.buildYarnPackage {
            name = "lodash.assign-4.2.0";
            packageName = "lodash.assign";
            version = "4.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.assign/-/lodash.assign-4.2.0.tgz";
              sha1 = "0d99f3ccd7a6d261d19bdaeb9245005d285808e7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.camelcase@4.3.0" = nodeEnv.buildYarnPackage {
            name = "lodash.camelcase-4.3.0";
            packageName = "lodash.camelcase";
            version = "4.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.camelcase/-/lodash.camelcase-4.3.0.tgz";
              sha1 = "b28aa6288a2b9fc651035c7711f65ab6190331a6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.clonedeep@4.5.0" = nodeEnv.buildYarnPackage {
            name = "lodash.clonedeep-4.5.0";
            packageName = "lodash.clonedeep";
            version = "4.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz";
              sha1 = "e23f3f9c4f8fbdde872529c1071857a086e5ccef";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.debounce@4.0.8" = nodeEnv.buildYarnPackage {
            name = "lodash.debounce-4.0.8";
            packageName = "lodash.debounce";
            version = "4.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.debounce/-/lodash.debounce-4.0.8.tgz";
              sha1 = "82d79bff30a67c4005ffd5e2515300ad9ca4d7af";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.escape@3.2.0" = nodeEnv.buildYarnPackage {
            name = "lodash.escape-3.2.0";
            packageName = "lodash.escape";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.escape/-/lodash.escape-3.2.0.tgz";
              sha1 = "995ee0dc18c1b48cc92effae71a10aab5b487698";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.flattendeep@4.4.0" = nodeEnv.buildYarnPackage {
            name = "lodash.flattendeep-4.4.0";
            packageName = "lodash.flattendeep";
            version = "4.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.flattendeep/-/lodash.flattendeep-4.4.0.tgz";
              sha1 = "fb030917f86a3134e5bc9bec0d69e0013ddfedb2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.get@4.4.2" = nodeEnv.buildYarnPackage {
            name = "lodash.get-4.4.2";
            packageName = "lodash.get";
            version = "4.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.get/-/lodash.get-4.4.2.tgz";
              sha1 = "2d177f652fa31e939b4438d5341499dfa3825e99";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.indexof@4.0.5" = nodeEnv.buildYarnPackage {
            name = "lodash.indexof-4.0.5";
            packageName = "lodash.indexof";
            version = "4.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.indexof/-/lodash.indexof-4.0.5.tgz";
              sha1 = "53714adc2cddd6ed87638f893aa9b6c24e31ef3c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.isarguments@3.1.0" = nodeEnv.buildYarnPackage {
            name = "lodash.isarguments-3.1.0";
            packageName = "lodash.isarguments";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isarguments/-/lodash.isarguments-3.1.0.tgz";
              sha1 = "2f573d85c6a24289ff00663b491c1d338ff3458a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.isarray@3.0.4" = nodeEnv.buildYarnPackage {
            name = "lodash.isarray-3.0.4";
            packageName = "lodash.isarray";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isarray/-/lodash.isarray-3.0.4.tgz";
              sha1 = "79e4eb88c36a8122af86f844aa9bcd851b5fbb55";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.isplainobject@4.0.6" = nodeEnv.buildYarnPackage {
            name = "lodash.isplainobject-4.0.6";
            packageName = "lodash.isplainobject";
            version = "4.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.isplainobject/-/lodash.isplainobject-4.0.6.tgz";
              sha1 = "7c526a52d89b45c45cc690b88163be0497f550cb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.keys@3.1.2" = nodeEnv.buildYarnPackage {
            name = "lodash.keys-3.1.2";
            packageName = "lodash.keys";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.keys/-/lodash.keys-3.1.2.tgz";
              sha1 = "4dbc0472b156be50a0b286855d1bd0b0c656098a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.memoize@4.1.2" = nodeEnv.buildYarnPackage {
            name = "lodash.memoize-4.1.2";
            packageName = "lodash.memoize";
            version = "4.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.memoize/-/lodash.memoize-4.1.2.tgz";
              sha1 = "bcc6c49a42a2840ed997f323eada5ecd182e0bfe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.mergewith@4.6.1" = nodeEnv.buildYarnPackage {
            name = "lodash.mergewith-4.6.1";
            packageName = "lodash.mergewith";
            version = "4.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.mergewith/-/lodash.mergewith-4.6.1.tgz";
              sha1 = "639057e726c3afbdb3e7d42741caa8d6e4335927";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.pick@4.4.0" = nodeEnv.buildYarnPackage {
            name = "lodash.pick-4.4.0";
            packageName = "lodash.pick";
            version = "4.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.pick/-/lodash.pick-4.4.0.tgz";
              sha1 = "52f05610fff9ded422611441ed1fc123a03001b3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.restparam@3.6.1" = nodeEnv.buildYarnPackage {
            name = "lodash.restparam-3.6.1";
            packageName = "lodash.restparam";
            version = "3.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.restparam/-/lodash.restparam-3.6.1.tgz";
              sha1 = "936a4e309ef330a7645ed4145986c85ae5b20805";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.some@4.6.0" = nodeEnv.buildYarnPackage {
            name = "lodash.some-4.6.0";
            packageName = "lodash.some";
            version = "4.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.some/-/lodash.some-4.6.0.tgz";
              sha1 = "1bb9f314ef6b8baded13b549169b2a945eb68e4d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.sortby@4.7.0" = nodeEnv.buildYarnPackage {
            name = "lodash.sortby-4.7.0";
            packageName = "lodash.sortby";
            version = "4.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.sortby/-/lodash.sortby-4.7.0.tgz";
              sha1 = "edd14c824e2cc9c1e0b0a1b42bb5210516a42438";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.tail@4.1.1" = nodeEnv.buildYarnPackage {
            name = "lodash.tail-4.1.1";
            packageName = "lodash.tail";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.tail/-/lodash.tail-4.1.1.tgz";
              sha1 = "d2333a36d9e7717c8ad2f7cacafec7c32b444664";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.template@3.6.2" = nodeEnv.buildYarnPackage {
            name = "lodash.template-3.6.2";
            packageName = "lodash.template";
            version = "3.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.template/-/lodash.template-3.6.2.tgz";
              sha1 = "f8cdecc6169a255be9098ae8b0c53d378931d14f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.templatesettings@3.1.1" = nodeEnv.buildYarnPackage {
            name = "lodash.templatesettings-3.1.1";
            packageName = "lodash.templatesettings";
            version = "3.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.templatesettings/-/lodash.templatesettings-3.1.1.tgz";
              sha1 = "fb307844753b66b9f1afa54e262c745307dba8e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash.uniq@4.5.0" = nodeEnv.buildYarnPackage {
            name = "lodash.uniq-4.5.0";
            packageName = "lodash.uniq";
            version = "4.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash.uniq/-/lodash.uniq-4.5.0.tgz";
              sha1 = "d0225373aeb652adc1bc82e4945339a842754773";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash@4.17.4" = nodeEnv.buildYarnPackage {
            name = "lodash-4.17.4";
            packageName = "lodash";
            version = "4.17.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.4.tgz";
              sha1 = "78203a4d1c328ae1d86dca6460e369b57f4055ae";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "log-symbols@2.2.0" = nodeEnv.buildYarnPackage {
            name = "log-symbols-2.2.0";
            packageName = "log-symbols";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/log-symbols/-/log-symbols-2.2.0.tgz";
              sha1 = "5740e1c5d6f0dfda4ad9323b5332107ef6b4c40a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "longest@1.0.1" = nodeEnv.buildYarnPackage {
            name = "longest-1.0.1";
            packageName = "longest";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/longest/-/longest-1.0.1.tgz";
              sha1 = "30a0b2da38f73770e8294a0d22e6625ed77d0097";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "loose-envify@1.3.1" = nodeEnv.buildYarnPackage {
            name = "loose-envify-1.3.1";
            packageName = "loose-envify";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loose-envify/-/loose-envify-1.3.1.tgz";
              sha1 = "d1a8ad33fa9ce0e713d65fdd0ac8b748d478c848";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "loud-rejection@1.6.0" = nodeEnv.buildYarnPackage {
            name = "loud-rejection-1.6.0";
            packageName = "loud-rejection";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loud-rejection/-/loud-rejection-1.6.0.tgz";
              sha1 = "5b46f80147edee578870f086d04821cf998e551f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lower-case@1.1.3" = nodeEnv.buildYarnPackage {
            name = "lower-case-1.1.3";
            packageName = "lower-case";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lower-case/-/lower-case-1.1.3.tgz";
              sha1 = "c92393d976793eee5ba4edb583cf8eae35bd9bfb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lowercase-keys@1.0.0" = nodeEnv.buildYarnPackage {
            name = "lowercase-keys-1.0.0";
            packageName = "lowercase-keys";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lowercase-keys/-/lowercase-keys-1.0.0.tgz";
              sha1 = "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lru-cache@4.1.1" = nodeEnv.buildYarnPackage {
            name = "lru-cache-4.1.1";
            packageName = "lru-cache";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.1.1.tgz";
              sha1 = "622e32e82488b49279114a4f9ecf45e7cd6bba55";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "macaddress@0.2.8" = nodeEnv.buildYarnPackage {
            name = "macaddress-0.2.8";
            packageName = "macaddress";
            version = "0.2.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/macaddress/-/macaddress-0.2.8.tgz";
              sha1 = "5904dc537c39ec6dbefeae902327135fa8511f12";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "make-dir@1.2.0" = nodeEnv.buildYarnPackage {
            name = "make-dir-1.2.0";
            packageName = "make-dir";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/make-dir/-/make-dir-1.2.0.tgz";
              sha1 = "6d6a49eead4aae296c53bbf3a1a008bd6c89469b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "make-error@1.3.4" = nodeEnv.buildYarnPackage {
            name = "make-error-1.3.4";
            packageName = "make-error";
            version = "1.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/make-error/-/make-error-1.3.4.tgz";
              sha1 = "19978ed575f9e9545d2ff8c13e33b5d18a67d535";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "map-obj@1.0.1" = nodeEnv.buildYarnPackage {
            name = "map-obj-1.0.1";
            packageName = "map-obj";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/map-obj/-/map-obj-1.0.1.tgz";
              sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "map-stream@0.1.0" = nodeEnv.buildYarnPackage {
            name = "map-stream-0.1.0";
            packageName = "map-stream";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/map-stream/-/map-stream-0.1.0.tgz";
              sha1 = "e56aa94c4c8055a16404a0674b78f215f7c8e194";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "markdown-loader@2.0.2" = nodeEnv.buildYarnPackage {
            name = "markdown-loader-2.0.2";
            packageName = "markdown-loader";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/markdown-loader/-/markdown-loader-2.0.2.tgz";
              sha1 = "1cdcf11307658cd611046d7db34c2fe80542af7c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "marked@0.3.16" = nodeEnv.buildYarnPackage {
            name = "marked-0.3.16";
            packageName = "marked";
            version = "0.3.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/marked/-/marked-0.3.16.tgz";
              sha1 = "2f188b7dfcfa6540fe9940adaf0f3b791c9a5cba";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "math-expression-evaluator@1.2.14" = nodeEnv.buildYarnPackage {
            name = "math-expression-evaluator-1.2.14";
            packageName = "math-expression-evaluator";
            version = "1.2.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/math-expression-evaluator/-/math-expression-evaluator-1.2.14.tgz";
              sha1 = "39511771ed9602405fba9affff17eb4d2a3843ab";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mdurl@1.0.1" = nodeEnv.buildYarnPackage {
            name = "mdurl-1.0.1";
            packageName = "mdurl";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mdurl/-/mdurl-1.0.1.tgz";
              sha1 = "fe85b2ec75a59037f2adfec100fd6c601761152e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "media-typer@0.3.0" = nodeEnv.buildYarnPackage {
            name = "media-typer-0.3.0";
            packageName = "media-typer";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/media-typer/-/media-typer-0.3.0.tgz";
              sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mem@1.1.0" = nodeEnv.buildYarnPackage {
            name = "mem-1.1.0";
            packageName = "mem";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mem/-/mem-1.1.0.tgz";
              sha1 = "5edd52b485ca1d900fe64895505399a0dfa45f76";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "memory-fs@0.4.1" = nodeEnv.buildYarnPackage {
            name = "memory-fs-0.4.1";
            packageName = "memory-fs";
            version = "0.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.4.1.tgz";
              sha1 = "3a9a20b8462523e447cfbc7e8bb80ed667bfc552";
            };
            dependencies = [ pkgs."errno@0.1.4" pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "meow@3.7.0" = nodeEnv.buildYarnPackage {
            name = "meow-3.7.0";
            packageName = "meow";
            version = "3.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/meow/-/meow-3.7.0.tgz";
              sha1 = "72cb668b425228290abbfa856892587308a801fb";
            };
            dependencies = [ pkgs."read-pkg-up@1.0.1" ];
            dontNpmInstall = true;
            };
  "merge-descriptors@1.0.1" = nodeEnv.buildYarnPackage {
            name = "merge-descriptors-1.0.1";
            packageName = "merge-descriptors";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
              sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "methods@1.1.2" = nodeEnv.buildYarnPackage {
            name = "methods-1.1.2";
            packageName = "methods";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/methods/-/methods-1.1.2.tgz";
              sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "micromatch@2.3.11" = nodeEnv.buildYarnPackage {
            name = "micromatch-2.3.11";
            packageName = "micromatch";
            version = "2.3.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/micromatch/-/micromatch-2.3.11.tgz";
              sha1 = "86677c97d1720b363431d04d0d15293bd38c1565";
            };
            dependencies = [ pkgs."kind-of@3.1.0" pkgs."normalize-path@2.0.1" ];
            dontNpmInstall = true;
            };
  "miller-rabin@4.0.0" = nodeEnv.buildYarnPackage {
            name = "miller-rabin-4.0.0";
            packageName = "miller-rabin";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/miller-rabin/-/miller-rabin-4.0.0.tgz";
              sha1 = "4a62fb1d42933c05583982f4c716f6fb9e6c6d3d";
            };
            dependencies = [ pkgs."bn.js@4.11.6" ];
            dontNpmInstall = true;
            };
  "mime-db@1.33.0" = nodeEnv.buildYarnPackage {
            name = "mime-db-1.33.0";
            packageName = "mime-db";
            version = "1.33.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.33.0.tgz";
              sha1 = "a3492050a5cb9b63450541e39d9788d2272783db";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mime-types@2.1.18" = nodeEnv.buildYarnPackage {
            name = "mime-types-2.1.18";
            packageName = "mime-types";
            version = "2.1.18";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.18.tgz";
              sha1 = "6f323f60a83d11146f831ff11fd66e2fe5503bb8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mime@1.6.0" = nodeEnv.buildYarnPackage {
            name = "mime-1.6.0";
            packageName = "mime";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime/-/mime-1.6.0.tgz";
              sha1 = "32cd9e5c64553bd58d19a568af452acff04981b1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mimic-fn@1.2.0" = nodeEnv.buildYarnPackage {
            name = "mimic-fn-1.2.0";
            packageName = "mimic-fn";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-1.2.0.tgz";
              sha1 = "820c86a39334640e99516928bd03fca88057d022";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mimic-response@1.0.0" = nodeEnv.buildYarnPackage {
            name = "mimic-response-1.0.0";
            packageName = "mimic-response";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mimic-response/-/mimic-response-1.0.0.tgz";
              sha1 = "df3d3652a73fded6b9b0b24146e6fd052353458e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "min-document@2.19.0" = nodeEnv.buildYarnPackage {
            name = "min-document-2.19.0";
            packageName = "min-document";
            version = "2.19.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/min-document/-/min-document-2.19.0.tgz";
              sha1 = "7bd282e3f5842ed295bb748cdd9f1ffa2c824685";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "minimalistic-assert@1.0.0" = nodeEnv.buildYarnPackage {
            name = "minimalistic-assert-1.0.0";
            packageName = "minimalistic-assert";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimalistic-assert/-/minimalistic-assert-1.0.0.tgz";
              sha1 = "702be2dda6b37f4836bcb3f5db56641b64a1d3d3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "minimalistic-crypto-utils@1.0.1" = nodeEnv.buildYarnPackage {
            name = "minimalistic-crypto-utils-1.0.1";
            packageName = "minimalistic-crypto-utils";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimalistic-crypto-utils/-/minimalistic-crypto-utils-1.0.1.tgz";
              sha1 = "f6c00c1c0b082246e5c4d99dfb8c7c083b2b582a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "minimatch@3.0.4" = nodeEnv.buildYarnPackage {
            name = "minimatch-3.0.4";
            packageName = "minimatch";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.4.tgz";
              sha1 = "5166e286457f03306064be5497e8dbb0c3d32083";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "minimist@1.2.0" = nodeEnv.buildYarnPackage {
            name = "minimist-1.2.0";
            packageName = "minimist";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimist/-/minimist-1.2.0.tgz";
              sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mississippi@2.0.0" = nodeEnv.buildYarnPackage {
            name = "mississippi-2.0.0";
            packageName = "mississippi";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mississippi/-/mississippi-2.0.0.tgz";
              sha1 = "3442a508fafc28500486feea99409676e4ee5a6f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mixin-object@2.0.1" = nodeEnv.buildYarnPackage {
            name = "mixin-object-2.0.1";
            packageName = "mixin-object";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mixin-object/-/mixin-object-2.0.1.tgz";
              sha1 = "4fb949441dab182540f1fe035ba60e1947a5e57e";
            };
            dependencies = [ pkgs."for-in@0.1.8" ];
            dontNpmInstall = true;
            };
  "mkdirp-promise@5.0.1" = nodeEnv.buildYarnPackage {
            name = "mkdirp-promise-5.0.1";
            packageName = "mkdirp-promise";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkdirp-promise/-/mkdirp-promise-5.0.1.tgz";
              sha1 = "e9b8f68e552c68a9c1713b84883f7a1dd039b8a1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mkdirp@0.5.1" = nodeEnv.buildYarnPackage {
            name = "mkdirp-0.5.1";
            packageName = "mkdirp";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.1.tgz";
              sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
            };
            dependencies = [ pkgs."minimist@0.0.8" ];
            dontNpmInstall = true;
            };
  "mkpath@0.1.0" = nodeEnv.buildYarnPackage {
            name = "mkpath-0.1.0";
            packageName = "mkpath";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkpath/-/mkpath-0.1.0.tgz";
              sha1 = "7554a6f8d871834cc97b5462b122c4c124d6de91";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mksnapshot@0.3.1" = nodeEnv.buildYarnPackage {
            name = "mksnapshot-0.3.1";
            packageName = "mksnapshot";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mksnapshot/-/mksnapshot-0.3.1.tgz";
              sha1 = "2501c05657436d742ce958a4ff92c77e40dd37e6";
            };
            dependencies = [ pkgs."fs-extra@0.26.7" pkgs."request@2.79.0" ];
            dontNpmInstall = true;
            };
  "mobx-react-devtools@4.2.15" = nodeEnv.buildYarnPackage {
            name = "mobx-react-devtools-4.2.15";
            packageName = "mobx-react-devtools";
            version = "4.2.15";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react-devtools/-/mobx-react-devtools-4.2.15.tgz";
              sha1 = "881c038fb83db4dffd1e72bbaf5374d26b2fdebb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mobx-react-form@1.32.2" = nodeEnv.buildYarnPackage {
            name = "mobx-react-form-1.32.2";
            packageName = "mobx-react-form";
            version = "1.32.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react-form/-/mobx-react-form-1.32.2.tgz";
              sha1 = "5610dd0e4fab006acf2daf1becbedecad182a5a0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mobx-react-router@3.1.2" = nodeEnv.buildYarnPackage {
            name = "mobx-react-router-3.1.2";
            packageName = "mobx-react-router";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react-router/-/mobx-react-router-3.1.2.tgz";
              sha1 = "83328b108393017148d86fea17f611de2d2aacdc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mobx-react@4.1.5" = nodeEnv.buildYarnPackage {
            name = "mobx-react-4.1.5";
            packageName = "mobx-react";
            version = "4.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx-react/-/mobx-react-4.1.5.tgz";
              sha1 = "75cf4dbffc91b9cb23d56c060dfd8d2ca52450dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mobx@3.1.7" = nodeEnv.buildYarnPackage {
            name = "mobx-3.1.7";
            packageName = "mobx";
            version = "3.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mobx/-/mobx-3.1.7.tgz";
              sha1 = "910c01f6e2f7e88ec47baabefee5fe667d37ac00";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mock-fs@4.4.2" = nodeEnv.buildYarnPackage {
            name = "mock-fs-4.4.2";
            packageName = "mock-fs";
            version = "4.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mock-fs/-/mock-fs-4.4.2.tgz";
              sha1 = "09dec5313f97095a450be6aa2ad8ab6738d63d6b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "moment@2.18.1" = nodeEnv.buildYarnPackage {
            name = "moment-2.18.1";
            packageName = "moment";
            version = "2.18.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/moment/-/moment-2.18.1.tgz";
              sha1 = "c36193dd3ce1c2eed2adb7c802dbbc77a81b1c0f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mout@0.11.1" = nodeEnv.buildYarnPackage {
            name = "mout-0.11.1";
            packageName = "mout";
            version = "0.11.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mout/-/mout-0.11.1.tgz";
              sha1 = "ba3611df5f0e5b1ffbfd01166b8f02d1f5fa2b99";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "move-concurrently@1.0.1" = nodeEnv.buildYarnPackage {
            name = "move-concurrently-1.0.1";
            packageName = "move-concurrently";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/move-concurrently/-/move-concurrently-1.0.1.tgz";
              sha1 = "be2c005fda32e0b29af1f05d7c4b33214c701f92";
            };
            dependencies = [ pkgs."rimraf@2.5.4" ];
            dontNpmInstall = true;
            };
  "ms@2.0.0" = nodeEnv.buildYarnPackage {
            name = "ms-2.0.0";
            packageName = "ms";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz";
              sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "multipipe@0.1.2" = nodeEnv.buildYarnPackage {
            name = "multipipe-0.1.2";
            packageName = "multipipe";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/multipipe/-/multipipe-0.1.2.tgz";
              sha1 = "2a8f2ddf70eed564dff2d57f1e1a137d9f05078b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mute-stream@0.0.7" = nodeEnv.buildYarnPackage {
            name = "mute-stream-0.0.7";
            packageName = "mute-stream";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.7.tgz";
              sha1 = "3075ce93bc21b8fab43e1bc4da7e8115ed1e7bab";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mz@2.7.0" = nodeEnv.buildYarnPackage {
            name = "mz-2.7.0";
            packageName = "mz";
            version = "2.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mz/-/mz-2.7.0.tgz";
              sha1 = "95008057a56cafadc2bc63dde7f9ff6955948e32";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "nan@2.8.0" = nodeEnv.buildYarnPackage {
            name = "nan-2.8.0";
            packageName = "nan";
            version = "2.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nan/-/nan-2.8.0.tgz";
              sha1 = "ed715f3fe9de02b57a5e6252d90a96675e1f085a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "nano-json-stream-parser@0.1.2" = nodeEnv.buildYarnPackage {
            name = "nano-json-stream-parser-0.1.2";
            packageName = "nano-json-stream-parser";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nano-json-stream-parser/-/nano-json-stream-parser-0.1.2.tgz";
              sha1 = "0cc8f6d0e2b622b479c40d499c46d64b755c6f5f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "natural-compare@1.4.0" = nodeEnv.buildYarnPackage {
            name = "natural-compare-1.4.0";
            packageName = "natural-compare";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/natural-compare/-/natural-compare-1.4.0.tgz";
              sha1 = "4abebfeed7541f2c27acfb29bdbbd15c8d5ba4f7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ncname@1.0.0" = nodeEnv.buildYarnPackage {
            name = "ncname-1.0.0";
            packageName = "ncname";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ncname/-/ncname-1.0.0.tgz";
              sha1 = "5b57ad18b1ca092864ef62b0b1ed8194f383b71c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "negotiator@0.6.1" = nodeEnv.buildYarnPackage {
            name = "negotiator-0.6.1";
            packageName = "negotiator";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.1.tgz";
              sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "no-case@2.3.1" = nodeEnv.buildYarnPackage {
            name = "no-case-2.3.1";
            packageName = "no-case";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/no-case/-/no-case-2.3.1.tgz";
              sha1 = "7aeba1c73a52184265554b7dc03baf720df80081";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "node-dir@0.1.17" = nodeEnv.buildYarnPackage {
            name = "node-dir-0.1.17";
            packageName = "node-dir";
            version = "0.1.17";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-dir/-/node-dir-0.1.17.tgz";
              sha1 = "5f5665d93351335caabef8f1c554516cf5f1e4e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "node-fetch@1.6.3" = nodeEnv.buildYarnPackage {
            name = "node-fetch-1.6.3";
            packageName = "node-fetch";
            version = "1.6.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-fetch/-/node-fetch-1.6.3.tgz";
              sha1 = "dc234edd6489982d58e8f0db4f695029abcd8c04";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "node-gyp@3.6.2" = nodeEnv.buildYarnPackage {
            name = "node-gyp-3.6.2";
            packageName = "node-gyp";
            version = "3.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-gyp/-/node-gyp-3.6.2.tgz";
              sha1 = "9bfbe54562286284838e750eac05295853fa1c60";
            };
            dependencies = [ pkgs."fstream@1.0.10" pkgs."rimraf@2.5.4" pkgs."semver@5.3.0" ];
            dontNpmInstall = true;
            };
  "node-libs-browser@2.1.0" = nodeEnv.buildYarnPackage {
            name = "node-libs-browser-2.1.0";
            packageName = "node-libs-browser";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-libs-browser/-/node-libs-browser-2.1.0.tgz";
              sha1 = "5f94263d404f6e44767d726901fff05478d600df";
            };
            dependencies = [ pkgs."buffer@4.9.1" pkgs."crypto-browserify@3.11.0" ];
            dontNpmInstall = true;
            };
  "node-pre-gyp@0.6.32" = nodeEnv.buildYarnPackage {
            name = "node-pre-gyp-0.6.32";
            packageName = "node-pre-gyp";
            version = "0.6.32";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-pre-gyp/-/node-pre-gyp-0.6.32.tgz";
              sha1 = "fc452b376e7319b3d255f5f34853ef6fd8fe1fd5";
            };
            dependencies = [ pkgs."npmlog@4.0.2" pkgs."rc@1.1.6" pkgs."request@2.79.0" pkgs."rimraf@2.5.4" pkgs."semver@5.3.0" ];
            dontNpmInstall = true;
            };
  "node-sass@4.7.2" = nodeEnv.buildYarnPackage {
            name = "node-sass-4.7.2";
            packageName = "node-sass";
            version = "4.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/node-sass/-/node-sass-4.7.2.tgz";
              sha1 = "9366778ba1469eb01438a9e8592f4262bcb6794e";
            };
            dependencies = [ pkgs."chalk@1.1.3" pkgs."cross-spawn@3.0.1" pkgs."request@2.79.0" ];
            dontNpmInstall = true;
            };
  "nodeify@1.0.1" = nodeEnv.buildYarnPackage {
            name = "nodeify-1.0.1";
            packageName = "nodeify";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nodeify/-/nodeify-1.0.1.tgz";
              sha1 = "64ab69a7bdbaf03ce107b4f0335c87c0b9e91b1d";
            };
            dependencies = [ pkgs."is-promise@1.0.1" pkgs."promise@1.3.0" ];
            dontNpmInstall = true;
            };
  "nopt@3.0.6" = nodeEnv.buildYarnPackage {
            name = "nopt-3.0.6";
            packageName = "nopt";
            version = "3.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nopt/-/nopt-3.0.6.tgz";
              sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "normalize-package-data@2.4.0" = nodeEnv.buildYarnPackage {
            name = "normalize-package-data-2.4.0";
            packageName = "normalize-package-data";
            version = "2.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-package-data/-/normalize-package-data-2.4.0.tgz";
              sha1 = "12f95a307d58352075a04907b84ac8be98ac012f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "normalize-path@2.1.1" = nodeEnv.buildYarnPackage {
            name = "normalize-path-2.1.1";
            packageName = "normalize-path";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.1.1.tgz";
              sha1 = "1ab28b556e198363a8c1a6f7e6fa20137fe6aed9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "normalize-range@0.1.2" = nodeEnv.buildYarnPackage {
            name = "normalize-range-0.1.2";
            packageName = "normalize-range";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-range/-/normalize-range-0.1.2.tgz";
              sha1 = "2d10c06bdfd312ea9777695a4d28439456b75942";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "normalize-url@1.9.0" = nodeEnv.buildYarnPackage {
            name = "normalize-url-1.9.0";
            packageName = "normalize-url";
            version = "1.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-url/-/normalize-url-1.9.0.tgz";
              sha1 = "c2bb50035edee62cd81edb2d45da68dc25e3423e";
            };
            dependencies = [ pkgs."query-string@4.2.3" ];
            dontNpmInstall = true;
            };
  "npm-install-package@2.1.0" = nodeEnv.buildYarnPackage {
            name = "npm-install-package-2.1.0";
            packageName = "npm-install-package";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npm-install-package/-/npm-install-package-2.1.0.tgz";
              sha1 = "d7efe3cfcd7ab00614b896ea53119dc9ab259125";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "npm-run-path@2.0.2" = nodeEnv.buildYarnPackage {
            name = "npm-run-path-2.0.2";
            packageName = "npm-run-path";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npm-run-path/-/npm-run-path-2.0.2.tgz";
              sha1 = "35a9232dfa35d7067b4cb2ddf2357b1871536c5f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "npmlog@4.1.2" = nodeEnv.buildYarnPackage {
            name = "npmlog-4.1.2";
            packageName = "npmlog";
            version = "4.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.1.2.tgz";
              sha1 = "08a7f2a8bf734604779a9efa4ad5cc717abb954b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "nth-check@1.0.1" = nodeEnv.buildYarnPackage {
            name = "nth-check-1.0.1";
            packageName = "nth-check";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nth-check/-/nth-check-1.0.1.tgz";
              sha1 = "9929acdf628fc2c41098deab82ac580cf149aae4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "nugget@2.0.1" = nodeEnv.buildYarnPackage {
            name = "nugget-2.0.1";
            packageName = "nugget";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nugget/-/nugget-2.0.1.tgz";
              sha1 = "201095a487e1ad36081b3432fa3cada4f8d071b0";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "num2fraction@1.2.2" = nodeEnv.buildYarnPackage {
            name = "num2fraction-1.2.2";
            packageName = "num2fraction";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/num2fraction/-/num2fraction-1.2.2.tgz";
              sha1 = "6f682b6a027a4e9ddfa4564cd2589d1d4e669ede";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "number-is-nan@1.0.1" = nodeEnv.buildYarnPackage {
            name = "number-is-nan-1.0.1";
            packageName = "number-is-nan";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/number-is-nan/-/number-is-nan-1.0.1.tgz";
              sha1 = "097b602b53422a522c1afb8790318336941a011d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "number-to-bn@1.7.0" = nodeEnv.buildYarnPackage {
            name = "number-to-bn-1.7.0";
            packageName = "number-to-bn";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/number-to-bn/-/number-to-bn-1.7.0.tgz";
              sha1 = "bb3623592f7e5f9e0030b1977bd41a0c53fe1ea0";
            };
            dependencies = [ pkgs."bn.js@4.11.6" ];
            dontNpmInstall = true;
            };
  "oauth-sign@0.8.2" = nodeEnv.buildYarnPackage {
            name = "oauth-sign-0.8.2";
            packageName = "oauth-sign";
            version = "0.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.8.2.tgz";
              sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "object-assign@4.1.1" = nodeEnv.buildYarnPackage {
            name = "object-assign-4.1.1";
            packageName = "object-assign";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz";
              sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "object-keys@1.0.11" = nodeEnv.buildYarnPackage {
            name = "object-keys-1.0.11";
            packageName = "object-keys";
            version = "1.0.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-keys/-/object-keys-1.0.11.tgz";
              sha1 = "c54601778ad560f1142ce0e01bcca8b56d13426d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "object.entries@1.0.4" = nodeEnv.buildYarnPackage {
            name = "object.entries-1.0.4";
            packageName = "object.entries";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.entries/-/object.entries-1.0.4.tgz";
              sha1 = "1bf9a4dd2288f5b33f3a993d257661f05d161a5f";
            };
            dependencies = [ pkgs."function-bind@1.1.0" ];
            dontNpmInstall = true;
            };
  "object.getownpropertydescriptors@2.0.3" = nodeEnv.buildYarnPackage {
            name = "object.getownpropertydescriptors-2.0.3";
            packageName = "object.getownpropertydescriptors";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.getownpropertydescriptors/-/object.getownpropertydescriptors-2.0.3.tgz";
              sha1 = "8758c846f5b407adab0f236e0986f14b051caa16";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "object.omit@2.0.1" = nodeEnv.buildYarnPackage {
            name = "object.omit-2.0.1";
            packageName = "object.omit";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.omit/-/object.omit-2.0.1.tgz";
              sha1 = "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa";
            };
            dependencies = [ pkgs."for-own@0.1.4" ];
            dontNpmInstall = true;
            };
  "object.values@1.0.4" = nodeEnv.buildYarnPackage {
            name = "object.values-1.0.4";
            packageName = "object.values";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object.values/-/object.values-1.0.4.tgz";
              sha1 = "e524da09b4f66ff05df457546ec72ac99f13069a";
            };
            dependencies = [ pkgs."function-bind@1.1.0" ];
            dontNpmInstall = true;
            };
  "oboe@2.1.3" = nodeEnv.buildYarnPackage {
            name = "oboe-2.1.3";
            packageName = "oboe";
            version = "2.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/oboe/-/oboe-2.1.3.tgz";
              sha1 = "2b4865dbd46be81225713f4e9bfe4bcf4f680a4f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "on-finished@2.3.0" = nodeEnv.buildYarnPackage {
            name = "on-finished-2.3.0";
            packageName = "on-finished";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/on-finished/-/on-finished-2.3.0.tgz";
              sha1 = "20f1336481b083cd75337992a16971aa2d906947";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "once@1.4.0" = nodeEnv.buildYarnPackage {
            name = "once-1.4.0";
            packageName = "once";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/once/-/once-1.4.0.tgz";
              sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "onetime@2.0.1" = nodeEnv.buildYarnPackage {
            name = "onetime-2.0.1";
            packageName = "onetime";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/onetime/-/onetime-2.0.1.tgz";
              sha1 = "067428230fd67443b2794b22bba528b6867962d4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "optimist@0.6.1" = nodeEnv.buildYarnPackage {
            name = "optimist-0.6.1";
            packageName = "optimist";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/optimist/-/optimist-0.6.1.tgz";
              sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
            };
            dependencies = [ pkgs."minimist@0.0.10" pkgs."wordwrap@0.0.3" ];
            dontNpmInstall = true;
            };
  "optionator@0.8.2" = nodeEnv.buildYarnPackage {
            name = "optionator-0.8.2";
            packageName = "optionator";
            version = "0.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/optionator/-/optionator-0.8.2.tgz";
              sha1 = "364c5e409d3f4d6301d6c0b4c05bba50180aeb64";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "os-browserify@0.3.0" = nodeEnv.buildYarnPackage {
            name = "os-browserify-0.3.0";
            packageName = "os-browserify";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-browserify/-/os-browserify-0.3.0.tgz";
              sha1 = "854373c7f5c2315914fc9bfc6bd8238fdda1ec27";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "os-homedir@1.0.2" = nodeEnv.buildYarnPackage {
            name = "os-homedir-1.0.2";
            packageName = "os-homedir";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz";
              sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "os-locale@2.1.0" = nodeEnv.buildYarnPackage {
            name = "os-locale-2.1.0";
            packageName = "os-locale";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-locale/-/os-locale-2.1.0.tgz";
              sha1 = "42bc2900a6b5b8bd17376c8e882b65afccf24bf2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "os-tmpdir@1.0.2" = nodeEnv.buildYarnPackage {
            name = "os-tmpdir-1.0.2";
            packageName = "os-tmpdir";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
              sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "osenv@0.1.5" = nodeEnv.buildYarnPackage {
            name = "osenv-0.1.5";
            packageName = "osenv";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/osenv/-/osenv-0.1.5.tgz";
              sha1 = "85cdfafaeb28e8677f416e287592b5f3f49ea410";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "p-cancelable@0.3.0" = nodeEnv.buildYarnPackage {
            name = "p-cancelable-0.3.0";
            packageName = "p-cancelable";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-cancelable/-/p-cancelable-0.3.0.tgz";
              sha1 = "b9e123800bcebb7ac13a479be195b507b98d30fa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "p-finally@1.0.0" = nodeEnv.buildYarnPackage {
            name = "p-finally-1.0.0";
            packageName = "p-finally";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-finally/-/p-finally-1.0.0.tgz";
              sha1 = "3fbcfb15b899a44123b34b6dcc18b724336a2cae";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "p-limit@1.2.0" = nodeEnv.buildYarnPackage {
            name = "p-limit-1.2.0";
            packageName = "p-limit";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-limit/-/p-limit-1.2.0.tgz";
              sha1 = "0e92b6bedcb59f022c13d0f1949dc82d15909f1c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "p-locate@2.0.0" = nodeEnv.buildYarnPackage {
            name = "p-locate-2.0.0";
            packageName = "p-locate";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-locate/-/p-locate-2.0.0.tgz";
              sha1 = "20a0103b222a70c8fd39cc2e580680f3dde5ec43";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "p-timeout@1.2.1" = nodeEnv.buildYarnPackage {
            name = "p-timeout-1.2.1";
            packageName = "p-timeout";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-timeout/-/p-timeout-1.2.1.tgz";
              sha1 = "5eb3b353b7fce99f101a1038880bb054ebbea386";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "p-try@1.0.0" = nodeEnv.buildYarnPackage {
            name = "p-try-1.0.0";
            packageName = "p-try";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/p-try/-/p-try-1.0.0.tgz";
              sha1 = "cbc79cdbaf8fd4228e13f621f2b1a237c1b207b3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pad-right@0.2.2" = nodeEnv.buildYarnPackage {
            name = "pad-right-0.2.2";
            packageName = "pad-right";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pad-right/-/pad-right-0.2.2.tgz";
              sha1 = "6fbc924045d244f2a2a244503060d3bfc6009774";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pako@1.0.6" = nodeEnv.buildYarnPackage {
            name = "pako-1.0.6";
            packageName = "pako";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pako/-/pako-1.0.6.tgz";
              sha1 = "0101211baa70c4bca4a0f63f2206e97b7dfaf258";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "parallel-transform@1.1.0" = nodeEnv.buildYarnPackage {
            name = "parallel-transform-1.1.0";
            packageName = "parallel-transform";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parallel-transform/-/parallel-transform-1.1.0.tgz";
              sha1 = "d410f065b05da23081fcd10f28854c29bda33b06";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "param-case@2.1.1" = nodeEnv.buildYarnPackage {
            name = "param-case-2.1.1";
            packageName = "param-case";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/param-case/-/param-case-2.1.1.tgz";
              sha1 = "df94fd8cf6531ecf75e6bef9a0858fbc72be2247";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "parse-asn1@5.0.0" = nodeEnv.buildYarnPackage {
            name = "parse-asn1-5.0.0";
            packageName = "parse-asn1";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-asn1/-/parse-asn1-5.0.0.tgz";
              sha1 = "35060f6d5015d37628c770f4e091a0b5a278bc23";
            };
            dependencies = [ pkgs."create-hash@1.1.2" pkgs."pbkdf2@3.0.9" ];
            dontNpmInstall = true;
            };
  "parse-author@2.0.0" = nodeEnv.buildYarnPackage {
            name = "parse-author-2.0.0";
            packageName = "parse-author";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-author/-/parse-author-2.0.0.tgz";
              sha1 = "d3460bf1ddd0dfaeed42da754242e65fb684a81f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "parse-glob@3.0.4" = nodeEnv.buildYarnPackage {
            name = "parse-glob-3.0.4";
            packageName = "parse-glob";
            version = "3.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-glob/-/parse-glob-3.0.4.tgz";
              sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "parse-headers@2.0.1" = nodeEnv.buildYarnPackage {
            name = "parse-headers-2.0.1";
            packageName = "parse-headers";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-headers/-/parse-headers-2.0.1.tgz";
              sha1 = "6ae83a7aa25a9d9b700acc28698cd1f1ed7e9536";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "parse-json@2.2.0" = nodeEnv.buildYarnPackage {
            name = "parse-json-2.2.0";
            packageName = "parse-json";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parse-json/-/parse-json-2.2.0.tgz";
              sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "parseurl@1.3.2" = nodeEnv.buildYarnPackage {
            name = "parseurl-1.3.2";
            packageName = "parseurl";
            version = "1.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.2.tgz";
              sha1 = "fc289d4ed8993119460c156253262cdc8de65bf3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pascalcase@0.1.1" = nodeEnv.buildYarnPackage {
            name = "pascalcase-0.1.1";
            packageName = "pascalcase";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pascalcase/-/pascalcase-0.1.1.tgz";
              sha1 = "b363e55e8006ca6fe21784d2db22bd15d7917f14";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-browserify@0.0.0" = nodeEnv.buildYarnPackage {
            name = "path-browserify-0.0.0";
            packageName = "path-browserify";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-browserify/-/path-browserify-0.0.0.tgz";
              sha1 = "a0b870729aae214005b7d5032ec2cbbb0fb4451a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-exists@3.0.0" = nodeEnv.buildYarnPackage {
            name = "path-exists-3.0.0";
            packageName = "path-exists";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-exists/-/path-exists-3.0.0.tgz";
              sha1 = "ce0ebeaa5f78cb18925ea7d810d7b59b010fd515";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-is-absolute@1.0.1" = nodeEnv.buildYarnPackage {
            name = "path-is-absolute-1.0.1";
            packageName = "path-is-absolute";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
              sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-is-inside@1.0.2" = nodeEnv.buildYarnPackage {
            name = "path-is-inside-1.0.2";
            packageName = "path-is-inside";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-is-inside/-/path-is-inside-1.0.2.tgz";
              sha1 = "365417dede44430d1c11af61027facf074bdfc53";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-key@2.0.1" = nodeEnv.buildYarnPackage {
            name = "path-key-2.0.1";
            packageName = "path-key";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-key/-/path-key-2.0.1.tgz";
              sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-parse@1.0.5" = nodeEnv.buildYarnPackage {
            name = "path-parse-1.0.5";
            packageName = "path-parse";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.5.tgz";
              sha1 = "3c1adf871ea9cd6c9431b6ea2bd74a0ff055c4c1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-to-regexp@0.1.7" = nodeEnv.buildYarnPackage {
            name = "path-to-regexp-0.1.7";
            packageName = "path-to-regexp";
            version = "0.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
              sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-type@2.0.0" = nodeEnv.buildYarnPackage {
            name = "path-type-2.0.0";
            packageName = "path-type";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-type/-/path-type-2.0.0.tgz";
              sha1 = "f012ccb8415b7096fc2daa1054c3d72389594c73";
            };
            dependencies = [ pkgs."pify@2.3.0" ];
            dontNpmInstall = true;
            };
  "pathval@1.1.0" = nodeEnv.buildYarnPackage {
            name = "pathval-1.1.0";
            packageName = "pathval";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pathval/-/pathval-1.1.0.tgz";
              sha1 = "b942e6d4bde653005ef6b71361def8727d0645e0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pause-stream@0.0.11" = nodeEnv.buildYarnPackage {
            name = "pause-stream-0.0.11";
            packageName = "pause-stream";
            version = "0.0.11";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pause-stream/-/pause-stream-0.0.11.tgz";
              sha1 = "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pbkdf2@3.0.14" = nodeEnv.buildYarnPackage {
            name = "pbkdf2-3.0.14";
            packageName = "pbkdf2";
            version = "3.0.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pbkdf2/-/pbkdf2-3.0.14.tgz";
              sha1 = "a35e13c64799b06ce15320f459c230e68e73bade";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pdf.js-extract@0.0.5" = nodeEnv.buildYarnPackage {
            name = "pdf.js-extract-0.0.5";
            packageName = "pdf.js-extract";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pdf.js-extract/-/pdf.js-extract-0.0.5.tgz";
              sha1 = "d141942ee2e291e8fd851159ec15cf6930aa95ce";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pdfjs-dist-for-node@1.0.893" = nodeEnv.buildYarnPackage {
            name = "pdfjs-dist-for-node-1.0.893";
            packageName = "pdfjs-dist-for-node";
            version = "1.0.893";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pdfjs-dist-for-node/-/pdfjs-dist-for-node-1.0.893.tgz";
              sha1 = "10be171dc212f4aa862528b43258d745399bc3ad";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pend@1.2.0" = nodeEnv.buildYarnPackage {
            name = "pend-1.2.0";
            packageName = "pend";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pend/-/pend-1.2.0.tgz";
              sha1 = "7a57eb550a6783f9115331fcf4663d5c8e007a50";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "performance-now@2.1.0" = nodeEnv.buildYarnPackage {
            name = "performance-now-2.1.0";
            packageName = "performance-now";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/performance-now/-/performance-now-2.1.0.tgz";
              sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pify@3.0.0" = nodeEnv.buildYarnPackage {
            name = "pify-3.0.0";
            packageName = "pify";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pify/-/pify-3.0.0.tgz";
              sha1 = "e5a4acd2c101fdf3d9a4d07f0dbc4db49dd28176";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pinkie-promise@2.0.1" = nodeEnv.buildYarnPackage {
            name = "pinkie-promise-2.0.1";
            packageName = "pinkie-promise";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
              sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pinkie@2.0.4" = nodeEnv.buildYarnPackage {
            name = "pinkie-2.0.4";
            packageName = "pinkie";
            version = "2.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pinkie/-/pinkie-2.0.4.tgz";
              sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pkg-dir@2.0.0" = nodeEnv.buildYarnPackage {
            name = "pkg-dir-2.0.0";
            packageName = "pkg-dir";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pkg-dir/-/pkg-dir-2.0.0.tgz";
              sha1 = "f6d5d1109e19d63edf428e0bd57e12777615334b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pkg-up@2.0.0" = nodeEnv.buildYarnPackage {
            name = "pkg-up-2.0.0";
            packageName = "pkg-up";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pkg-up/-/pkg-up-2.0.0.tgz";
              sha1 = "c819ac728059a461cab1c3889a2be3c49a004d7f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "plist@2.1.0" = nodeEnv.buildYarnPackage {
            name = "plist-2.1.0";
            packageName = "plist";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/plist/-/plist-2.1.0.tgz";
              sha1 = "57ccdb7a0821df21831217a3cad54e3e146a1025";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "plur@2.1.2" = nodeEnv.buildYarnPackage {
            name = "plur-2.1.2";
            packageName = "plur";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/plur/-/plur-2.1.2.tgz";
              sha1 = "7482452c1a0f508e3e344eaec312c91c29dc655a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pluralize@7.0.0" = nodeEnv.buildYarnPackage {
            name = "pluralize-7.0.0";
            packageName = "pluralize";
            version = "7.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pluralize/-/pluralize-7.0.0.tgz";
              sha1 = "298b89df8b93b0221dbf421ad2b1b1ea23fc6777";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-calc@5.3.1" = nodeEnv.buildYarnPackage {
            name = "postcss-calc-5.3.1";
            packageName = "postcss-calc";
            version = "5.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-calc/-/postcss-calc-5.3.1.tgz";
              sha1 = "77bae7ca928ad85716e2fda42f261bf7c1d65b5e";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-colormin@2.2.1" = nodeEnv.buildYarnPackage {
            name = "postcss-colormin-2.2.1";
            packageName = "postcss-colormin";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-colormin/-/postcss-colormin-2.2.1.tgz";
              sha1 = "dc5421b6ae6f779ef6bfd47352b94abe59d0316b";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-convert-values@2.6.0" = nodeEnv.buildYarnPackage {
            name = "postcss-convert-values-2.6.0";
            packageName = "postcss-convert-values";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-convert-values/-/postcss-convert-values-2.6.0.tgz";
              sha1 = "08c6d06130fe58a91a21ff50829e1aad6a3a1acc";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-discard-comments@2.0.4" = nodeEnv.buildYarnPackage {
            name = "postcss-discard-comments-2.0.4";
            packageName = "postcss-discard-comments";
            version = "2.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-comments/-/postcss-discard-comments-2.0.4.tgz";
              sha1 = "befe89fafd5b3dace5ccce51b76b81514be00e3d";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-discard-duplicates@2.0.2" = nodeEnv.buildYarnPackage {
            name = "postcss-discard-duplicates-2.0.2";
            packageName = "postcss-discard-duplicates";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-duplicates/-/postcss-discard-duplicates-2.0.2.tgz";
              sha1 = "02be520e91571ffb10738766a981d5770989bb32";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-discard-empty@2.1.0" = nodeEnv.buildYarnPackage {
            name = "postcss-discard-empty-2.1.0";
            packageName = "postcss-discard-empty";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-empty/-/postcss-discard-empty-2.1.0.tgz";
              sha1 = "d2b4bd9d5ced5ebd8dcade7640c7d7cd7f4f92b5";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-discard-overridden@0.1.1" = nodeEnv.buildYarnPackage {
            name = "postcss-discard-overridden-0.1.1";
            packageName = "postcss-discard-overridden";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-overridden/-/postcss-discard-overridden-0.1.1.tgz";
              sha1 = "8b1eaf554f686fb288cd874c55667b0aa3668d58";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-discard-unused@2.2.3" = nodeEnv.buildYarnPackage {
            name = "postcss-discard-unused-2.2.3";
            packageName = "postcss-discard-unused";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-discard-unused/-/postcss-discard-unused-2.2.3.tgz";
              sha1 = "bce30b2cc591ffc634322b5fb3464b6d934f4433";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-filter-plugins@2.0.2" = nodeEnv.buildYarnPackage {
            name = "postcss-filter-plugins-2.0.2";
            packageName = "postcss-filter-plugins";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-filter-plugins/-/postcss-filter-plugins-2.0.2.tgz";
              sha1 = "6d85862534d735ac420e4a85806e1f5d4286d84c";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-flexbugs-fixes@3.3.0" = nodeEnv.buildYarnPackage {
            name = "postcss-flexbugs-fixes-3.3.0";
            packageName = "postcss-flexbugs-fixes";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-flexbugs-fixes/-/postcss-flexbugs-fixes-3.3.0.tgz";
              sha1 = "e00849b536063749da50a0d410ba5d9ee65e27b8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-load-config@1.2.0" = nodeEnv.buildYarnPackage {
            name = "postcss-load-config-1.2.0";
            packageName = "postcss-load-config";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-load-config/-/postcss-load-config-1.2.0.tgz";
              sha1 = "539e9afc9ddc8620121ebf9d8c3673e0ce50d28a";
            };
            dependencies = [ pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "postcss-load-options@1.2.0" = nodeEnv.buildYarnPackage {
            name = "postcss-load-options-1.2.0";
            packageName = "postcss-load-options";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-load-options/-/postcss-load-options-1.2.0.tgz";
              sha1 = "b098b1559ddac2df04bc0bb375f99a5cfe2b6d8c";
            };
            dependencies = [ pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "postcss-load-plugins@2.3.0" = nodeEnv.buildYarnPackage {
            name = "postcss-load-plugins-2.3.0";
            packageName = "postcss-load-plugins";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-load-plugins/-/postcss-load-plugins-2.3.0.tgz";
              sha1 = "745768116599aca2f009fad426b00175049d8d92";
            };
            dependencies = [ pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "postcss-loader@2.1.0" = nodeEnv.buildYarnPackage {
            name = "postcss-loader-2.1.0";
            packageName = "postcss-loader";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-loader/-/postcss-loader-2.1.0.tgz";
              sha1 = "038c2d6d59753fef4667827fd3ae03f5dc5e6a7a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-merge-idents@2.1.7" = nodeEnv.buildYarnPackage {
            name = "postcss-merge-idents-2.1.7";
            packageName = "postcss-merge-idents";
            version = "2.1.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-merge-idents/-/postcss-merge-idents-2.1.7.tgz";
              sha1 = "4c5530313c08e1d5b3bbf3d2bbc747e278eea270";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-merge-longhand@2.0.1" = nodeEnv.buildYarnPackage {
            name = "postcss-merge-longhand-2.0.1";
            packageName = "postcss-merge-longhand";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-merge-longhand/-/postcss-merge-longhand-2.0.1.tgz";
              sha1 = "ff59b5dec6d586ce2cea183138f55c5876fa9cdc";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-merge-rules@2.1.1" = nodeEnv.buildYarnPackage {
            name = "postcss-merge-rules-2.1.1";
            packageName = "postcss-merge-rules";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-merge-rules/-/postcss-merge-rules-2.1.1.tgz";
              sha1 = "5e5640020ce43cddd343c73bba91c9a358d1fe0f";
            };
            dependencies = [ pkgs."browserslist@1.5.2" pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-message-helpers@2.0.0" = nodeEnv.buildYarnPackage {
            name = "postcss-message-helpers-2.0.0";
            packageName = "postcss-message-helpers";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-message-helpers/-/postcss-message-helpers-2.0.0.tgz";
              sha1 = "a4f2f4fab6e4fe002f0aed000478cdf52f9ba60e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-minify-font-values@1.0.5" = nodeEnv.buildYarnPackage {
            name = "postcss-minify-font-values-1.0.5";
            packageName = "postcss-minify-font-values";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-font-values/-/postcss-minify-font-values-1.0.5.tgz";
              sha1 = "4b58edb56641eba7c8474ab3526cafd7bbdecb69";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-minify-gradients@1.0.5" = nodeEnv.buildYarnPackage {
            name = "postcss-minify-gradients-1.0.5";
            packageName = "postcss-minify-gradients";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-gradients/-/postcss-minify-gradients-1.0.5.tgz";
              sha1 = "5dbda11373703f83cfb4a3ea3881d8d75ff5e6e1";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-minify-params@1.2.2" = nodeEnv.buildYarnPackage {
            name = "postcss-minify-params-1.2.2";
            packageName = "postcss-minify-params";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-params/-/postcss-minify-params-1.2.2.tgz";
              sha1 = "ad2ce071373b943b3d930a3fa59a358c28d6f1f3";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-minify-selectors@2.1.1" = nodeEnv.buildYarnPackage {
            name = "postcss-minify-selectors-2.1.1";
            packageName = "postcss-minify-selectors";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-minify-selectors/-/postcss-minify-selectors-2.1.1.tgz";
              sha1 = "b2c6a98c0072cf91b932d1a496508114311735bf";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-modules-extract-imports@1.2.0" = nodeEnv.buildYarnPackage {
            name = "postcss-modules-extract-imports-1.2.0";
            packageName = "postcss-modules-extract-imports";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.2.0.tgz";
              sha1 = "66140ecece38ef06bf0d3e355d69bf59d141ea85";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-modules-local-by-default@1.2.0" = nodeEnv.buildYarnPackage {
            name = "postcss-modules-local-by-default-1.2.0";
            packageName = "postcss-modules-local-by-default";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-local-by-default/-/postcss-modules-local-by-default-1.2.0.tgz";
              sha1 = "f7d80c398c5a393fa7964466bd19500a7d61c069";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-modules-scope@1.1.0" = nodeEnv.buildYarnPackage {
            name = "postcss-modules-scope-1.1.0";
            packageName = "postcss-modules-scope";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-scope/-/postcss-modules-scope-1.1.0.tgz";
              sha1 = "d6ea64994c79f97b62a72b426fbe6056a194bb90";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-modules-values@1.3.0" = nodeEnv.buildYarnPackage {
            name = "postcss-modules-values-1.3.0";
            packageName = "postcss-modules-values";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-modules-values/-/postcss-modules-values-1.3.0.tgz";
              sha1 = "ecffa9d7e192518389f42ad0e83f72aec456ea20";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-normalize-charset@1.1.1" = nodeEnv.buildYarnPackage {
            name = "postcss-normalize-charset-1.1.1";
            packageName = "postcss-normalize-charset";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-normalize-charset/-/postcss-normalize-charset-1.1.1.tgz";
              sha1 = "ef9ee71212d7fe759c78ed162f61ed62b5cb93f1";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-normalize-url@3.0.8" = nodeEnv.buildYarnPackage {
            name = "postcss-normalize-url-3.0.8";
            packageName = "postcss-normalize-url";
            version = "3.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-normalize-url/-/postcss-normalize-url-3.0.8.tgz";
              sha1 = "108f74b3f2fcdaf891a2ffa3ea4592279fc78222";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-ordered-values@2.2.2" = nodeEnv.buildYarnPackage {
            name = "postcss-ordered-values-2.2.2";
            packageName = "postcss-ordered-values";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-ordered-values/-/postcss-ordered-values-2.2.2.tgz";
              sha1 = "be8b511741fab2dac8e614a2302e9d10267b0771";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-reduce-idents@2.4.0" = nodeEnv.buildYarnPackage {
            name = "postcss-reduce-idents-2.4.0";
            packageName = "postcss-reduce-idents";
            version = "2.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-reduce-idents/-/postcss-reduce-idents-2.4.0.tgz";
              sha1 = "c2c6d20cc958284f6abfbe63f7609bf409059ad3";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-reduce-initial@1.0.1" = nodeEnv.buildYarnPackage {
            name = "postcss-reduce-initial-1.0.1";
            packageName = "postcss-reduce-initial";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-reduce-initial/-/postcss-reduce-initial-1.0.1.tgz";
              sha1 = "68f80695f045d08263a879ad240df8dd64f644ea";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-reduce-transforms@1.0.4" = nodeEnv.buildYarnPackage {
            name = "postcss-reduce-transforms-1.0.4";
            packageName = "postcss-reduce-transforms";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-reduce-transforms/-/postcss-reduce-transforms-1.0.4.tgz";
              sha1 = "ff76f4d8212437b31c298a42d2e1444025771ae1";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-selector-parser@2.2.2" = nodeEnv.buildYarnPackage {
            name = "postcss-selector-parser-2.2.2";
            packageName = "postcss-selector-parser";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-selector-parser/-/postcss-selector-parser-2.2.2.tgz";
              sha1 = "3d70f5adda130da51c7c0c2fc023f56b1374fe08";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-svgo@2.1.6" = nodeEnv.buildYarnPackage {
            name = "postcss-svgo-2.1.6";
            packageName = "postcss-svgo";
            version = "2.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-svgo/-/postcss-svgo-2.1.6.tgz";
              sha1 = "b6df18aa613b666e133f08adb5219c2684ac108d";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-unique-selectors@2.0.2" = nodeEnv.buildYarnPackage {
            name = "postcss-unique-selectors-2.0.2";
            packageName = "postcss-unique-selectors";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-unique-selectors/-/postcss-unique-selectors-2.0.2.tgz";
              sha1 = "981d57d29ddcb33e7b1dfe1fd43b8649f933ca1d";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss-value-parser@3.3.0" = nodeEnv.buildYarnPackage {
            name = "postcss-value-parser-3.3.0";
            packageName = "postcss-value-parser";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-value-parser/-/postcss-value-parser-3.3.0.tgz";
              sha1 = "87f38f9f18f774a4ab4c8a232f5c5ce8872a9d15";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postcss-zindex@2.2.0" = nodeEnv.buildYarnPackage {
            name = "postcss-zindex-2.2.0";
            packageName = "postcss-zindex";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss-zindex/-/postcss-zindex-2.2.0.tgz";
              sha1 = "d2109ddc055b91af67fc4cb3b025946639d2af22";
            };
            dependencies = [ pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "postcss@6.0.19" = nodeEnv.buildYarnPackage {
            name = "postcss-6.0.19";
            packageName = "postcss";
            version = "6.0.19";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss/-/postcss-6.0.19.tgz";
              sha1 = "76a78386f670b9d9494a655bf23ac012effd1555";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "postinstall-build@5.0.1" = nodeEnv.buildYarnPackage {
            name = "postinstall-build-5.0.1";
            packageName = "postinstall-build";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postinstall-build/-/postinstall-build-5.0.1.tgz";
              sha1 = "b917a9079b26178d9a24af5a5cd8cb4a991d11b9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "prelude-ls@1.1.2" = nodeEnv.buildYarnPackage {
            name = "prelude-ls-1.1.2";
            packageName = "prelude-ls";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.1.2.tgz";
              sha1 = "21932a549f5e52ffd9a827f570e04be62a97da54";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "prepend-http@1.0.4" = nodeEnv.buildYarnPackage {
            name = "prepend-http-1.0.4";
            packageName = "prepend-http";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prepend-http/-/prepend-http-1.0.4.tgz";
              sha1 = "d4f4562b0ce3696e41ac52d0e002e57a635dc6dc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "preserve@0.2.0" = nodeEnv.buildYarnPackage {
            name = "preserve-0.2.0";
            packageName = "preserve";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/preserve/-/preserve-0.2.0.tgz";
              sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pretty-bytes@1.0.4" = nodeEnv.buildYarnPackage {
            name = "pretty-bytes-1.0.4";
            packageName = "pretty-bytes";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pretty-bytes/-/pretty-bytes-1.0.4.tgz";
              sha1 = "0a22e8210609ad35542f8c8d5d2159aff0751c84";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pretty-error@2.1.1" = nodeEnv.buildYarnPackage {
            name = "pretty-error-2.1.1";
            packageName = "pretty-error";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pretty-error/-/pretty-error-2.1.1.tgz";
              sha1 = "5f4f87c8f91e5ae3f3ba87ab4cf5e03b1a17f1a3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "private@0.1.8" = nodeEnv.buildYarnPackage {
            name = "private-0.1.8";
            packageName = "private";
            version = "0.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/private/-/private-0.1.8.tgz";
              sha1 = "2381edb3689f7a53d653190060fcf822d2f368ff";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "process-nextick-args@2.0.0" = nodeEnv.buildYarnPackage {
            name = "process-nextick-args-2.0.0";
            packageName = "process-nextick-args";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-2.0.0.tgz";
              sha1 = "a37d732f4271b4ab1ad070d35508e8290788ffaa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "process@0.11.10" = nodeEnv.buildYarnPackage {
            name = "process-0.11.10";
            packageName = "process";
            version = "0.11.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/process/-/process-0.11.10.tgz";
              sha1 = "7332300e840161bda3e69a1d1d91a7d4bc16f182";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "progress-stream@1.2.0" = nodeEnv.buildYarnPackage {
            name = "progress-stream-1.2.0";
            packageName = "progress-stream";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/progress-stream/-/progress-stream-1.2.0.tgz";
              sha1 = "2cd3cfea33ba3a89c9c121ec3347abe9ab125f77";
            };
            dependencies = [ pkgs."through2@0.2.3" ];
            dontNpmInstall = true;
            };
  "progress@2.0.0" = nodeEnv.buildYarnPackage {
            name = "progress-2.0.0";
            packageName = "progress";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/progress/-/progress-2.0.0.tgz";
              sha1 = "8a1be366bf8fc23db2bd23f10c6fe920b4389d1f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "promise-inflight@1.0.1" = nodeEnv.buildYarnPackage {
            name = "promise-inflight-1.0.1";
            packageName = "promise-inflight";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/promise-inflight/-/promise-inflight-1.0.1.tgz";
              sha1 = "98472870bf228132fcbdd868129bad12c3c029e3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "promise.prototype.finally@3.1.0" = nodeEnv.buildYarnPackage {
            name = "promise.prototype.finally-3.1.0";
            packageName = "promise.prototype.finally";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/promise.prototype.finally/-/promise.prototype.finally-3.1.0.tgz";
              sha1 = "66f161b1643636e50e7cf201dc1b84a857f3864e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "promise@7.1.1" = nodeEnv.buildYarnPackage {
            name = "promise-7.1.1";
            packageName = "promise";
            version = "7.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/promise/-/promise-7.1.1.tgz";
              sha1 = "489654c692616b8aa55b0724fa809bb7db49c5bf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "prop-types@15.6.0" = nodeEnv.buildYarnPackage {
            name = "prop-types-15.6.0";
            packageName = "prop-types";
            version = "15.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prop-types/-/prop-types-15.6.0.tgz";
              sha1 = "ceaf083022fc46b4a35f69e13ef75aed0d639856";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "proxy-addr@2.0.3" = nodeEnv.buildYarnPackage {
            name = "proxy-addr-2.0.3";
            packageName = "proxy-addr";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/proxy-addr/-/proxy-addr-2.0.3.tgz";
              sha1 = "355f262505a621646b3130a728eb647e22055341";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "prr@1.0.1" = nodeEnv.buildYarnPackage {
            name = "prr-1.0.1";
            packageName = "prr";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prr/-/prr-1.0.1.tgz";
              sha1 = "d3fc114ba06995a45ec6893f484ceb1d78f5f476";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pruner@0.0.7" = nodeEnv.buildYarnPackage {
            name = "pruner-0.0.7";
            packageName = "pruner";
            version = "0.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pruner/-/pruner-0.0.7.tgz";
              sha1 = "345fbcb3e80701163a1d7adf56bac229a5a1e4c1";
            };
            dependencies = [ pkgs."fs-extra@4.0.3" ];
            dontNpmInstall = true;
            };
  "ps-tree@1.1.0" = nodeEnv.buildYarnPackage {
            name = "ps-tree-1.1.0";
            packageName = "ps-tree";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ps-tree/-/ps-tree-1.1.0.tgz";
              sha1 = "b421b24140d6203f1ed3c76996b4427b08e8c014";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pseudomap@1.0.2" = nodeEnv.buildYarnPackage {
            name = "pseudomap-1.0.2";
            packageName = "pseudomap";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pseudomap/-/pseudomap-1.0.2.tgz";
              sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "public-encrypt@4.0.0" = nodeEnv.buildYarnPackage {
            name = "public-encrypt-4.0.0";
            packageName = "public-encrypt";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/public-encrypt/-/public-encrypt-4.0.0.tgz";
              sha1 = "39f699f3a46560dd5ebacbca693caf7c65c18cc6";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."create-hash@1.1.2" pkgs."randombytes@2.0.3" ];
            dontNpmInstall = true;
            };
  "pump@2.0.1" = nodeEnv.buildYarnPackage {
            name = "pump-2.0.1";
            packageName = "pump";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pump/-/pump-2.0.1.tgz";
              sha1 = "12399add6e4cf7526d973cbc8b5ce2e2908b3909";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pumpify@1.4.0" = nodeEnv.buildYarnPackage {
            name = "pumpify-1.4.0";
            packageName = "pumpify";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pumpify/-/pumpify-1.4.0.tgz";
              sha1 = "80b7c5df7e24153d03f0e7ac8a05a5d068bd07fb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "punycode@1.4.1" = nodeEnv.buildYarnPackage {
            name = "punycode-1.4.1";
            packageName = "punycode";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/punycode/-/punycode-1.4.1.tgz";
              sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "q@1.5.1" = nodeEnv.buildYarnPackage {
            name = "q-1.5.1";
            packageName = "q";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/q/-/q-1.5.1.tgz";
              sha1 = "7e32f75b41381291d04611f1bf14109ac00651d7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "qr.js@0.0.0" = nodeEnv.buildYarnPackage {
            name = "qr.js-0.0.0";
            packageName = "qr.js";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qr.js/-/qr.js-0.0.0.tgz";
              sha1 = "cace86386f59a0db8050fa90d9b6b0e88a1e364f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "qrcode.react@0.6.1" = nodeEnv.buildYarnPackage {
            name = "qrcode.react-0.6.1";
            packageName = "qrcode.react";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qrcode.react/-/qrcode.react-0.6.1.tgz";
              sha1 = "e718192d17cdf87cb1f156a34cea16dd67575932";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "qs@6.5.1" = nodeEnv.buildYarnPackage {
            name = "qs-6.5.1";
            packageName = "qs";
            version = "6.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-6.5.1.tgz";
              sha1 = "349cdf6eef89ec45c12d7d5eb3fc0c870343a6d8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "query-string@5.1.0" = nodeEnv.buildYarnPackage {
            name = "query-string-5.1.0";
            packageName = "query-string";
            version = "5.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/query-string/-/query-string-5.1.0.tgz";
              sha1 = "9583b15fd1307f899e973ed418886426a9976469";
            };
            dependencies = [ pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "querystring-es3@0.2.1" = nodeEnv.buildYarnPackage {
            name = "querystring-es3-0.2.1";
            packageName = "querystring-es3";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/querystring-es3/-/querystring-es3-0.2.1.tgz";
              sha1 = "9ec61f79049875707d69414596fd907a4d711e73";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "querystring@0.2.0" = nodeEnv.buildYarnPackage {
            name = "querystring-0.2.0";
            packageName = "querystring";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/querystring/-/querystring-0.2.0.tgz";
              sha1 = "b209849203bb25df820da756e747005878521620";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "radium@0.19.6" = nodeEnv.buildYarnPackage {
            name = "radium-0.19.6";
            packageName = "radium";
            version = "0.19.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/radium/-/radium-0.19.6.tgz";
              sha1 = "b86721d08dbd303b061a4ae2ebb06cc6e335ae72";
            };
            dependencies = [ pkgs."inline-style-prefixer@2.0.5" ];
            dontNpmInstall = true;
            };
  "raf@3.3.0" = nodeEnv.buildYarnPackage {
            name = "raf-3.3.0";
            packageName = "raf";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/raf/-/raf-3.3.0.tgz";
              sha1 = "93845eeffc773f8129039f677f80a36044eee2c3";
            };
            dependencies = [ pkgs."performance-now@0.2.0" ];
            dontNpmInstall = true;
            };
  "randomatic@1.1.6" = nodeEnv.buildYarnPackage {
            name = "randomatic-1.1.6";
            packageName = "randomatic";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randomatic/-/randomatic-1.1.6.tgz";
              sha1 = "110dcabff397e9dcff7c0789ccc0a49adf1ec5bb";
            };
            dependencies = [ pkgs."kind-of@3.1.0" ];
            dontNpmInstall = true;
            };
  "randombytes@2.0.6" = nodeEnv.buildYarnPackage {
            name = "randombytes-2.0.6";
            packageName = "randombytes";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randombytes/-/randombytes-2.0.6.tgz";
              sha1 = "d302c522948588848a8d300c932b44c24231da80";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "randomfill@1.0.4" = nodeEnv.buildYarnPackage {
            name = "randomfill-1.0.4";
            packageName = "randomfill";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randomfill/-/randomfill-1.0.4.tgz";
              sha1 = "c92196fc86ab42be983f1bf31778224931d61458";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "randomhex@0.1.5" = nodeEnv.buildYarnPackage {
            name = "randomhex-0.1.5";
            packageName = "randomhex";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randomhex/-/randomhex-0.1.5.tgz";
              sha1 = "baceef982329091400f2a2912c6cd02f1094f585";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "range-parser@1.2.0" = nodeEnv.buildYarnPackage {
            name = "range-parser-1.2.0";
            packageName = "range-parser";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/range-parser/-/range-parser-1.2.0.tgz";
              sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "raw-body@2.3.2" = nodeEnv.buildYarnPackage {
            name = "raw-body-2.3.2";
            packageName = "raw-body";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/raw-body/-/raw-body-2.3.2.tgz";
              sha1 = "bcd60c77d3eb93cde0050295c3f379389bc88f89";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "raw-loader@0.5.1" = nodeEnv.buildYarnPackage {
            name = "raw-loader-0.5.1";
            packageName = "raw-loader";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/raw-loader/-/raw-loader-0.5.1.tgz";
              sha1 = "0c3d0beaed8a01c966d9787bf778281252a979aa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rc@1.2.5" = nodeEnv.buildYarnPackage {
            name = "rc-1.2.5";
            packageName = "rc";
            version = "1.2.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rc/-/rc-1.2.5.tgz";
              sha1 = "275cd687f6e3b36cc756baa26dfee80a790301fd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rcedit@1.0.0" = nodeEnv.buildYarnPackage {
            name = "rcedit-1.0.0";
            packageName = "rcedit";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rcedit/-/rcedit-1.0.0.tgz";
              sha1 = "43309ecbc8814f3582fca6b751748cfad66a16a2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-addons-css-transition-group@15.4.2" = nodeEnv.buildYarnPackage {
            name = "react-addons-css-transition-group-15.4.2";
            packageName = "react-addons-css-transition-group";
            version = "15.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-addons-css-transition-group/-/react-addons-css-transition-group-15.4.2.tgz";
              sha1 = "b7828834dfa14229fe07750e331e8a8cb6fb7745";
            };
            dependencies = [ pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "react-copy-to-clipboard@4.2.3" = nodeEnv.buildYarnPackage {
            name = "react-copy-to-clipboard-4.2.3";
            packageName = "react-copy-to-clipboard";
            version = "4.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-copy-to-clipboard/-/react-copy-to-clipboard-4.2.3.tgz";
              sha1 = "268c5a0fbde9a95d96145014e7f85110b0e7fb8e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-css-themr@2.0.0" = nodeEnv.buildYarnPackage {
            name = "react-css-themr-2.0.0";
            packageName = "react-css-themr";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-css-themr/-/react-css-themr-2.0.0.tgz";
              sha1 = "c4f93b9284009d9b4565121f09eb6b2bf402c3ef";
            };
            dependencies = [ pkgs."invariant@2.2.2" ];
            dontNpmInstall = true;
            };
  "react-deep-force-update@1.1.1" = nodeEnv.buildYarnPackage {
            name = "react-deep-force-update-1.1.1";
            packageName = "react-deep-force-update";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-deep-force-update/-/react-deep-force-update-1.1.1.tgz";
              sha1 = "bcd31478027b64b3339f108921ab520b4313dc2c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-docgen@2.20.1" = nodeEnv.buildYarnPackage {
            name = "react-docgen-2.20.1";
            packageName = "react-docgen";
            version = "2.20.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-docgen/-/react-docgen-2.20.1.tgz";
              sha1 = "29c3a1216066f513958abb1a43678860bbd51c7f";
            };
            dependencies = [ pkgs."babylon@5.8.38" pkgs."commander@2.9.0" pkgs."doctrine@2.0.0" ];
            dontNpmInstall = true;
            };
  "react-dom@15.4.2" = nodeEnv.buildYarnPackage {
            name = "react-dom-15.4.2";
            packageName = "react-dom";
            version = "15.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-dom/-/react-dom-15.4.2.tgz";
              sha1 = "015363f05b0a1fd52ae9efdd3a0060d90695208f";
            };
            dependencies = [ pkgs."loose-envify@1.3.0" pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "react-dropzone@3.12.2" = nodeEnv.buildYarnPackage {
            name = "react-dropzone-3.12.2";
            packageName = "react-dropzone";
            version = "3.12.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-dropzone/-/react-dropzone-3.12.2.tgz";
              sha1 = "7e66a37322a80cf26a205d749ecf8cad0d90aa6f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-fuzzy@0.5.2" = nodeEnv.buildYarnPackage {
            name = "react-fuzzy-0.5.2";
            packageName = "react-fuzzy";
            version = "0.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-fuzzy/-/react-fuzzy-0.5.2.tgz";
              sha1 = "fc13bf6f0b785e5fefe908724efebec4935eaefe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-html-attributes@1.4.1" = nodeEnv.buildYarnPackage {
            name = "react-html-attributes-1.4.1";
            packageName = "react-html-attributes";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-html-attributes/-/react-html-attributes-1.4.1.tgz";
              sha1 = "97b5ec710da68833598c8be6f89ac436216840a5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-icon-base@2.1.0" = nodeEnv.buildYarnPackage {
            name = "react-icon-base-2.1.0";
            packageName = "react-icon-base";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-icon-base/-/react-icon-base-2.1.0.tgz";
              sha1 = "a196e33fdf1e7aaa1fda3aefbb68bdad9e82a79d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-icons@2.2.7" = nodeEnv.buildYarnPackage {
            name = "react-icons-2.2.7";
            packageName = "react-icons";
            version = "2.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-icons/-/react-icons-2.2.7.tgz";
              sha1 = "d7860826b258557510dac10680abea5ca23cf650";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-inspector@2.2.2" = nodeEnv.buildYarnPackage {
            name = "react-inspector-2.2.2";
            packageName = "react-inspector";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-inspector/-/react-inspector-2.2.2.tgz";
              sha1 = "c04f5248fa92ab6c23e37960e725fb7f48c34d05";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-intl@2.2.3" = nodeEnv.buildYarnPackage {
            name = "react-intl-2.2.3";
            packageName = "react-intl";
            version = "2.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-intl/-/react-intl-2.2.3.tgz";
              sha1 = "8eebb03cddc38b337ed22fab78037ab53a594270";
            };
            dependencies = [ pkgs."invariant@2.2.2" ];
            dontNpmInstall = true;
            };
  "react-markdown@2.5.0" = nodeEnv.buildYarnPackage {
            name = "react-markdown-2.5.0";
            packageName = "react-markdown";
            version = "2.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-markdown/-/react-markdown-2.5.0.tgz";
              sha1 = "b1c61904fee5895886803bd9df7db23c3dc3a89e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-modal@3.2.1" = nodeEnv.buildYarnPackage {
            name = "react-modal-3.2.1";
            packageName = "react-modal";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-modal/-/react-modal-3.2.1.tgz";
              sha1 = "fa8f76aed55b67c22dcf1a1c15b05c8d11f18afe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-number-format@1.1.2" = nodeEnv.buildYarnPackage {
            name = "react-number-format-1.1.2";
            packageName = "react-number-format";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-number-format/-/react-number-format-1.1.2.tgz";
              sha1 = "74d8478fa5cdeed55637f392597a0911157e2568";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-polymorph@0.5.4" = nodeEnv.buildYarnPackage {
            name = "react-polymorph-0.5.4";
            packageName = "react-polymorph";
            version = "0.5.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-polymorph/-/react-polymorph-0.5.4.tgz";
              sha1 = "03aafde0938a4fc8286961e0a2491ff7d9f7eaf9";
            };
            dependencies = [ pkgs."react-modal@2.4.1" ];
            dontNpmInstall = true;
            };
  "react-proxy@1.1.8" = nodeEnv.buildYarnPackage {
            name = "react-proxy-1.1.8";
            packageName = "react-proxy";
            version = "1.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-proxy/-/react-proxy-1.1.8.tgz";
              sha1 = "9dbfd9d927528c3aa9f444e4558c37830ab8c26a";
            };
            dependencies = [ pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "react-resize-detector@0.4.1" = nodeEnv.buildYarnPackage {
            name = "react-resize-detector-0.4.1";
            packageName = "react-resize-detector";
            version = "0.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-resize-detector/-/react-resize-detector-0.4.1.tgz";
              sha1 = "19f8b993e1e869e2879344e20dc23c4fac28b256";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-router@3.0.3" = nodeEnv.buildYarnPackage {
            name = "react-router-3.0.3";
            packageName = "react-router";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-router/-/react-router-3.0.3.tgz";
              sha1 = "e95304b2e418482e5ecff2699d2b8aae52d5f884";
            };
            dependencies = [ pkgs."invariant@2.2.2" pkgs."loose-envify@1.3.0" ];
            dontNpmInstall = true;
            };
  "react-smooth@0.3.0" = nodeEnv.buildYarnPackage {
            name = "react-smooth-0.3.0";
            packageName = "react-smooth";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-smooth/-/react-smooth-0.3.0.tgz";
              sha1 = "b67665d7b9820257e34279c15e02e8e5131ebe99";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-split-pane@0.1.77" = nodeEnv.buildYarnPackage {
            name = "react-split-pane-0.1.77";
            packageName = "react-split-pane";
            version = "0.1.77";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-split-pane/-/react-split-pane-0.1.77.tgz";
              sha1 = "f0c8cd18d076bbac900248dcf6dbcec02d5340db";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-style-proptype@3.2.0" = nodeEnv.buildYarnPackage {
            name = "react-style-proptype-3.2.0";
            packageName = "react-style-proptype";
            version = "3.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-style-proptype/-/react-style-proptype-3.2.0.tgz";
              sha1 = "be5de15358b890d83aecfaf6634cc033aa2b1483";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-svg-inline@2.0.0" = nodeEnv.buildYarnPackage {
            name = "react-svg-inline-2.0.0";
            packageName = "react-svg-inline";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-svg-inline/-/react-svg-inline-2.0.0.tgz";
              sha1 = "0a4f60895588eecc7616af3a511d087801163600";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-transform-catch-errors@1.0.2" = nodeEnv.buildYarnPackage {
            name = "react-transform-catch-errors-1.0.2";
            packageName = "react-transform-catch-errors";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-transform-catch-errors/-/react-transform-catch-errors-1.0.2.tgz";
              sha1 = "1b4d4a76e97271896fc16fe3086c793ec88a9eeb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-transform-hmr@1.0.4" = nodeEnv.buildYarnPackage {
            name = "react-transform-hmr-1.0.4";
            packageName = "react-transform-hmr";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-transform-hmr/-/react-transform-hmr-1.0.4.tgz";
              sha1 = "e1a40bd0aaefc72e8dfd7a7cda09af85066397bb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-transition-group@1.2.1" = nodeEnv.buildYarnPackage {
            name = "react-transition-group-1.2.1";
            packageName = "react-transition-group";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-transition-group/-/react-transition-group-1.2.1.tgz";
              sha1 = "e11f72b257f921b213229a774df46612346c7ca6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react-treebeard@2.1.0" = nodeEnv.buildYarnPackage {
            name = "react-treebeard-2.1.0";
            packageName = "react-treebeard";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-treebeard/-/react-treebeard-2.1.0.tgz";
              sha1 = "fbd5cf51089b6f09a9b18350ab3bddf736e57800";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "react@15.4.2" = nodeEnv.buildYarnPackage {
            name = "react-15.4.2";
            packageName = "react";
            version = "15.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react/-/react-15.4.2.tgz";
              sha1 = "41f7991b26185392ba9bae96c8889e7e018397ef";
            };
            dependencies = [ pkgs."loose-envify@1.3.0" pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "read-pkg-up@2.0.0" = nodeEnv.buildYarnPackage {
            name = "read-pkg-up-2.0.0";
            packageName = "read-pkg-up";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-2.0.0.tgz";
              sha1 = "6b72a8048984e0c41e79510fd5e9fa99b3b549be";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "read-pkg@2.0.0" = nodeEnv.buildYarnPackage {
            name = "read-pkg-2.0.0";
            packageName = "read-pkg";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-2.0.0.tgz";
              sha1 = "8ef1c0623c6a6db0dc6713c4bfac46332b2368f8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "readable-stream@2.3.4" = nodeEnv.buildYarnPackage {
            name = "readable-stream-2.3.4";
            packageName = "readable-stream";
            version = "2.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.4.tgz";
              sha1 = "c946c3f47fa7d8eabc0b6150f4a12f69a4574071";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "readdirp@2.1.0" = nodeEnv.buildYarnPackage {
            name = "readdirp-2.1.0";
            packageName = "readdirp";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readdirp/-/readdirp-2.1.0.tgz";
              sha1 = "4ed0ad060df3073300c48440373f72d1cc642d78";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "recast@0.12.9" = nodeEnv.buildYarnPackage {
            name = "recast-0.12.9";
            packageName = "recast";
            version = "0.12.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recast/-/recast-0.12.9.tgz";
              sha1 = "e8e52bdb9691af462ccbd7c15d5a5113647a15f1";
            };
            dependencies = [ pkgs."private@0.1.6" ];
            dontNpmInstall = true;
            };
  "recharts-scale@0.3.2" = nodeEnv.buildYarnPackage {
            name = "recharts-scale-0.3.2";
            packageName = "recharts-scale";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recharts-scale/-/recharts-scale-0.3.2.tgz";
              sha1 = "dac7621714a4765d152cb2adbc30c73b831208c9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "recharts@1.0.0-alpha.4" = nodeEnv.buildYarnPackage {
            name = "recharts-1.0.0-alpha.4";
            packageName = "recharts";
            version = "1.0.0-alpha.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recharts/-/recharts-1.0.0-alpha.4.tgz";
              sha1 = "74b05457696987755bc05e8d6232ab5c58648676";
            };
            dependencies = [ pkgs."core-js@2.4.1" pkgs."lodash@4.17.5" pkgs."prop-types@15.5.10" ];
            dontNpmInstall = true;
            };
  "rechoir@0.6.2" = nodeEnv.buildYarnPackage {
            name = "rechoir-0.6.2";
            packageName = "rechoir";
            version = "0.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rechoir/-/rechoir-0.6.2.tgz";
              sha1 = "85204b54dba82d5742e28c96756ef43af50e3384";
            };
            dependencies = [ pkgs."resolve@1.2.0" ];
            dontNpmInstall = true;
            };
  "redbox-react@1.5.0" = nodeEnv.buildYarnPackage {
            name = "redbox-react-1.5.0";
            packageName = "redbox-react";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/redbox-react/-/redbox-react-1.5.0.tgz";
              sha1 = "04dab11557d26651bf3562a67c22ace56c5d3967";
            };
            dependencies = [ pkgs."error-stack-parser@1.3.6" ];
            dontNpmInstall = true;
            };
  "redent@1.0.0" = nodeEnv.buildYarnPackage {
            name = "redent-1.0.0";
            packageName = "redent";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/redent/-/redent-1.0.0.tgz";
              sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
            };
            dependencies = [ pkgs."indent-string@2.1.0" ];
            dontNpmInstall = true;
            };
  "reduce-css-calc@1.3.0" = nodeEnv.buildYarnPackage {
            name = "reduce-css-calc-1.3.0";
            packageName = "reduce-css-calc";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/reduce-css-calc/-/reduce-css-calc-1.3.0.tgz";
              sha1 = "747c914e049614a4c9cfbba629871ad1d2927716";
            };
            dependencies = [ pkgs."balanced-match@0.4.2" ];
            dontNpmInstall = true;
            };
  "reduce-function-call@1.0.2" = nodeEnv.buildYarnPackage {
            name = "reduce-function-call-1.0.2";
            packageName = "reduce-function-call";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/reduce-function-call/-/reduce-function-call-1.0.2.tgz";
              sha1 = "5a200bf92e0e37751752fe45b0ab330fd4b6be99";
            };
            dependencies = [ pkgs."balanced-match@0.4.2" ];
            dontNpmInstall = true;
            };
  "redux@3.7.2" = nodeEnv.buildYarnPackage {
            name = "redux-3.7.2";
            packageName = "redux";
            version = "3.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/redux/-/redux-3.7.2.tgz";
              sha1 = "06b73123215901d25d065be342eb026bc1c8537b";
            };
            dependencies = [ pkgs."lodash@4.17.5" pkgs."loose-envify@1.3.0" ];
            dontNpmInstall = true;
            };
  "regenerate@1.3.2" = nodeEnv.buildYarnPackage {
            name = "regenerate-1.3.2";
            packageName = "regenerate";
            version = "1.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerate/-/regenerate-1.3.2.tgz";
              sha1 = "d1941c67bad437e1be76433add5b385f95b19260";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "regenerator-runtime@0.11.1" = nodeEnv.buildYarnPackage {
            name = "regenerator-runtime-0.11.1";
            packageName = "regenerator-runtime";
            version = "0.11.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.11.1.tgz";
              sha1 = "be05ad7f9bf7d22e056f9726cee5017fbf19e2e9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "regenerator-transform@0.10.1" = nodeEnv.buildYarnPackage {
            name = "regenerator-transform-0.10.1";
            packageName = "regenerator-transform";
            version = "0.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-transform/-/regenerator-transform-0.10.1.tgz";
              sha1 = "1e4996837231da8b7f3cf4114d71b5691a0680dd";
            };
            dependencies = [ pkgs."babel-runtime@6.20.0" pkgs."babel-types@6.21.0" pkgs."private@0.1.6" ];
            dontNpmInstall = true;
            };
  "regex-cache@0.4.3" = nodeEnv.buildYarnPackage {
            name = "regex-cache-0.4.3";
            packageName = "regex-cache";
            version = "0.4.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regex-cache/-/regex-cache-0.4.3.tgz";
              sha1 = "9b1a6c35d4d0dfcef5711ae651e8e9d3d7114145";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "regexpu-core@2.0.0" = nodeEnv.buildYarnPackage {
            name = "regexpu-core-2.0.0";
            packageName = "regexpu-core";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regexpu-core/-/regexpu-core-2.0.0.tgz";
              sha1 = "49d038837b8dcf8bfa5b9a42139938e6ea2ae240";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "regjsgen@0.2.0" = nodeEnv.buildYarnPackage {
            name = "regjsgen-0.2.0";
            packageName = "regjsgen";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regjsgen/-/regjsgen-0.2.0.tgz";
              sha1 = "6c016adeac554f75823fe37ac05b92d5a4edb1f7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "regjsparser@0.1.5" = nodeEnv.buildYarnPackage {
            name = "regjsparser-0.1.5";
            packageName = "regjsparser";
            version = "0.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regjsparser/-/regjsparser-0.1.5.tgz";
              sha1 = "7ee8f84dc6fa792d3fd0ae228d24bd949ead205c";
            };
            dependencies = [ pkgs."jsesc@0.5.0" ];
            dontNpmInstall = true;
            };
  "relateurl@0.2.7" = nodeEnv.buildYarnPackage {
            name = "relateurl-0.2.7";
            packageName = "relateurl";
            version = "0.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/relateurl/-/relateurl-0.2.7.tgz";
              sha1 = "54dbf377e51440aca90a4cd274600d3ff2d888a9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "remove-trailing-separator@1.1.0" = nodeEnv.buildYarnPackage {
            name = "remove-trailing-separator-1.1.0";
            packageName = "remove-trailing-separator";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz";
              sha1 = "c24bce2a283adad5bc3f58e0d48249b92379d8ef";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "renderkid@2.0.1" = nodeEnv.buildYarnPackage {
            name = "renderkid-2.0.1";
            packageName = "renderkid";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/renderkid/-/renderkid-2.0.1.tgz";
              sha1 = "898cabfc8bede4b7b91135a3ffd323e58c0db319";
            };
            dependencies = [ pkgs."strip-ansi@3.0.1" pkgs."utila@0.3.3" ];
            dontNpmInstall = true;
            };
  "repeat-element@1.1.2" = nodeEnv.buildYarnPackage {
            name = "repeat-element-1.1.2";
            packageName = "repeat-element";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/repeat-element/-/repeat-element-1.1.2.tgz";
              sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "repeat-string@1.6.1" = nodeEnv.buildYarnPackage {
            name = "repeat-string-1.6.1";
            packageName = "repeat-string";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/repeat-string/-/repeat-string-1.6.1.tgz";
              sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "repeating@2.0.1" = nodeEnv.buildYarnPackage {
            name = "repeating-2.0.1";
            packageName = "repeating";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/repeating/-/repeating-2.0.1.tgz";
              sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "replace-ext@0.0.1" = nodeEnv.buildYarnPackage {
            name = "replace-ext-0.0.1";
            packageName = "replace-ext";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/replace-ext/-/replace-ext-0.0.1.tgz";
              sha1 = "29bbd92078a739f0bcce2b4ee41e837953522924";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "request@2.83.0" = nodeEnv.buildYarnPackage {
            name = "request-2.83.0";
            packageName = "request";
            version = "2.83.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/request/-/request-2.83.0.tgz";
              sha1 = "ca0b65da02ed62935887808e6f510381034e3356";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "require-directory@2.1.1" = nodeEnv.buildYarnPackage {
            name = "require-directory-2.1.1";
            packageName = "require-directory";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-directory/-/require-directory-2.1.1.tgz";
              sha1 = "8c64ad5fd30dab1c976e2344ffe7f792a6a6df42";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "require-from-string@1.2.1" = nodeEnv.buildYarnPackage {
            name = "require-from-string-1.2.1";
            packageName = "require-from-string";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-from-string/-/require-from-string-1.2.1.tgz";
              sha1 = "529c9ccef27380adfec9a2f965b649bbee636418";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "require-main-filename@1.0.1" = nodeEnv.buildYarnPackage {
            name = "require-main-filename-1.0.1";
            packageName = "require-main-filename";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-1.0.1.tgz";
              sha1 = "97f717b69d48784f5f526a6c5aa8ffdda055a4d1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "require-package-name@2.0.1" = nodeEnv.buildYarnPackage {
            name = "require-package-name-2.0.1";
            packageName = "require-package-name";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-package-name/-/require-package-name-2.0.1.tgz";
              sha1 = "c11e97276b65b8e2923f75dabf5fb2ef0c3841b9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "require-uncached@1.0.3" = nodeEnv.buildYarnPackage {
            name = "require-uncached-1.0.3";
            packageName = "require-uncached";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/require-uncached/-/require-uncached-1.0.3.tgz";
              sha1 = "4e0d56d6c9662fd31e43011c4b95aa49955421d3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "resolve-from@1.0.1" = nodeEnv.buildYarnPackage {
            name = "resolve-from-1.0.1";
            packageName = "resolve-from";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve-from/-/resolve-from-1.0.1.tgz";
              sha1 = "26cbfe935d1aeeeabb29bc3fe5aeb01e93d44226";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "resolve-url@0.2.1" = nodeEnv.buildYarnPackage {
            name = "resolve-url-0.2.1";
            packageName = "resolve-url";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve-url/-/resolve-url-0.2.1.tgz";
              sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "resolve@1.5.0" = nodeEnv.buildYarnPackage {
            name = "resolve-1.5.0";
            packageName = "resolve";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve/-/resolve-1.5.0.tgz";
              sha1 = "1f09acce796c9a762579f31b2c1cc4c3cddf9f36";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "restore-cursor@2.0.0" = nodeEnv.buildYarnPackage {
            name = "restore-cursor-2.0.0";
            packageName = "restore-cursor";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-2.0.0.tgz";
              sha1 = "9f7ee287f82fd326d4fd162923d62129eee0dfaf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rgb2hex@0.1.0" = nodeEnv.buildYarnPackage {
            name = "rgb2hex-0.1.0";
            packageName = "rgb2hex";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rgb2hex/-/rgb2hex-0.1.0.tgz";
              sha1 = "ccd55f860ae0c5c4ea37504b958e442d8d12325b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "right-align@0.1.3" = nodeEnv.buildYarnPackage {
            name = "right-align-0.1.3";
            packageName = "right-align";
            version = "0.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/right-align/-/right-align-0.1.3.tgz";
              sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rimraf@2.6.2" = nodeEnv.buildYarnPackage {
            name = "rimraf-2.6.2";
            packageName = "rimraf";
            version = "2.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.6.2.tgz";
              sha1 = "2ed8150d24a16ea8651e6d6ef0f47c4158ce7a36";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ripemd160@2.0.1" = nodeEnv.buildYarnPackage {
            name = "ripemd160-2.0.1";
            packageName = "ripemd160";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-2.0.1.tgz";
              sha1 = "0f4584295c53a3628af7e6d79aca21ce57d1c6e7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "route-parser@0.0.5" = nodeEnv.buildYarnPackage {
            name = "route-parser-0.0.5";
            packageName = "route-parser";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/route-parser/-/route-parser-0.0.5.tgz";
              sha1 = "7d1d09d335e49094031ea16991a4a79b01bbe1f4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "run-async@2.3.0" = nodeEnv.buildYarnPackage {
            name = "run-async-2.3.0";
            packageName = "run-async";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/run-async/-/run-async-2.3.0.tgz";
              sha1 = "0371ab4ae0bdd720d4166d7dfda64ff7a445a6c0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "run-queue@1.0.3" = nodeEnv.buildYarnPackage {
            name = "run-queue-1.0.3";
            packageName = "run-queue";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/run-queue/-/run-queue-1.0.3.tgz";
              sha1 = "e848396f057d223f24386924618e25694161ec47";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rx-lite-aggregates@4.0.8" = nodeEnv.buildYarnPackage {
            name = "rx-lite-aggregates-4.0.8";
            packageName = "rx-lite-aggregates";
            version = "4.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rx-lite-aggregates/-/rx-lite-aggregates-4.0.8.tgz";
              sha1 = "753b87a89a11c95467c4ac1626c4efc4e05c67be";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rx-lite@4.0.8" = nodeEnv.buildYarnPackage {
            name = "rx-lite-4.0.8";
            packageName = "rx-lite";
            version = "4.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rx-lite/-/rx-lite-4.0.8.tgz";
              sha1 = "0b1e11af8bc44836f04a6407e92da42467b79444";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rx@2.3.24" = nodeEnv.buildYarnPackage {
            name = "rx-2.3.24";
            packageName = "rx";
            version = "2.3.24";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rx/-/rx-2.3.24.tgz";
              sha1 = "14f950a4217d7e35daa71bbcbe58eff68ea4b2b7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "safe-buffer@5.1.1" = nodeEnv.buildYarnPackage {
            name = "safe-buffer-5.1.1";
            packageName = "safe-buffer";
            version = "5.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.1.tgz";
              sha1 = "893312af69b2123def71f57889001671eeb2c853";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sanitize-filename@1.6.1" = nodeEnv.buildYarnPackage {
            name = "sanitize-filename-1.6.1";
            packageName = "sanitize-filename";
            version = "1.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sanitize-filename/-/sanitize-filename-1.6.1.tgz";
              sha1 = "612da1c96473fa02dccda92dcd5b4ab164a6772a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sass-graph@2.2.4" = nodeEnv.buildYarnPackage {
            name = "sass-graph-2.2.4";
            packageName = "sass-graph";
            version = "2.2.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sass-graph/-/sass-graph-2.2.4.tgz";
              sha1 = "13fbd63cd1caf0908b9fd93476ad43a51d1e0b49";
            };
            dependencies = [ pkgs."glob@7.1.1" pkgs."lodash@4.17.5" pkgs."yargs@7.1.0" ];
            dontNpmInstall = true;
            };
  "sass-loader@6.0.6" = nodeEnv.buildYarnPackage {
            name = "sass-loader-6.0.6";
            packageName = "sass-loader";
            version = "6.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sass-loader/-/sass-loader-6.0.6.tgz";
              sha1 = "e9d5e6c1f155faa32a4b26d7a9b7107c225e40f9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sax@1.2.1" = nodeEnv.buildYarnPackage {
            name = "sax-1.2.1";
            packageName = "sax";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sax/-/sax-1.2.1.tgz";
              sha1 = "7b8e656190b228e81a66aea748480d828cd2d37a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "schema-utils@0.4.5" = nodeEnv.buildYarnPackage {
            name = "schema-utils-0.4.5";
            packageName = "schema-utils";
            version = "0.4.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/schema-utils/-/schema-utils-0.4.5.tgz";
              sha1 = "21836f0608aac17b78f9e3e24daff14a5ca13a3e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "scrypt.js@0.2.0" = nodeEnv.buildYarnPackage {
            name = "scrypt.js-0.2.0";
            packageName = "scrypt.js";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/scrypt.js/-/scrypt.js-0.2.0.tgz";
              sha1 = "af8d1465b71e9990110bedfc593b9479e03a8ada";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "scrypt@6.0.3" = nodeEnv.buildYarnPackage {
            name = "scrypt-6.0.3";
            packageName = "scrypt";
            version = "6.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/scrypt/-/scrypt-6.0.3.tgz";
              sha1 = "04e014a5682b53fa50c2d5cce167d719c06d870d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "scryptsy@1.2.1" = nodeEnv.buildYarnPackage {
            name = "scryptsy-1.2.1";
            packageName = "scryptsy";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/scryptsy/-/scryptsy-1.2.1.tgz";
              sha1 = "a3225fa4b2524f802700761e2855bdf3b2d92163";
            };
            dependencies = [ pkgs."pbkdf2@3.0.9" ];
            dontNpmInstall = true;
            };
  "scss-tokenizer@0.2.3" = nodeEnv.buildYarnPackage {
            name = "scss-tokenizer-0.2.3";
            packageName = "scss-tokenizer";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/scss-tokenizer/-/scss-tokenizer-0.2.3.tgz";
              sha1 = "8eb06db9a9723333824d3f5530641149847ce5d1";
            };
            dependencies = [ pkgs."source-map@0.4.4" ];
            dontNpmInstall = true;
            };
  "seek-bzip@1.0.5" = nodeEnv.buildYarnPackage {
            name = "seek-bzip-1.0.5";
            packageName = "seek-bzip";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/seek-bzip/-/seek-bzip-1.0.5.tgz";
              sha1 = "cfe917cb3d274bcffac792758af53173eb1fabdc";
            };
            dependencies = [ pkgs."commander@2.8.1" ];
            dontNpmInstall = true;
            };
  "semver@5.5.0" = nodeEnv.buildYarnPackage {
            name = "semver-5.5.0";
            packageName = "semver";
            version = "5.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/semver/-/semver-5.5.0.tgz";
              sha1 = "dc4bbc7a6ca9d916dee5d43516f0092b58f7b8ab";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "send@0.16.1" = nodeEnv.buildYarnPackage {
            name = "send-0.16.1";
            packageName = "send";
            version = "0.16.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/send/-/send-0.16.1.tgz";
              sha1 = "a70e1ca21d1382c11d0d9f6231deb281080d7ab3";
            };
            dependencies = [ pkgs."debug@2.6.9" pkgs."mime@1.4.1" ];
            dontNpmInstall = true;
            };
  "serialize-error@2.1.0" = nodeEnv.buildYarnPackage {
            name = "serialize-error-2.1.0";
            packageName = "serialize-error";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serialize-error/-/serialize-error-2.1.0.tgz";
              sha1 = "50b679d5635cdf84667bdc8e59af4e5b81d5f60a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "serialize-javascript@1.4.0" = nodeEnv.buildYarnPackage {
            name = "serialize-javascript-1.4.0";
            packageName = "serialize-javascript";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serialize-javascript/-/serialize-javascript-1.4.0.tgz";
              sha1 = "7c958514db6ac2443a8abc062dc9f7886a7f6005";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "serve-favicon@2.4.5" = nodeEnv.buildYarnPackage {
            name = "serve-favicon-2.4.5";
            packageName = "serve-favicon";
            version = "2.4.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serve-favicon/-/serve-favicon-2.4.5.tgz";
              sha1 = "49d9a46863153a9240691c893d2b0e7d85d6d436";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "serve-static@1.13.1" = nodeEnv.buildYarnPackage {
            name = "serve-static-1.13.1";
            packageName = "serve-static";
            version = "1.13.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.13.1.tgz";
              sha1 = "4c57d53404a761d8f2e7c1e8a18a47dbf278a719";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "servify@0.1.12" = nodeEnv.buildYarnPackage {
            name = "servify-0.1.12";
            packageName = "servify";
            version = "0.1.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/servify/-/servify-0.1.12.tgz";
              sha1 = "142ab7bee1f1d033b66d0707086085b17c06db95";
            };
            dependencies = [ pkgs."express@4.14.0" pkgs."request@2.79.0" ];
            dontNpmInstall = true;
            };
  "set-blocking@2.0.0" = nodeEnv.buildYarnPackage {
            name = "set-blocking-2.0.0";
            packageName = "set-blocking";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz";
              sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "set-immediate-shim@1.0.1" = nodeEnv.buildYarnPackage {
            name = "set-immediate-shim-1.0.1";
            packageName = "set-immediate-shim";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz";
              sha1 = "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "setimmediate@1.0.5" = nodeEnv.buildYarnPackage {
            name = "setimmediate-1.0.5";
            packageName = "setimmediate";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/setimmediate/-/setimmediate-1.0.5.tgz";
              sha1 = "290cbb232e306942d7d7ea9b83732ab7856f8285";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "setprototypeof@1.1.0" = nodeEnv.buildYarnPackage {
            name = "setprototypeof-1.1.0";
            packageName = "setprototypeof";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.1.0.tgz";
              sha1 = "d0bd85536887b6fe7c0d818cb962d9d91c54e656";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sha.js@2.4.10" = nodeEnv.buildYarnPackage {
            name = "sha.js-2.4.10";
            packageName = "sha.js";
            version = "2.4.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sha.js/-/sha.js-2.4.10.tgz";
              sha1 = "b1fde5cd7d11a5626638a07c604ab909cfa31f9b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sha3@1.2.0" = nodeEnv.buildYarnPackage {
            name = "sha3-1.2.0";
            packageName = "sha3";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sha3/-/sha3-1.2.0.tgz";
              sha1 = "6989f1b70a498705876a373e2c62ace96aa9399a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "shallow-clone@0.1.2" = nodeEnv.buildYarnPackage {
            name = "shallow-clone-0.1.2";
            packageName = "shallow-clone";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shallow-clone/-/shallow-clone-0.1.2.tgz";
              sha1 = "5909e874ba77106d73ac414cfec1ffca87d97060";
            };
            dependencies = [ pkgs."kind-of@2.0.1" pkgs."lazy-cache@0.2.7" ];
            dontNpmInstall = true;
            };
  "shallowequal@0.2.2" = nodeEnv.buildYarnPackage {
            name = "shallowequal-0.2.2";
            packageName = "shallowequal";
            version = "0.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shallowequal/-/shallowequal-0.2.2.tgz";
              sha1 = "1e32fd5bcab6ad688a4812cb0cc04efc75c7014e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "shebang-command@1.2.0" = nodeEnv.buildYarnPackage {
            name = "shebang-command-1.2.0";
            packageName = "shebang-command";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz";
              sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "shebang-regex@1.0.0" = nodeEnv.buildYarnPackage {
            name = "shebang-regex-1.0.0";
            packageName = "shebang-regex";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz";
              sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "shelljs@0.7.8" = nodeEnv.buildYarnPackage {
            name = "shelljs-0.7.8";
            packageName = "shelljs";
            version = "0.7.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shelljs/-/shelljs-0.7.8.tgz";
              sha1 = "decbcf874b0d1e5fb72e14b164a9683048e9acb3";
            };
            dependencies = [ pkgs."glob@7.1.1" ];
            dontNpmInstall = true;
            };
  "signal-exit@3.0.2" = nodeEnv.buildYarnPackage {
            name = "signal-exit-3.0.2";
            packageName = "signal-exit";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.2.tgz";
              sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "simple-concat@1.0.0" = nodeEnv.buildYarnPackage {
            name = "simple-concat-1.0.0";
            packageName = "simple-concat";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/simple-concat/-/simple-concat-1.0.0.tgz";
              sha1 = "7344cbb8b6e26fb27d66b2fc86f9f6d5997521c6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "simple-get@2.7.0" = nodeEnv.buildYarnPackage {
            name = "simple-get-2.7.0";
            packageName = "simple-get";
            version = "2.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/simple-get/-/simple-get-2.7.0.tgz";
              sha1 = "ad37f926d08129237ff08c4f2edfd6f10e0380b5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "single-line-log@1.1.2" = nodeEnv.buildYarnPackage {
            name = "single-line-log-1.1.2";
            packageName = "single-line-log";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/single-line-log/-/single-line-log-1.1.2.tgz";
              sha1 = "c2f83f273a3e1a16edb0995661da0ed5ef033364";
            };
            dependencies = [ pkgs."string-width@1.0.2" ];
            dontNpmInstall = true;
            };
  "slash@1.0.0" = nodeEnv.buildYarnPackage {
            name = "slash-1.0.0";
            packageName = "slash";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/slash/-/slash-1.0.0.tgz";
              sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "slice-ansi@1.0.0" = nodeEnv.buildYarnPackage {
            name = "slice-ansi-1.0.0";
            packageName = "slice-ansi";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/slice-ansi/-/slice-ansi-1.0.0.tgz";
              sha1 = "044f1a49d8842ff307aad6b505ed178bd950134d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sntp@2.1.0" = nodeEnv.buildYarnPackage {
            name = "sntp-2.1.0";
            packageName = "sntp";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sntp/-/sntp-2.1.0.tgz";
              sha1 = "2c6cec14fedc2222739caf9b5c3d85d1cc5a2cc8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sort-keys@1.1.2" = nodeEnv.buildYarnPackage {
            name = "sort-keys-1.1.2";
            packageName = "sort-keys";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sort-keys/-/sort-keys-1.1.2.tgz";
              sha1 = "441b6d4d346798f1b4e49e8920adfba0e543f9ad";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "source-list-map@2.0.0" = nodeEnv.buildYarnPackage {
            name = "source-list-map-2.0.0";
            packageName = "source-list-map";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-list-map/-/source-list-map-2.0.0.tgz";
              sha1 = "aaa47403f7b245a92fbc97ea08f250d6087ed085";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "source-map-resolve@0.3.1" = nodeEnv.buildYarnPackage {
            name = "source-map-resolve-0.3.1";
            packageName = "source-map-resolve";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.3.1.tgz";
              sha1 = "610f6122a445b8dd51535a2a71b783dfc1248761";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "source-map-support@0.4.14" = nodeEnv.buildYarnPackage {
            name = "source-map-support-0.4.14";
            packageName = "source-map-support";
            version = "0.4.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.4.14.tgz";
              sha1 = "9d4463772598b86271b4f523f6c1f4e02a7d6aef";
            };
            dependencies = [ pkgs."source-map@0.5.6" ];
            dontNpmInstall = true;
            };
  "source-map-url@0.3.0" = nodeEnv.buildYarnPackage {
            name = "source-map-url-0.3.0";
            packageName = "source-map-url";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-url/-/source-map-url-0.3.0.tgz";
              sha1 = "7ecaf13b57bcd09da8a40c5d269db33799d4aaf9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "source-map@0.6.1" = nodeEnv.buildYarnPackage {
            name = "source-map-0.6.1";
            packageName = "source-map";
            version = "0.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
              sha1 = "74722af32e9614e9c287a8d0bbde48b5e2f1a263";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sourcemapped-stacktrace@1.1.8" = nodeEnv.buildYarnPackage {
            name = "sourcemapped-stacktrace-1.1.8";
            packageName = "sourcemapped-stacktrace";
            version = "1.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sourcemapped-stacktrace/-/sourcemapped-stacktrace-1.1.8.tgz";
              sha1 = "6b7a3f1a6fb15f6d40e701e23ce404553480d688";
            };
            dependencies = [ pkgs."source-map@0.5.6" ];
            dontNpmInstall = true;
            };
  "sparkles@1.0.0" = nodeEnv.buildYarnPackage {
            name = "sparkles-1.0.0";
            packageName = "sparkles";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sparkles/-/sparkles-1.0.0.tgz";
              sha1 = "1acbbfb592436d10bbe8f785b7cc6f82815012c3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "spawn-command@0.0.2-1" = nodeEnv.buildYarnPackage {
            name = "spawn-command-0.0.2-1";
            packageName = "spawn-command";
            version = "0.0.2-1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spawn-command/-/spawn-command-0.0.2-1.tgz";
              sha1 = "62f5e9466981c1b796dc5929937e11c9c6921bd0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "spdx-correct@3.0.0" = nodeEnv.buildYarnPackage {
            name = "spdx-correct-3.0.0";
            packageName = "spdx-correct";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spdx-correct/-/spdx-correct-3.0.0.tgz";
              sha1 = "05a5b4d7153a195bc92c3c425b69f3b2a9524c82";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "spdx-exceptions@2.1.0" = nodeEnv.buildYarnPackage {
            name = "spdx-exceptions-2.1.0";
            packageName = "spdx-exceptions";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spdx-exceptions/-/spdx-exceptions-2.1.0.tgz";
              sha1 = "2c7ae61056c714a5b9b9b2b2af7d311ef5c78fe9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "spdx-expression-parse@3.0.0" = nodeEnv.buildYarnPackage {
            name = "spdx-expression-parse-3.0.0";
            packageName = "spdx-expression-parse";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-3.0.0.tgz";
              sha1 = "99e119b7a5da00e05491c9fa338b7904823b41d0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "spdx-license-ids@3.0.0" = nodeEnv.buildYarnPackage {
            name = "spdx-license-ids-3.0.0";
            packageName = "spdx-license-ids";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-3.0.0.tgz";
              sha1 = "7a7cd28470cc6d3a1cfe6d66886f6bc430d3ac87";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "spectron@3.7.2" = nodeEnv.buildYarnPackage {
            name = "spectron-3.7.2";
            packageName = "spectron";
            version = "3.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/spectron/-/spectron-3.7.2.tgz";
              sha1 = "86f41306a9b70ed6ee1500f7f7d3adc389afb446";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "speedometer@0.1.4" = nodeEnv.buildYarnPackage {
            name = "speedometer-0.1.4";
            packageName = "speedometer";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/speedometer/-/speedometer-0.1.4.tgz";
              sha1 = "9876dbd2a169d3115402d48e6ea6329c8816a50d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "split@1.0.1" = nodeEnv.buildYarnPackage {
            name = "split-1.0.1";
            packageName = "split";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/split/-/split-1.0.1.tgz";
              sha1 = "605bd9be303aa59fb35f9229fbea0ddec9ea07d9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sprintf-js@1.0.3" = nodeEnv.buildYarnPackage {
            name = "sprintf-js-1.0.3";
            packageName = "sprintf-js";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.0.3.tgz";
              sha1 = "04e6926f662895354f3dd015203633b857297e2c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sshpk@1.13.1" = nodeEnv.buildYarnPackage {
            name = "sshpk-1.13.1";
            packageName = "sshpk";
            version = "1.13.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sshpk/-/sshpk-1.13.1.tgz";
              sha1 = "512df6da6287144316dc4c18fe1cf1d940739be3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ssri@5.2.4" = nodeEnv.buildYarnPackage {
            name = "ssri-5.2.4";
            packageName = "ssri";
            version = "5.2.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ssri/-/ssri-5.2.4.tgz";
              sha1 = "9985e14041e65fc397af96542be35724ac11da52";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stack-chain@2.0.0" = nodeEnv.buildYarnPackage {
            name = "stack-chain-2.0.0";
            packageName = "stack-chain";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stack-chain/-/stack-chain-2.0.0.tgz";
              sha1 = "d73d1172af89565f07438b5bcc086831b6689b2d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stack-generator@2.0.2" = nodeEnv.buildYarnPackage {
            name = "stack-generator-2.0.2";
            packageName = "stack-generator";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stack-generator/-/stack-generator-2.0.2.tgz";
              sha1 = "3c13d952a596ab9318fec0669d0a1df8b87176c7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stack-trace@0.0.10" = nodeEnv.buildYarnPackage {
            name = "stack-trace-0.0.10";
            packageName = "stack-trace";
            version = "0.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stack-trace/-/stack-trace-0.0.10.tgz";
              sha1 = "547c70b347e8d32b4e108ea1a2a159e5fdde19c0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stackframe@1.0.4" = nodeEnv.buildYarnPackage {
            name = "stackframe-1.0.4";
            packageName = "stackframe";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stackframe/-/stackframe-1.0.4.tgz";
              sha1 = "357b24a992f9427cba6b545d96a14ed2cbca187b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stacktrace-gps@3.0.2" = nodeEnv.buildYarnPackage {
            name = "stacktrace-gps-3.0.2";
            packageName = "stacktrace-gps";
            version = "3.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stacktrace-gps/-/stacktrace-gps-3.0.2.tgz";
              sha1 = "33f8baa4467323ab2bd1816efa279942ba431ccc";
            };
            dependencies = [ pkgs."source-map@0.5.6" ];
            dontNpmInstall = true;
            };
  "stacktrace-js@2.0.0" = nodeEnv.buildYarnPackage {
            name = "stacktrace-js-2.0.0";
            packageName = "stacktrace-js";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stacktrace-js/-/stacktrace-js-2.0.0.tgz";
              sha1 = "776ca646a95bc6c6b2b90776536a7fc72c6ddb58";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "statuses@1.3.1" = nodeEnv.buildYarnPackage {
            name = "statuses-1.3.1";
            packageName = "statuses";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/statuses/-/statuses-1.3.1.tgz";
              sha1 = "faf51b9eb74aaef3b3acf4ad5f61abf24cb7b93e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stdout-stream@1.4.0" = nodeEnv.buildYarnPackage {
            name = "stdout-stream-1.4.0";
            packageName = "stdout-stream";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stdout-stream/-/stdout-stream-1.4.0.tgz";
              sha1 = "a2c7c8587e54d9427ea9edb3ac3f2cd522df378b";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "stream-browserify@2.0.1" = nodeEnv.buildYarnPackage {
            name = "stream-browserify-2.0.1";
            packageName = "stream-browserify";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-browserify/-/stream-browserify-2.0.1.tgz";
              sha1 = "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "stream-combiner@0.0.4" = nodeEnv.buildYarnPackage {
            name = "stream-combiner-0.0.4";
            packageName = "stream-combiner";
            version = "0.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-combiner/-/stream-combiner-0.0.4.tgz";
              sha1 = "4d5e433c185261dde623ca3f44c586bcf5c4ad14";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stream-each@1.2.2" = nodeEnv.buildYarnPackage {
            name = "stream-each-1.2.2";
            packageName = "stream-each";
            version = "1.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-each/-/stream-each-1.2.2.tgz";
              sha1 = "8e8c463f91da8991778765873fe4d960d8f616bd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stream-http@2.8.0" = nodeEnv.buildYarnPackage {
            name = "stream-http-2.8.0";
            packageName = "stream-http";
            version = "2.8.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-http/-/stream-http-2.8.0.tgz";
              sha1 = "fd86546dac9b1c91aff8fc5d287b98fafb41bc10";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stream-shift@1.0.0" = nodeEnv.buildYarnPackage {
            name = "stream-shift-1.0.0";
            packageName = "stream-shift";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stream-shift/-/stream-shift-1.0.0.tgz";
              sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strict-uri-encode@1.1.0" = nodeEnv.buildYarnPackage {
            name = "strict-uri-encode-1.1.0";
            packageName = "strict-uri-encode";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strict-uri-encode/-/strict-uri-encode-1.1.0.tgz";
              sha1 = "279b225df1d582b1f54e65addd4352e18faa0713";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "string-argv@0.0.2" = nodeEnv.buildYarnPackage {
            name = "string-argv-0.0.2";
            packageName = "string-argv";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-argv/-/string-argv-0.0.2.tgz";
              sha1 = "dac30408690c21f3c3630a3ff3a05877bdcbd736";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "string-width@2.1.1" = nodeEnv.buildYarnPackage {
            name = "string-width-2.1.1";
            packageName = "string-width";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-width/-/string-width-2.1.1.tgz";
              sha1 = "ab93f27a8dc13d28cac815c462143a6d9012ae9e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "string.prototype.padend@3.0.0" = nodeEnv.buildYarnPackage {
            name = "string.prototype.padend-3.0.0";
            packageName = "string.prototype.padend";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string.prototype.padend/-/string.prototype.padend-3.0.0.tgz";
              sha1 = "f3aaef7c1719f170c5eab1c32bf780d96e21f2f0";
            };
            dependencies = [ pkgs."function-bind@1.1.0" ];
            dontNpmInstall = true;
            };
  "string.prototype.padstart@3.0.0" = nodeEnv.buildYarnPackage {
            name = "string.prototype.padstart-3.0.0";
            packageName = "string.prototype.padstart";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string.prototype.padstart/-/string.prototype.padstart-3.0.0.tgz";
              sha1 = "5bcfad39f4649bb2d031292e19bcf0b510d4b242";
            };
            dependencies = [ pkgs."function-bind@1.1.0" ];
            dontNpmInstall = true;
            };
  "string.prototype.repeat@0.2.0" = nodeEnv.buildYarnPackage {
            name = "string.prototype.repeat-0.2.0";
            packageName = "string.prototype.repeat";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string.prototype.repeat/-/string.prototype.repeat-0.2.0.tgz";
              sha1 = "aba36de08dcee6a5a337d49b2ea1da1b28fc0ecf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "string_decoder@1.0.3" = nodeEnv.buildYarnPackage {
            name = "string_decoder-1.0.3";
            packageName = "string_decoder";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.0.3.tgz";
              sha1 = "0fc67d7c141825de94282dd536bec6b9bce860ab";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stringstream@0.0.5" = nodeEnv.buildYarnPackage {
            name = "stringstream-0.0.5";
            packageName = "stringstream";
            version = "0.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stringstream/-/stringstream-0.0.5.tgz";
              sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-ansi@4.0.0" = nodeEnv.buildYarnPackage {
            name = "strip-ansi-4.0.0";
            packageName = "strip-ansi";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-4.0.0.tgz";
              sha1 = "a8479022eb1ac368a871389b635262c505ee368f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-bom@3.0.0" = nodeEnv.buildYarnPackage {
            name = "strip-bom-3.0.0";
            packageName = "strip-bom";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-3.0.0.tgz";
              sha1 = "2334c18e9c759f7bdd56fdef7e9ae3d588e68ed3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-dirs@2.1.0" = nodeEnv.buildYarnPackage {
            name = "strip-dirs-2.1.0";
            packageName = "strip-dirs";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-dirs/-/strip-dirs-2.1.0.tgz";
              sha1 = "4987736264fc344cf20f6c34aca9d13d1d4ed6c5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-eof@1.0.0" = nodeEnv.buildYarnPackage {
            name = "strip-eof-1.0.0";
            packageName = "strip-eof";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-eof/-/strip-eof-1.0.0.tgz";
              sha1 = "bb43ff5598a6eb05d89b59fcd129c983313606bf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-hex-prefix@1.0.0" = nodeEnv.buildYarnPackage {
            name = "strip-hex-prefix-1.0.0";
            packageName = "strip-hex-prefix";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-hex-prefix/-/strip-hex-prefix-1.0.0.tgz";
              sha1 = "0c5f155fef1151373377de9dbb588da05500e36f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-indent@1.0.1" = nodeEnv.buildYarnPackage {
            name = "strip-indent-1.0.1";
            packageName = "strip-indent";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-indent/-/strip-indent-1.0.1.tgz";
              sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-json-comments@2.0.1" = nodeEnv.buildYarnPackage {
            name = "strip-json-comments-2.0.1";
            packageName = "strip-json-comments";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
              sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "style-loader@0.19.1" = nodeEnv.buildYarnPackage {
            name = "style-loader-0.19.1";
            packageName = "style-loader";
            version = "0.19.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/style-loader/-/style-loader-0.19.1.tgz";
              sha1 = "591ffc80bcefe268b77c5d9ebc0505d772619f85";
            };
            dependencies = [ pkgs."schema-utils@0.3.0" ];
            dontNpmInstall = true;
            };
  "sumchecker@2.0.2" = nodeEnv.buildYarnPackage {
            name = "sumchecker-2.0.2";
            packageName = "sumchecker";
            version = "2.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sumchecker/-/sumchecker-2.0.2.tgz";
              sha1 = "0f42c10e5d05da5d42eea3e56c3399a37d6c5b3e";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "supports-color@5.2.0" = nodeEnv.buildYarnPackage {
            name = "supports-color-5.2.0";
            packageName = "supports-color";
            version = "5.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-5.2.0.tgz";
              sha1 = "b0d5333b1184dd3666cbe5aa0b45c5ac7ac17a4a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "svg-tag-names@1.1.1" = nodeEnv.buildYarnPackage {
            name = "svg-tag-names-1.1.1";
            packageName = "svg-tag-names";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/svg-tag-names/-/svg-tag-names-1.1.1.tgz";
              sha1 = "9641b29ef71025ee094c7043f7cdde7d99fbd50a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "svgo@0.7.1" = nodeEnv.buildYarnPackage {
            name = "svgo-0.7.1";
            packageName = "svgo";
            version = "0.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/svgo/-/svgo-0.7.1.tgz";
              sha1 = "287320fed972cb097e72c2bb1685f96fe08f8034";
            };
            dependencies = [ pkgs."js-yaml@3.6.1" ];
            dontNpmInstall = true;
            };
  "swarm-js@0.1.37" = nodeEnv.buildYarnPackage {
            name = "swarm-js-0.1.37";
            packageName = "swarm-js";
            version = "0.1.37";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/swarm-js/-/swarm-js-0.1.37.tgz";
              sha1 = "27d485317a340bbeec40292af783cc10acfa4663";
            };
            dependencies = [ pkgs."eth-lib@0.1.27" pkgs."fs-extra@2.1.2" pkgs."mime-types@2.1.17" ];
            dontNpmInstall = true;
            };
  "symbol-observable@1.2.0" = nodeEnv.buildYarnPackage {
            name = "symbol-observable-1.2.0";
            packageName = "symbol-observable";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/symbol-observable/-/symbol-observable-1.2.0.tgz";
              sha1 = "c22688aed4eab3cdc2dfeacbb561660560a00804";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "table@4.0.2" = nodeEnv.buildYarnPackage {
            name = "table-4.0.2";
            packageName = "table";
            version = "4.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/table/-/table-4.0.2.tgz";
              sha1 = "a33447375391e766ad34d3486e6e2aedc84d2e36";
            };
            dependencies = [ pkgs."ajv@5.5.2" pkgs."ajv-keywords@2.1.1" pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "tapable@0.2.8" = nodeEnv.buildYarnPackage {
            name = "tapable-0.2.8";
            packageName = "tapable";
            version = "0.2.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tapable/-/tapable-0.2.8.tgz";
              sha1 = "99372a5c999bf2df160afc0d74bed4f47948cd22";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tar-pack@3.3.0" = nodeEnv.buildYarnPackage {
            name = "tar-pack-3.3.0";
            packageName = "tar-pack";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar-pack/-/tar-pack-3.3.0.tgz";
              sha1 = "30931816418f55afc4d21775afdd6720cee45dae";
            };
            dependencies = [ pkgs."debug@2.2.0" pkgs."fstream@1.0.10" pkgs."once@1.3.3" pkgs."readable-stream@2.1.5" pkgs."rimraf@2.5.4" ];
            dontNpmInstall = true;
            };
  "tar-stream@1.5.5" = nodeEnv.buildYarnPackage {
            name = "tar-stream-1.5.5";
            packageName = "tar-stream";
            version = "1.5.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar-stream/-/tar-stream-1.5.5.tgz";
              sha1 = "5cad84779f45c83b1f2508d96b09d88c7218af55";
            };
            dependencies = [ pkgs."end-of-stream@1.1.0" pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "tar.gz@1.0.7" = nodeEnv.buildYarnPackage {
            name = "tar.gz-1.0.7";
            packageName = "tar.gz";
            version = "1.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar.gz/-/tar.gz-1.0.7.tgz";
              sha1 = "577ef2c595faaa73452ef0415fed41113212257b";
            };
            dependencies = [ pkgs."bluebird@2.11.0" pkgs."commander@2.9.0" ];
            dontNpmInstall = true;
            };
  "tar@2.2.1" = nodeEnv.buildYarnPackage {
            name = "tar-2.2.1";
            packageName = "tar";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tar/-/tar-2.2.1.tgz";
              sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
            };
            dependencies = [ pkgs."fstream@1.0.10" ];
            dontNpmInstall = true;
            };
  "text-table@0.2.0" = nodeEnv.buildYarnPackage {
            name = "text-table-0.2.0";
            packageName = "text-table";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/text-table/-/text-table-0.2.0.tgz";
              sha1 = "7f5ee823ae805207c00af2df4a84ec3fcfa570b4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "thenify-all@1.6.0" = nodeEnv.buildYarnPackage {
            name = "thenify-all-1.6.0";
            packageName = "thenify-all";
            version = "1.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/thenify-all/-/thenify-all-1.6.0.tgz";
              sha1 = "1a1918d402d8fc3f98fbf234db0bcc8cc10e9726";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "thenify@3.2.1" = nodeEnv.buildYarnPackage {
            name = "thenify-3.2.1";
            packageName = "thenify";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/thenify/-/thenify-3.2.1.tgz";
              sha1 = "251fd1c80aff6e5cf57cb179ab1fcb724269bd11";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "throttleit@0.0.2" = nodeEnv.buildYarnPackage {
            name = "throttleit-0.0.2";
            packageName = "throttleit";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/throttleit/-/throttleit-0.0.2.tgz";
              sha1 = "cfedf88e60c00dd9697b61fdd2a8343a9b680eaf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "through2@2.0.3" = nodeEnv.buildYarnPackage {
            name = "through2-2.0.3";
            packageName = "through2";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/through2/-/through2-2.0.3.tgz";
              sha1 = "0004569b37c7c74ba39c43f3ced78d1ad94140be";
            };
            dependencies = [ pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "through@2.3.8" = nodeEnv.buildYarnPackage {
            name = "through-2.3.8";
            packageName = "through";
            version = "2.3.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/through/-/through-2.3.8.tgz";
              sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "time-stamp@2.0.0" = nodeEnv.buildYarnPackage {
            name = "time-stamp-2.0.0";
            packageName = "time-stamp";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/time-stamp/-/time-stamp-2.0.0.tgz";
              sha1 = "95c6a44530e15ba8d6f4a3ecb8c3a3fac46da357";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "timed-out@4.0.1" = nodeEnv.buildYarnPackage {
            name = "timed-out-4.0.1";
            packageName = "timed-out";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/timed-out/-/timed-out-4.0.1.tgz";
              sha1 = "f32eacac5a175bea25d7fab565ab3ed8741ef56f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "timers-browserify@2.0.6" = nodeEnv.buildYarnPackage {
            name = "timers-browserify-2.0.6";
            packageName = "timers-browserify";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/timers-browserify/-/timers-browserify-2.0.6.tgz";
              sha1 = "241e76927d9ca05f4d959819022f5b3664b64bae";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "title-case@2.1.1" = nodeEnv.buildYarnPackage {
            name = "title-case-2.1.1";
            packageName = "title-case";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/title-case/-/title-case-2.1.1.tgz";
              sha1 = "3e127216da58d2bc5becf137ab91dae3a7cd8faa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tmp@0.0.33" = nodeEnv.buildYarnPackage {
            name = "tmp-0.0.33";
            packageName = "tmp";
            version = "0.0.33";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.33.tgz";
              sha1 = "6d34335889768d21b2bcda0aa277ced3b1bfadf9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "to-arraybuffer@1.0.1" = nodeEnv.buildYarnPackage {
            name = "to-arraybuffer-1.0.1";
            packageName = "to-arraybuffer";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/to-arraybuffer/-/to-arraybuffer-1.0.1.tgz";
              sha1 = "7d229b1fcc637e466ca081180836a7aabff83f43";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "to-fast-properties@2.0.0" = nodeEnv.buildYarnPackage {
            name = "to-fast-properties-2.0.0";
            packageName = "to-fast-properties";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-2.0.0.tgz";
              sha1 = "dc5e698cbd079265bc73e0377681a4e4e83f616e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "toggle-selection@1.0.6" = nodeEnv.buildYarnPackage {
            name = "toggle-selection-1.0.6";
            packageName = "toggle-selection";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/toggle-selection/-/toggle-selection-1.0.6.tgz";
              sha1 = "6e45b1263f2017fa0acc7d89d78b15b8bf77da32";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "toposort@1.0.6" = nodeEnv.buildYarnPackage {
            name = "toposort-1.0.6";
            packageName = "toposort";
            version = "1.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/toposort/-/toposort-1.0.6.tgz";
              sha1 = "c31748e55d210effc00fdcdc7d6e68d7d7bb9cec";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "touch@0.0.3" = nodeEnv.buildYarnPackage {
            name = "touch-0.0.3";
            packageName = "touch";
            version = "0.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/touch/-/touch-0.0.3.tgz";
              sha1 = "51aef3d449571d4f287a5d87c9c8b49181a0db1d";
            };
            dependencies = [ pkgs."nopt@1.0.10" ];
            dontNpmInstall = true;
            };
  "tough-cookie@2.3.4" = nodeEnv.buildYarnPackage {
            name = "tough-cookie-2.3.4";
            packageName = "tough-cookie";
            version = "2.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.3.4.tgz";
              sha1 = "ec60cee38ac675063ffc97a5c18970578ee83655";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "traverse@0.3.9" = nodeEnv.buildYarnPackage {
            name = "traverse-0.3.9";
            packageName = "traverse";
            version = "0.3.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/traverse/-/traverse-0.3.9.tgz";
              sha1 = "717b8f220cc0bb7b44e40514c22b2e8bbc70d8b9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tree-kill@1.2.0" = nodeEnv.buildYarnPackage {
            name = "tree-kill-1.2.0";
            packageName = "tree-kill";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tree-kill/-/tree-kill-1.2.0.tgz";
              sha1 = "5846786237b4239014f05db156b643212d4c6f36";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "trim-newlines@1.0.0" = nodeEnv.buildYarnPackage {
            name = "trim-newlines-1.0.0";
            packageName = "trim-newlines";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/trim-newlines/-/trim-newlines-1.0.0.tgz";
              sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "trim-right@1.0.1" = nodeEnv.buildYarnPackage {
            name = "trim-right-1.0.1";
            packageName = "trim-right";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/trim-right/-/trim-right-1.0.1.tgz";
              sha1 = "cb2e1203067e0c8de1f614094b9fe45704ea6003";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "trim@0.0.1" = nodeEnv.buildYarnPackage {
            name = "trim-0.0.1";
            packageName = "trim";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/trim/-/trim-0.0.1.tgz";
              sha1 = "5858547f6b290757ee95cccc666fb50084c460dd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "true-case-path@1.0.2" = nodeEnv.buildYarnPackage {
            name = "true-case-path-1.0.2";
            packageName = "true-case-path";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/true-case-path/-/true-case-path-1.0.2.tgz";
              sha1 = "7ec91130924766c7f573be3020c34f8fdfd00d62";
            };
            dependencies = [ pkgs."glob@6.0.4" ];
            dontNpmInstall = true;
            };
  "truncate-utf8-bytes@1.0.2" = nodeEnv.buildYarnPackage {
            name = "truncate-utf8-bytes-1.0.2";
            packageName = "truncate-utf8-bytes";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/truncate-utf8-bytes/-/truncate-utf8-bytes-1.0.2.tgz";
              sha1 = "405923909592d56f78a5818434b0b78489ca5f2b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tty-browserify@0.0.0" = nodeEnv.buildYarnPackage {
            name = "tty-browserify-0.0.0";
            packageName = "tty-browserify";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tty-browserify/-/tty-browserify-0.0.0.tgz";
              sha1 = "a157ba402da24e9bf957f9aa69d524eed42901a6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tunnel-agent@0.6.0" = nodeEnv.buildYarnPackage {
            name = "tunnel-agent-0.6.0";
            packageName = "tunnel-agent";
            version = "0.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
              sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tweetnacl@0.14.5" = nodeEnv.buildYarnPackage {
            name = "tweetnacl-0.14.5";
            packageName = "tweetnacl";
            version = "0.14.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tweetnacl/-/tweetnacl-0.14.5.tgz";
              sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "type-check@0.3.2" = nodeEnv.buildYarnPackage {
            name = "type-check-0.3.2";
            packageName = "type-check";
            version = "0.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-check/-/type-check-0.3.2.tgz";
              sha1 = "5884cab512cf1d355e3fb784f30804b2b520db72";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "type-detect@4.0.8" = nodeEnv.buildYarnPackage {
            name = "type-detect-4.0.8";
            packageName = "type-detect";
            version = "4.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-detect/-/type-detect-4.0.8.tgz";
              sha1 = "7646fb5f18871cfbb7749e69bd39a6388eb7450c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "type-is@1.6.15" = nodeEnv.buildYarnPackage {
            name = "type-is-1.6.15";
            packageName = "type-is";
            version = "1.6.15";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-is/-/type-is-1.6.15.tgz";
              sha1 = "cab10fb4909e441c82842eafe1ad646c81804410";
            };
            dependencies = [ pkgs."mime-types@2.1.17" ];
            dontNpmInstall = true;
            };
  "typedarray-to-buffer@3.1.2" = nodeEnv.buildYarnPackage {
            name = "typedarray-to-buffer-3.1.2";
            packageName = "typedarray-to-buffer";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/typedarray-to-buffer/-/typedarray-to-buffer-3.1.2.tgz";
              sha1 = "1017b32d984ff556eba100f501589aba1ace2e04";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "typedarray@0.0.6" = nodeEnv.buildYarnPackage {
            name = "typedarray-0.0.6";
            packageName = "typedarray";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz";
              sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ua-parser-js@0.7.12" = nodeEnv.buildYarnPackage {
            name = "ua-parser-js-0.7.12";
            packageName = "ua-parser-js";
            version = "0.7.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ua-parser-js/-/ua-parser-js-0.7.12.tgz";
              sha1 = "04c81a99bdd5dc52263ea29d24c6bf8d4818a4bb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uglify-es@3.3.9" = nodeEnv.buildYarnPackage {
            name = "uglify-es-3.3.9";
            packageName = "uglify-es";
            version = "3.3.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglify-es/-/uglify-es-3.3.9.tgz";
              sha1 = "0c1c4f0700bed8dbc124cdb304d2592ca203e677";
            };
            dependencies = [ pkgs."commander@2.13.0" ];
            dontNpmInstall = true;
            };
  "uglify-js@3.3.10" = nodeEnv.buildYarnPackage {
            name = "uglify-js-3.3.10";
            packageName = "uglify-js";
            version = "3.3.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.3.10.tgz";
              sha1 = "8e47821d4cf28e14c1826a0078ba0825ed094da8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uglify-to-browserify@1.0.2" = nodeEnv.buildYarnPackage {
            name = "uglify-to-browserify-1.0.2";
            packageName = "uglify-to-browserify";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
              sha1 = "6e0924d6bda6b5afe349e39a6d632850a0f882b7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uglifyjs-webpack-plugin@1.2.0" = nodeEnv.buildYarnPackage {
            name = "uglifyjs-webpack-plugin-1.2.0";
            packageName = "uglifyjs-webpack-plugin";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglifyjs-webpack-plugin/-/uglifyjs-webpack-plugin-1.2.0.tgz";
              sha1 = "f706fa4c655000a086b4a97c7d835ed0f6e9b0ef";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uid-number@0.0.6" = nodeEnv.buildYarnPackage {
            name = "uid-number-0.0.6";
            packageName = "uid-number";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uid-number/-/uid-number-0.0.6.tgz";
              sha1 = "0ea10e8035e8eb5b8e4449f06da1c730663baa81";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ultron@1.1.1" = nodeEnv.buildYarnPackage {
            name = "ultron-1.1.1";
            packageName = "ultron";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ultron/-/ultron-1.1.1.tgz";
              sha1 = "9fe1536a10a664a65266a1e3ccf85fd36302bc9c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "unbzip2-stream@1.2.5" = nodeEnv.buildYarnPackage {
            name = "unbzip2-stream-1.2.5";
            packageName = "unbzip2-stream";
            version = "1.2.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unbzip2-stream/-/unbzip2-stream-1.2.5.tgz";
              sha1 = "73a033a567bbbde59654b193c44d48a7e4f43c47";
            };
            dependencies = [ pkgs."buffer@3.6.0" ];
            dontNpmInstall = true;
            };
  "underscore@1.8.3" = nodeEnv.buildYarnPackage {
            name = "underscore-1.8.3";
            packageName = "underscore";
            version = "1.8.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/underscore/-/underscore-1.8.3.tgz";
              sha1 = "4f3fb53b106e6097fcf9cb4109f2a5e9bdfa5022";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uniq@1.0.1" = nodeEnv.buildYarnPackage {
            name = "uniq-1.0.1";
            packageName = "uniq";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uniq/-/uniq-1.0.1.tgz";
              sha1 = "b31c5ae8254844a3a8281541ce2b04b865a734ff";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uniqid@4.1.1" = nodeEnv.buildYarnPackage {
            name = "uniqid-4.1.1";
            packageName = "uniqid";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uniqid/-/uniqid-4.1.1.tgz";
              sha1 = "89220ddf6b751ae52b5f72484863528596bb84c1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uniqs@2.0.0" = nodeEnv.buildYarnPackage {
            name = "uniqs-2.0.0";
            packageName = "uniqs";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uniqs/-/uniqs-2.0.0.tgz";
              sha1 = "ffede4b36b25290696e6e165d4a59edb998e6b02";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "unique-filename@1.1.0" = nodeEnv.buildYarnPackage {
            name = "unique-filename-1.1.0";
            packageName = "unique-filename";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unique-filename/-/unique-filename-1.1.0.tgz";
              sha1 = "d05f2fe4032560871f30e93cbe735eea201514f3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "unique-slug@2.0.0" = nodeEnv.buildYarnPackage {
            name = "unique-slug-2.0.0";
            packageName = "unique-slug";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unique-slug/-/unique-slug-2.0.0.tgz";
              sha1 = "db6676e7c7cc0629878ff196097c78855ae9f4ab";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "unique-string@1.0.0" = nodeEnv.buildYarnPackage {
            name = "unique-string-1.0.0";
            packageName = "unique-string";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unique-string/-/unique-string-1.0.0.tgz";
              sha1 = "9e1057cca851abb93398f8b33ae187b99caec11a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "universalify@0.1.1" = nodeEnv.buildYarnPackage {
            name = "universalify-0.1.1";
            packageName = "universalify";
            version = "0.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/universalify/-/universalify-0.1.1.tgz";
              sha1 = "fa71badd4437af4c148841e3b3b165f9e9e590b7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "unorm@1.4.1" = nodeEnv.buildYarnPackage {
            name = "unorm-1.4.1";
            packageName = "unorm";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unorm/-/unorm-1.4.1.tgz";
              sha1 = "364200d5f13646ca8bcd44490271335614792300";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "unpipe@1.0.0" = nodeEnv.buildYarnPackage {
            name = "unpipe-1.0.0";
            packageName = "unpipe";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/unpipe/-/unpipe-1.0.0.tgz";
              sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "upper-case@1.1.3" = nodeEnv.buildYarnPackage {
            name = "upper-case-1.1.3";
            packageName = "upper-case";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/upper-case/-/upper-case-1.1.3.tgz";
              sha1 = "f6b4501c2ec4cdd26ba78be7222961de77621598";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "urix@0.1.0" = nodeEnv.buildYarnPackage {
            name = "urix-0.1.0";
            packageName = "urix";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/urix/-/urix-0.1.0.tgz";
              sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "url-loader@0.6.2" = nodeEnv.buildYarnPackage {
            name = "url-loader-0.6.2";
            packageName = "url-loader";
            version = "0.6.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-loader/-/url-loader-0.6.2.tgz";
              sha1 = "a007a7109620e9d988d14bce677a1decb9a993f7";
            };
            dependencies = [ pkgs."schema-utils@0.3.0" ];
            dontNpmInstall = true;
            };
  "url-parse-lax@1.0.0" = nodeEnv.buildYarnPackage {
            name = "url-parse-lax-1.0.0";
            packageName = "url-parse-lax";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-parse-lax/-/url-parse-lax-1.0.0.tgz";
              sha1 = "7af8f303645e9bd79a272e7a14ac68bc0609da73";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "url-set-query@1.0.0" = nodeEnv.buildYarnPackage {
            name = "url-set-query-1.0.0";
            packageName = "url-set-query";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-set-query/-/url-set-query-1.0.0.tgz";
              sha1 = "016e8cfd7c20ee05cafe7795e892bd0702faa339";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "url-to-options@1.0.1" = nodeEnv.buildYarnPackage {
            name = "url-to-options-1.0.1";
            packageName = "url-to-options";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url-to-options/-/url-to-options-1.0.1.tgz";
              sha1 = "1505a03a289a48cbd7a434efbaeec5055f5633a9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "url@0.11.0" = nodeEnv.buildYarnPackage {
            name = "url-0.11.0";
            packageName = "url";
            version = "0.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/url/-/url-0.11.0.tgz";
              sha1 = "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1";
            };
            dependencies = [ pkgs."punycode@1.3.2" ];
            dontNpmInstall = true;
            };
  "utf8-byte-length@1.0.4" = nodeEnv.buildYarnPackage {
            name = "utf8-byte-length-1.0.4";
            packageName = "utf8-byte-length";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utf8-byte-length/-/utf8-byte-length-1.0.4.tgz";
              sha1 = "f45f150c4c66eee968186505ab93fcbb8ad6bf61";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "utf8@2.1.1" = nodeEnv.buildYarnPackage {
            name = "utf8-2.1.1";
            packageName = "utf8";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utf8/-/utf8-2.1.1.tgz";
              sha1 = "2e01db02f7d8d0944f77104f1609eb0c304cf768";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "util-arity@1.1.0" = nodeEnv.buildYarnPackage {
            name = "util-arity-1.1.0";
            packageName = "util-arity";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/util-arity/-/util-arity-1.1.0.tgz";
              sha1 = "59d01af1fdb3fede0ac4e632b0ab5f6ce97c9330";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "util-deprecate@1.0.2" = nodeEnv.buildYarnPackage {
            name = "util-deprecate-1.0.2";
            packageName = "util-deprecate";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
              sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "util@0.10.3" = nodeEnv.buildYarnPackage {
            name = "util-0.10.3";
            packageName = "util";
            version = "0.10.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/util/-/util-0.10.3.tgz";
              sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
            };
            dependencies = [ pkgs."inherits@2.0.1" ];
            dontNpmInstall = true;
            };
  "utila@0.4.0" = nodeEnv.buildYarnPackage {
            name = "utila-0.4.0";
            packageName = "utila";
            version = "0.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utila/-/utila-0.4.0.tgz";
              sha1 = "8a16a05d445657a3aea5eecc5b12a4fa5379772c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "utils-merge@1.0.1" = nodeEnv.buildYarnPackage {
            name = "utils-merge-1.0.1";
            packageName = "utils-merge";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utils-merge/-/utils-merge-1.0.1.tgz";
              sha1 = "9f95710f50a267947b2ccc124741c1028427e713";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uuid@3.2.1" = nodeEnv.buildYarnPackage {
            name = "uuid-3.2.1";
            packageName = "uuid";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uuid/-/uuid-3.2.1.tgz";
              sha1 = "12c528bb9d58d0b9265d9a2f6f0fe8be17ff1f14";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "validate-npm-package-license@3.0.3" = nodeEnv.buildYarnPackage {
            name = "validate-npm-package-license-3.0.3";
            packageName = "validate-npm-package-license";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/validate-npm-package-license/-/validate-npm-package-license-3.0.3.tgz";
              sha1 = "81643bcbef1bdfecd4623793dc4648948ba98338";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "validator@6.3.0" = nodeEnv.buildYarnPackage {
            name = "validator-6.3.0";
            packageName = "validator";
            version = "6.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/validator/-/validator-6.3.0.tgz";
              sha1 = "47ce23ed8d4eaddfa9d4b8ef0071b6cf1078d7c8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "vary@1.1.2" = nodeEnv.buildYarnPackage {
            name = "vary-1.1.2";
            packageName = "vary";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vary/-/vary-1.1.2.tgz";
              sha1 = "2299f02c6ded30d4a5961b0b9f74524a18f634fc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "velocity-animate@1.5.1" = nodeEnv.buildYarnPackage {
            name = "velocity-animate-1.5.1";
            packageName = "velocity-animate";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/velocity-animate/-/velocity-animate-1.5.1.tgz";
              sha1 = "606837047bab8fbfb59a636d1d82ecc3f7bd71a6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "velocity-react@1.3.3" = nodeEnv.buildYarnPackage {
            name = "velocity-react-1.3.3";
            packageName = "velocity-react";
            version = "1.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/velocity-react/-/velocity-react-1.3.3.tgz";
              sha1 = "d6d47276cfc8be2a75623879b20140ac58c1b82b";
            };
            dependencies = [ pkgs."lodash@3.10.1" ];
            dontNpmInstall = true;
            };
  "vendors@1.0.1" = nodeEnv.buildYarnPackage {
            name = "vendors-1.0.1";
            packageName = "vendors";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vendors/-/vendors-1.0.1.tgz";
              sha1 = "37ad73c8ee417fb3d580e785312307d274847f22";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "verror@1.10.0" = nodeEnv.buildYarnPackage {
            name = "verror-1.10.0";
            packageName = "verror";
            version = "1.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/verror/-/verror-1.10.0.tgz";
              sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "vinyl@0.5.3" = nodeEnv.buildYarnPackage {
            name = "vinyl-0.5.3";
            packageName = "vinyl";
            version = "0.5.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vinyl/-/vinyl-0.5.3.tgz";
              sha1 = "b0455b38fc5e0cf30d4325132e461970c2091cde";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "vm-browserify@0.0.4" = nodeEnv.buildYarnPackage {
            name = "vm-browserify-0.0.4";
            packageName = "vm-browserify";
            version = "0.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vm-browserify/-/vm-browserify-0.0.4.tgz";
              sha1 = "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "warning@3.0.0" = nodeEnv.buildYarnPackage {
            name = "warning-3.0.0";
            packageName = "warning";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/warning/-/warning-3.0.0.tgz";
              sha1 = "32e5377cb572de4ab04753bdf8821c01ed605b7c";
            };
            dependencies = [ pkgs."loose-envify@1.3.0" ];
            dontNpmInstall = true;
            };
  "watchpack@1.4.0" = nodeEnv.buildYarnPackage {
            name = "watchpack-1.4.0";
            packageName = "watchpack";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/watchpack/-/watchpack-1.4.0.tgz";
              sha1 = "4a1472bcbb952bd0a9bb4036801f954dfb39faac";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "wdio-dot-reporter@0.0.9" = nodeEnv.buildYarnPackage {
            name = "wdio-dot-reporter-0.0.9";
            packageName = "wdio-dot-reporter";
            version = "0.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wdio-dot-reporter/-/wdio-dot-reporter-0.0.9.tgz";
              sha1 = "929b2adafd49d6b0534fda068e87319b47e38fe5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-bzz@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-bzz-1.0.0-beta.30";
            packageName = "web3-bzz";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-bzz/-/web3-bzz-1.0.0-beta.30.tgz";
              sha1 = "2434da183c239aaaa5c013f62307429ea91dd706";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-core-helpers@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-core-helpers-1.0.0-beta.30";
            packageName = "web3-core-helpers";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-helpers/-/web3-core-helpers-1.0.0-beta.30.tgz";
              sha1 = "a000cee3f0a09eea13d74b5730335d4635fe1f2f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-core-method@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-core-method-1.0.0-beta.30";
            packageName = "web3-core-method";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-method/-/web3-core-method-1.0.0-beta.30.tgz";
              sha1 = "8dd6ff789e8d1563b8786d13a78c7facefae471c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-core-promievent@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-core-promievent-1.0.0-beta.30";
            packageName = "web3-core-promievent";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-promievent/-/web3-core-promievent-1.0.0-beta.30.tgz";
              sha1 = "6205192bfb097441132226a5939ec5aed3a8a291";
            };
            dependencies = [ pkgs."bluebird@3.3.1" ];
            dontNpmInstall = true;
            };
  "web3-core-requestmanager@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-core-requestmanager-1.0.0-beta.30";
            packageName = "web3-core-requestmanager";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-requestmanager/-/web3-core-requestmanager-1.0.0-beta.30.tgz";
              sha1 = "6ee56fb8a6cb85fd01b3080854f50d64e52240c6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-core-subscriptions@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-core-subscriptions-1.0.0-beta.30";
            packageName = "web3-core-subscriptions";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core-subscriptions/-/web3-core-subscriptions-1.0.0-beta.30.tgz";
              sha1 = "31652c75356c3f67e5a19cd14b8d314bad4e2127";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-core@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-core-1.0.0-beta.30";
            packageName = "web3-core";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-core/-/web3-core-1.0.0-beta.30.tgz";
              sha1 = "f75f4d3b85be74c7674637921c3e013bc5d27679";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-eth-abi@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-eth-abi-1.0.0-beta.30";
            packageName = "web3-eth-abi";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-abi/-/web3-eth-abi-1.0.0-beta.30.tgz";
              sha1 = "6ea52c999a8505b47c2f88ba61d2a680a1066409";
            };
            dependencies = [ pkgs."bn.js@4.11.6" ];
            dontNpmInstall = true;
            };
  "web3-eth-accounts@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-eth-accounts-1.0.0-beta.30";
            packageName = "web3-eth-accounts";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-accounts/-/web3-eth-accounts-1.0.0-beta.30.tgz";
              sha1 = "8f0a1b342c4283812372242a6e2df268887b3b70";
            };
            dependencies = [ pkgs."bluebird@3.3.1" pkgs."uuid@2.0.1" ];
            dontNpmInstall = true;
            };
  "web3-eth-contract@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-eth-contract-1.0.0-beta.30";
            packageName = "web3-eth-contract";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-contract/-/web3-eth-contract-1.0.0-beta.30.tgz";
              sha1 = "d7eba2385084dff3c75aac48235af2c8d2d6a258";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-eth-iban@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-eth-iban-1.0.0-beta.30";
            packageName = "web3-eth-iban";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-iban/-/web3-eth-iban-1.0.0-beta.30.tgz";
              sha1 = "3b080a5c4da1fa37477b17e4c900781b92150645";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-eth-personal@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-eth-personal-1.0.0-beta.30";
            packageName = "web3-eth-personal";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth-personal/-/web3-eth-personal-1.0.0-beta.30.tgz";
              sha1 = "8bd4ef40b3b5f841dd3a8b97873d9dc791caf748";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-eth@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-eth-1.0.0-beta.30";
            packageName = "web3-eth";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-eth/-/web3-eth-1.0.0-beta.30.tgz";
              sha1 = "029b15e14cb608b9cfe02603b504d651870f0501";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-net@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-net-1.0.0-beta.30";
            packageName = "web3-net";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-net/-/web3-net-1.0.0-beta.30.tgz";
              sha1 = "0a352ede296e6d4b7f88b67aa474e49703de73bf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-providers-http@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-providers-http-1.0.0-beta.30";
            packageName = "web3-providers-http";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-providers-http/-/web3-providers-http-1.0.0-beta.30.tgz";
              sha1 = "cda8d9133c6f31d1a812dc5a42af00cbea98cd86";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-providers-ipc@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-providers-ipc-1.0.0-beta.30";
            packageName = "web3-providers-ipc";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-providers-ipc/-/web3-providers-ipc-1.0.0-beta.30.tgz";
              sha1 = "ee2d8d18a3f120b777044a56e67e0aee20854587";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-providers-ws@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-providers-ws-1.0.0-beta.30";
            packageName = "web3-providers-ws";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-providers-ws/-/web3-providers-ws-1.0.0-beta.30.tgz";
              sha1 = "9ae69a9ead8a8761f86379fa347b6db5ae44b12d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-shh@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-shh-1.0.0-beta.30";
            packageName = "web3-shh";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-shh/-/web3-shh-1.0.0-beta.30.tgz";
              sha1 = "2bfe3220d958ff4ca592017790852bc57b7b0ca7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "web3-utils@1.0.0-beta.30" = nodeEnv.buildYarnPackage {
            name = "web3-utils-1.0.0-beta.30";
            packageName = "web3-utils";
            version = "1.0.0-beta.30";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3-utils/-/web3-utils-1.0.0-beta.30.tgz";
              sha1 = "eae408cc8d6d6fecc8d5097cfead51773f231ff9";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."eth-lib@0.1.27" ];
            dontNpmInstall = true;
            };
  "web3@1.0.0-beta.24" = nodeEnv.buildYarnPackage {
            name = "web3-1.0.0-beta.24";
            packageName = "web3";
            version = "1.0.0-beta.24";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/web3/-/web3-1.0.0-beta.24.tgz";
              sha1 = "0b653d6a50f407b37f593371fb6ee1bd3a1f27c2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "webdriverio@4.10.2" = nodeEnv.buildYarnPackage {
            name = "webdriverio-4.10.2";
            packageName = "webdriverio";
            version = "4.10.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webdriverio/-/webdriverio-4.10.2.tgz";
              sha1 = "0d28622802c966015afe34b3ac566dc339f22e43";
            };
            dependencies = [ pkgs."supports-color@5.0.1" pkgs."validator@9.1.2" ];
            dontNpmInstall = true;
            };
  "webpack-dev-middleware@1.12.2" = nodeEnv.buildYarnPackage {
            name = "webpack-dev-middleware-1.12.2";
            packageName = "webpack-dev-middleware";
            version = "1.12.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-dev-middleware/-/webpack-dev-middleware-1.12.2.tgz";
              sha1 = "f8fc1120ce3b4fc5680ceecb43d777966b21105e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "webpack-hot-middleware@2.21.0" = nodeEnv.buildYarnPackage {
            name = "webpack-hot-middleware-2.21.0";
            packageName = "webpack-hot-middleware";
            version = "2.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-hot-middleware/-/webpack-hot-middleware-2.21.0.tgz";
              sha1 = "7b3c113a7a4b301c91e0749573c7aab28b414b52";
            };
            dependencies = [ pkgs."strip-ansi@3.0.1" ];
            dontNpmInstall = true;
            };
  "webpack-merge@4.1.1" = nodeEnv.buildYarnPackage {
            name = "webpack-merge-4.1.1";
            packageName = "webpack-merge";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-merge/-/webpack-merge-4.1.1.tgz";
              sha1 = "f1197a0a973e69c6fbeeb6d658219aa8c0c13555";
            };
            dependencies = [ pkgs."lodash@4.17.5" ];
            dontNpmInstall = true;
            };
  "webpack-sources@1.1.0" = nodeEnv.buildYarnPackage {
            name = "webpack-sources-1.1.0";
            packageName = "webpack-sources";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack-sources/-/webpack-sources-1.1.0.tgz";
              sha1 = "a101ebae59d6507354d71d8013950a3a8b7a5a54";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "webpack@3.11.0" = nodeEnv.buildYarnPackage {
            name = "webpack-3.11.0";
            packageName = "webpack";
            version = "3.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/webpack/-/webpack-3.11.0.tgz";
              sha1 = "77da451b1d7b4b117adaf41a1a93b5742f24d894";
            };
            dependencies = [ pkgs."source-map@0.5.6" pkgs."supports-color@4.5.0" pkgs."uglifyjs-webpack-plugin@0.4.6" ];
            dontNpmInstall = true;
            };
  "websocket@1.0.24" = nodeEnv.buildYarnPackage {
            name = "websocket-1.0.24";
            packageName = "websocket";
            version = "1.0.24";
            src = fetchgit {
              url = "git://github.com/frozeman/WebSocket-Node.git";
              rev = "7004c39c42ac98875ab61126e5b4a925430f592c";
              sha256 = overrides."websocket@1.0.24".sha256;
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "wgxpath@1.0.0" = nodeEnv.buildYarnPackage {
            name = "wgxpath-1.0.0";
            packageName = "wgxpath";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wgxpath/-/wgxpath-1.0.0.tgz";
              sha1 = "eef8a4b9d558cc495ad3a9a2b751597ecd9af690";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "whatwg-fetch@2.0.1" = nodeEnv.buildYarnPackage {
            name = "whatwg-fetch-2.0.1";
            packageName = "whatwg-fetch";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/whatwg-fetch/-/whatwg-fetch-2.0.1.tgz";
              sha1 = "078b9461bbe91cea73cbce8bb122a05f9e92b772";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "whet.extend@0.9.9" = nodeEnv.buildYarnPackage {
            name = "whet.extend-0.9.9";
            packageName = "whet.extend";
            version = "0.9.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/whet.extend/-/whet.extend-0.9.9.tgz";
              sha1 = "f877d5bf648c97e5aa542fadc16d6a259b9c11a1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "which-module@2.0.0" = nodeEnv.buildYarnPackage {
            name = "which-module-2.0.0";
            packageName = "which-module";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/which-module/-/which-module-2.0.0.tgz";
              sha1 = "d9ef07dce77b9902b8a3a8fa4b31c3e3f7e6e87a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "which@1.3.0" = nodeEnv.buildYarnPackage {
            name = "which-1.3.0";
            packageName = "which";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/which/-/which-1.3.0.tgz";
              sha1 = "ff04bdfc010ee547d780bec38e1ac1c2777d253a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "wide-align@1.1.0" = nodeEnv.buildYarnPackage {
            name = "wide-align-1.1.0";
            packageName = "wide-align";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wide-align/-/wide-align-1.1.0.tgz";
              sha1 = "40edde802a71fea1f070da3e62dcda2e7add96ad";
            };
            dependencies = [ pkgs."string-width@1.0.2" ];
            dontNpmInstall = true;
            };
  "window-size@0.1.0" = nodeEnv.buildYarnPackage {
            name = "window-size-0.1.0";
            packageName = "window-size";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/window-size/-/window-size-0.1.0.tgz";
              sha1 = "5438cd2ea93b202efa3a19fe8887aee7c94f9c9d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "winston-papertrail@1.0.4" = nodeEnv.buildYarnPackage {
            name = "winston-papertrail-1.0.4";
            packageName = "winston-papertrail";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/winston-papertrail/-/winston-papertrail-1.0.4.tgz";
              sha1 = "95b40e2f518cf12975207b272caab08c8ea448f9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "winston@2.3.1" = nodeEnv.buildYarnPackage {
            name = "winston-2.3.1";
            packageName = "winston";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/winston/-/winston-2.3.1.tgz";
              sha1 = "0b48420d978c01804cf0230b648861598225a119";
            };
            dependencies = [ pkgs."async@1.0.0" pkgs."colors@1.0.3" ];
            dontNpmInstall = true;
            };
  "wordwrap@1.0.0" = nodeEnv.buildYarnPackage {
            name = "wordwrap-1.0.0";
            packageName = "wordwrap";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-1.0.0.tgz";
              sha1 = "27584810891456a4171c8d0226441ade90cbcaeb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "worker-farm@1.5.2" = nodeEnv.buildYarnPackage {
            name = "worker-farm-1.5.2";
            packageName = "worker-farm";
            version = "1.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/worker-farm/-/worker-farm-1.5.2.tgz";
              sha1 = "32b312e5dc3d5d45d79ef44acc2587491cd729ae";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "wrap-ansi@2.1.0" = nodeEnv.buildYarnPackage {
            name = "wrap-ansi-2.1.0";
            packageName = "wrap-ansi";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-2.1.0.tgz";
              sha1 = "d8fc3d284dd05794fe84973caecdd1cf824fdd85";
            };
            dependencies = [ pkgs."string-width@1.0.2" pkgs."strip-ansi@3.0.1" ];
            dontNpmInstall = true;
            };
  "wrappy@1.0.2" = nodeEnv.buildYarnPackage {
            name = "wrappy-1.0.2";
            packageName = "wrappy";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz";
              sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "write-file-atomic@2.3.0" = nodeEnv.buildYarnPackage {
            name = "write-file-atomic-2.3.0";
            packageName = "write-file-atomic";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/write-file-atomic/-/write-file-atomic-2.3.0.tgz";
              sha1 = "1ff61575c2e2a4e8e510d6fa4e243cce183999ab";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "write@0.2.1" = nodeEnv.buildYarnPackage {
            name = "write-0.2.1";
            packageName = "write";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/write/-/write-0.2.1.tgz";
              sha1 = "5fc03828e264cea3fe91455476f7a3c566cb0757";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ws@3.3.3" = nodeEnv.buildYarnPackage {
            name = "ws-3.3.3";
            packageName = "ws";
            version = "3.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ws/-/ws-3.3.3.tgz";
              sha1 = "f1cf84fe2d5e901ebce94efaece785f187a228f2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xdg-basedir@3.0.0" = nodeEnv.buildYarnPackage {
            name = "xdg-basedir-3.0.0";
            packageName = "xdg-basedir";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xdg-basedir/-/xdg-basedir-3.0.0.tgz";
              sha1 = "496b2cc109eca8dbacfe2dc72b603c17c5870ad4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xhr-request-promise@0.1.2" = nodeEnv.buildYarnPackage {
            name = "xhr-request-promise-0.1.2";
            packageName = "xhr-request-promise";
            version = "0.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr-request-promise/-/xhr-request-promise-0.1.2.tgz";
              sha1 = "343c44d1ee7726b8648069682d0f840c83b4261d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xhr-request@1.1.0" = nodeEnv.buildYarnPackage {
            name = "xhr-request-1.1.0";
            packageName = "xhr-request";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr-request/-/xhr-request-1.1.0.tgz";
              sha1 = "f4a7c1868b9f198723444d82dcae317643f2e2ed";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xhr2@0.1.4" = nodeEnv.buildYarnPackage {
            name = "xhr2-0.1.4";
            packageName = "xhr2";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr2/-/xhr2-0.1.4.tgz";
              sha1 = "7f87658847716db5026323812f818cadab387a5f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xhr@2.4.1" = nodeEnv.buildYarnPackage {
            name = "xhr-2.4.1";
            packageName = "xhr";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xhr/-/xhr-2.4.1.tgz";
              sha1 = "ba982cced205ae5eec387169ac9dc77ca4853d38";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xml-char-classes@1.0.0" = nodeEnv.buildYarnPackage {
            name = "xml-char-classes-1.0.0";
            packageName = "xml-char-classes";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xml-char-classes/-/xml-char-classes-1.0.0.tgz";
              sha1 = "64657848a20ffc5df583a42ad8a277b4512bbc4d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xmlbuilder@8.2.2" = nodeEnv.buildYarnPackage {
            name = "xmlbuilder-8.2.2";
            packageName = "xmlbuilder";
            version = "8.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-8.2.2.tgz";
              sha1 = "69248673410b4ba42e1a6136551d2922335aa773";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xmldom@0.1.27" = nodeEnv.buildYarnPackage {
            name = "xmldom-0.1.27";
            packageName = "xmldom";
            version = "0.1.27";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xmldom/-/xmldom-0.1.27.tgz";
              sha1 = "d501f97b3bdb403af8ef9ecc20573187aadac0e9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xss-filters@1.2.7" = nodeEnv.buildYarnPackage {
            name = "xss-filters-1.2.7";
            packageName = "xss-filters";
            version = "1.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xss-filters/-/xss-filters-1.2.7.tgz";
              sha1 = "59fa1de201f36f2f3470dcac5f58ccc2830b0a9a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xtend@4.0.1" = nodeEnv.buildYarnPackage {
            name = "xtend-4.0.1";
            packageName = "xtend";
            version = "4.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xtend/-/xtend-4.0.1.tgz";
              sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "y18n@4.0.0" = nodeEnv.buildYarnPackage {
            name = "y18n-4.0.0";
            packageName = "y18n";
            version = "4.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/y18n/-/y18n-4.0.0.tgz";
              sha1 = "95ef94f85ecc81d007c264e190a120f0a3c8566b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "yaeti@0.0.6" = nodeEnv.buildYarnPackage {
            name = "yaeti-0.0.6";
            packageName = "yaeti";
            version = "0.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yaeti/-/yaeti-0.0.6.tgz";
              sha1 = "f26f484d72684cf42bedfb76970aa1608fbf9577";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "yallist@2.1.2" = nodeEnv.buildYarnPackage {
            name = "yallist-2.1.2";
            packageName = "yallist";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yallist/-/yallist-2.1.2.tgz";
              sha1 = "1c11f9218f076089a47dd512f93c6699a6a81d52";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "yargs-parser@9.0.2" = nodeEnv.buildYarnPackage {
            name = "yargs-parser-9.0.2";
            packageName = "yargs-parser";
            version = "9.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-9.0.2.tgz";
              sha1 = "9ccf6a43460fe4ed40a9bb68f48d43b8a68cc077";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "yargs@8.0.2" = nodeEnv.buildYarnPackage {
            name = "yargs-8.0.2";
            packageName = "yargs";
            version = "8.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs/-/yargs-8.0.2.tgz";
              sha1 = "6299a9055b1cefc969ff7e79c1d918dceb22c360";
            };
            dependencies = [ pkgs."string-width@2.0.0" pkgs."y18n@3.2.1" pkgs."yargs-parser@7.0.0" ];
            dontNpmInstall = true;
            };
  "yauzl@2.9.1" = nodeEnv.buildYarnPackage {
            name = "yauzl-2.9.1";
            packageName = "yauzl";
            version = "2.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yauzl/-/yauzl-2.9.1.tgz";
              sha1 = "a81981ea70a57946133883f029c5821a89359a7f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "zip-stream@1.2.0" = nodeEnv.buildYarnPackage {
            name = "zip-stream-1.2.0";
            packageName = "zip-stream";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/zip-stream/-/zip-stream-1.2.0.tgz";
              sha1 = "a8bc45f4c1b49699c6b90198baacaacdbcd4ba04";
            };
            dependencies = [ pkgs."lodash@4.17.5" pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "accepts@1.3.3" = nodeEnv.buildYarnPackage {
            name = "accepts-1.3.3";
            packageName = "accepts";
            version = "1.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/accepts/-/accepts-1.3.3.tgz";
              sha1 = "c3ca7434938648c3e0d9c1e328dd68b622c284ca";
            };
            dependencies = [ pkgs."mime-types@2.1.13" ];
            dontNpmInstall = true;
            };
  "acorn@3.3.0" = nodeEnv.buildYarnPackage {
            name = "acorn-3.3.0";
            packageName = "acorn";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn/-/acorn-3.3.0.tgz";
              sha1 = "45e37fb39e8da3f25baee3ff5369e2bb5f22017a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "acorn@4.0.13" = nodeEnv.buildYarnPackage {
            name = "acorn-4.0.13";
            packageName = "acorn";
            version = "4.0.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/acorn/-/acorn-4.0.13.tgz";
              sha1 = "105495ae5361d697bd195c825192e1ad7f253787";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ajv-keywords@2.1.1" = nodeEnv.buildYarnPackage {
            name = "ajv-keywords-2.1.1";
            packageName = "ajv-keywords";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-2.1.1.tgz";
              sha1 = "617997fc5f60576894c435f940d819e135b80762";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ajv@5.5.2" = nodeEnv.buildYarnPackage {
            name = "ajv-5.5.2";
            packageName = "ajv";
            version = "5.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ajv/-/ajv-5.5.2.tgz";
              sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-escapes@2.0.0" = nodeEnv.buildYarnPackage {
            name = "ansi-escapes-2.0.0";
            packageName = "ansi-escapes";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-2.0.0.tgz";
              sha1 = "5bae52be424878dd9783e8910e3fc2922e83c81b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-regex@0.2.1" = nodeEnv.buildYarnPackage {
            name = "ansi-regex-0.2.1";
            packageName = "ansi-regex";
            version = "0.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-0.2.1.tgz";
              sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-regex@2.1.1" = nodeEnv.buildYarnPackage {
            name = "ansi-regex-2.1.1";
            packageName = "ansi-regex";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-2.1.1.tgz";
              sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-styles@1.1.0" = nodeEnv.buildYarnPackage {
            name = "ansi-styles-1.1.0";
            packageName = "ansi-styles";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-1.1.0.tgz";
              sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ansi-styles@2.2.1" = nodeEnv.buildYarnPackage {
            name = "ansi-styles-2.2.1";
            packageName = "ansi-styles";
            version = "2.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.2.1.tgz";
              sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "aproba@1.0.4" = nodeEnv.buildYarnPackage {
            name = "aproba-1.0.4";
            packageName = "aproba";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aproba/-/aproba-1.0.4.tgz";
              sha1 = "2713680775e7614c8ba186c065d4e2e52d1072c0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "assert-plus@0.2.0" = nodeEnv.buildYarnPackage {
            name = "assert-plus-0.2.0";
            packageName = "assert-plus";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-0.2.0.tgz";
              sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ast-types@0.9.6" = nodeEnv.buildYarnPackage {
            name = "ast-types-0.9.6";
            packageName = "ast-types";
            version = "0.9.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ast-types/-/ast-types-0.9.6.tgz";
              sha1 = "102c9e9e9005d3e7e3829bf0c4fa24ee862ee9b9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "async@1.5.0" = nodeEnv.buildYarnPackage {
            name = "async-1.5.0";
            packageName = "async";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-1.5.0.tgz";
              sha1 = "2796642723573859565633fc6274444bee2f8ce3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "async@1.0.0" = nodeEnv.buildYarnPackage {
            name = "async-1.0.0";
            packageName = "async";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/async/-/async-1.0.0.tgz";
              sha1 = "f8fc04ca3a13784ade9e1641af98578cfbd647a9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "autoprefixer@6.6.1" = nodeEnv.buildYarnPackage {
            name = "autoprefixer-6.6.1";
            packageName = "autoprefixer";
            version = "6.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/autoprefixer/-/autoprefixer-6.6.1.tgz";
              sha1 = "11a4077abb4b313253ec2f6e1adb91ad84253519";
            };
            dependencies = [ pkgs."browserslist@1.5.2" pkgs."postcss@5.2.9" ];
            dontNpmInstall = true;
            };
  "aws-sign2@0.6.0" = nodeEnv.buildYarnPackage {
            name = "aws-sign2-0.6.0";
            packageName = "aws-sign2";
            version = "0.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.6.0.tgz";
              sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "aws4@1.5.0" = nodeEnv.buildYarnPackage {
            name = "aws4-1.5.0";
            packageName = "aws4";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/aws4/-/aws4-1.5.0.tgz";
              sha1 = "0a29ffb79c31c9e712eeb087e8e7a64b4a56d755";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babel-runtime@6.20.0" = nodeEnv.buildYarnPackage {
            name = "babel-runtime-6.20.0";
            packageName = "babel-runtime";
            version = "6.20.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-runtime/-/babel-runtime-6.20.0.tgz";
              sha1 = "87300bdcf4cd770f09bf0048c64204e17806d16f";
            };
            dependencies = [ pkgs."regenerator-runtime@0.10.1" ];
            dontNpmInstall = true;
            };
  "babel-types@6.21.0" = nodeEnv.buildYarnPackage {
            name = "babel-types-6.21.0";
            packageName = "babel-types";
            version = "6.21.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-types/-/babel-types-6.21.0.tgz";
              sha1 = "314b92168891ef6d3806b7f7a917fdf87c11a4b2";
            };
            dependencies = [ pkgs."babel-runtime@6.20.0" pkgs."to-fast-properties@1.0.2" ];
            dontNpmInstall = true;
            };
  "babel-types@6.26.0" = nodeEnv.buildYarnPackage {
            name = "babel-types-6.26.0";
            packageName = "babel-types";
            version = "6.26.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babel-types/-/babel-types-6.26.0.tgz";
              sha1 = "a3b073f94ab49eb6fa55cd65227a334380632497";
            };
            dependencies = [ pkgs."lodash@4.17.5" pkgs."to-fast-properties@1.0.3" ];
            dontNpmInstall = true;
            };
  "babylon@6.18.0" = nodeEnv.buildYarnPackage {
            name = "babylon-6.18.0";
            packageName = "babylon";
            version = "6.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babylon/-/babylon-6.18.0.tgz";
              sha1 = "af2f3b88fa6f5c1e4c634d1a0f8eac4f55b395e3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "babylon@5.8.38" = nodeEnv.buildYarnPackage {
            name = "babylon-5.8.38";
            packageName = "babylon";
            version = "5.8.38";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/babylon/-/babylon-5.8.38.tgz";
              sha1 = "ec9b120b11bf6ccd4173a18bf217e60b79859ffd";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "balanced-match@0.4.2" = nodeEnv.buildYarnPackage {
            name = "balanced-match-0.4.2";
            packageName = "balanced-match";
            version = "0.4.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-0.4.2.tgz";
              sha1 = "cb3f3e3c732dc0f01ee70b403f302e61d7709838";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "base64-js@0.0.8" = nodeEnv.buildYarnPackage {
            name = "base64-js-0.0.8";
            packageName = "base64-js";
            version = "0.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/base64-js/-/base64-js-0.0.8.tgz";
              sha1 = "1101e9544f4a76b1bc3b26d452ca96d7a35e7978";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "base64-js@1.1.2" = nodeEnv.buildYarnPackage {
            name = "base64-js-1.1.2";
            packageName = "base64-js";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/base64-js/-/base64-js-1.1.2.tgz";
              sha1 = "d6400cac1c4c660976d90d07a04351d89395f5e8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bluebird@3.3.1" = nodeEnv.buildYarnPackage {
            name = "bluebird-3.3.1";
            packageName = "bluebird";
            version = "3.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.3.1.tgz";
              sha1 = "f97ae1970f41d85177283053e9a120160e66c61d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bluebird@2.11.0" = nodeEnv.buildYarnPackage {
            name = "bluebird-2.11.0";
            packageName = "bluebird";
            version = "2.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bluebird/-/bluebird-2.11.0.tgz";
              sha1 = "534b9033c022c9579c56ba3b3e5a5caafbb650e1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "bn.js@4.11.6" = nodeEnv.buildYarnPackage {
            name = "bn.js-4.11.6";
            packageName = "bn.js";
            version = "4.11.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/bn.js/-/bn.js-4.11.6.tgz";
              sha1 = "53344adb14617a13f6e8dd2ce28905d1c0ba3215";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "boom@2.10.1" = nodeEnv.buildYarnPackage {
            name = "boom-2.10.1";
            packageName = "boom";
            version = "2.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boom/-/boom-2.10.1.tgz";
              sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
            };
            dependencies = [ pkgs."hoek@2.16.3" ];
            dontNpmInstall = true;
            };
  "boom@4.3.1" = nodeEnv.buildYarnPackage {
            name = "boom-4.3.1";
            packageName = "boom";
            version = "4.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/boom/-/boom-4.3.1.tgz";
              sha1 = "4f8a3005cb4a7e3889f749030fd25b96e01d2e31";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "browserslist@1.5.2" = nodeEnv.buildYarnPackage {
            name = "browserslist-1.5.2";
            packageName = "browserslist";
            version = "1.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/browserslist/-/browserslist-1.5.2.tgz";
              sha1 = "1c82fde0ee8693e6d15c49b7bff209dc06298c56";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "buffer@3.6.0" = nodeEnv.buildYarnPackage {
            name = "buffer-3.6.0";
            packageName = "buffer";
            version = "3.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer/-/buffer-3.6.0.tgz";
              sha1 = "a72c936f77b96bf52f5f7e7b467180628551defb";
            };
            dependencies = [ pkgs."base64-js@0.0.8" ];
            dontNpmInstall = true;
            };
  "buffer@4.9.1" = nodeEnv.buildYarnPackage {
            name = "buffer-4.9.1";
            packageName = "buffer";
            version = "4.9.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/buffer/-/buffer-4.9.1.tgz";
              sha1 = "6d1bb601b07a4efced97094132093027c95bc298";
            };
            dependencies = [ pkgs."base64-js@1.1.2" ];
            dontNpmInstall = true;
            };
  "camelcase@1.2.1" = nodeEnv.buildYarnPackage {
            name = "camelcase-1.2.1";
            packageName = "camelcase";
            version = "1.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase/-/camelcase-1.2.1.tgz";
              sha1 = "9bb5304d2e0b56698b2c758b08a3eaa9daa58a39";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "camelcase@2.1.1" = nodeEnv.buildYarnPackage {
            name = "camelcase-2.1.1";
            packageName = "camelcase";
            version = "2.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase/-/camelcase-2.1.1.tgz";
              sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "camelcase@3.0.0" = nodeEnv.buildYarnPackage {
            name = "camelcase-3.0.0";
            packageName = "camelcase";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/camelcase/-/camelcase-3.0.0.tgz";
              sha1 = "32fc4b9fcdaf845fcdf7e73bb97cac2261f0ab0a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "caseless@0.11.0" = nodeEnv.buildYarnPackage {
            name = "caseless-0.11.0";
            packageName = "caseless";
            version = "0.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/caseless/-/caseless-0.11.0.tgz";
              sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "chalk@0.5.1" = nodeEnv.buildYarnPackage {
            name = "chalk-0.5.1";
            packageName = "chalk";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chalk/-/chalk-0.5.1.tgz";
              sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
            };
            dependencies = [ pkgs."ansi-styles@1.1.0" pkgs."has-ansi@0.1.0" pkgs."strip-ansi@0.3.0" pkgs."supports-color@0.2.0" ];
            dontNpmInstall = true;
            };
  "chalk@1.1.3" = nodeEnv.buildYarnPackage {
            name = "chalk-1.1.3";
            packageName = "chalk";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/chalk/-/chalk-1.1.3.tgz";
              sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
            };
            dependencies = [ pkgs."ansi-styles@2.2.1" pkgs."strip-ansi@3.0.1" pkgs."supports-color@2.0.0" ];
            dontNpmInstall = true;
            };
  "cipher-base@1.0.3" = nodeEnv.buildYarnPackage {
            name = "cipher-base-1.0.3";
            packageName = "cipher-base";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cipher-base/-/cipher-base-1.0.3.tgz";
              sha1 = "eeabf194419ce900da3018c207d212f2a6df0a07";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "cliui@2.1.0" = nodeEnv.buildYarnPackage {
            name = "cliui-2.1.0";
            packageName = "cliui";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cliui/-/cliui-2.1.0.tgz";
              sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
            };
            dependencies = [ pkgs."wordwrap@0.0.2" ];
            dontNpmInstall = true;
            };
  "clone@1.0.2" = nodeEnv.buildYarnPackage {
            name = "clone-1.0.2";
            packageName = "clone";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/clone/-/clone-1.0.2.tgz";
              sha1 = "260b7a99ebb1edfe247538175f783243cb19d149";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "color-convert@1.8.2" = nodeEnv.buildYarnPackage {
            name = "color-convert-1.8.2";
            packageName = "color-convert";
            version = "1.8.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.8.2.tgz";
              sha1 = "be868184d7c8631766d54e7078e2672d7c7e3339";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "colors@1.0.3" = nodeEnv.buildYarnPackage {
            name = "colors-1.0.3";
            packageName = "colors";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/colors/-/colors-1.0.3.tgz";
              sha1 = "0433f44d809680fdeb60ed260f1b0c262e82a40b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "combined-stream@1.0.5" = nodeEnv.buildYarnPackage {
            name = "combined-stream-1.0.5";
            packageName = "combined-stream";
            version = "1.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.5.tgz";
              sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commander@2.6.0" = nodeEnv.buildYarnPackage {
            name = "commander-2.6.0";
            packageName = "commander";
            version = "2.6.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.6.0.tgz";
              sha1 = "9df7e52fb2a0cb0fb89058ee80c3104225f37e1d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commander@2.9.0" = nodeEnv.buildYarnPackage {
            name = "commander-2.9.0";
            packageName = "commander";
            version = "2.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.9.0.tgz";
              sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commander@2.13.0" = nodeEnv.buildYarnPackage {
            name = "commander-2.13.0";
            packageName = "commander";
            version = "2.13.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.13.0.tgz";
              sha1 = "6964bca67685df7c1f1430c584f07d7597885b9c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "commander@2.8.1" = nodeEnv.buildYarnPackage {
            name = "commander-2.8.1";
            packageName = "commander";
            version = "2.8.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/commander/-/commander-2.8.1.tgz";
              sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "content-disposition@0.5.1" = nodeEnv.buildYarnPackage {
            name = "content-disposition-0.5.1";
            packageName = "content-disposition";
            version = "0.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-disposition/-/content-disposition-0.5.1.tgz";
              sha1 = "87476c6a67c8daa87e32e87616df883ba7fb071b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "content-type@1.0.2" = nodeEnv.buildYarnPackage {
            name = "content-type-1.0.2";
            packageName = "content-type";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/content-type/-/content-type-1.0.2.tgz";
              sha1 = "b7d113aee7a8dd27bd21133c4dc2529df1721eed";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "core-js@2.4.1" = nodeEnv.buildYarnPackage {
            name = "core-js-2.4.1";
            packageName = "core-js";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-js/-/core-js-2.4.1.tgz";
              sha1 = "4de911e667b0eae9124e34254b53aea6fc618d3e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "core-js@1.2.7" = nodeEnv.buildYarnPackage {
            name = "core-js-1.2.7";
            packageName = "core-js";
            version = "1.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/core-js/-/core-js-1.2.7.tgz";
              sha1 = "652294c14651db28fa93bd2d5ff2983a4f08c636";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "create-hash@1.1.2" = nodeEnv.buildYarnPackage {
            name = "create-hash-1.1.2";
            packageName = "create-hash";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hash/-/create-hash-1.1.2.tgz";
              sha1 = "51210062d7bb7479f6c65bb41a92208b1d61abad";
            };
            dependencies = [ pkgs."cipher-base@1.0.3" pkgs."ripemd160@1.0.1" pkgs."sha.js@2.4.8" ];
            dontNpmInstall = true;
            };
  "create-hmac@1.1.4" = nodeEnv.buildYarnPackage {
            name = "create-hmac-1.1.4";
            packageName = "create-hmac";
            version = "1.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/create-hmac/-/create-hmac-1.1.4.tgz";
              sha1 = "d3fb4ba253eb8b3f56e39ea2fbcb8af747bd3170";
            };
            dependencies = [ pkgs."create-hash@1.1.2" ];
            dontNpmInstall = true;
            };
  "cross-spawn@3.0.1" = nodeEnv.buildYarnPackage {
            name = "cross-spawn-3.0.1";
            packageName = "cross-spawn";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-3.0.1.tgz";
              sha1 = "1256037ecb9f0c5f79e3d6ef135e30770184b982";
            };
            dependencies = [ pkgs."lru-cache@4.0.2" pkgs."which@1.2.12" ];
            dontNpmInstall = true;
            };
  "cryptiles@2.0.5" = nodeEnv.buildYarnPackage {
            name = "cryptiles-2.0.5";
            packageName = "cryptiles";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/cryptiles/-/cryptiles-2.0.5.tgz";
              sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
            };
            dependencies = [ pkgs."boom@2.10.1" ];
            dontNpmInstall = true;
            };
  "crypto-browserify@3.11.0" = nodeEnv.buildYarnPackage {
            name = "crypto-browserify-3.11.0";
            packageName = "crypto-browserify";
            version = "3.11.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.11.0.tgz";
              sha1 = "3652a0906ab9b2a7e0c3ce66a408e957a2485522";
            };
            dependencies = [ pkgs."create-hash@1.1.2" pkgs."create-hmac@1.1.4" pkgs."pbkdf2@3.0.9" pkgs."randombytes@2.0.3" ];
            dontNpmInstall = true;
            };
  "d3-interpolate@1.1.2" = nodeEnv.buildYarnPackage {
            name = "d3-interpolate-1.1.2";
            packageName = "d3-interpolate";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/d3-interpolate/-/d3-interpolate-1.1.2.tgz";
              sha1 = "b52e6927a04fe1fe2a4cffc139e5389ed3e5e790";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "debug@2.6.9" = nodeEnv.buildYarnPackage {
            name = "debug-2.6.9";
            packageName = "debug";
            version = "2.6.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz";
              sha1 = "5d128515df134ff327e90a4c93f4e077a536341f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "debug@2.2.0" = nodeEnv.buildYarnPackage {
            name = "debug-2.2.0";
            packageName = "debug";
            version = "2.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/debug/-/debug-2.2.0.tgz";
              sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
            };
            dependencies = [ pkgs."ms@0.7.1" ];
            dontNpmInstall = true;
            };
  "depd@1.1.1" = nodeEnv.buildYarnPackage {
            name = "depd-1.1.1";
            packageName = "depd";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/depd/-/depd-1.1.1.tgz";
              sha1 = "5783b4e1c459f06fa5ca27f991f3d06e7a310359";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "depd@1.1.0" = nodeEnv.buildYarnPackage {
            name = "depd-1.1.0";
            packageName = "depd";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/depd/-/depd-1.1.0.tgz";
              sha1 = "e1bd82c6aab6ced965b97b88b17ed3e528ca18c3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "doctrine@1.5.0" = nodeEnv.buildYarnPackage {
            name = "doctrine-1.5.0";
            packageName = "doctrine";
            version = "1.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/doctrine/-/doctrine-1.5.0.tgz";
              sha1 = "379dce730f6166f76cefa4e6707a159b02c5a6fa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "doctrine@2.0.0" = nodeEnv.buildYarnPackage {
            name = "doctrine-2.0.0";
            packageName = "doctrine";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/doctrine/-/doctrine-2.0.0.tgz";
              sha1 = "c73d8d2909d22291e1a007a395804da8b665fe63";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "domelementtype@1.1.3" = nodeEnv.buildYarnPackage {
            name = "domelementtype-1.1.3";
            packageName = "domelementtype";
            version = "1.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/domelementtype/-/domelementtype-1.1.3.tgz";
              sha1 = "bd28773e2642881aec51544924299c5cd822185b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "domutils@1.1.6" = nodeEnv.buildYarnPackage {
            name = "domutils-1.1.6";
            packageName = "domutils";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/domutils/-/domutils-1.1.6.tgz";
              sha1 = "bddc3de099b9a2efacc51c623f28f416ecc57485";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "electron-download@3.3.0" = nodeEnv.buildYarnPackage {
            name = "electron-download-3.3.0";
            packageName = "electron-download";
            version = "3.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/electron-download/-/electron-download-3.3.0.tgz";
              sha1 = "2cfd54d6966c019c4d49ad65fbe65cc9cdef68c8";
            };
            dependencies = [ pkgs."debug@2.6.9" pkgs."fs-extra@0.30.0" pkgs."path-exists@2.1.0" pkgs."sumchecker@1.3.1" ];
            dontNpmInstall = true;
            };
  "elliptic@6.3.2" = nodeEnv.buildYarnPackage {
            name = "elliptic-6.3.2";
            packageName = "elliptic";
            version = "6.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/elliptic/-/elliptic-6.3.2.tgz";
              sha1 = "e4c81e0829cf0a65ab70e998b8232723b5c1bc48";
            };
            dependencies = [ pkgs."bn.js@4.11.6" pkgs."hash.js@1.0.3" ];
            dontNpmInstall = true;
            };
  "end-of-stream@1.1.0" = nodeEnv.buildYarnPackage {
            name = "end-of-stream-1.1.0";
            packageName = "end-of-stream";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.1.0.tgz";
              sha1 = "e9353258baa9108965efc41cb0ef8ade2f3cfb07";
            };
            dependencies = [ pkgs."once@1.3.3" ];
            dontNpmInstall = true;
            };
  "enhanced-resolve@2.3.0" = nodeEnv.buildYarnPackage {
            name = "enhanced-resolve-2.3.0";
            packageName = "enhanced-resolve";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/enhanced-resolve/-/enhanced-resolve-2.3.0.tgz";
              sha1 = "a115c32504b6302e85a76269d7a57ccdd962e359";
            };
            dependencies = [ pkgs."memory-fs@0.3.0" ];
            dontNpmInstall = true;
            };
  "errno@0.1.4" = nodeEnv.buildYarnPackage {
            name = "errno-0.1.4";
            packageName = "errno";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/errno/-/errno-0.1.4.tgz";
              sha1 = "b896e23a9e5e8ba33871fc996abd3635fc9a1c7d";
            };
            dependencies = [ pkgs."prr@0.0.0" ];
            dontNpmInstall = true;
            };
  "error-stack-parser@1.3.6" = nodeEnv.buildYarnPackage {
            name = "error-stack-parser-1.3.6";
            packageName = "error-stack-parser";
            version = "1.3.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/error-stack-parser/-/error-stack-parser-1.3.6.tgz";
              sha1 = "e0e73b93e417138d1cd7c0b746b1a4a14854c292";
            };
            dependencies = [ pkgs."stackframe@0.3.1" ];
            dontNpmInstall = true;
            };
  "esprima@2.7.3" = nodeEnv.buildYarnPackage {
            name = "esprima-2.7.3";
            packageName = "esprima";
            version = "2.7.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esprima/-/esprima-2.7.3.tgz";
              sha1 = "96e3b70d5779f6ad49cd032673d1c312767ba581";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "esprima@3.1.3" = nodeEnv.buildYarnPackage {
            name = "esprima-3.1.3";
            packageName = "esprima";
            version = "3.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/esprima/-/esprima-3.1.3.tgz";
              sha1 = "fdca51cee6133895e3c88d535ce49dbff62a4633";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "estraverse@4.1.1" = nodeEnv.buildYarnPackage {
            name = "estraverse-4.1.1";
            packageName = "estraverse";
            version = "4.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.1.1.tgz";
              sha1 = "f6caca728933a850ef90661d0e17982ba47111a2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "etag@1.7.0" = nodeEnv.buildYarnPackage {
            name = "etag-1.7.0";
            packageName = "etag";
            version = "1.7.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/etag/-/etag-1.7.0.tgz";
              sha1 = "03d30b5f67dd6e632d2945d30d6652731a34d5d8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "eth-lib@0.1.27" = nodeEnv.buildYarnPackage {
            name = "eth-lib-0.1.27";
            packageName = "eth-lib";
            version = "0.1.27";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/eth-lib/-/eth-lib-0.1.27.tgz";
              sha1 = "f0b0fd144f865d2d6bf8257a40004f2e75ca1dd6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "express@4.14.0" = nodeEnv.buildYarnPackage {
            name = "express-4.14.0";
            packageName = "express";
            version = "4.14.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/express/-/express-4.14.0.tgz";
              sha1 = "c1ee3f42cdc891fb3dc650a8922d51ec847d0d66";
            };
            dependencies = [ pkgs."accepts@1.3.3" pkgs."content-disposition@0.5.1" pkgs."content-type@1.0.2" pkgs."debug@2.2.0" pkgs."depd@1.1.0" pkgs."etag@1.7.0" pkgs."finalhandler@0.5.0" pkgs."fresh@0.3.0" pkgs."parseurl@1.3.1" pkgs."proxy-addr@1.1.2" pkgs."qs@6.2.0" pkgs."send@0.14.1" pkgs."serve-static@1.11.1" pkgs."type-is@1.6.14" pkgs."utils-merge@1.0.0" pkgs."vary@1.1.0" ];
            dontNpmInstall = true;
            };
  "extend@3.0.0" = nodeEnv.buildYarnPackage {
            name = "extend-3.0.0";
            packageName = "extend";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extend/-/extend-3.0.0.tgz";
              sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "extsprintf@1.3.0" = nodeEnv.buildYarnPackage {
            name = "extsprintf-1.3.0";
            packageName = "extsprintf";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.3.0.tgz";
              sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "file-type@3.9.0" = nodeEnv.buildYarnPackage {
            name = "file-type-3.9.0";
            packageName = "file-type";
            version = "3.9.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-type/-/file-type-3.9.0.tgz";
              sha1 = "257a078384d1db8087bc449d107d52a52672b9e9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "file-type@5.2.0" = nodeEnv.buildYarnPackage {
            name = "file-type-5.2.0";
            packageName = "file-type";
            version = "5.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/file-type/-/file-type-5.2.0.tgz";
              sha1 = "2ddbea7c73ffe36368dfae49dc338c058c2b8ad6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "finalhandler@0.5.0" = nodeEnv.buildYarnPackage {
            name = "finalhandler-0.5.0";
            packageName = "finalhandler";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/finalhandler/-/finalhandler-0.5.0.tgz";
              sha1 = "e9508abece9b6dba871a6942a1d7911b91911ac7";
            };
            dependencies = [ pkgs."debug@2.2.0" ];
            dontNpmInstall = true;
            };
  "find-up@1.1.2" = nodeEnv.buildYarnPackage {
            name = "find-up-1.1.2";
            packageName = "find-up";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/find-up/-/find-up-1.1.2.tgz";
              sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
            };
            dependencies = [ pkgs."path-exists@2.1.0" ];
            dontNpmInstall = true;
            };
  "for-in@0.1.8" = nodeEnv.buildYarnPackage {
            name = "for-in-0.1.8";
            packageName = "for-in";
            version = "0.1.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-in/-/for-in-0.1.8.tgz";
              sha1 = "d8773908e31256109952b1fdb9b3fa867d2775e1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "for-in@0.1.6" = nodeEnv.buildYarnPackage {
            name = "for-in-0.1.6";
            packageName = "for-in";
            version = "0.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-in/-/for-in-0.1.6.tgz";
              sha1 = "c9f96e89bfad18a545af5ec3ed352a1d9e5b4dc8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "for-own@0.1.4" = nodeEnv.buildYarnPackage {
            name = "for-own-0.1.4";
            packageName = "for-own";
            version = "0.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/for-own/-/for-own-0.1.4.tgz";
              sha1 = "0149b41a39088c7515f51ebe1c1386d45f935072";
            };
            dependencies = [ pkgs."for-in@0.1.6" ];
            dontNpmInstall = true;
            };
  "form-data@2.1.2" = nodeEnv.buildYarnPackage {
            name = "form-data-2.1.2";
            packageName = "form-data";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/form-data/-/form-data-2.1.2.tgz";
              sha1 = "89c3534008b97eada4cbb157d58f6f5df025eae4";
            };
            dependencies = [ pkgs."combined-stream@1.0.5" ];
            dontNpmInstall = true;
            };
  "forwarded@0.1.0" = nodeEnv.buildYarnPackage {
            name = "forwarded-0.1.0";
            packageName = "forwarded";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/forwarded/-/forwarded-0.1.0.tgz";
              sha1 = "19ef9874c4ae1c297bcf078fde63a09b66a84363";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fresh@0.3.0" = nodeEnv.buildYarnPackage {
            name = "fresh-0.3.0";
            packageName = "fresh";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fresh/-/fresh-0.3.0.tgz";
              sha1 = "651f838e22424e7566de161d8358caa199f83d4f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fs-extra@0.26.7" = nodeEnv.buildYarnPackage {
            name = "fs-extra-0.26.7";
            packageName = "fs-extra";
            version = "0.26.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-0.26.7.tgz";
              sha1 = "9ae1fdd94897798edab76d0918cf42d0c3184fa9";
            };
            dependencies = [ pkgs."jsonfile@2.4.0" ];
            dontNpmInstall = true;
            };
  "fs-extra@0.30.0" = nodeEnv.buildYarnPackage {
            name = "fs-extra-0.30.0";
            packageName = "fs-extra";
            version = "0.30.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-0.30.0.tgz";
              sha1 = "f233ffcc08d4da7d432daa449776989db1df93f0";
            };
            dependencies = [ pkgs."jsonfile@2.4.0" ];
            dontNpmInstall = true;
            };
  "fs-extra@2.1.2" = nodeEnv.buildYarnPackage {
            name = "fs-extra-2.1.2";
            packageName = "fs-extra";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-2.1.2.tgz";
              sha1 = "046c70163cef9aad46b0e4a7fa467fb22d71de35";
            };
            dependencies = [ pkgs."jsonfile@2.4.0" ];
            dontNpmInstall = true;
            };
  "fs-extra@4.0.3" = nodeEnv.buildYarnPackage {
            name = "fs-extra-4.0.3";
            packageName = "fs-extra";
            version = "4.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-4.0.3.tgz";
              sha1 = "0d852122e5bc5beb453fb028e9c0c9bf36340c94";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "fstream@1.0.10" = nodeEnv.buildYarnPackage {
            name = "fstream-1.0.10";
            packageName = "fstream";
            version = "1.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/fstream/-/fstream-1.0.10.tgz";
              sha1 = "604e8a92fe26ffd9f6fae30399d4984e1ab22822";
            };
            dependencies = [ pkgs."rimraf@2.5.4" ];
            dontNpmInstall = true;
            };
  "function-bind@1.1.0" = nodeEnv.buildYarnPackage {
            name = "function-bind-1.1.0";
            packageName = "function-bind";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.0.tgz";
              sha1 = "16176714c801798e4e8f2cf7f7529467bb4a5771";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "gauge@2.7.2" = nodeEnv.buildYarnPackage {
            name = "gauge-2.7.2";
            packageName = "gauge";
            version = "2.7.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.2.tgz";
              sha1 = "15cecc31b02d05345a5d6b0e171cdb3ad2307774";
            };
            dependencies = [ pkgs."aproba@1.0.4" pkgs."object-assign@4.1.0" pkgs."string-width@1.0.2" pkgs."strip-ansi@3.0.1" pkgs."supports-color@0.2.0" ];
            dontNpmInstall = true;
            };
  "get-stream@2.3.1" = nodeEnv.buildYarnPackage {
            name = "get-stream-2.3.1";
            packageName = "get-stream";
            version = "2.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/get-stream/-/get-stream-2.3.1.tgz";
              sha1 = "5f38f93f346009666ee0150a054167f91bdd95de";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glob@6.0.4" = nodeEnv.buildYarnPackage {
            name = "glob-6.0.4";
            packageName = "glob";
            version = "6.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob/-/glob-6.0.4.tgz";
              sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "glob@7.1.1" = nodeEnv.buildYarnPackage {
            name = "glob-7.1.1";
            packageName = "glob";
            version = "7.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/glob/-/glob-7.1.1.tgz";
              sha1 = "805211df04faaf1c63a3600306cdf5ade50b2ec8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "globals@9.18.0" = nodeEnv.buildYarnPackage {
            name = "globals-9.18.0";
            packageName = "globals";
            version = "9.18.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/globals/-/globals-9.18.0.tgz";
              sha1 = "aa3896b3e69b487f17e31ed2143d69a8e30c2d8a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "har-validator@2.0.6" = nodeEnv.buildYarnPackage {
            name = "har-validator-2.0.6";
            packageName = "har-validator";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/har-validator/-/har-validator-2.0.6.tgz";
              sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
            };
            dependencies = [ pkgs."chalk@1.1.3" pkgs."commander@2.9.0" ];
            dontNpmInstall = true;
            };
  "has-ansi@0.1.0" = nodeEnv.buildYarnPackage {
            name = "has-ansi-0.1.0";
            packageName = "has-ansi";
            version = "0.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-0.1.0.tgz";
              sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
            };
            dependencies = [ pkgs."ansi-regex@0.2.1" ];
            dontNpmInstall = true;
            };
  "has-flag@1.0.0" = nodeEnv.buildYarnPackage {
            name = "has-flag-1.0.0";
            packageName = "has-flag";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-flag/-/has-flag-1.0.0.tgz";
              sha1 = "9d9e793165ce017a00f00418c43f942a7b1d11fa";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "has-flag@2.0.0" = nodeEnv.buildYarnPackage {
            name = "has-flag-2.0.0";
            packageName = "has-flag";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/has-flag/-/has-flag-2.0.0.tgz";
              sha1 = "e8207af1cc7b30d446cc70b734b5e8be18f88d51";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hash.js@1.0.3" = nodeEnv.buildYarnPackage {
            name = "hash.js-1.0.3";
            packageName = "hash.js";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hash.js/-/hash.js-1.0.3.tgz";
              sha1 = "1332ff00156c0a0ffdd8236013d07b77a0451573";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "hawk@3.1.3" = nodeEnv.buildYarnPackage {
            name = "hawk-3.1.3";
            packageName = "hawk";
            version = "3.1.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hawk/-/hawk-3.1.3.tgz";
              sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
            };
            dependencies = [ pkgs."boom@2.10.1" pkgs."cryptiles@2.0.5" pkgs."hoek@2.16.3" pkgs."sntp@1.0.9" ];
            dontNpmInstall = true;
            };
  "hoek@2.16.3" = nodeEnv.buildYarnPackage {
            name = "hoek-2.16.3";
            packageName = "hoek";
            version = "2.16.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/hoek/-/hoek-2.16.3.tgz";
              sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "http-errors@1.5.1" = nodeEnv.buildYarnPackage {
            name = "http-errors-1.5.1";
            packageName = "http-errors";
            version = "1.5.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.5.1.tgz";
              sha1 = "788c0d2c1de2c81b9e6e8c01843b6b97eb920750";
            };
            dependencies = [ pkgs."setprototypeof@1.0.2" ];
            dontNpmInstall = true;
            };
  "http-signature@1.1.1" = nodeEnv.buildYarnPackage {
            name = "http-signature-1.1.1";
            packageName = "http-signature";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.1.1.tgz";
              sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
            };
            dependencies = [ pkgs."assert-plus@0.2.0" ];
            dontNpmInstall = true;
            };
  "iconv-lite@0.4.15" = nodeEnv.buildYarnPackage {
            name = "iconv-lite-0.4.15";
            packageName = "iconv-lite";
            version = "0.4.15";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.15.tgz";
              sha1 = "fe265a218ac6a57cfe854927e9d04c19825eddeb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "indent-string@2.1.0" = nodeEnv.buildYarnPackage {
            name = "indent-string-2.1.0";
            packageName = "indent-string";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/indent-string/-/indent-string-2.1.0.tgz";
              sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "inherits@2.0.1" = nodeEnv.buildYarnPackage {
            name = "inherits-2.0.1";
            packageName = "inherits";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.1.tgz";
              sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "inline-style-prefixer@2.0.5" = nodeEnv.buildYarnPackage {
            name = "inline-style-prefixer-2.0.5";
            packageName = "inline-style-prefixer";
            version = "2.0.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/inline-style-prefixer/-/inline-style-prefixer-2.0.5.tgz";
              sha1 = "c153c7e88fd84fef5c602e95a8168b2770671fe7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "intl-messageformat-parser@1.2.0" = nodeEnv.buildYarnPackage {
            name = "intl-messageformat-parser-1.2.0";
            packageName = "intl-messageformat-parser";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/intl-messageformat-parser/-/intl-messageformat-parser-1.2.0.tgz";
              sha1 = "5906b7f953ab7470e0dc8549097b648b991892ff";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "invariant@2.2.2" = nodeEnv.buildYarnPackage {
            name = "invariant-2.2.2";
            packageName = "invariant";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/invariant/-/invariant-2.2.2.tgz";
              sha1 = "9e1f56ac0acdb6bf303306f338be3b204ae60360";
            };
            dependencies = [ pkgs."loose-envify@1.3.0" ];
            dontNpmInstall = true;
            };
  "ipaddr.js@1.1.1" = nodeEnv.buildYarnPackage {
            name = "ipaddr.js-1.1.1";
            packageName = "ipaddr.js";
            version = "1.1.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ipaddr.js/-/ipaddr.js-1.1.1.tgz";
              sha1 = "c791d95f52b29c1247d5df80ada39b8a73647230";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-buffer@1.1.4" = nodeEnv.buildYarnPackage {
            name = "is-buffer-1.1.4";
            packageName = "is-buffer";
            version = "1.1.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.4.tgz";
              sha1 = "cfc86ccd5dc5a52fa80489111c6920c457e2d98b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-fullwidth-code-point@1.0.0" = nodeEnv.buildYarnPackage {
            name = "is-fullwidth-code-point-1.0.0";
            packageName = "is-fullwidth-code-point";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
              sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "is-promise@1.0.1" = nodeEnv.buildYarnPackage {
            name = "is-promise-1.0.1";
            packageName = "is-promise";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/is-promise/-/is-promise-1.0.1.tgz";
              sha1 = "31573761c057e33c2e91aab9e96da08cefbe76e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isarray@0.0.1" = nodeEnv.buildYarnPackage {
            name = "isarray-0.0.1";
            packageName = "isarray";
            version = "0.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz";
              sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isexe@1.1.2" = nodeEnv.buildYarnPackage {
            name = "isexe-1.1.2";
            packageName = "isexe";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isexe/-/isexe-1.1.2.tgz";
              sha1 = "36f3e22e60750920f5e7241a476a8c6a42275ad0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "isobject@2.1.0" = nodeEnv.buildYarnPackage {
            name = "isobject-2.1.0";
            packageName = "isobject";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/isobject/-/isobject-2.1.0.tgz";
              sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "js-base64@2.1.9" = nodeEnv.buildYarnPackage {
            name = "js-base64-2.1.9";
            packageName = "js-base64";
            version = "2.1.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-base64/-/js-base64-2.1.9.tgz";
              sha1 = "f0e80ae039a4bd654b5f281fc93f04a914a7fcce";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "js-tokens@2.0.0" = nodeEnv.buildYarnPackage {
            name = "js-tokens-2.0.0";
            packageName = "js-tokens";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-2.0.0.tgz";
              sha1 = "79903f5563ee778cc1162e6dcf1a0027c97f9cb5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "js-yaml@3.6.1" = nodeEnv.buildYarnPackage {
            name = "js-yaml-3.6.1";
            packageName = "js-yaml";
            version = "3.6.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.6.1.tgz";
              sha1 = "6e5fe67d8b205ce4d22fad05b7781e8dadcc4b30";
            };
            dependencies = [ pkgs."esprima@2.7.3" ];
            dontNpmInstall = true;
            };
  "jsesc@1.3.0" = nodeEnv.buildYarnPackage {
            name = "jsesc-1.3.0";
            packageName = "jsesc";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsesc/-/jsesc-1.3.0.tgz";
              sha1 = "46c3fec8c1892b12b0833db9bc7622176dbab34b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "jsesc@0.5.0" = nodeEnv.buildYarnPackage {
            name = "jsesc-0.5.0";
            packageName = "jsesc";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsesc/-/jsesc-0.5.0.tgz";
              sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "jsonfile@2.4.0" = nodeEnv.buildYarnPackage {
            name = "jsonfile-2.4.0";
            packageName = "jsonfile";
            version = "2.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-2.4.0.tgz";
              sha1 = "3736a2b428b87bbda0cc83b53fa3d633a35c2ae8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "kind-of@2.0.1" = nodeEnv.buildYarnPackage {
            name = "kind-of-2.0.1";
            packageName = "kind-of";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/kind-of/-/kind-of-2.0.1.tgz";
              sha1 = "018ec7a4ce7e3a86cb9141be519d24c8faa981b5";
            };
            dependencies = [ pkgs."is-buffer@1.1.4" ];
            dontNpmInstall = true;
            };
  "kind-of@3.1.0" = nodeEnv.buildYarnPackage {
            name = "kind-of-3.1.0";
            packageName = "kind-of";
            version = "3.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/kind-of/-/kind-of-3.1.0.tgz";
              sha1 = "475d698a5e49ff5e53d14e3e732429dc8bf4cf47";
            };
            dependencies = [ pkgs."is-buffer@1.1.4" ];
            dontNpmInstall = true;
            };
  "lazy-cache@0.2.7" = nodeEnv.buildYarnPackage {
            name = "lazy-cache-0.2.7";
            packageName = "lazy-cache";
            version = "0.2.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lazy-cache/-/lazy-cache-0.2.7.tgz";
              sha1 = "7feddf2dcb6edb77d11ef1d117ab5ffdf0ab1b65";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "load-json-file@1.1.0" = nodeEnv.buildYarnPackage {
            name = "load-json-file-1.1.0";
            packageName = "load-json-file";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/load-json-file/-/load-json-file-1.1.0.tgz";
              sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
            };
            dependencies = [ pkgs."pify@2.3.0" pkgs."strip-bom@2.0.0" ];
            dontNpmInstall = true;
            };
  "loader-utils@0.2.16" = nodeEnv.buildYarnPackage {
            name = "loader-utils-0.2.16";
            packageName = "loader-utils";
            version = "0.2.16";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loader-utils/-/loader-utils-0.2.16.tgz";
              sha1 = "f08632066ed8282835dff88dfb52704765adee6d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash@3.10.1" = nodeEnv.buildYarnPackage {
            name = "lodash-3.10.1";
            packageName = "lodash";
            version = "3.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash/-/lodash-3.10.1.tgz";
              sha1 = "5bf45e8e49ba4189e17d482789dfd15bd140b7b6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "lodash@4.17.5" = nodeEnv.buildYarnPackage {
            name = "lodash-4.17.5";
            packageName = "lodash";
            version = "4.17.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.5.tgz";
              sha1 = "99a92d65c0272debe8c96b6057bc8fbfa3bed511";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "loose-envify@1.3.0" = nodeEnv.buildYarnPackage {
            name = "loose-envify-1.3.0";
            packageName = "loose-envify";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/loose-envify/-/loose-envify-1.3.0.tgz";
              sha1 = "6b26248c42f6d4fa4b0d8542f78edfcde35642a8";
            };
            dependencies = [ pkgs."js-tokens@2.0.0" ];
            dontNpmInstall = true;
            };
  "lru-cache@4.0.2" = nodeEnv.buildYarnPackage {
            name = "lru-cache-4.0.2";
            packageName = "lru-cache";
            version = "4.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.0.2.tgz";
              sha1 = "1d17679c069cda5d040991a09dbc2c0db377e55e";
            };
            dependencies = [ pkgs."yallist@2.0.0" ];
            dontNpmInstall = true;
            };
  "memory-fs@0.3.0" = nodeEnv.buildYarnPackage {
            name = "memory-fs-0.3.0";
            packageName = "memory-fs";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.3.0.tgz";
              sha1 = "7bcc6b629e3a43e871d7e29aca6ae8a7f15cbb20";
            };
            dependencies = [ pkgs."errno@0.1.4" pkgs."readable-stream@2.2.2" ];
            dontNpmInstall = true;
            };
  "mime-db@1.25.0" = nodeEnv.buildYarnPackage {
            name = "mime-db-1.25.0";
            packageName = "mime-db";
            version = "1.25.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.25.0.tgz";
              sha1 = "c18dbd7c73a5dbf6f44a024dc0d165a1e7b1c392";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mime-db@1.30.0" = nodeEnv.buildYarnPackage {
            name = "mime-db-1.30.0";
            packageName = "mime-db";
            version = "1.30.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.30.0.tgz";
              sha1 = "74c643da2dd9d6a45399963465b26d5ca7d71f01";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mime-types@2.1.17" = nodeEnv.buildYarnPackage {
            name = "mime-types-2.1.17";
            packageName = "mime-types";
            version = "2.1.17";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.17.tgz";
              sha1 = "09d7a393f03e995a79f8af857b70a9e0ab16557a";
            };
            dependencies = [ pkgs."mime-db@1.30.0" ];
            dontNpmInstall = true;
            };
  "mime-types@2.1.13" = nodeEnv.buildYarnPackage {
            name = "mime-types-2.1.13";
            packageName = "mime-types";
            version = "2.1.13";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.13.tgz";
              sha1 = "e07aaa9c6c6b9a7ca3012c69003ad25a39e92a88";
            };
            dependencies = [ pkgs."mime-db@1.25.0" ];
            dontNpmInstall = true;
            };
  "mime@1.3.4" = nodeEnv.buildYarnPackage {
            name = "mime-1.3.4";
            packageName = "mime";
            version = "1.3.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime/-/mime-1.3.4.tgz";
              sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mime@1.4.1" = nodeEnv.buildYarnPackage {
            name = "mime-1.4.1";
            packageName = "mime";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mime/-/mime-1.4.1.tgz";
              sha1 = "121f9ebc49e3766f311a76e1fa1c8003c4b03aa6";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "minimatch@3.0.3" = nodeEnv.buildYarnPackage {
            name = "minimatch-3.0.3";
            packageName = "minimatch";
            version = "3.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.3.tgz";
              sha1 = "2a4e4090b96b2db06a9d7df01055a62a77c9b774";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "minimist@0.0.8" = nodeEnv.buildYarnPackage {
            name = "minimist-0.0.8";
            packageName = "minimist";
            version = "0.0.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.8.tgz";
              sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "minimist@0.0.10" = nodeEnv.buildYarnPackage {
            name = "minimist-0.0.10";
            packageName = "minimist";
            version = "0.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.10.tgz";
              sha1 = "de3f98543dbf96082be48ad1a0c7cda836301dcf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "mkdirp@0.5.0" = nodeEnv.buildYarnPackage {
            name = "mkdirp-0.5.0";
            packageName = "mkdirp";
            version = "0.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.0.tgz";
              sha1 = "1d73076a6df986cd9344e15e71fcc05a4c9abf12";
            };
            dependencies = [ pkgs."minimist@0.0.8" ];
            dontNpmInstall = true;
            };
  "ms@0.7.1" = nodeEnv.buildYarnPackage {
            name = "ms-0.7.1";
            packageName = "ms";
            version = "0.7.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ms/-/ms-0.7.1.tgz";
              sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "nan@2.5.0" = nodeEnv.buildYarnPackage {
            name = "nan-2.5.0";
            packageName = "nan";
            version = "2.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nan/-/nan-2.5.0.tgz";
              sha1 = "aa8f1e34531d807e9e27755b234b4a6ec0c152a8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "nopt@1.0.10" = nodeEnv.buildYarnPackage {
            name = "nopt-1.0.10";
            packageName = "nopt";
            version = "1.0.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/nopt/-/nopt-1.0.10.tgz";
              sha1 = "6ddd21bd2a31417b92727dd585f8a6f37608ebee";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "normalize-path@2.0.1" = nodeEnv.buildYarnPackage {
            name = "normalize-path-2.0.1";
            packageName = "normalize-path";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.0.1.tgz";
              sha1 = "47886ac1662760d4261b7d979d241709d3ce3f7a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "npmlog@4.0.2" = nodeEnv.buildYarnPackage {
            name = "npmlog-4.0.2";
            packageName = "npmlog";
            version = "4.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.0.2.tgz";
              sha1 = "d03950e0e78ce1527ba26d2a7592e9348ac3e75f";
            };
            dependencies = [ pkgs."gauge@2.7.2" ];
            dontNpmInstall = true;
            };
  "object-assign@3.0.0" = nodeEnv.buildYarnPackage {
            name = "object-assign-3.0.0";
            packageName = "object-assign";
            version = "3.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-assign/-/object-assign-3.0.0.tgz";
              sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "object-assign@4.1.0" = nodeEnv.buildYarnPackage {
            name = "object-assign-4.1.0";
            packageName = "object-assign";
            version = "4.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.0.tgz";
              sha1 = "7a3b3d0e98063d43f4c03f2e8ae6cd51a86883a0";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "object-keys@0.4.0" = nodeEnv.buildYarnPackage {
            name = "object-keys-0.4.0";
            packageName = "object-keys";
            version = "0.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/object-keys/-/object-keys-0.4.0.tgz";
              sha1 = "28a6aae7428dd2c3a92f3d95f21335dd204e0336";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "once@1.3.3" = nodeEnv.buildYarnPackage {
            name = "once-1.3.3";
            packageName = "once";
            version = "1.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/once/-/once-1.3.3.tgz";
              sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "os-locale@1.4.0" = nodeEnv.buildYarnPackage {
            name = "os-locale-1.4.0";
            packageName = "os-locale";
            version = "1.4.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/os-locale/-/os-locale-1.4.0.tgz";
              sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "parseurl@1.3.1" = nodeEnv.buildYarnPackage {
            name = "parseurl-1.3.1";
            packageName = "parseurl";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.1.tgz";
              sha1 = "c8ab8c9223ba34888aa64a297b28853bec18da56";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-exists@2.1.0" = nodeEnv.buildYarnPackage {
            name = "path-exists-2.1.0";
            packageName = "path-exists";
            version = "2.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-exists/-/path-exists-2.1.0.tgz";
              sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "path-type@1.1.0" = nodeEnv.buildYarnPackage {
            name = "path-type-1.1.0";
            packageName = "path-type";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/path-type/-/path-type-1.1.0.tgz";
              sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
            };
            dependencies = [ pkgs."pify@2.3.0" ];
            dontNpmInstall = true;
            };
  "pbkdf2@3.0.9" = nodeEnv.buildYarnPackage {
            name = "pbkdf2-3.0.9";
            packageName = "pbkdf2";
            version = "3.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pbkdf2/-/pbkdf2-3.0.9.tgz";
              sha1 = "f2c4b25a600058b3c3773c086c37dbbee1ffe693";
            };
            dependencies = [ pkgs."create-hmac@1.1.4" ];
            dontNpmInstall = true;
            };
  "performance-now@0.2.0" = nodeEnv.buildYarnPackage {
            name = "performance-now-0.2.0";
            packageName = "performance-now";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/performance-now/-/performance-now-0.2.0.tgz";
              sha1 = "33ef30c5c77d4ea21c5a53869d91b56d8f2555e5";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pify@2.3.0" = nodeEnv.buildYarnPackage {
            name = "pify-2.3.0";
            packageName = "pify";
            version = "2.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pify/-/pify-2.3.0.tgz";
              sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "pkg-dir@1.0.0" = nodeEnv.buildYarnPackage {
            name = "pkg-dir-1.0.0";
            packageName = "pkg-dir";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/pkg-dir/-/pkg-dir-1.0.0.tgz";
              sha1 = "7a4b508a8d5bb2d629d447056ff4e9c9314cf3d4";
            };
            dependencies = [ pkgs."find-up@1.1.2" ];
            dontNpmInstall = true;
            };
  "postcss@5.2.9" = nodeEnv.buildYarnPackage {
            name = "postcss-5.2.9";
            packageName = "postcss";
            version = "5.2.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/postcss/-/postcss-5.2.9.tgz";
              sha1 = "282a644f92d4b871ade2d3ce8bd0ea46f18317b6";
            };
            dependencies = [ pkgs."chalk@1.1.3" pkgs."js-base64@2.1.9" pkgs."source-map@0.5.6" pkgs."supports-color@3.1.2" ];
            dontNpmInstall = true;
            };
  "private@0.1.6" = nodeEnv.buildYarnPackage {
            name = "private-0.1.6";
            packageName = "private";
            version = "0.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/private/-/private-0.1.6.tgz";
              sha1 = "55c6a976d0f9bafb9924851350fe47b9b5fbb7c1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "process-nextick-args@1.0.7" = nodeEnv.buildYarnPackage {
            name = "process-nextick-args-1.0.7";
            packageName = "process-nextick-args";
            version = "1.0.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
              sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "process@0.5.2" = nodeEnv.buildYarnPackage {
            name = "process-0.5.2";
            packageName = "process";
            version = "0.5.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/process/-/process-0.5.2.tgz";
              sha1 = "1638d8a8e34c2f440a91db95ab9aeb677fc185cf";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "promise@1.3.0" = nodeEnv.buildYarnPackage {
            name = "promise-1.3.0";
            packageName = "promise";
            version = "1.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/promise/-/promise-1.3.0.tgz";
              sha1 = "e5cc9a4c8278e4664ffedc01c7da84842b040175";
            };
            dependencies = [ pkgs."is-promise@1.0.1" ];
            dontNpmInstall = true;
            };
  "prop-types@15.5.10" = nodeEnv.buildYarnPackage {
            name = "prop-types-15.5.10";
            packageName = "prop-types";
            version = "15.5.10";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prop-types/-/prop-types-15.5.10.tgz";
              sha1 = "2797dfc3126182e3a95e3dfbb2e893ddd7456154";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "proxy-addr@1.1.2" = nodeEnv.buildYarnPackage {
            name = "proxy-addr-1.1.2";
            packageName = "proxy-addr";
            version = "1.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/proxy-addr/-/proxy-addr-1.1.2.tgz";
              sha1 = "b4cc5f22610d9535824c123aef9d3cf73c40ba37";
            };
            dependencies = [ pkgs."forwarded@0.1.0" pkgs."ipaddr.js@1.1.1" ];
            dontNpmInstall = true;
            };
  "prr@0.0.0" = nodeEnv.buildYarnPackage {
            name = "prr-0.0.0";
            packageName = "prr";
            version = "0.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/prr/-/prr-0.0.0.tgz";
              sha1 = "1a84b85908325501411853d0081ee3fa86e2926a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "punycode@1.3.2" = nodeEnv.buildYarnPackage {
            name = "punycode-1.3.2";
            packageName = "punycode";
            version = "1.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/punycode/-/punycode-1.3.2.tgz";
              sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "q@1.4.1" = nodeEnv.buildYarnPackage {
            name = "q-1.4.1";
            packageName = "q";
            version = "1.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/q/-/q-1.4.1.tgz";
              sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "qs@6.2.0" = nodeEnv.buildYarnPackage {
            name = "qs-6.2.0";
            packageName = "qs";
            version = "6.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-6.2.0.tgz";
              sha1 = "3b7848c03c2dece69a9522b0fae8c4126d745f3b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "qs@6.3.0" = nodeEnv.buildYarnPackage {
            name = "qs-6.3.0";
            packageName = "qs";
            version = "6.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/qs/-/qs-6.3.0.tgz";
              sha1 = "f403b264f23bc01228c74131b407f18d5ea5d442";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "query-string@4.2.3" = nodeEnv.buildYarnPackage {
            name = "query-string-4.2.3";
            packageName = "query-string";
            version = "4.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/query-string/-/query-string-4.2.3.tgz";
              sha1 = "9f27273d207a25a8ee4c7b8c74dcd45d556db822";
            };
            dependencies = [ pkgs."object-assign@4.1.0" ];
            dontNpmInstall = true;
            };
  "randombytes@2.0.3" = nodeEnv.buildYarnPackage {
            name = "randombytes-2.0.3";
            packageName = "randombytes";
            version = "2.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/randombytes/-/randombytes-2.0.3.tgz";
              sha1 = "674c99760901c3c4112771a31e521dc349cc09ec";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rc@1.1.6" = nodeEnv.buildYarnPackage {
            name = "rc-1.1.6";
            packageName = "rc";
            version = "1.1.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rc/-/rc-1.1.6.tgz";
              sha1 = "43651b76b6ae53b5c802f1151fa3fc3b059969c9";
            };
            dependencies = [ pkgs."strip-json-comments@1.0.4" ];
            dontNpmInstall = true;
            };
  "react-modal@2.4.1" = nodeEnv.buildYarnPackage {
            name = "react-modal-2.4.1";
            packageName = "react-modal";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/react-modal/-/react-modal-2.4.1.tgz";
              sha1 = "cb09b26711b148eb9f59cb180e1b7d82980ded05";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "read-pkg-up@1.0.1" = nodeEnv.buildYarnPackage {
            name = "read-pkg-up-1.0.1";
            packageName = "read-pkg-up";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
              sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
            };
            dependencies = [ pkgs."find-up@1.1.2" pkgs."read-pkg@1.1.0" ];
            dontNpmInstall = true;
            };
  "read-pkg@1.1.0" = nodeEnv.buildYarnPackage {
            name = "read-pkg-1.1.0";
            packageName = "read-pkg";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-1.1.0.tgz";
              sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
            };
            dependencies = [ pkgs."load-json-file@1.1.0" pkgs."path-type@1.1.0" ];
            dontNpmInstall = true;
            };
  "readable-stream@1.0.34" = nodeEnv.buildYarnPackage {
            name = "readable-stream-1.0.34";
            packageName = "readable-stream";
            version = "1.0.34";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.0.34.tgz";
              sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
            };
            dependencies = [ pkgs."isarray@0.0.1" pkgs."string_decoder@0.10.31" ];
            dontNpmInstall = true;
            };
  "readable-stream@1.1.14" = nodeEnv.buildYarnPackage {
            name = "readable-stream-1.1.14";
            packageName = "readable-stream";
            version = "1.1.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.1.14.tgz";
              sha1 = "7cf4c54ef648e3813084c636dd2079e166c081d9";
            };
            dependencies = [ pkgs."isarray@0.0.1" pkgs."string_decoder@0.10.31" ];
            dontNpmInstall = true;
            };
  "readable-stream@2.2.2" = nodeEnv.buildYarnPackage {
            name = "readable-stream-2.2.2";
            packageName = "readable-stream";
            version = "2.2.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.2.2.tgz";
              sha1 = "a9e6fec3c7dda85f8bb1b3ba7028604556fc825e";
            };
            dependencies = [ pkgs."process-nextick-args@1.0.7" pkgs."string_decoder@0.10.31" ];
            dontNpmInstall = true;
            };
  "readable-stream@2.0.6" = nodeEnv.buildYarnPackage {
            name = "readable-stream-2.0.6";
            packageName = "readable-stream";
            version = "2.0.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.0.6.tgz";
              sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
            };
            dependencies = [ pkgs."process-nextick-args@1.0.7" pkgs."string_decoder@0.10.31" ];
            dontNpmInstall = true;
            };
  "readable-stream@2.1.5" = nodeEnv.buildYarnPackage {
            name = "readable-stream-2.1.5";
            packageName = "readable-stream";
            version = "2.1.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.1.5.tgz";
              sha1 = "66fa8b720e1438b364681f2ad1a63c618448c9d0";
            };
            dependencies = [ pkgs."process-nextick-args@1.0.7" pkgs."string_decoder@0.10.31" ];
            dontNpmInstall = true;
            };
  "recast@0.11.23" = nodeEnv.buildYarnPackage {
            name = "recast-0.11.23";
            packageName = "recast";
            version = "0.11.23";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/recast/-/recast-0.11.23.tgz";
              sha1 = "451fd3004ab1e4df9b4e4b66376b2a21912462d3";
            };
            dependencies = [ pkgs."ast-types@0.9.6" pkgs."esprima@3.1.3" pkgs."private@0.1.6" pkgs."source-map@0.5.6" ];
            dontNpmInstall = true;
            };
  "regenerator-runtime@0.10.1" = nodeEnv.buildYarnPackage {
            name = "regenerator-runtime-0.10.1";
            packageName = "regenerator-runtime";
            version = "0.10.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.10.1.tgz";
              sha1 = "257f41961ce44558b18f7814af48c17559f9faeb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "regenerator-runtime@0.10.5" = nodeEnv.buildYarnPackage {
            name = "regenerator-runtime-0.10.5";
            packageName = "regenerator-runtime";
            version = "0.10.5";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.10.5.tgz";
              sha1 = "336c3efc1220adcedda2c9fab67b5a7955a33658";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "regexpu-core@1.0.0" = nodeEnv.buildYarnPackage {
            name = "regexpu-core-1.0.0";
            packageName = "regexpu-core";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/regexpu-core/-/regexpu-core-1.0.0.tgz";
              sha1 = "86a763f58ee4d7c2f6b102e4764050de7ed90c6b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "request@2.79.0" = nodeEnv.buildYarnPackage {
            name = "request-2.79.0";
            packageName = "request";
            version = "2.79.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/request/-/request-2.79.0.tgz";
              sha1 = "4dfe5bf6be8b8cdc37fcf93e04b65577722710de";
            };
            dependencies = [ pkgs."aws-sign2@0.6.0" pkgs."aws4@1.5.0" pkgs."caseless@0.11.0" pkgs."extend@3.0.0" pkgs."form-data@2.1.2" pkgs."har-validator@2.0.6" pkgs."hawk@3.1.3" pkgs."http-signature@1.1.1" pkgs."mime-types@2.1.13" pkgs."qs@6.3.0" pkgs."tough-cookie@2.3.2" pkgs."tunnel-agent@0.4.3" pkgs."uuid@3.0.1" ];
            dontNpmInstall = true;
            };
  "resolve@1.2.0" = nodeEnv.buildYarnPackage {
            name = "resolve-1.2.0";
            packageName = "resolve";
            version = "1.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/resolve/-/resolve-1.2.0.tgz";
              sha1 = "9589c3f2f6149d1417a40becc1663db6ec6bc26c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "rimraf@2.5.4" = nodeEnv.buildYarnPackage {
            name = "rimraf-2.5.4";
            packageName = "rimraf";
            version = "2.5.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.5.4.tgz";
              sha1 = "96800093cbf1a0c86bd95b4625467535c29dfa04";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "ripemd160@1.0.1" = nodeEnv.buildYarnPackage {
            name = "ripemd160-1.0.1";
            packageName = "ripemd160";
            version = "1.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-1.0.1.tgz";
              sha1 = "93a4bbd4942bc574b69a8fa57c71de10ecca7d6e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "schema-utils@0.3.0" = nodeEnv.buildYarnPackage {
            name = "schema-utils-0.3.0";
            packageName = "schema-utils";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/schema-utils/-/schema-utils-0.3.0.tgz";
              sha1 = "f5877222ce3e931edae039f17eb3716e7137f8cf";
            };
            dependencies = [ pkgs."ajv@5.5.2" ];
            dontNpmInstall = true;
            };
  "semver@5.3.0" = nodeEnv.buildYarnPackage {
            name = "semver-5.3.0";
            packageName = "semver";
            version = "5.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/semver/-/semver-5.3.0.tgz";
              sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "send@0.14.1" = nodeEnv.buildYarnPackage {
            name = "send-0.14.1";
            packageName = "send";
            version = "0.14.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/send/-/send-0.14.1.tgz";
              sha1 = "a954984325392f51532a7760760e459598c89f7a";
            };
            dependencies = [ pkgs."debug@2.2.0" pkgs."depd@1.1.0" pkgs."etag@1.7.0" pkgs."fresh@0.3.0" pkgs."http-errors@1.5.1" pkgs."mime@1.3.4" pkgs."ms@0.7.1" ];
            dontNpmInstall = true;
            };
  "serve-static@1.11.1" = nodeEnv.buildYarnPackage {
            name = "serve-static-1.11.1";
            packageName = "serve-static";
            version = "1.11.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.11.1.tgz";
              sha1 = "d6cce7693505f733c759de57befc1af76c0f0805";
            };
            dependencies = [ pkgs."parseurl@1.3.1" pkgs."send@0.14.1" ];
            dontNpmInstall = true;
            };
  "setprototypeof@1.0.2" = nodeEnv.buildYarnPackage {
            name = "setprototypeof-1.0.2";
            packageName = "setprototypeof";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.0.2.tgz";
              sha1 = "81a552141ec104b88e89ce383103ad5c66564d08";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "setprototypeof@1.0.3" = nodeEnv.buildYarnPackage {
            name = "setprototypeof-1.0.3";
            packageName = "setprototypeof";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.0.3.tgz";
              sha1 = "66567e37043eeb4f04d91bd658c0cbefb55b8e04";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sha.js@2.4.8" = nodeEnv.buildYarnPackage {
            name = "sha.js-2.4.8";
            packageName = "sha.js";
            version = "2.4.8";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sha.js/-/sha.js-2.4.8.tgz";
              sha1 = "37068c2c476b6baf402d14a49c67f597921f634f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "shelljs@0.7.6" = nodeEnv.buildYarnPackage {
            name = "shelljs-0.7.6";
            packageName = "shelljs";
            version = "0.7.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/shelljs/-/shelljs-0.7.6.tgz";
              sha1 = "379cccfb56b91c8601e4793356eb5382924de9ad";
            };
            dependencies = [ pkgs."glob@7.1.1" ];
            dontNpmInstall = true;
            };
  "sntp@1.0.9" = nodeEnv.buildYarnPackage {
            name = "sntp-1.0.9";
            packageName = "sntp";
            version = "1.0.9";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sntp/-/sntp-1.0.9.tgz";
              sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
            };
            dependencies = [ pkgs."hoek@2.16.3" ];
            dontNpmInstall = true;
            };
  "source-map-support@0.4.18" = nodeEnv.buildYarnPackage {
            name = "source-map-support-0.4.18";
            packageName = "source-map-support";
            version = "0.4.18";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.4.18.tgz";
              sha1 = "0286a6de8be42641338594e97ccea75f0a2c585f";
            };
            dependencies = [ pkgs."source-map@0.5.6" ];
            dontNpmInstall = true;
            };
  "source-map@0.5.6" = nodeEnv.buildYarnPackage {
            name = "source-map-0.5.6";
            packageName = "source-map";
            version = "0.5.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.6.tgz";
              sha1 = "75ce38f52bf0733c5a7f0c118d81334a2bb5f412";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "source-map@0.5.7" = nodeEnv.buildYarnPackage {
            name = "source-map-0.5.7";
            packageName = "source-map";
            version = "0.5.7";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.7.tgz";
              sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "source-map@0.1.43" = nodeEnv.buildYarnPackage {
            name = "source-map-0.1.43";
            packageName = "source-map";
            version = "0.1.43";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.1.43.tgz";
              sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "source-map@0.4.4" = nodeEnv.buildYarnPackage {
            name = "source-map-0.4.4";
            packageName = "source-map";
            version = "0.4.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/source-map/-/source-map-0.4.4.tgz";
              sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "split@0.3.3" = nodeEnv.buildYarnPackage {
            name = "split-0.3.3";
            packageName = "split";
            version = "0.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/split/-/split-0.3.3.tgz";
              sha1 = "cd0eea5e63a211dfff7eb0f091c4133e2d0dd28f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "stackframe@0.3.1" = nodeEnv.buildYarnPackage {
            name = "stackframe-0.3.1";
            packageName = "stackframe";
            version = "0.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/stackframe/-/stackframe-0.3.1.tgz";
              sha1 = "33aa84f1177a5548c8935533cbfeb3420975f5a4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "string-width@1.0.2" = nodeEnv.buildYarnPackage {
            name = "string-width-1.0.2";
            packageName = "string-width";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-width/-/string-width-1.0.2.tgz";
              sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
            };
            dependencies = [ pkgs."is-fullwidth-code-point@1.0.0" pkgs."strip-ansi@3.0.1" ];
            dontNpmInstall = true;
            };
  "string-width@2.0.0" = nodeEnv.buildYarnPackage {
            name = "string-width-2.0.0";
            packageName = "string-width";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string-width/-/string-width-2.0.0.tgz";
              sha1 = "635c5436cc72a6e0c387ceca278d4e2eec52687e";
            };
            dependencies = [ pkgs."strip-ansi@3.0.1" ];
            dontNpmInstall = true;
            };
  "string_decoder@0.10.31" = nodeEnv.buildYarnPackage {
            name = "string_decoder-0.10.31";
            packageName = "string_decoder";
            version = "0.10.31";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz";
              sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-ansi@0.3.0" = nodeEnv.buildYarnPackage {
            name = "strip-ansi-0.3.0";
            packageName = "strip-ansi";
            version = "0.3.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-0.3.0.tgz";
              sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
            };
            dependencies = [ pkgs."ansi-regex@0.2.1" ];
            dontNpmInstall = true;
            };
  "strip-ansi@3.0.1" = nodeEnv.buildYarnPackage {
            name = "strip-ansi-3.0.1";
            packageName = "strip-ansi";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-3.0.1.tgz";
              sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
            };
            dependencies = [ pkgs."ansi-regex@2.1.1" ];
            dontNpmInstall = true;
            };
  "strip-bom@2.0.0" = nodeEnv.buildYarnPackage {
            name = "strip-bom-2.0.0";
            packageName = "strip-bom";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-2.0.0.tgz";
              sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "strip-json-comments@1.0.4" = nodeEnv.buildYarnPackage {
            name = "strip-json-comments-1.0.4";
            packageName = "strip-json-comments";
            version = "1.0.4";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
              sha1 = "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "sumchecker@1.3.1" = nodeEnv.buildYarnPackage {
            name = "sumchecker-1.3.1";
            packageName = "sumchecker";
            version = "1.3.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/sumchecker/-/sumchecker-1.3.1.tgz";
              sha1 = "79bb3b4456dd04f18ebdbc0d703a1d1daec5105d";
            };
            dependencies = [ pkgs."debug@2.6.9" ];
            dontNpmInstall = true;
            };
  "supports-color@0.2.0" = nodeEnv.buildYarnPackage {
            name = "supports-color-0.2.0";
            packageName = "supports-color";
            version = "0.2.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-0.2.0.tgz";
              sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "supports-color@2.0.0" = nodeEnv.buildYarnPackage {
            name = "supports-color-2.0.0";
            packageName = "supports-color";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-2.0.0.tgz";
              sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "supports-color@3.1.2" = nodeEnv.buildYarnPackage {
            name = "supports-color-3.1.2";
            packageName = "supports-color";
            version = "3.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-3.1.2.tgz";
              sha1 = "72a262894d9d408b956ca05ff37b2ed8a6e2a2d5";
            };
            dependencies = [ pkgs."has-flag@1.0.0" ];
            dontNpmInstall = true;
            };
  "supports-color@3.2.3" = nodeEnv.buildYarnPackage {
            name = "supports-color-3.2.3";
            packageName = "supports-color";
            version = "3.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-3.2.3.tgz";
              sha1 = "65ac0504b3954171d8a64946b2ae3cbb8a5f54f6";
            };
            dependencies = [ pkgs."has-flag@1.0.0" ];
            dontNpmInstall = true;
            };
  "supports-color@4.5.0" = nodeEnv.buildYarnPackage {
            name = "supports-color-4.5.0";
            packageName = "supports-color";
            version = "4.5.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-4.5.0.tgz";
              sha1 = "be7a0de484dec5c5cddf8b3d59125044912f635b";
            };
            dependencies = [ pkgs."has-flag@2.0.0" ];
            dontNpmInstall = true;
            };
  "supports-color@5.0.1" = nodeEnv.buildYarnPackage {
            name = "supports-color-5.0.1";
            packageName = "supports-color";
            version = "5.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/supports-color/-/supports-color-5.0.1.tgz";
              sha1 = "1c5331f22250c84202805b2f17adf16699f3a39a";
            };
            dependencies = [ pkgs."has-flag@2.0.0" ];
            dontNpmInstall = true;
            };
  "through2@0.2.3" = nodeEnv.buildYarnPackage {
            name = "through2-0.2.3";
            packageName = "through2";
            version = "0.2.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/through2/-/through2-0.2.3.tgz";
              sha1 = "eb3284da4ea311b6cc8ace3653748a52abf25a3f";
            };
            dependencies = [ pkgs."readable-stream@1.1.14" pkgs."xtend@2.1.2" ];
            dontNpmInstall = true;
            };
  "time-stamp@1.1.0" = nodeEnv.buildYarnPackage {
            name = "time-stamp-1.1.0";
            packageName = "time-stamp";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/time-stamp/-/time-stamp-1.1.0.tgz";
              sha1 = "764a5a11af50561921b133f3b44e618687e0f5c3";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tmp@0.0.28" = nodeEnv.buildYarnPackage {
            name = "tmp-0.0.28";
            packageName = "tmp";
            version = "0.0.28";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.28.tgz";
              sha1 = "172735b7f614ea7af39664fa84cf0de4e515d120";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "to-fast-properties@1.0.2" = nodeEnv.buildYarnPackage {
            name = "to-fast-properties-1.0.2";
            packageName = "to-fast-properties";
            version = "1.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-1.0.2.tgz";
              sha1 = "f3f5c0c3ba7299a7ef99427e44633257ade43320";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "to-fast-properties@1.0.3" = nodeEnv.buildYarnPackage {
            name = "to-fast-properties-1.0.3";
            packageName = "to-fast-properties";
            version = "1.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-1.0.3.tgz";
              sha1 = "b83571fa4d8c25b82e231b06e3a3055de4ca1a47";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tough-cookie@2.3.2" = nodeEnv.buildYarnPackage {
            name = "tough-cookie-2.3.2";
            packageName = "tough-cookie";
            version = "2.3.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.3.2.tgz";
              sha1 = "f081f76e4c85720e6c37a5faced737150d84072a";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "tunnel-agent@0.4.3" = nodeEnv.buildYarnPackage {
            name = "tunnel-agent-0.4.3";
            packageName = "tunnel-agent";
            version = "0.4.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.4.3.tgz";
              sha1 = "6373db76909fe570e08d73583365ed828a74eeeb";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "type-is@1.6.14" = nodeEnv.buildYarnPackage {
            name = "type-is-1.6.14";
            packageName = "type-is";
            version = "1.6.14";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/type-is/-/type-is-1.6.14.tgz";
              sha1 = "e219639c17ded1ca0789092dd54a03826b817cb2";
            };
            dependencies = [ pkgs."mime-types@2.1.13" ];
            dontNpmInstall = true;
            };
  "uglify-js@2.8.29" = nodeEnv.buildYarnPackage {
            name = "uglify-js-2.8.29";
            packageName = "uglify-js";
            version = "2.8.29";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-2.8.29.tgz";
              sha1 = "29c5733148057bb4e1f75df35b7a9cb72e6a59dd";
            };
            dependencies = [ pkgs."source-map@0.5.6" pkgs."yargs@3.10.0" ];
            dontNpmInstall = true;
            };
  "uglifyjs-webpack-plugin@0.4.6" = nodeEnv.buildYarnPackage {
            name = "uglifyjs-webpack-plugin-0.4.6";
            packageName = "uglifyjs-webpack-plugin";
            version = "0.4.6";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uglifyjs-webpack-plugin/-/uglifyjs-webpack-plugin-0.4.6.tgz";
              sha1 = "b951f4abb6bd617e66f63eb891498e391763e309";
            };
            dependencies = [ pkgs."source-map@0.5.6" pkgs."uglify-js@2.8.29" ];
            dontNpmInstall = true;
            };
  "utila@0.3.3" = nodeEnv.buildYarnPackage {
            name = "utila-0.3.3";
            packageName = "utila";
            version = "0.3.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utila/-/utila-0.3.3.tgz";
              sha1 = "d7e8e7d7e309107092b05f8d9688824d633a4226";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "utils-merge@1.0.0" = nodeEnv.buildYarnPackage {
            name = "utils-merge-1.0.0";
            packageName = "utils-merge";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/utils-merge/-/utils-merge-1.0.0.tgz";
              sha1 = "0294fb922bb9375153541c4f7096231f287c8af8";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uuid@2.0.1" = nodeEnv.buildYarnPackage {
            name = "uuid-2.0.1";
            packageName = "uuid";
            version = "2.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uuid/-/uuid-2.0.1.tgz";
              sha1 = "c2a30dedb3e535d72ccf82e343941a50ba8533ac";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "uuid@3.0.1" = nodeEnv.buildYarnPackage {
            name = "uuid-3.0.1";
            packageName = "uuid";
            version = "3.0.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/uuid/-/uuid-3.0.1.tgz";
              sha1 = "6544bba2dfda8c1cf17e629a3a305e2bb1fee6c1";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "validator@9.1.2" = nodeEnv.buildYarnPackage {
            name = "validator-9.1.2";
            packageName = "validator";
            version = "9.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/validator/-/validator-9.1.2.tgz";
              sha1 = "5711b6413f78bd9d56003130c81b47c39e86546c";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "vary@1.1.0" = nodeEnv.buildYarnPackage {
            name = "vary-1.1.0";
            packageName = "vary";
            version = "1.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/vary/-/vary-1.1.0.tgz";
              sha1 = "e1e5affbbd16ae768dd2674394b9ad3022653140";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "which-module@1.0.0" = nodeEnv.buildYarnPackage {
            name = "which-module-1.0.0";
            packageName = "which-module";
            version = "1.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/which-module/-/which-module-1.0.0.tgz";
              sha1 = "bba63ca861948994ff307736089e3b96026c2a4f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "which@1.2.12" = nodeEnv.buildYarnPackage {
            name = "which-1.2.12";
            packageName = "which";
            version = "1.2.12";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/which/-/which-1.2.12.tgz";
              sha1 = "de67b5e450269f194909ef23ece4ebe416fa1192";
            };
            dependencies = [ pkgs."isexe@1.1.2" ];
            dontNpmInstall = true;
            };
  "wordwrap@0.0.2" = nodeEnv.buildYarnPackage {
            name = "wordwrap-0.0.2";
            packageName = "wordwrap";
            version = "0.0.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.2.tgz";
              sha1 = "b79669bb42ecb409f83d583cad52ca17eaa1643f";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "wordwrap@0.0.3" = nodeEnv.buildYarnPackage {
            name = "wordwrap-0.0.3";
            packageName = "wordwrap";
            version = "0.0.3";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.3.tgz";
              sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "xtend@2.1.2" = nodeEnv.buildYarnPackage {
            name = "xtend-2.1.2";
            packageName = "xtend";
            version = "2.1.2";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/xtend/-/xtend-2.1.2.tgz";
              sha1 = "6efecc2a4dad8e6962c4901b337ce7ba87b5d28b";
            };
            dependencies = [ pkgs."object-keys@0.4.0" ];
            dontNpmInstall = true;
            };
  "y18n@3.2.1" = nodeEnv.buildYarnPackage {
            name = "y18n-3.2.1";
            packageName = "y18n";
            version = "3.2.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/y18n/-/y18n-3.2.1.tgz";
              sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "yallist@2.0.0" = nodeEnv.buildYarnPackage {
            name = "yallist-2.0.0";
            packageName = "yallist";
            version = "2.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yallist/-/yallist-2.0.0.tgz";
              sha1 = "306c543835f09ee1a4cb23b7bce9ab341c91cdd4";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "yargs-parser@5.0.0" = nodeEnv.buildYarnPackage {
            name = "yargs-parser-5.0.0";
            packageName = "yargs-parser";
            version = "5.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-5.0.0.tgz";
              sha1 = "275ecf0d7ffe05c77e64e7c86e4cd94bf0e1228a";
            };
            dependencies = [ pkgs."camelcase@3.0.0" ];
            dontNpmInstall = true;
            };
  "yargs-parser@7.0.0" = nodeEnv.buildYarnPackage {
            name = "yargs-parser-7.0.0";
            packageName = "yargs-parser";
            version = "7.0.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-7.0.0.tgz";
              sha1 = "8d0ac42f16ea55debd332caf4c4038b3e3f5dfd9";
            };
            dependencies = [];
            dontNpmInstall = true;
            };
  "yargs@7.1.0" = nodeEnv.buildYarnPackage {
            name = "yargs-7.1.0";
            packageName = "yargs";
            version = "7.1.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs/-/yargs-7.1.0.tgz";
              sha1 = "6ba318eb16961727f5d284f8ea003e8d6154d0c8";
            };
            dependencies = [ pkgs."camelcase@3.0.0" pkgs."os-locale@1.4.0" pkgs."read-pkg-up@1.0.1" pkgs."string-width@1.0.2" pkgs."which-module@1.0.0" pkgs."y18n@3.2.1" pkgs."yargs-parser@5.0.0" ];
            dontNpmInstall = true;
            };
  "yargs@3.10.0" = nodeEnv.buildYarnPackage {
            name = "yargs-3.10.0";
            packageName = "yargs";
            version = "3.10.0";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yargs/-/yargs-3.10.0.tgz";
              sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
            };
            dependencies = [ pkgs."camelcase@1.2.1" pkgs."cliui@2.1.0" ];
            dontNpmInstall = true;
            };
  "yauzl@2.4.1" = nodeEnv.buildYarnPackage {
            name = "yauzl-2.4.1";
            packageName = "yauzl";
            version = "2.4.1";
            src = fetchurl {
              url = "https://registry.yarnpkg.com/yauzl/-/yauzl-2.4.1.tgz";
              sha1 = "9528f442dab1b2284e58b4379bb194e22e0c4005";
            };
            dependencies = [];
            dontNpmInstall = true;
            };

};
}


{ fetchgit, fetchurl, overrides }: self:
  super: let
        registries = {
          yarn = n: v:
            "https://registry.yarnpkg.com/${n}/-/${n}-${v}.tgz";
          npm = n: v:
            "https://registry.npmjs.org/${n}/-/${n}-${v}.tgz";
        };
        sanitizePackageName = builtins.replaceStrings [
          "@"
          "/"
        ] [ "-" "-" ];
        scopedName = builtins.replaceStrings [ "/" ] [ "-" ];
        yarnOfflineFile = n: v: "${scopedName n}-${v}.tgz";
        yarnOfflineGit = n: r: "${scopedName n}-${r}";
        nodeFilePackage = name: version:
          registry: sha1: deps:
                super._buildNodePackage ({
                    name = sanitizePackageName name;
                    inherit version;
                    src = fetchurl {
                      url = registry name version;
                      inherit sha1;
                    };
                    yarnOfflineName = yarnOfflineFile name version;
                    nodeBuildInputs = deps;
                  } // (overrides."${name}" or {}));
        nodeGitPackage = name: version:
          url: rev: sha256: deps:
                  super._buildNodePackage {
                      name = sanitizePackageName name;
                      inherit version;
                      src = fetchgit {
                        inherit url rev sha256;
                        leaveDotGit = true;
                        postFetch = ''
                          mv $out $PWD/gitarchive
                          cd gitarchive
                          git archive --format=tar --output ../tarball ${rev}
                          mv ../tarball $out
                        '';
                      };
                      yarnOfflineName = yarnOfflineGit name rev;
                      nodeBuildInputs = deps;
                      unpackPhase = ''
                        tar xf $src
                      '';
                    };
        identityRegistry = url: _: _:
            url;
        ir = identityRegistry;
        f = nodeFilePackage;
        g = nodeGitPackage;
        n = registries.npm;
        y = registries.yarn;
        s = self;
        in {
          "7zip@0.0.6" = f "7zip" "0.0.6" y "9cafb171af82329490353b4816f03347aa150a30" [];
          "@kadira/react-split-pane@1.4.7" = f "@kadira/react-split-pane" "1.4.7" (ir "https://registry.yarnpkg.com/@kadira/react-split-pane/-/react-split-pane-1.4.7.tgz") "6d753d4a9fe62fe82056e323a6bcef7f026972b5" [];
          "@kadira/react-split-pane@^1.4.0" = s."@kadira/react-split-pane@1.4.7";
          "@kadira/storybook-addon-actions@1.1.1" = f "@kadira/storybook-addon-actions" "1.1.1" (ir "https://registry.yarnpkg.com/@kadira/storybook-addon-actions/-/storybook-addon-actions-1.1.1.tgz") "5053485583fadea413710d6405454dc168a7efc7" [
            s."deep-equal@^1.0.1"
            s."json-stringify-safe@^5.0.1"
            s."react-inspector@^1.1.0"
          ];
          "@kadira/storybook-addon-actions@^1.0.2" = s."@kadira/storybook-addon-actions@1.1.1";
          "@kadira/storybook-addon-links@1.0.1" = f "@kadira/storybook-addon-links" "1.0.1" (ir "https://registry.yarnpkg.com/@kadira/storybook-addon-links/-/storybook-addon-links-1.0.1.tgz") "566136a8020b60f82f146ef37d93b0c86de969d8" [];
          "@kadira/storybook-addon-links@^1.0.0" = s."@kadira/storybook-addon-links@1.0.1";
          "@kadira/storybook-addons@1.6.1" = f "@kadira/storybook-addons" "1.6.1" (ir "https://registry.yarnpkg.com/@kadira/storybook-addons/-/storybook-addons-1.6.1.tgz") "e84923d298b38c7c1231ddebc219dfb87b2858a6" [];
          "@kadira/storybook-addons@^1.5.0" = s."@kadira/storybook-addons@1.6.1";
          "@kadira/storybook-channel-postmsg@2.0.1" = f "@kadira/storybook-channel-postmsg" "2.0.1" (ir "https://registry.yarnpkg.com/@kadira/storybook-channel-postmsg/-/storybook-channel-postmsg-2.0.1.tgz") "2a9065bf0647c940b8f9a3a7342a3e12e321af72" [
            s."@kadira/storybook-channel@^1.1.0"
            s."json-stringify-safe@^5.0.1"
          ];
          "@kadira/storybook-channel-postmsg@^2.0.1" = s."@kadira/storybook-channel-postmsg@2.0.1";
          "@kadira/storybook-channel@1.1.0" = f "@kadira/storybook-channel" "1.1.0" (ir "https://registry.yarnpkg.com/@kadira/storybook-channel/-/storybook-channel-1.1.0.tgz") "806d1cdf2498d11cce09871a6fd27bbb41ed3564" [];
          "@kadira/storybook-channel@^1.1.0" = s."@kadira/storybook-channel@1.1.0";
          "@kadira/storybook-ui@3.10.1" = f "@kadira/storybook-ui" "3.10.1" (ir "https://registry.yarnpkg.com/@kadira/storybook-ui/-/storybook-ui-3.10.1.tgz") "d0ab3b00fce419fff11c45d386104e74765f953c" [
            s."@kadira/react-split-pane@^1.4.0"
            s."babel-runtime@^6.5.0"
            s."deep-equal@^1.0.1"
            s."events@^1.1.1"
            s."fuzzysearch@^1.0.3"
            s."json-stringify-safe@^5.0.1"
            s."keycode@^2.1.1"
            s."lodash.pick@^4.2.1"
            s."mantra-core@^1.7.0"
            s."podda@^1.2.1"
            s."qs@^6.2.0"
            s."react-fuzzy@^0.3.3"
            s."react-inspector@^1.1.0"
            s."react-komposer@^2.0.0"
            s."react-modal@^1.2.1"
            s."redux@^3.5.2"
          ];
          "@kadira/storybook-ui@^3.10.1" = s."@kadira/storybook-ui@3.10.1";
          "@kadira/storybook@2.35.3" = f "@kadira/storybook" "2.35.3" (ir "https://registry.yarnpkg.com/@kadira/storybook/-/storybook-2.35.3.tgz") "8106195e1733623baf60db6adaa678dc29285d12" [
            s."@kadira/react-split-pane@^1.4.0"
            s."@kadira/storybook-addon-actions@^1.0.2"
            s."@kadira/storybook-addon-links@^1.0.0"
            s."@kadira/storybook-addons@^1.5.0"
            s."@kadira/storybook-channel-postmsg@^2.0.1"
            s."@kadira/storybook-ui@^3.10.1"
            s."airbnb-js-shims@^1.0.1"
            s."autoprefixer@^6.3.7"
            s."babel-core@^6.11.4"
            s."babel-loader@^6.2.4"
            s."babel-plugin-react-docgen@^1.4.2"
            s."babel-preset-react-app@^1.0.0"
            s."babel-runtime@^6.9.2"
            s."case-sensitive-paths-webpack-plugin@^1.1.2"
            s."chalk@^1.1.3"
            s."commander@^2.9.0"
            s."common-tags@^1.3.1"
            s."configstore@^2.0.0"
            s."css-loader@^0.26.1"
            s."express@^4.13.3"
            s."file-loader@^0.9.0"
            s."find-cache-dir@^0.1.1"
            s."json-loader@^0.5.4"
            s."json-stringify-safe@^5.0.1"
            s."json5@^0.5.0"
            s."lodash.pick@^4.2.0"
            s."postcss-loader@1.1.0"
            s."qs@^6.1.0"
            s."react-modal@^1.2.0"
            s."redux@^3.5.2"
            s."request@^2.74.0"
            s."serve-favicon@^2.3.0"
            s."shelljs@^0.7.4"
            s."style-loader@0.13.1"
            s."url-loader@^0.5.7"
            s."uuid@^2.0.3"
            s."webpack@^1.13.1"
            s."webpack-dev-middleware@^1.6.0"
            s."webpack-hot-middleware@^2.13.2"
          ];
          "@types/node@7.0.55" = f "@types/node" "7.0.55" (ir "https://registry.yarnpkg.com/@types/node/-/node-7.0.55.tgz") "7bb6215ff9425a1d714106be9f0d3e0e28829288" [];
          "@types/node@^7.0.18" = s."@types/node@7.0.55";
          "abab@1.0.3" = f "abab" "1.0.3" y "b81de5f7274ec4e756d797cd834f303642724e5d" [];
          "abab@^1.0.0" = s."abab@1.0.3";
          "abbrev@1" = s."abbrev@1.0.9";
          "abbrev@1.0.9" = f "abbrev" "1.0.9" y "91b4792588a7738c25f35dd6f63752a2f8776135" [];
          "accepts@1.3.3" = f "accepts" "1.3.3" y "c3ca7434938648c3e0d9c1e328dd68b622c284ca" [
            s."mime-types@~2.1.11"
            s."negotiator@0.6.1"
          ];
          "accepts@~1.3.3" = s."accepts@1.3.3";
          "accessibility-developer-tools@2.11.0" = f "accessibility-developer-tools" "2.11.0" y "2b669c802671672aed5c61c42a782082a2fc7d2c" [];
          "accessibility-developer-tools@^2.11.0" = s."accessibility-developer-tools@2.11.0";
          "acorn-globals@1.0.9" = f "acorn-globals" "1.0.9" y "55bb5e98691507b74579d0513413217c380c54cf" [
            s."acorn@^2.1.0"
          ];
          "acorn-globals@^1.0.4" = s."acorn-globals@1.0.9";
          "acorn-jsx@3.0.1" = f "acorn-jsx" "3.0.1" y "afdf9488fb1ecefc8348f6fb22f464e32a58b36b" [
            s."acorn@^3.0.4"
          ];
          "acorn-jsx@^3.0.0" = s."acorn-jsx@3.0.1";
          "acorn-jsx@^3.0.1" = s."acorn-jsx@3.0.1";
          "acorn@2.7.0" = f "acorn" "2.7.0" y "ab6e7d9d886aaca8b085bc3312b79a198433f0e7" [];
          "acorn@3.3.0" = f "acorn" "3.3.0" y "45e37fb39e8da3f25baee3ff5369e2bb5f22017a" [];
          "acorn@5.4.1" = f "acorn" "5.4.1" y "fdc58d9d17f4a4e98d102ded826a9b9759125102" [];
          "acorn@^2.1.0" = s."acorn@2.7.0";
          "acorn@^2.4.0" = s."acorn@2.7.0";
          "acorn@^3.0.0" = s."acorn@3.3.0";
          "acorn@^3.0.4" = s."acorn@3.3.0";
          "acorn@^5.4.0" = s."acorn@5.4.1";
          "aes-js@2.1.1" = f "aes-js" "2.1.1" y "68989763bbade2a39172ea48f4953d1272ff38a7" [];
          "after@0.8.2" = f "after" "0.8.2" y "fedb394f9f0e02aa9768e702bda23b505fae7e1f" [];
          "after@^0.8.1" = s."after@0.8.2";
          "airbnb-js-shims@1.0.1" = f "airbnb-js-shims" "1.0.1" y "7d5a7d772c8c6fdeb624ea3cef62506091b180b5" [
            s."array-includes@^3.0.2"
            s."es5-shim@^4.5.9"
            s."es6-shim@^0.35.1"
            s."object.entries@^1.0.3"
            s."object.getownpropertydescriptors@^2.0.3"
            s."object.values@^1.0.3"
            s."string.prototype.padend@^3.0.0"
            s."string.prototype.padstart@^3.0.0"
          ];
          "airbnb-js-shims@^1.0.1" = s."airbnb-js-shims@1.0.1";
          "ajv-keywords@1.5.0" = f "ajv-keywords" "1.5.0" y "c11e6859eafff83e0dafc416929472eca946aa2c" [];
          "ajv-keywords@^1.0.0" = s."ajv-keywords@1.5.0";
          "ajv@4.10.4" = f "ajv" "4.10.4" y "c0974dd00b3464984892d6010aa9c2c945933254" [
            s."co@^4.6.0"
            s."json-stable-stringify@^1.0.1"
          ];
          "ajv@5.5.2" = f "ajv" "5.5.2" y "73b5eeca3fab653e3d3f9422b341ad42205dc965" [
            s."co@^4.6.0"
            s."fast-deep-equal@^1.0.0"
            s."fast-json-stable-stringify@^2.0.0"
            s."json-schema-traverse@^0.3.0"
          ];
          "ajv@^4.7.0" = s."ajv@4.10.4";
          "ajv@^5.1.0" = s."ajv@5.5.2";
          "align-text@0.1.4" = f "align-text" "0.1.4" y "0cd90a561093f35d0a99256c22b7069433fad117" [
            s."kind-of@^3.0.2"
            s."longest@^1.0.1"
            s."repeat-string@^1.5.2"
          ];
          "align-text@^0.1.1" = s."align-text@0.1.4";
          "align-text@^0.1.3" = s."align-text@0.1.4";
          "alphanum-sort@1.0.2" = f "alphanum-sort" "1.0.2" y "97a1119649b211ad33691d9f9f486a8ec9fbe0a3" [];
          "alphanum-sort@^1.0.1" = s."alphanum-sort@1.0.2";
          "alphanum-sort@^1.0.2" = s."alphanum-sort@1.0.2";
          "amdefine@1.0.1" = f "amdefine" "1.0.1" y "4a5282ac164729e93619bcfd3ad151f817ce91f5" [];
          "amdefine@>=0.0.4" = s."amdefine@1.0.1";
          "ansi-escapes@1.4.0" = f "ansi-escapes" "1.4.0" y "d3a8a83b319aa67793662b13e761c7911422306e" [];
          "ansi-escapes@3.0.0" = f "ansi-escapes" "3.0.0" y "ec3e8b4e9f8064fc02c3ac9b65f1c275bda8ef92" [];
          "ansi-escapes@^1.1.0" = s."ansi-escapes@1.4.0";
          "ansi-escapes@^1.4.0" = s."ansi-escapes@1.4.0";
          "ansi-escapes@^3.0.0" = s."ansi-escapes@3.0.0";
          "ansi-html@0.0.6" = f "ansi-html" "0.0.6" y "bda8e33dd2ee1c20f54c08eb405713cbfc0ed80e" [];
          "ansi-html@0.0.7" = f "ansi-html" "0.0.7" y "813584021962a9e9e6fd039f940d12f56ca7859e" [];
          "ansi-regex@0.2.1" = f "ansi-regex" "0.2.1" y "0d8e946967a3d8143f93e24e298525fc1b2235f9" [];
          "ansi-regex@2.0.0" = f "ansi-regex" "2.0.0" y "c5061b6e0ef8a81775e50f5d66151bf6bf371107" [];
          "ansi-regex@3.0.0" = f "ansi-regex" "3.0.0" y "ed0317c322064f79466c02966bddb605ab37d998" [];
          "ansi-regex@^0.2.0" = s."ansi-regex@0.2.1";
          "ansi-regex@^0.2.1" = s."ansi-regex@0.2.1";
          "ansi-regex@^2.0.0" = s."ansi-regex@2.0.0";
          "ansi-regex@^3.0.0" = s."ansi-regex@3.0.0";
          "ansi-styles@1.1.0" = f "ansi-styles" "1.1.0" y "eaecbf66cd706882760b2f4691582b8f55d7a7de" [];
          "ansi-styles@2.2.1" = f "ansi-styles" "2.2.1" y "b432dd3358b634cf75e1e4664368240533c1ddbe" [];
          "ansi-styles@3.2.0" = f "ansi-styles" "3.2.0" y "c159b8d5be0f9e5a6f346dab94f16ce022161b88" [
            s."color-convert@^1.9.0"
          ];
          "ansi-styles@^1.1.0" = s."ansi-styles@1.1.0";
          "ansi-styles@^2.2.1" = s."ansi-styles@2.2.1";
          "ansi-styles@^3.2.0" = s."ansi-styles@3.2.0";
          "ansi@0.3.1" = f "ansi" "0.3.1" y "0c42d4fb17160d5a9af1e484bace1c66922c1b21" [];
          "ansi@^0.3.0" = s."ansi@0.3.1";
          "ansi@~0.3.1" = s."ansi@0.3.1";
          "any-promise@1.3.0" = f "any-promise" "1.3.0" y "abc6afeedcea52e809cdc0376aed3ce39635d17f" [];
          "any-promise@^1.0.0" = s."any-promise@1.3.0";
          "any-promise@^1.3.0" = s."any-promise@1.3.0";
          "anymatch@1.3.0" = f "anymatch" "1.3.0" y "a3e52fa39168c825ff57b0248126ce5a8ff95507" [
            s."arrify@^1.0.0"
            s."micromatch@^2.1.5"
          ];
          "anymatch@^1.3.0" = s."anymatch@1.3.0";
          "aproba@1.0.4" = f "aproba" "1.0.4" y "2713680775e7614c8ba186c065d4e2e52d1072c0" [];
          "aproba@^1.0.3" = s."aproba@1.0.4";
          "archiver-utils@1.3.0" = f "archiver-utils" "1.3.0" y "e50b4c09c70bf3d680e32ff1b7994e9f9d895174" [
            s."glob@^7.0.0"
            s."graceful-fs@^4.1.0"
            s."lazystream@^1.0.0"
            s."lodash@^4.8.0"
            s."normalize-path@^2.0.0"
            s."readable-stream@^2.0.0"
          ];
          "archiver-utils@^1.3.0" = s."archiver-utils@1.3.0";
          "archiver@2.1.1" = f "archiver" "2.1.1" y "ff662b4a78201494a3ee544d3a33fe7496509ebc" [
            s."archiver-utils@^1.3.0"
            s."async@^2.0.0"
            s."buffer-crc32@^0.2.1"
            s."glob@^7.0.0"
            s."lodash@^4.8.0"
            s."readable-stream@^2.0.0"
            s."tar-stream@^1.5.0"
            s."zip-stream@^1.2.0"
          ];
          "archiver@~2.1.0" = s."archiver@2.1.1";
          "are-we-there-yet@1.1.2" = f "are-we-there-yet" "1.1.2" y "80e470e95a084794fe1899262c5667c6e88de1b3" [
            s."delegates@^1.0.0"
            s."readable-stream@^2.0.0 || ^1.1.13"
          ];
          "are-we-there-yet@~1.1.2" = s."are-we-there-yet@1.1.2";
          "argparse@1.0.9" = f "argparse" "1.0.9" y "73d83bc263f86e97f8cc4f6bae1b0e90a7d22c86" [
            s."sprintf-js@~1.0.2"
          ];
          "argparse@^1.0.7" = s."argparse@1.0.9";
          "arr-diff@2.0.0" = f "arr-diff" "2.0.0" y "8f3b827f955a8bd669697e4a4256ac3ceae356cf" [
            s."arr-flatten@^1.0.1"
          ];
          "arr-diff@^2.0.0" = s."arr-diff@2.0.0";
          "arr-flatten@1.0.1" = f "arr-flatten" "1.0.1" y "e5ffe54d45e19f32f216e91eb99c8ce892bb604b" [];
          "arr-flatten@^1.0.1" = s."arr-flatten@1.0.1";
          "array-differ@1.0.0" = f "array-differ" "1.0.0" y "eff52e3758249d33be402b8bb8e564bb2b5d4031" [];
          "array-differ@^1.0.0" = s."array-differ@1.0.0";
          "array-equal@1.0.0" = f "array-equal" "1.0.0" y "8c2a5ef2472fd9ea742b04c77a75093ba2757c93" [];
          "array-equal@^1.0.0" = s."array-equal@1.0.0";
          "array-find-index@1.0.2" = f "array-find-index" "1.0.2" y "df010aa1287e164bbda6f9723b0a96a1ec4187a1" [];
          "array-find-index@^1.0.1" = s."array-find-index@1.0.2";
          "array-find@1.0.0" = f "array-find" "1.0.0" y "6c8e286d11ed768327f8e62ecee87353ca3e78b8" [];
          "array-find@^1.0.0" = s."array-find@1.0.0";
          "array-flatten@1.1.1" = f "array-flatten" "1.1.1" y "9a5f699051b1e7073328f2a008968b64ea2955d2" [];
          "array-includes@3.0.2" = f "array-includes" "3.0.2" y "7c867b4d1235c2b5687c874f3344bff4e002beba" [
            s."define-properties@^1.1.2"
            s."es-abstract@^1.5.0"
          ];
          "array-includes@^3.0.2" = s."array-includes@3.0.2";
          "array-index@1.0.0" = f "array-index" "1.0.0" y "ec56a749ee103e4e08c790b9c353df16055b97f9" [
            s."debug@^2.2.0"
            s."es6-symbol@^3.0.2"
          ];
          "array-index@^1.0.0" = s."array-index@1.0.0";
          "array-union@1.0.2" = f "array-union" "1.0.2" y "9a34410e4f4e3da23dea375be5be70f24778ec39" [
            s."array-uniq@^1.0.1"
          ];
          "array-union@^1.0.1" = s."array-union@1.0.2";
          "array-uniq@1.0.3" = f "array-uniq" "1.0.3" y "af6ac877a25cc7f74e058894753858dfdb24fdb6" [];
          "array-uniq@^1.0.1" = s."array-uniq@1.0.3";
          "array-uniq@^1.0.2" = s."array-uniq@1.0.3";
          "array-unique@0.2.1" = f "array-unique" "0.2.1" y "a1d97ccafcbc2625cc70fadceb36a50c58b01a53" [];
          "array-unique@^0.2.1" = s."array-unique@0.2.1";
          "array.prototype.find@2.0.1" = f "array.prototype.find" "2.0.1" y "1557f888df6c57e4d1256f20852d687a25b51fde" [
            s."define-properties@^1.1.2"
            s."es-abstract@^1.5.0"
          ];
          "array.prototype.find@^2.0.1" = s."array.prototype.find@2.0.1";
          "arrify@1.0.1" = f "arrify" "1.0.1" y "898508da2226f380df904728456849c1501a4b0d" [];
          "arrify@^1.0.0" = s."arrify@1.0.1";
          "asap@2.0.5" = f "asap" "2.0.5" y "522765b50c3510490e52d7dcfe085ef9ba96958f" [];
          "asap@~2.0.3" = s."asap@2.0.5";
          "asar@0.12.4" = f "asar" "0.12.4" y "2dd3f116882eab8c0f23b754792a82a7d9fce171" [
            s."chromium-pickle-js@^0.2.0"
            s."commander@^2.9.0"
            s."cuint@^0.2.1"
            s."glob@^6.0.4"
            s."minimatch@^3.0.3"
            s."mkdirp@^0.5.0"
            s."mksnapshot@^0.3.0"
            s."tmp@0.0.28"
          ];
          "asar@0.13.1" = f "asar" "0.13.1" y "dfc73f574a7db256b09ba62d1f0e95cd4a6cb8d3" [
            s."chromium-pickle-js@^0.2.0"
            s."commander@^2.9.0"
            s."cuint@^0.2.1"
            s."glob@^6.0.4"
            s."minimatch@^3.0.3"
            s."mkdirp@^0.5.0"
            s."mksnapshot@^0.3.0"
            s."tmp@0.0.28"
          ];
          "asar@^0.13.0" = s."asar@0.13.1";
          "asn1.js@4.9.1" = f "asn1.js" "4.9.1" y "48ba240b45a9280e94748990ba597d216617fd40" [
            s."bn.js@^4.0.0"
            s."inherits@^2.0.1"
            s."minimalistic-assert@^1.0.0"
          ];
          "asn1.js@^4.0.0" = s."asn1.js@4.9.1";
          "asn1@0.1.11" = f "asn1" "0.1.11" y "559be18376d08a4ec4dbe80877d27818639b2df7" [];
          "asn1@0.2.3" = f "asn1" "0.2.3" y "dac8787713c9966849fc8180777ebe9c1ddf3b86" [];
          "asn1@~0.2.3" = s."asn1@0.2.3";
          "assert-plus@0.1.5" = f "assert-plus" "0.1.5" y "ee74009413002d84cec7219c6ac811812e723160" [];
          "assert-plus@0.2.0" = f "assert-plus" "0.2.0" y "d74e1b87e7affc0db8aadb7021f3fe48101ab234" [];
          "assert-plus@1.0.0" = f "assert-plus" "1.0.0" y "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525" [];
          "assert-plus@^0.1.5" = s."assert-plus@0.1.5";
          "assert-plus@^0.2.0" = s."assert-plus@0.2.0";
          "assert-plus@^1.0.0" = s."assert-plus@1.0.0";
          "assert@1.4.1" = f "assert" "1.4.1" y "99912d591836b5a6f5b345c0f07eefc08fc65d91" [
            s."util@0.10.3"
          ];
          "assert@^1.1.1" = s."assert@1.4.1";
          "assertion-error-formatter@2.0.1" = f "assertion-error-formatter" "2.0.1" y "6bbdffaec8e2fa9e2b0eb158bfe353132d7c0a9b" [
            s."diff@^3.0.0"
            s."pad-right@^0.2.2"
            s."repeat-string@^1.6.1"
          ];
          "assertion-error-formatter@^2.0.0" = s."assertion-error-formatter@2.0.1";
          "assertion-error@1.0.2" = f "assertion-error" "1.0.2" y "13ca515d86206da0bac66e834dd397d87581094c" [];
          "assertion-error@^1.0.1" = s."assertion-error@1.0.2";
          "ast-types@0.9.2" = f "ast-types" "0.9.2" y "2cc19979d15c655108bf565323b8e7ee38751f6b" [];
          "ast-types@0.9.6" = f "ast-types" "0.9.6" y "102c9e9e9005d3e7e3829bf0c4fa24ee862ee9b9" [];
          "async-each@1.0.1" = f "async-each" "1.0.1" y "19d386a1d9edc6e7c1c85d388aedbcc56d33602d" [];
          "async-each@^1.0.0" = s."async-each@1.0.1";
          "async-foreach@0.1.3" = f "async-foreach" "0.1.3" y "36121f845c0578172de419a97dbeb1d16ec34542" [];
          "async-foreach@^0.1.3" = s."async-foreach@0.1.3";
          "async-limiter@1.0.0" = f "async-limiter" "1.0.0" y "78faed8c3d074ab81f22b4e985d79e8738f720f8" [];
          "async-limiter@~1.0.0" = s."async-limiter@1.0.0";
          "async@0.2.10" = f "async" "0.2.10" y "b6bbe0b0674b9d719708ca38de8c237cb526c3d1" [];
          "async@0.9.2" = f "async" "0.9.2" y "aea74d5e61c1f899613bf64bda66d4c78f2fd17d" [];
          "async@1.0.0" = f "async" "1.0.0" y "f8fc04ca3a13784ade9e1641af98578cfbd647a9" [];
          "async@1.5.0" = f "async" "1.5.0" y "2796642723573859565633fc6274444bee2f8ce3" [];
          "async@1.5.2" = f "async" "1.5.2" y "ec6a61ae56480c0c3cb241c95618e20892f9672a" [];
          "async@2.1.4" = f "async" "2.1.4" y "2d2160c7788032e4dd6cbe2502f1f9a2c8f6cde4" [
            s."lodash@^4.14.0"
          ];
          "async@2.6.0" = f "async" "2.6.0" y "61a29abb6fcc026fea77e56d1c6ec53a795951f4" [
            s."lodash@^4.14.0"
          ];
          "async@^0.9.0" = s."async@0.9.2";
          "async@^1.3.0" = s."async@1.5.2";
          "async@^1.4.2" = s."async@1.5.2";
          "async@^1.5.0" = s."async@1.5.2";
          "async@^2.0.0" = s."async@2.6.0";
          "async@^2.0.1" = s."async@2.1.4";
          "async@~0.2.6" = s."async@0.2.10";
          "async@~0.9" = s."async@0.9.2";
          "async@~0.9.0" = s."async@0.9.2";
          "async@~1.0.0" = s."async@1.0.0";
          "asynckit@0.4.0" = f "asynckit" "0.4.0" y "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79" [];
          "asynckit@^0.4.0" = s."asynckit@0.4.0";
          "atob@1.1.3" = f "atob" "1.1.3" y "95f13629b12c3a51a5d215abdce2aa9f32f80773" [];
          "atob@~1.1.0" = s."atob@1.1.3";
          "attr-accept@1.1.0" = f "attr-accept" "1.1.0" y "b5cd35227f163935a8f1de10ed3eba16941f6be6" [];
          "attr-accept@^1.0.3" = s."attr-accept@1.1.0";
          "author-regex@1.0.0" = f "author-regex" "1.0.0" y "d08885be6b9bbf9439fe087c76287245f0a81450" [];
          "author-regex@^1.0.0" = s."author-regex@1.0.0";
          "autoprefixer@6.6.1" = f "autoprefixer" "6.6.1" y "11a4077abb4b313253ec2f6e1adb91ad84253519" [
            s."browserslist@~1.5.1"
            s."caniuse-db@^1.0.30000604"
            s."normalize-range@^0.1.2"
            s."num2fraction@^1.2.2"
            s."postcss@^5.2.8"
            s."postcss-value-parser@^3.2.3"
          ];
          "autoprefixer@^6.3.1" = s."autoprefixer@6.6.1";
          "autoprefixer@^6.3.7" = s."autoprefixer@6.6.1";
          "aws-sign2@0.5.0" = f "aws-sign2" "0.5.0" y "c57103f7a17fc037f02d7c2e64b602ea223f7d63" [];
          "aws-sign2@0.6.0" = f "aws-sign2" "0.6.0" y "14342dd38dbcc94d0e5b87d763cd63612c0e794f" [];
          "aws-sign2@0.7.0" = f "aws-sign2" "0.7.0" y "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8" [];
          "aws-sign2@~0.5.0" = s."aws-sign2@0.5.0";
          "aws-sign2@~0.6.0" = s."aws-sign2@0.6.0";
          "aws-sign2@~0.7.0" = s."aws-sign2@0.7.0";
          "aws4@1.5.0" = f "aws4" "1.5.0" y "0a29ffb79c31c9e712eeb087e8e7a64b4a56d755" [];
          "aws4@1.6.0" = f "aws4" "1.6.0" y "83ef5ca860b2b32e4a0deedee8c771b9db57471e" [];
          "aws4@^1.2.1" = s."aws4@1.5.0";
          "aws4@^1.6.0" = s."aws4@1.6.0";
          "babel-cli@6.24.0" = f "babel-cli" "6.24.0" y "a05ffd210dca0c288a26d5319c5ac8669a265ad0" [
            s."babel-core@^6.24.0"
            s."babel-polyfill@^6.23.0"
            s."babel-register@^6.24.0"
            s."babel-runtime@^6.22.0"
            s."commander@^2.8.1"
            s."convert-source-map@^1.1.0"
            s."fs-readdir-recursive@^1.0.0"
            s."glob@^7.0.0"
            s."lodash@^4.2.0"
            s."output-file-sync@^1.1.0"
            s."path-is-absolute@^1.0.0"
            s."slash@^1.0.0"
            s."source-map@^0.5.0"
            s."v8flags@^2.0.10"
            s."chokidar@^1.6.1"
          ];
          "babel-code-frame@6.20.0" = f "babel-code-frame" "6.20.0" y "b968f839090f9a8bc6d41938fb96cb84f7387b26" [
            s."chalk@^1.1.0"
            s."esutils@^2.0.2"
            s."js-tokens@^2.0.0"
          ];
          "babel-code-frame@6.26.0" = f "babel-code-frame" "6.26.0" y "63fd43f7dc1e3bb7ce35947db8fe369a3f58c74b" [
            s."chalk@^1.1.3"
            s."esutils@^2.0.2"
            s."js-tokens@^3.0.2"
          ];
          "babel-code-frame@^6.11.0" = s."babel-code-frame@6.20.0";
          "babel-code-frame@^6.16.0" = s."babel-code-frame@6.20.0";
          "babel-code-frame@^6.20.0" = s."babel-code-frame@6.20.0";
          "babel-code-frame@^6.22.0" = s."babel-code-frame@6.26.0";
          "babel-code-frame@^6.26.0" = s."babel-code-frame@6.26.0";
          "babel-core@6.21.0" = f "babel-core" "6.21.0" y "75525480c21c803f826ef3867d22c19f080a3724" [
            s."babel-code-frame@^6.20.0"
            s."babel-generator@^6.21.0"
            s."babel-helpers@^6.16.0"
            s."babel-messages@^6.8.0"
            s."babel-runtime@^6.20.0"
            s."babel-template@^6.16.0"
            s."babel-traverse@^6.21.0"
            s."babel-types@^6.21.0"
            s."babylon@^6.11.0"
            s."convert-source-map@^1.1.0"
            s."debug@^2.1.1"
            s."json5@^0.5.0"
            s."lodash@^4.2.0"
            s."minimatch@^3.0.2"
            s."path-is-absolute@^1.0.0"
            s."private@^0.1.6"
            s."slash@^1.0.0"
            s."source-map@^0.5.0"
          ];
          "babel-core@6.24.0" = f "babel-core" "6.24.0" y "8f36a0a77f5c155aed6f920b844d23ba56742a02" [
            s."babel-code-frame@^6.22.0"
            s."babel-generator@^6.24.0"
            s."babel-helpers@^6.23.0"
            s."babel-messages@^6.23.0"
            s."babel-register@^6.24.0"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.23.0"
            s."babel-traverse@^6.23.1"
            s."babel-types@^6.23.0"
            s."babylon@^6.11.0"
            s."convert-source-map@^1.1.0"
            s."debug@^2.1.1"
            s."json5@^0.5.0"
            s."lodash@^4.2.0"
            s."minimatch@^3.0.2"
            s."path-is-absolute@^1.0.0"
            s."private@^0.1.6"
            s."slash@^1.0.0"
            s."source-map@^0.5.0"
          ];
          "babel-core@6.26.0" = f "babel-core" "6.26.0" y "af32f78b31a6fcef119c87b0fd8d9753f03a0bb8" [
            s."babel-code-frame@^6.26.0"
            s."babel-generator@^6.26.0"
            s."babel-helpers@^6.24.1"
            s."babel-messages@^6.23.0"
            s."babel-runtime@^6.26.0"
            s."babel-template@^6.26.0"
            s."babel-traverse@^6.26.0"
            s."babel-types@^6.26.0"
            s."babylon@^6.18.0"
            s."convert-source-map@^1.5.0"
            s."debug@^2.6.8"
            s."json5@^0.5.1"
            s."lodash@^4.17.4"
            s."minimatch@^3.0.4"
            s."path-is-absolute@^1.0.1"
            s."private@^0.1.7"
            s."slash@^1.0.0"
            s."source-map@^0.5.6"
          ];
          "babel-core@^6.11.4" = s."babel-core@6.21.0";
          "babel-core@^6.18.0" = s."babel-core@6.21.0";
          "babel-core@^6.24.0" = s."babel-core@6.26.0";
          "babel-core@^6.26.0" = s."babel-core@6.26.0";
          "babel-core@^6.7.2" = s."babel-core@6.21.0";
          "babel-eslint@7.2.1" = f "babel-eslint" "7.2.1" y "079422eb73ba811e3ca0865ce87af29327f8c52f" [
            s."babel-code-frame@^6.22.0"
            s."babel-traverse@^6.23.1"
            s."babel-types@^6.23.0"
            s."babylon@^6.16.1"
          ];
          "babel-generator@6.21.0" = f "babel-generator" "6.21.0" y "605f1269c489a1c75deeca7ea16d43d4656c8494" [
            s."babel-messages@^6.8.0"
            s."babel-runtime@^6.20.0"
            s."babel-types@^6.21.0"
            s."detect-indent@^4.0.0"
            s."jsesc@^1.3.0"
            s."lodash@^4.2.0"
            s."source-map@^0.5.0"
          ];
          "babel-generator@6.26.1" = f "babel-generator" "6.26.1" y "1844408d3b8f0d35a404ea7ac180f087a601bd90" [
            s."babel-messages@^6.23.0"
            s."babel-runtime@^6.26.0"
            s."babel-types@^6.26.0"
            s."detect-indent@^4.0.0"
            s."jsesc@^1.3.0"
            s."lodash@^4.17.4"
            s."source-map@^0.5.7"
            s."trim-right@^1.0.1"
          ];
          "babel-generator@^6.21.0" = s."babel-generator@6.21.0";
          "babel-generator@^6.24.0" = s."babel-generator@6.26.1";
          "babel-generator@^6.26.0" = s."babel-generator@6.26.1";
          "babel-helper-bindify-decorators@6.18.0" = f "babel-helper-bindify-decorators" "6.18.0" y "fc00c573676a6e702fffa00019580892ec8780a5" [
            s."babel-runtime@^6.0.0"
            s."babel-traverse@^6.18.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-bindify-decorators@6.24.1" = f "babel-helper-bindify-decorators" "6.24.1" y "14c19e5f142d7b47f19a52431e52b1ccbc40a330" [
            s."babel-runtime@^6.22.0"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-bindify-decorators@^6.18.0" = s."babel-helper-bindify-decorators@6.18.0";
          "babel-helper-bindify-decorators@^6.24.1" = s."babel-helper-bindify-decorators@6.24.1";
          "babel-helper-builder-binary-assignment-operator-visitor@6.18.0" = f "babel-helper-builder-binary-assignment-operator-visitor" "6.18.0" y "8ae814989f7a53682152e3401a04fabd0bb333a6" [
            s."babel-helper-explode-assignable-expression@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-builder-binary-assignment-operator-visitor@6.24.1" = f "babel-helper-builder-binary-assignment-operator-visitor" "6.24.1" y "cce4517ada356f4220bcae8a02c2b346f9a56664" [
            s."babel-helper-explode-assignable-expression@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-builder-binary-assignment-operator-visitor@^6.24.1" = s."babel-helper-builder-binary-assignment-operator-visitor@6.24.1";
          "babel-helper-builder-binary-assignment-operator-visitor@^6.8.0" = s."babel-helper-builder-binary-assignment-operator-visitor@6.18.0";
          "babel-helper-builder-react-jsx@6.21.1" = f "babel-helper-builder-react-jsx" "6.21.1" y "c4a24208655be9dc1cccf14d366da176f20645e4" [
            s."babel-runtime@^6.9.0"
            s."babel-types@^6.21.0"
            s."esutils@^2.0.0"
            s."lodash@^4.2.0"
          ];
          "babel-helper-builder-react-jsx@6.26.0" = f "babel-helper-builder-react-jsx" "6.26.0" y "39ff8313b75c8b65dceff1f31d383e0ff2a408a0" [
            s."babel-runtime@^6.26.0"
            s."babel-types@^6.26.0"
            s."esutils@^2.0.2"
          ];
          "babel-helper-builder-react-jsx@^6.24.1" = s."babel-helper-builder-react-jsx@6.26.0";
          "babel-helper-builder-react-jsx@^6.8.0" = s."babel-helper-builder-react-jsx@6.21.1";
          "babel-helper-call-delegate@6.18.0" = f "babel-helper-call-delegate" "6.18.0" y "05b14aafa430884b034097ef29e9f067ea4133bd" [
            s."babel-helper-hoist-variables@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-traverse@^6.18.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-call-delegate@6.24.1" = f "babel-helper-call-delegate" "6.24.1" y "ece6aacddc76e41c3461f88bfc575bd0daa2df8d" [
            s."babel-helper-hoist-variables@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-call-delegate@^6.18.0" = s."babel-helper-call-delegate@6.18.0";
          "babel-helper-call-delegate@^6.24.1" = s."babel-helper-call-delegate@6.24.1";
          "babel-helper-call-delegate@^6.8.0" = s."babel-helper-call-delegate@6.18.0";
          "babel-helper-define-map@6.18.0" = f "babel-helper-define-map" "6.18.0" y "8d6c85dc7fbb4c19be3de40474d18e97c3676ec2" [
            s."babel-helper-function-name@^6.18.0"
            s."babel-runtime@^6.9.0"
            s."babel-types@^6.18.0"
            s."lodash@^4.2.0"
          ];
          "babel-helper-define-map@6.26.0" = f "babel-helper-define-map" "6.26.0" y "a5f56dab41a25f97ecb498c7ebaca9819f95be5f" [
            s."babel-helper-function-name@^6.24.1"
            s."babel-runtime@^6.26.0"
            s."babel-types@^6.26.0"
            s."lodash@^4.17.4"
          ];
          "babel-helper-define-map@^6.18.0" = s."babel-helper-define-map@6.18.0";
          "babel-helper-define-map@^6.24.1" = s."babel-helper-define-map@6.26.0";
          "babel-helper-define-map@^6.8.0" = s."babel-helper-define-map@6.18.0";
          "babel-helper-explode-assignable-expression@6.18.0" = f "babel-helper-explode-assignable-expression" "6.18.0" y "14b8e8c2d03ad735d4b20f1840b24cd1f65239fe" [
            s."babel-runtime@^6.0.0"
            s."babel-traverse@^6.18.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-explode-assignable-expression@6.24.1" = f "babel-helper-explode-assignable-expression" "6.24.1" y "f25b82cf7dc10433c55f70592d5746400ac22caa" [
            s."babel-runtime@^6.22.0"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-explode-assignable-expression@^6.18.0" = s."babel-helper-explode-assignable-expression@6.18.0";
          "babel-helper-explode-assignable-expression@^6.24.1" = s."babel-helper-explode-assignable-expression@6.24.1";
          "babel-helper-explode-class@6.18.0" = f "babel-helper-explode-class" "6.18.0" y "c44f76f4fa23b9c5d607cbac5d4115e7a76f62cb" [
            s."babel-helper-bindify-decorators@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-traverse@^6.18.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-explode-class@6.24.1" = f "babel-helper-explode-class" "6.24.1" y "7dc2a3910dee007056e1e31d640ced3d54eaa9eb" [
            s."babel-helper-bindify-decorators@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-explode-class@^6.24.1" = s."babel-helper-explode-class@6.24.1";
          "babel-helper-explode-class@^6.8.0" = s."babel-helper-explode-class@6.18.0";
          "babel-helper-function-name@6.18.0" = f "babel-helper-function-name" "6.18.0" y "68ec71aeba1f3e28b2a6f0730190b754a9bf30e6" [
            s."babel-helper-get-function-arity@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.8.0"
            s."babel-traverse@^6.18.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-function-name@6.24.1" = f "babel-helper-function-name" "6.24.1" y "d3475b8c03ed98242a25b48351ab18399d3580a9" [
            s."babel-helper-get-function-arity@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-function-name@^6.18.0" = s."babel-helper-function-name@6.18.0";
          "babel-helper-function-name@^6.24.1" = s."babel-helper-function-name@6.24.1";
          "babel-helper-function-name@^6.8.0" = s."babel-helper-function-name@6.18.0";
          "babel-helper-get-function-arity@6.18.0" = f "babel-helper-get-function-arity" "6.18.0" y "a5b19695fd3f9cdfc328398b47dafcd7094f9f24" [
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-get-function-arity@6.24.1" = f "babel-helper-get-function-arity" "6.24.1" y "8f7782aa93407c41d3aa50908f89b031b1b6853d" [
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-get-function-arity@^6.18.0" = s."babel-helper-get-function-arity@6.18.0";
          "babel-helper-get-function-arity@^6.24.1" = s."babel-helper-get-function-arity@6.24.1";
          "babel-helper-get-function-arity@^6.8.0" = s."babel-helper-get-function-arity@6.18.0";
          "babel-helper-hoist-variables@6.18.0" = f "babel-helper-hoist-variables" "6.18.0" y "a835b5ab8b46d6de9babefae4d98ea41e866b82a" [
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-hoist-variables@6.24.1" = f "babel-helper-hoist-variables" "6.24.1" y "1ecb27689c9d25513eadbc9914a73f5408be7a76" [
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-hoist-variables@^6.18.0" = s."babel-helper-hoist-variables@6.18.0";
          "babel-helper-hoist-variables@^6.24.1" = s."babel-helper-hoist-variables@6.24.1";
          "babel-helper-is-react-class@1.0.0" = f "babel-helper-is-react-class" "1.0.0" y "ef6f3678b05c76dbdeedadead7af98c2724d8431" [];
          "babel-helper-is-react-class@^1.0.0" = s."babel-helper-is-react-class@1.0.0";
          "babel-helper-optimise-call-expression@6.18.0" = f "babel-helper-optimise-call-expression" "6.18.0" y "9261d0299ee1a4f08a6dd28b7b7c777348fd8f0f" [
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-optimise-call-expression@6.24.1" = f "babel-helper-optimise-call-expression" "6.24.1" y "f7a13427ba9f73f8f4fa993c54a97882d1244257" [
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-optimise-call-expression@^6.18.0" = s."babel-helper-optimise-call-expression@6.18.0";
          "babel-helper-optimise-call-expression@^6.24.1" = s."babel-helper-optimise-call-expression@6.24.1";
          "babel-helper-regex@6.18.0" = f "babel-helper-regex" "6.18.0" y "ae0ebfd77de86cb2f1af258e2cc20b5fe893ecc6" [
            s."babel-runtime@^6.9.0"
            s."babel-types@^6.18.0"
            s."lodash@^4.2.0"
          ];
          "babel-helper-regex@6.26.0" = f "babel-helper-regex" "6.26.0" y "325c59f902f82f24b74faceed0363954f6495e72" [
            s."babel-runtime@^6.26.0"
            s."babel-types@^6.26.0"
            s."lodash@^4.17.4"
          ];
          "babel-helper-regex@^6.24.1" = s."babel-helper-regex@6.26.0";
          "babel-helper-regex@^6.8.0" = s."babel-helper-regex@6.18.0";
          "babel-helper-remap-async-to-generator@6.20.3" = f "babel-helper-remap-async-to-generator" "6.20.3" y "9dd3b396f13e35ef63e538098500adc24c63c4e7" [
            s."babel-helper-function-name@^6.18.0"
            s."babel-runtime@^6.20.0"
            s."babel-template@^6.16.0"
            s."babel-traverse@^6.20.0"
            s."babel-types@^6.20.0"
          ];
          "babel-helper-remap-async-to-generator@6.24.1" = f "babel-helper-remap-async-to-generator" "6.24.1" y "5ec581827ad723fecdd381f1c928390676e4551b" [
            s."babel-helper-function-name@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-remap-async-to-generator@^6.16.0" = s."babel-helper-remap-async-to-generator@6.20.3";
          "babel-helper-remap-async-to-generator@^6.16.2" = s."babel-helper-remap-async-to-generator@6.20.3";
          "babel-helper-remap-async-to-generator@^6.22.0" = s."babel-helper-remap-async-to-generator@6.24.1";
          "babel-helper-remap-async-to-generator@^6.24.1" = s."babel-helper-remap-async-to-generator@6.24.1";
          "babel-helper-replace-supers@6.18.0" = f "babel-helper-replace-supers" "6.18.0" y "28ec69877be4144dbd64f4cc3a337e89f29a924e" [
            s."babel-helper-optimise-call-expression@^6.18.0"
            s."babel-messages@^6.8.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.16.0"
            s."babel-traverse@^6.18.0"
            s."babel-types@^6.18.0"
          ];
          "babel-helper-replace-supers@6.24.1" = f "babel-helper-replace-supers" "6.24.1" y "bf6dbfe43938d17369a213ca8a8bf74b6a90ab1a" [
            s."babel-helper-optimise-call-expression@^6.24.1"
            s."babel-messages@^6.23.0"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-helper-replace-supers@^6.18.0" = s."babel-helper-replace-supers@6.18.0";
          "babel-helper-replace-supers@^6.24.1" = s."babel-helper-replace-supers@6.24.1";
          "babel-helper-replace-supers@^6.8.0" = s."babel-helper-replace-supers@6.18.0";
          "babel-helpers@6.16.0" = f "babel-helpers" "6.16.0" y "1095ec10d99279460553e67eb3eee9973d3867e3" [
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.16.0"
          ];
          "babel-helpers@6.24.1" = f "babel-helpers" "6.24.1" y "3471de9caec388e5c850e597e58a26ddf37602b2" [
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
          ];
          "babel-helpers@^6.16.0" = s."babel-helpers@6.16.0";
          "babel-helpers@^6.23.0" = s."babel-helpers@6.24.1";
          "babel-helpers@^6.24.1" = s."babel-helpers@6.24.1";
          "babel-loader@6.2.10" = f "babel-loader" "6.2.10" y "adefc2b242320cd5d15e65b31cea0e8b1b02d4b0" [
            s."find-cache-dir@^0.1.1"
            s."loader-utils@^0.2.11"
            s."mkdirp@^0.5.1"
            s."object-assign@^4.0.1"
          ];
          "babel-loader@6.4.1" = f "babel-loader" "6.4.1" y "0b34112d5b0748a8dcdbf51acf6f9bd42d50b8ca" [
            s."find-cache-dir@^0.1.1"
            s."loader-utils@^0.2.16"
            s."mkdirp@^0.5.1"
            s."object-assign@^4.0.1"
          ];
          "babel-loader@^6.2.4" = s."babel-loader@6.2.10";
          "babel-messages@6.23.0" = f "babel-messages" "6.23.0" y "f3cdf4703858035b2a2951c6ec5edf6c62f2630e" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-messages@6.8.0" = f "babel-messages" "6.8.0" y "bf504736ca967e6d65ef0adb5a2a5f947c8e0eb9" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-messages@^6.23.0" = s."babel-messages@6.23.0";
          "babel-messages@^6.8.0" = s."babel-messages@6.8.0";
          "babel-plugin-add-module-exports@0.2.1" = f "babel-plugin-add-module-exports" "0.2.1" y "9ae9a1f4a8dc67f0cdec4f4aeda1e43a5ff65e25" [];
          "babel-plugin-check-es2015-constants@6.22.0" = f "babel-plugin-check-es2015-constants" "6.22.0" y "35157b101426fd2ffd3da3f75c7d1e91835bbf8a" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-check-es2015-constants@6.8.0" = f "babel-plugin-check-es2015-constants" "6.8.0" y "dbf024c32ed37bfda8dee1e76da02386a8d26fe7" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-check-es2015-constants@^6.22.0" = s."babel-plugin-check-es2015-constants@6.22.0";
          "babel-plugin-check-es2015-constants@^6.3.13" = s."babel-plugin-check-es2015-constants@6.8.0";
          "babel-plugin-check-es2015-constants@^6.7.2" = s."babel-plugin-check-es2015-constants@6.8.0";
          "babel-plugin-dev-expression@0.2.1" = f "babel-plugin-dev-expression" "0.2.1" y "d4a7beefefbb50e3f2734990a82a2486cf9eb9ee" [];
          "babel-plugin-lodash@3.2.11" = f "babel-plugin-lodash" "3.2.11" y "21c8fdec9fe1835efaa737873e3902bdd66d5701" [
            s."glob@^7.1.1"
            s."lodash@^4.17.2"
          ];
          "babel-plugin-react-docgen@1.4.2" = f "babel-plugin-react-docgen" "1.4.2" y "04c02133b84b6cc182d35de2162f15764da03e7c" [
            s."babel-types@^6.16.0"
            s."lodash@4.x.x"
            s."react-docgen@^2.12.1"
          ];
          "babel-plugin-react-docgen@^1.4.2" = s."babel-plugin-react-docgen@1.4.2";
          "babel-plugin-react-intl@2.3.1" = f "babel-plugin-react-intl" "2.3.1" y "3d43912e824da005e08e8e8239d5ba784374bb00" [
            s."babel-runtime@^6.2.0"
            s."intl-messageformat-parser@^1.2.0"
            s."mkdirp@^0.5.1"
          ];
          "babel-plugin-react-transform@2.0.2" = f "babel-plugin-react-transform" "2.0.2" y "515bbfa996893981142d90b1f9b1635de2995109" [
            s."lodash@^4.6.1"
          ];
          "babel-plugin-react-transform@^2.0.2" = s."babel-plugin-react-transform@2.0.2";
          "babel-plugin-syntax-async-functions@6.13.0" = f "babel-plugin-syntax-async-functions" "6.13.0" y "cad9cad1191b5ad634bf30ae0872391e0647be95" [];
          "babel-plugin-syntax-async-functions@^6.8.0" = s."babel-plugin-syntax-async-functions@6.13.0";
          "babel-plugin-syntax-async-generators@6.13.0" = f "babel-plugin-syntax-async-generators" "6.13.0" y "6bc963ebb16eccbae6b92b596eb7f35c342a8b9a" [];
          "babel-plugin-syntax-async-generators@^6.5.0" = s."babel-plugin-syntax-async-generators@6.13.0";
          "babel-plugin-syntax-class-constructor-call@6.18.0" = f "babel-plugin-syntax-class-constructor-call" "6.18.0" y "9cb9d39fe43c8600bec8146456ddcbd4e1a76416" [];
          "babel-plugin-syntax-class-constructor-call@^6.18.0" = s."babel-plugin-syntax-class-constructor-call@6.18.0";
          "babel-plugin-syntax-class-properties@6.13.0" = f "babel-plugin-syntax-class-properties" "6.13.0" y "d7eb23b79a317f8543962c505b827c7d6cac27de" [];
          "babel-plugin-syntax-class-properties@^6.8.0" = s."babel-plugin-syntax-class-properties@6.13.0";
          "babel-plugin-syntax-decorators@6.13.0" = f "babel-plugin-syntax-decorators" "6.13.0" y "312563b4dbde3cc806cee3e416cceeaddd11ac0b" [];
          "babel-plugin-syntax-decorators@^6.1.18" = s."babel-plugin-syntax-decorators@6.13.0";
          "babel-plugin-syntax-decorators@^6.13.0" = s."babel-plugin-syntax-decorators@6.13.0";
          "babel-plugin-syntax-do-expressions@6.13.0" = f "babel-plugin-syntax-do-expressions" "6.13.0" y "5747756139aa26d390d09410b03744ba07e4796d" [];
          "babel-plugin-syntax-do-expressions@^6.8.0" = s."babel-plugin-syntax-do-expressions@6.13.0";
          "babel-plugin-syntax-dynamic-import@6.18.0" = f "babel-plugin-syntax-dynamic-import" "6.18.0" y "8d6a26229c83745a9982a441051572caa179b1da" [];
          "babel-plugin-syntax-dynamic-import@^6.18.0" = s."babel-plugin-syntax-dynamic-import@6.18.0";
          "babel-plugin-syntax-exponentiation-operator@6.13.0" = f "babel-plugin-syntax-exponentiation-operator" "6.13.0" y "9ee7e8337290da95288201a6a57f4170317830de" [];
          "babel-plugin-syntax-exponentiation-operator@^6.8.0" = s."babel-plugin-syntax-exponentiation-operator@6.13.0";
          "babel-plugin-syntax-export-extensions@6.13.0" = f "babel-plugin-syntax-export-extensions" "6.13.0" y "70a1484f0f9089a4e84ad44bac353c95b9b12721" [];
          "babel-plugin-syntax-export-extensions@^6.8.0" = s."babel-plugin-syntax-export-extensions@6.13.0";
          "babel-plugin-syntax-flow@6.18.0" = f "babel-plugin-syntax-flow" "6.18.0" y "4c3ab20a2af26aa20cd25995c398c4eb70310c8d" [];
          "babel-plugin-syntax-flow@^6.18.0" = s."babel-plugin-syntax-flow@6.18.0";
          "babel-plugin-syntax-flow@^6.3.13" = s."babel-plugin-syntax-flow@6.18.0";
          "babel-plugin-syntax-flow@^6.5.0" = s."babel-plugin-syntax-flow@6.18.0";
          "babel-plugin-syntax-function-bind@6.13.0" = f "babel-plugin-syntax-function-bind" "6.13.0" y "48c495f177bdf31a981e732f55adc0bdd2601f46" [];
          "babel-plugin-syntax-function-bind@^6.8.0" = s."babel-plugin-syntax-function-bind@6.13.0";
          "babel-plugin-syntax-jsx@6.18.0" = f "babel-plugin-syntax-jsx" "6.18.0" y "0af32a9a6e13ca7a3fd5069e62d7b0f58d0d8946" [];
          "babel-plugin-syntax-jsx@^6.3.13" = s."babel-plugin-syntax-jsx@6.18.0";
          "babel-plugin-syntax-jsx@^6.8.0" = s."babel-plugin-syntax-jsx@6.18.0";
          "babel-plugin-syntax-object-rest-spread@6.13.0" = f "babel-plugin-syntax-object-rest-spread" "6.13.0" y "fd6536f2bce13836ffa3a5458c4903a597bb3bf5" [];
          "babel-plugin-syntax-object-rest-spread@^6.5.0" = s."babel-plugin-syntax-object-rest-spread@6.13.0";
          "babel-plugin-syntax-object-rest-spread@^6.8.0" = s."babel-plugin-syntax-object-rest-spread@6.13.0";
          "babel-plugin-syntax-trailing-function-commas@6.20.0" = f "babel-plugin-syntax-trailing-function-commas" "6.20.0" y "442835e19179f45b87e92d477d70b9f1f18b5c4f" [];
          "babel-plugin-syntax-trailing-function-commas@6.22.0" = f "babel-plugin-syntax-trailing-function-commas" "6.22.0" y "ba0360937f8d06e40180a43fe0d5616fff532cf3" [];
          "babel-plugin-syntax-trailing-function-commas@^6.13.0" = s."babel-plugin-syntax-trailing-function-commas@6.20.0";
          "babel-plugin-syntax-trailing-function-commas@^6.22.0" = s."babel-plugin-syntax-trailing-function-commas@6.22.0";
          "babel-plugin-syntax-trailing-function-commas@^6.3.13" = s."babel-plugin-syntax-trailing-function-commas@6.20.0";
          "babel-plugin-syntax-trailing-function-commas@^6.5.0" = s."babel-plugin-syntax-trailing-function-commas@6.20.0";
          "babel-plugin-syntax-trailing-function-commas@^6.8.0" = s."babel-plugin-syntax-trailing-function-commas@6.20.0";
          "babel-plugin-transform-async-generator-functions@6.17.0" = f "babel-plugin-transform-async-generator-functions" "6.17.0" y "d0b5a2b2f0940f2b245fa20a00519ed7bc6cae54" [
            s."babel-helper-remap-async-to-generator@^6.16.2"
            s."babel-plugin-syntax-async-generators@^6.5.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-async-generator-functions@6.24.1" = f "babel-plugin-transform-async-generator-functions" "6.24.1" y "f058900145fd3e9907a6ddf28da59f215258a5db" [
            s."babel-helper-remap-async-to-generator@^6.24.1"
            s."babel-plugin-syntax-async-generators@^6.5.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-async-generator-functions@^6.17.0" = s."babel-plugin-transform-async-generator-functions@6.17.0";
          "babel-plugin-transform-async-generator-functions@^6.24.1" = s."babel-plugin-transform-async-generator-functions@6.24.1";
          "babel-plugin-transform-async-to-generator@6.16.0" = f "babel-plugin-transform-async-to-generator" "6.16.0" y "19ec36cb1486b59f9f468adfa42ce13908ca2999" [
            s."babel-helper-remap-async-to-generator@^6.16.0"
            s."babel-plugin-syntax-async-functions@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-async-to-generator@6.22.0" = f "babel-plugin-transform-async-to-generator" "6.22.0" y "194b6938ec195ad36efc4c33a971acf00d8cd35e" [
            s."babel-helper-remap-async-to-generator@^6.22.0"
            s."babel-plugin-syntax-async-functions@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-async-to-generator@6.24.1" = f "babel-plugin-transform-async-to-generator" "6.24.1" y "6536e378aff6cb1d5517ac0e40eb3e9fc8d08761" [
            s."babel-helper-remap-async-to-generator@^6.24.1"
            s."babel-plugin-syntax-async-functions@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-async-to-generator@^6.16.0" = s."babel-plugin-transform-async-to-generator@6.16.0";
          "babel-plugin-transform-async-to-generator@^6.24.1" = s."babel-plugin-transform-async-to-generator@6.24.1";
          "babel-plugin-transform-async-to-generator@^6.8.0" = s."babel-plugin-transform-async-to-generator@6.16.0";
          "babel-plugin-transform-async-to-module-method@6.22.0" = f "babel-plugin-transform-async-to-module-method" "6.22.0" y "19c51f18407a74cc5d83098a297e57ab5cfdd008" [
            s."babel-helper-remap-async-to-generator@^6.22.0"
            s."babel-plugin-syntax-async-functions@^6.8.0"
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.22.0"
          ];
          "babel-plugin-transform-class-constructor-call@6.18.0" = f "babel-plugin-transform-class-constructor-call" "6.18.0" y "80855e38a1ab47b8c6c647f8ea1bcd2c00ca3aae" [
            s."babel-plugin-syntax-class-constructor-call@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.8.0"
          ];
          "babel-plugin-transform-class-constructor-call@6.24.1" = f "babel-plugin-transform-class-constructor-call" "6.24.1" y "80dc285505ac067dcb8d6c65e2f6f11ab7765ef9" [
            s."babel-plugin-syntax-class-constructor-call@^6.18.0"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
          ];
          "babel-plugin-transform-class-constructor-call@^6.24.1" = s."babel-plugin-transform-class-constructor-call@6.24.1";
          "babel-plugin-transform-class-constructor-call@^6.3.13" = s."babel-plugin-transform-class-constructor-call@6.18.0";
          "babel-plugin-transform-class-properties@6.16.0" = f "babel-plugin-transform-class-properties" "6.16.0" y "969bca24d34e401d214f36b8af5c1346859bc904" [
            s."babel-helper-function-name@^6.8.0"
            s."babel-plugin-syntax-class-properties@^6.8.0"
            s."babel-runtime@^6.9.1"
          ];
          "babel-plugin-transform-class-properties@6.19.0" = f "babel-plugin-transform-class-properties" "6.19.0" y "1274b349abaadc835164e2004f4a2444a2788d5f" [
            s."babel-helper-function-name@^6.18.0"
            s."babel-plugin-syntax-class-properties@^6.8.0"
            s."babel-runtime@^6.9.1"
            s."babel-template@^6.15.0"
          ];
          "babel-plugin-transform-class-properties@6.24.1" = f "babel-plugin-transform-class-properties" "6.24.1" y "6a79763ea61d33d36f37b611aa9def81a81b46ac" [
            s."babel-helper-function-name@^6.24.1"
            s."babel-plugin-syntax-class-properties@^6.8.0"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
          ];
          "babel-plugin-transform-class-properties@^6.18.0" = s."babel-plugin-transform-class-properties@6.19.0";
          "babel-plugin-transform-class-properties@^6.24.1" = s."babel-plugin-transform-class-properties@6.24.1";
          "babel-plugin-transform-class-properties@^6.6.0" = s."babel-plugin-transform-class-properties@6.16.0";
          "babel-plugin-transform-decorators-legacy@1.3.4" = f "babel-plugin-transform-decorators-legacy" "1.3.4" y "741b58f6c5bce9e6027e0882d9c994f04f366925" [
            s."babel-plugin-syntax-decorators@^6.1.18"
            s."babel-runtime@^6.2.0"
            s."babel-template@^6.3.0"
          ];
          "babel-plugin-transform-decorators@6.13.0" = f "babel-plugin-transform-decorators" "6.13.0" y "82d65c1470ae83e2d13eebecb0a1c2476d62da9d" [
            s."babel-helper-define-map@^6.8.0"
            s."babel-helper-explode-class@^6.8.0"
            s."babel-plugin-syntax-decorators@^6.13.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.8.0"
            s."babel-types@^6.13.0"
          ];
          "babel-plugin-transform-decorators@6.24.1" = f "babel-plugin-transform-decorators" "6.24.1" y "788013d8f8c6b5222bdf7b344390dfd77569e24d" [
            s."babel-helper-explode-class@^6.24.1"
            s."babel-plugin-syntax-decorators@^6.13.0"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-decorators@^6.13.0" = s."babel-plugin-transform-decorators@6.13.0";
          "babel-plugin-transform-decorators@^6.24.1" = s."babel-plugin-transform-decorators@6.24.1";
          "babel-plugin-transform-do-expressions@6.22.0" = f "babel-plugin-transform-do-expressions" "6.22.0" y "28ccaf92812d949c2cd1281f690c8fdc468ae9bb" [
            s."babel-plugin-syntax-do-expressions@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-do-expressions@6.8.0" = f "babel-plugin-transform-do-expressions" "6.8.0" y "fda692af339835cc255bb7544efb8f7c1306c273" [
            s."babel-plugin-syntax-do-expressions@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-do-expressions@^6.22.0" = s."babel-plugin-transform-do-expressions@6.22.0";
          "babel-plugin-transform-do-expressions@^6.3.13" = s."babel-plugin-transform-do-expressions@6.8.0";
          "babel-plugin-transform-es2015-arrow-functions@6.22.0" = f "babel-plugin-transform-es2015-arrow-functions" "6.22.0" y "452692cb711d5f79dc7f85e440ce41b9f244d221" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-arrow-functions@6.8.0" = f "babel-plugin-transform-es2015-arrow-functions" "6.8.0" y "5b63afc3181bdc9a8c4d481b5a4f3f7d7fef3d9d" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-arrow-functions@^6.22.0" = s."babel-plugin-transform-es2015-arrow-functions@6.22.0";
          "babel-plugin-transform-es2015-arrow-functions@^6.3.13" = s."babel-plugin-transform-es2015-arrow-functions@6.8.0";
          "babel-plugin-transform-es2015-arrow-functions@^6.5.2" = s."babel-plugin-transform-es2015-arrow-functions@6.8.0";
          "babel-plugin-transform-es2015-block-scoped-functions@6.22.0" = f "babel-plugin-transform-es2015-block-scoped-functions" "6.22.0" y "bbc51b49f964d70cb8d8e0b94e820246ce3a6141" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-block-scoped-functions@6.8.0" = f "babel-plugin-transform-es2015-block-scoped-functions" "6.8.0" y "ed95d629c4b5a71ae29682b998f70d9833eb366d" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-block-scoped-functions@^6.22.0" = s."babel-plugin-transform-es2015-block-scoped-functions@6.22.0";
          "babel-plugin-transform-es2015-block-scoped-functions@^6.3.13" = s."babel-plugin-transform-es2015-block-scoped-functions@6.8.0";
          "babel-plugin-transform-es2015-block-scoped-functions@^6.6.5" = s."babel-plugin-transform-es2015-block-scoped-functions@6.8.0";
          "babel-plugin-transform-es2015-block-scoping@6.21.0" = f "babel-plugin-transform-es2015-block-scoping" "6.21.0" y "e840687f922e70fb2c42bb13501838c174a115ed" [
            s."babel-runtime@^6.20.0"
            s."babel-template@^6.15.0"
            s."babel-traverse@^6.21.0"
            s."babel-types@^6.21.0"
            s."lodash@^4.2.0"
          ];
          "babel-plugin-transform-es2015-block-scoping@6.26.0" = f "babel-plugin-transform-es2015-block-scoping" "6.26.0" y "d70f5299c1308d05c12f463813b0a09e73b1895f" [
            s."babel-runtime@^6.26.0"
            s."babel-template@^6.26.0"
            s."babel-traverse@^6.26.0"
            s."babel-types@^6.26.0"
            s."lodash@^4.17.4"
          ];
          "babel-plugin-transform-es2015-block-scoping@^6.18.0" = s."babel-plugin-transform-es2015-block-scoping@6.21.0";
          "babel-plugin-transform-es2015-block-scoping@^6.22.0" = s."babel-plugin-transform-es2015-block-scoping@6.26.0";
          "babel-plugin-transform-es2015-block-scoping@^6.6.0" = s."babel-plugin-transform-es2015-block-scoping@6.21.0";
          "babel-plugin-transform-es2015-block-scoping@^6.7.1" = s."babel-plugin-transform-es2015-block-scoping@6.21.0";
          "babel-plugin-transform-es2015-classes@6.18.0" = f "babel-plugin-transform-es2015-classes" "6.18.0" y "ffe7a17321bf83e494dcda0ae3fc72df48ffd1d9" [
            s."babel-helper-define-map@^6.18.0"
            s."babel-helper-function-name@^6.18.0"
            s."babel-helper-optimise-call-expression@^6.18.0"
            s."babel-helper-replace-supers@^6.18.0"
            s."babel-messages@^6.8.0"
            s."babel-runtime@^6.9.0"
            s."babel-template@^6.14.0"
            s."babel-traverse@^6.18.0"
            s."babel-types@^6.18.0"
          ];
          "babel-plugin-transform-es2015-classes@6.24.1" = f "babel-plugin-transform-es2015-classes" "6.24.1" y "5a4c58a50c9c9461e564b4b2a3bfabc97a2584db" [
            s."babel-helper-define-map@^6.24.1"
            s."babel-helper-function-name@^6.24.1"
            s."babel-helper-optimise-call-expression@^6.24.1"
            s."babel-helper-replace-supers@^6.24.1"
            s."babel-messages@^6.23.0"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-es2015-classes@^6.18.0" = s."babel-plugin-transform-es2015-classes@6.18.0";
          "babel-plugin-transform-es2015-classes@^6.22.0" = s."babel-plugin-transform-es2015-classes@6.24.1";
          "babel-plugin-transform-es2015-classes@^6.6.0" = s."babel-plugin-transform-es2015-classes@6.18.0";
          "babel-plugin-transform-es2015-classes@^6.6.5" = s."babel-plugin-transform-es2015-classes@6.18.0";
          "babel-plugin-transform-es2015-computed-properties@6.24.1" = f "babel-plugin-transform-es2015-computed-properties" "6.24.1" y "6fe2a8d16895d5634f4cd999b6d3480a308159b3" [
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
          ];
          "babel-plugin-transform-es2015-computed-properties@6.8.0" = f "babel-plugin-transform-es2015-computed-properties" "6.8.0" y "f51010fd61b3bd7b6b60a5fdfd307bb7a5279870" [
            s."babel-helper-define-map@^6.8.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.8.0"
          ];
          "babel-plugin-transform-es2015-computed-properties@^6.22.0" = s."babel-plugin-transform-es2015-computed-properties@6.24.1";
          "babel-plugin-transform-es2015-computed-properties@^6.3.13" = s."babel-plugin-transform-es2015-computed-properties@6.8.0";
          "babel-plugin-transform-es2015-computed-properties@^6.6.5" = s."babel-plugin-transform-es2015-computed-properties@6.8.0";
          "babel-plugin-transform-es2015-destructuring@6.16.0" = f "babel-plugin-transform-es2015-destructuring" "6.16.0" y "050fe0866f5d53b36062ee10cdf5bfe64f929627" [
            s."babel-runtime@^6.9.0"
          ];
          "babel-plugin-transform-es2015-destructuring@6.19.0" = f "babel-plugin-transform-es2015-destructuring" "6.19.0" y "ff1d911c4b3f4cab621bd66702a869acd1900533" [
            s."babel-runtime@^6.9.0"
          ];
          "babel-plugin-transform-es2015-destructuring@6.23.0" = f "babel-plugin-transform-es2015-destructuring" "6.23.0" y "997bb1f1ab967f682d2b0876fe358d60e765c56d" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-destructuring@^6.18.0" = s."babel-plugin-transform-es2015-destructuring@6.19.0";
          "babel-plugin-transform-es2015-destructuring@^6.22.0" = s."babel-plugin-transform-es2015-destructuring@6.23.0";
          "babel-plugin-transform-es2015-destructuring@^6.6.0" = s."babel-plugin-transform-es2015-destructuring@6.19.0";
          "babel-plugin-transform-es2015-destructuring@^6.6.5" = s."babel-plugin-transform-es2015-destructuring@6.19.0";
          "babel-plugin-transform-es2015-duplicate-keys@6.24.1" = f "babel-plugin-transform-es2015-duplicate-keys" "6.24.1" y "73eb3d310ca969e3ef9ec91c53741a6f1576423e" [
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-es2015-duplicate-keys@6.8.0" = f "babel-plugin-transform-es2015-duplicate-keys" "6.8.0" y "fd8f7f7171fc108cc1c70c3164b9f15a81c25f7d" [
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.8.0"
          ];
          "babel-plugin-transform-es2015-duplicate-keys@^6.22.0" = s."babel-plugin-transform-es2015-duplicate-keys@6.24.1";
          "babel-plugin-transform-es2015-duplicate-keys@^6.6.0" = s."babel-plugin-transform-es2015-duplicate-keys@6.8.0";
          "babel-plugin-transform-es2015-for-of@6.18.0" = f "babel-plugin-transform-es2015-for-of" "6.18.0" y "4c517504db64bf8cfc119a6b8f177211f2028a70" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-for-of@6.23.0" = f "babel-plugin-transform-es2015-for-of" "6.23.0" y "f47c95b2b613df1d3ecc2fdb7573623c75248691" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-for-of@^6.18.0" = s."babel-plugin-transform-es2015-for-of@6.18.0";
          "babel-plugin-transform-es2015-for-of@^6.22.0" = s."babel-plugin-transform-es2015-for-of@6.23.0";
          "babel-plugin-transform-es2015-for-of@^6.6.0" = s."babel-plugin-transform-es2015-for-of@6.18.0";
          "babel-plugin-transform-es2015-function-name@6.24.1" = f "babel-plugin-transform-es2015-function-name" "6.24.1" y "834c89853bc36b1af0f3a4c5dbaa94fd8eacaa8b" [
            s."babel-helper-function-name@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-es2015-function-name@6.9.0" = f "babel-plugin-transform-es2015-function-name" "6.9.0" y "8c135b17dbd064e5bba56ec511baaee2fca82719" [
            s."babel-helper-function-name@^6.8.0"
            s."babel-runtime@^6.9.0"
            s."babel-types@^6.9.0"
          ];
          "babel-plugin-transform-es2015-function-name@^6.22.0" = s."babel-plugin-transform-es2015-function-name@6.24.1";
          "babel-plugin-transform-es2015-function-name@^6.3.13" = s."babel-plugin-transform-es2015-function-name@6.9.0";
          "babel-plugin-transform-es2015-function-name@^6.9.0" = s."babel-plugin-transform-es2015-function-name@6.9.0";
          "babel-plugin-transform-es2015-literals@6.22.0" = f "babel-plugin-transform-es2015-literals" "6.22.0" y "4f54a02d6cd66cf915280019a31d31925377ca2e" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-literals@6.8.0" = f "babel-plugin-transform-es2015-literals" "6.8.0" y "50aa2e5c7958fc2ab25d74ec117e0cc98f046468" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-literals@^6.22.0" = s."babel-plugin-transform-es2015-literals@6.22.0";
          "babel-plugin-transform-es2015-literals@^6.3.13" = s."babel-plugin-transform-es2015-literals@6.8.0";
          "babel-plugin-transform-es2015-literals@^6.5.0" = s."babel-plugin-transform-es2015-literals@6.8.0";
          "babel-plugin-transform-es2015-modules-amd@6.18.0" = f "babel-plugin-transform-es2015-modules-amd" "6.18.0" y "49a054cbb762bdf9ae2d8a807076cfade6141e40" [
            s."babel-plugin-transform-es2015-modules-commonjs@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.8.0"
          ];
          "babel-plugin-transform-es2015-modules-amd@6.24.1" = f "babel-plugin-transform-es2015-modules-amd" "6.24.1" y "3b3e54017239842d6d19c3011c4bd2f00a00d154" [
            s."babel-plugin-transform-es2015-modules-commonjs@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
          ];
          "babel-plugin-transform-es2015-modules-amd@^6.18.0" = s."babel-plugin-transform-es2015-modules-amd@6.18.0";
          "babel-plugin-transform-es2015-modules-amd@^6.24.0" = s."babel-plugin-transform-es2015-modules-amd@6.24.1";
          "babel-plugin-transform-es2015-modules-amd@^6.24.1" = s."babel-plugin-transform-es2015-modules-amd@6.24.1";
          "babel-plugin-transform-es2015-modules-amd@^6.8.0" = s."babel-plugin-transform-es2015-modules-amd@6.18.0";
          "babel-plugin-transform-es2015-modules-commonjs@6.18.0" = f "babel-plugin-transform-es2015-modules-commonjs" "6.18.0" y "c15ae5bb11b32a0abdcc98a5837baa4ee8d67bcc" [
            s."babel-plugin-transform-strict-mode@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.16.0"
            s."babel-types@^6.18.0"
          ];
          "babel-plugin-transform-es2015-modules-commonjs@6.26.0" = f "babel-plugin-transform-es2015-modules-commonjs" "6.26.0" y "0d8394029b7dc6abe1a97ef181e00758dd2e5d8a" [
            s."babel-plugin-transform-strict-mode@^6.24.1"
            s."babel-runtime@^6.26.0"
            s."babel-template@^6.26.0"
            s."babel-types@^6.26.0"
          ];
          "babel-plugin-transform-es2015-modules-commonjs@^6.18.0" = s."babel-plugin-transform-es2015-modules-commonjs@6.18.0";
          "babel-plugin-transform-es2015-modules-commonjs@^6.24.0" = s."babel-plugin-transform-es2015-modules-commonjs@6.26.0";
          "babel-plugin-transform-es2015-modules-commonjs@^6.24.1" = s."babel-plugin-transform-es2015-modules-commonjs@6.26.0";
          "babel-plugin-transform-es2015-modules-commonjs@^6.6.0" = s."babel-plugin-transform-es2015-modules-commonjs@6.18.0";
          "babel-plugin-transform-es2015-modules-commonjs@^6.7.0" = s."babel-plugin-transform-es2015-modules-commonjs@6.18.0";
          "babel-plugin-transform-es2015-modules-systemjs@6.19.0" = f "babel-plugin-transform-es2015-modules-systemjs" "6.19.0" y "50438136eba74527efa00a5b0fefaf1dc4071da6" [
            s."babel-helper-hoist-variables@^6.18.0"
            s."babel-runtime@^6.11.6"
            s."babel-template@^6.14.0"
          ];
          "babel-plugin-transform-es2015-modules-systemjs@6.24.1" = f "babel-plugin-transform-es2015-modules-systemjs" "6.24.1" y "ff89a142b9119a906195f5f106ecf305d9407d23" [
            s."babel-helper-hoist-variables@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
          ];
          "babel-plugin-transform-es2015-modules-systemjs@^6.12.0" = s."babel-plugin-transform-es2015-modules-systemjs@6.19.0";
          "babel-plugin-transform-es2015-modules-systemjs@^6.18.0" = s."babel-plugin-transform-es2015-modules-systemjs@6.19.0";
          "babel-plugin-transform-es2015-modules-systemjs@^6.22.0" = s."babel-plugin-transform-es2015-modules-systemjs@6.24.1";
          "babel-plugin-transform-es2015-modules-umd@6.18.0" = f "babel-plugin-transform-es2015-modules-umd" "6.18.0" y "23351770ece5c1f8e83ed67cb1d7992884491e50" [
            s."babel-plugin-transform-es2015-modules-amd@^6.18.0"
            s."babel-runtime@^6.0.0"
            s."babel-template@^6.8.0"
          ];
          "babel-plugin-transform-es2015-modules-umd@6.24.1" = f "babel-plugin-transform-es2015-modules-umd" "6.24.1" y "ac997e6285cd18ed6176adb607d602344ad38468" [
            s."babel-plugin-transform-es2015-modules-amd@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
          ];
          "babel-plugin-transform-es2015-modules-umd@^6.12.0" = s."babel-plugin-transform-es2015-modules-umd@6.18.0";
          "babel-plugin-transform-es2015-modules-umd@^6.18.0" = s."babel-plugin-transform-es2015-modules-umd@6.18.0";
          "babel-plugin-transform-es2015-modules-umd@^6.24.0" = s."babel-plugin-transform-es2015-modules-umd@6.24.1";
          "babel-plugin-transform-es2015-object-super@6.24.1" = f "babel-plugin-transform-es2015-object-super" "6.24.1" y "24cef69ae21cb83a7f8603dad021f572eb278f8d" [
            s."babel-helper-replace-supers@^6.24.1"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-object-super@6.8.0" = f "babel-plugin-transform-es2015-object-super" "6.8.0" y "1b858740a5a4400887c23dcff6f4d56eea4a24c5" [
            s."babel-helper-replace-supers@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-object-super@^6.22.0" = s."babel-plugin-transform-es2015-object-super@6.24.1";
          "babel-plugin-transform-es2015-object-super@^6.3.13" = s."babel-plugin-transform-es2015-object-super@6.8.0";
          "babel-plugin-transform-es2015-object-super@^6.6.5" = s."babel-plugin-transform-es2015-object-super@6.8.0";
          "babel-plugin-transform-es2015-parameters@6.17.0" = f "babel-plugin-transform-es2015-parameters" "6.17.0" y "e06d30cef897f46adb4734707bbe128a0d427d58" [
            s."babel-helper-call-delegate@^6.8.0"
            s."babel-helper-get-function-arity@^6.8.0"
            s."babel-runtime@^6.9.0"
            s."babel-template@^6.16.0"
            s."babel-traverse@^6.16.0"
            s."babel-types@^6.16.0"
          ];
          "babel-plugin-transform-es2015-parameters@6.21.0" = f "babel-plugin-transform-es2015-parameters" "6.21.0" y "46a655e6864ef984091448cdf024d87b60b2a7d8" [
            s."babel-helper-call-delegate@^6.18.0"
            s."babel-helper-get-function-arity@^6.18.0"
            s."babel-runtime@^6.9.0"
            s."babel-template@^6.16.0"
            s."babel-traverse@^6.21.0"
            s."babel-types@^6.21.0"
          ];
          "babel-plugin-transform-es2015-parameters@6.24.1" = f "babel-plugin-transform-es2015-parameters" "6.24.1" y "57ac351ab49caf14a97cd13b09f66fdf0a625f2b" [
            s."babel-helper-call-delegate@^6.24.1"
            s."babel-helper-get-function-arity@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-template@^6.24.1"
            s."babel-traverse@^6.24.1"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-es2015-parameters@^6.18.0" = s."babel-plugin-transform-es2015-parameters@6.21.0";
          "babel-plugin-transform-es2015-parameters@^6.22.0" = s."babel-plugin-transform-es2015-parameters@6.24.1";
          "babel-plugin-transform-es2015-parameters@^6.6.0" = s."babel-plugin-transform-es2015-parameters@6.21.0";
          "babel-plugin-transform-es2015-parameters@^6.7.0" = s."babel-plugin-transform-es2015-parameters@6.21.0";
          "babel-plugin-transform-es2015-shorthand-properties@6.18.0" = f "babel-plugin-transform-es2015-shorthand-properties" "6.18.0" y "e2ede3b7df47bf980151926534d1dd0cbea58f43" [
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.18.0"
          ];
          "babel-plugin-transform-es2015-shorthand-properties@6.24.1" = f "babel-plugin-transform-es2015-shorthand-properties" "6.24.1" y "24f875d6721c87661bbd99a4622e51f14de38aa0" [
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-es2015-shorthand-properties@^6.18.0" = s."babel-plugin-transform-es2015-shorthand-properties@6.18.0";
          "babel-plugin-transform-es2015-shorthand-properties@^6.22.0" = s."babel-plugin-transform-es2015-shorthand-properties@6.24.1";
          "babel-plugin-transform-es2015-shorthand-properties@^6.3.13" = s."babel-plugin-transform-es2015-shorthand-properties@6.18.0";
          "babel-plugin-transform-es2015-shorthand-properties@^6.5.0" = s."babel-plugin-transform-es2015-shorthand-properties@6.18.0";
          "babel-plugin-transform-es2015-spread@6.22.0" = f "babel-plugin-transform-es2015-spread" "6.22.0" y "d6d68a99f89aedc4536c81a542e8dd9f1746f8d1" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-spread@6.8.0" = f "babel-plugin-transform-es2015-spread" "6.8.0" y "0217f737e3b821fa5a669f187c6ed59205f05e9c" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-spread@^6.22.0" = s."babel-plugin-transform-es2015-spread@6.22.0";
          "babel-plugin-transform-es2015-spread@^6.3.13" = s."babel-plugin-transform-es2015-spread@6.8.0";
          "babel-plugin-transform-es2015-spread@^6.6.5" = s."babel-plugin-transform-es2015-spread@6.8.0";
          "babel-plugin-transform-es2015-sticky-regex@6.24.1" = f "babel-plugin-transform-es2015-sticky-regex" "6.24.1" y "00c1cdb1aca71112cdf0cf6126c2ed6b457ccdbc" [
            s."babel-helper-regex@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-es2015-sticky-regex@6.8.0" = f "babel-plugin-transform-es2015-sticky-regex" "6.8.0" y "e73d300a440a35d5c64f5c2a344dc236e3df47be" [
            s."babel-helper-regex@^6.8.0"
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.8.0"
          ];
          "babel-plugin-transform-es2015-sticky-regex@^6.22.0" = s."babel-plugin-transform-es2015-sticky-regex@6.24.1";
          "babel-plugin-transform-es2015-sticky-regex@^6.3.13" = s."babel-plugin-transform-es2015-sticky-regex@6.8.0";
          "babel-plugin-transform-es2015-template-literals@6.22.0" = f "babel-plugin-transform-es2015-template-literals" "6.22.0" y "a84b3450f7e9f8f1f6839d6d687da84bb1236d8d" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-template-literals@6.8.0" = f "babel-plugin-transform-es2015-template-literals" "6.8.0" y "86eb876d0a2c635da4ec048b4f7de9dfc897e66b" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-template-literals@^6.22.0" = s."babel-plugin-transform-es2015-template-literals@6.22.0";
          "babel-plugin-transform-es2015-template-literals@^6.6.0" = s."babel-plugin-transform-es2015-template-literals@6.8.0";
          "babel-plugin-transform-es2015-template-literals@^6.6.5" = s."babel-plugin-transform-es2015-template-literals@6.8.0";
          "babel-plugin-transform-es2015-typeof-symbol@6.18.0" = f "babel-plugin-transform-es2015-typeof-symbol" "6.18.0" y "0b14c48629c90ff47a0650077f6aa699bee35798" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es2015-typeof-symbol@6.23.0" = f "babel-plugin-transform-es2015-typeof-symbol" "6.23.0" y "dec09f1cddff94b52ac73d505c84df59dcceb372" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-es2015-typeof-symbol@^6.18.0" = s."babel-plugin-transform-es2015-typeof-symbol@6.18.0";
          "babel-plugin-transform-es2015-typeof-symbol@^6.22.0" = s."babel-plugin-transform-es2015-typeof-symbol@6.23.0";
          "babel-plugin-transform-es2015-typeof-symbol@^6.6.0" = s."babel-plugin-transform-es2015-typeof-symbol@6.18.0";
          "babel-plugin-transform-es2015-unicode-regex@6.11.0" = f "babel-plugin-transform-es2015-unicode-regex" "6.11.0" y "6298ceabaad88d50a3f4f392d8de997260f6ef2c" [
            s."babel-helper-regex@^6.8.0"
            s."babel-runtime@^6.0.0"
            s."regexpu-core@^2.0.0"
          ];
          "babel-plugin-transform-es2015-unicode-regex@6.24.1" = f "babel-plugin-transform-es2015-unicode-regex" "6.24.1" y "d38b12f42ea7323f729387f18a7c5ae1faeb35e9" [
            s."babel-helper-regex@^6.24.1"
            s."babel-runtime@^6.22.0"
            s."regexpu-core@^2.0.0"
          ];
          "babel-plugin-transform-es2015-unicode-regex@^6.22.0" = s."babel-plugin-transform-es2015-unicode-regex@6.24.1";
          "babel-plugin-transform-es2015-unicode-regex@^6.3.13" = s."babel-plugin-transform-es2015-unicode-regex@6.11.0";
          "babel-plugin-transform-es3-member-expression-literals@6.8.0" = f "babel-plugin-transform-es3-member-expression-literals" "6.8.0" y "180796863e2eddc4b48561d0c228369b05b722e2" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es3-member-expression-literals@^6.5.0" = s."babel-plugin-transform-es3-member-expression-literals@6.8.0";
          "babel-plugin-transform-es3-property-literals@6.8.0" = f "babel-plugin-transform-es3-property-literals" "6.8.0" y "8e7cc50cfe060b7c487ae33c501a4f659133bade" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-es3-property-literals@^6.5.0" = s."babel-plugin-transform-es3-property-literals@6.8.0";
          "babel-plugin-transform-exponentiation-operator@6.24.1" = f "babel-plugin-transform-exponentiation-operator" "6.24.1" y "2ab0c9c7f3098fa48907772bb813fe41e8de3a0e" [
            s."babel-helper-builder-binary-assignment-operator-visitor@^6.24.1"
            s."babel-plugin-syntax-exponentiation-operator@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-exponentiation-operator@6.8.0" = f "babel-plugin-transform-exponentiation-operator" "6.8.0" y "db25742e9339eade676ca9acec46f955599a68a4" [
            s."babel-helper-builder-binary-assignment-operator-visitor@^6.8.0"
            s."babel-plugin-syntax-exponentiation-operator@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-exponentiation-operator@^6.24.1" = s."babel-plugin-transform-exponentiation-operator@6.24.1";
          "babel-plugin-transform-exponentiation-operator@^6.3.13" = s."babel-plugin-transform-exponentiation-operator@6.8.0";
          "babel-plugin-transform-exponentiation-operator@^6.8.0" = s."babel-plugin-transform-exponentiation-operator@6.8.0";
          "babel-plugin-transform-export-extensions@6.22.0" = f "babel-plugin-transform-export-extensions" "6.22.0" y "53738b47e75e8218589eea946cbbd39109bbe653" [
            s."babel-plugin-syntax-export-extensions@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-export-extensions@6.8.0" = f "babel-plugin-transform-export-extensions" "6.8.0" y "fa80ff655b636549431bfd38f6b817bd82e47f5b" [
            s."babel-plugin-syntax-export-extensions@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-export-extensions@^6.22.0" = s."babel-plugin-transform-export-extensions@6.22.0";
          "babel-plugin-transform-export-extensions@^6.3.13" = s."babel-plugin-transform-export-extensions@6.8.0";
          "babel-plugin-transform-flow-strip-types@6.21.0" = f "babel-plugin-transform-flow-strip-types" "6.21.0" y "2eea3f8b5bb234339b47283feac155cfb237b948" [
            s."babel-plugin-syntax-flow@^6.18.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-flow-strip-types@6.22.0" = f "babel-plugin-transform-flow-strip-types" "6.22.0" y "84cb672935d43714fdc32bce84568d87441cf7cf" [
            s."babel-plugin-syntax-flow@^6.18.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-flow-strip-types@^6.22.0" = s."babel-plugin-transform-flow-strip-types@6.22.0";
          "babel-plugin-transform-flow-strip-types@^6.3.13" = s."babel-plugin-transform-flow-strip-types@6.21.0";
          "babel-plugin-transform-flow-strip-types@^6.7.0" = s."babel-plugin-transform-flow-strip-types@6.21.0";
          "babel-plugin-transform-function-bind@6.22.0" = f "babel-plugin-transform-function-bind" "6.22.0" y "c6fb8e96ac296a310b8cf8ea401462407ddf6a97" [
            s."babel-plugin-syntax-function-bind@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-function-bind@6.8.0" = f "babel-plugin-transform-function-bind" "6.8.0" y "e7f334ce69f50d28fe850a822eaaab9fa4f4d821" [
            s."babel-plugin-syntax-function-bind@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-function-bind@^6.22.0" = s."babel-plugin-transform-function-bind@6.22.0";
          "babel-plugin-transform-function-bind@^6.3.13" = s."babel-plugin-transform-function-bind@6.8.0";
          "babel-plugin-transform-object-rest-spread@6.16.0" = f "babel-plugin-transform-object-rest-spread" "6.16.0" y "db441d56fffc1999052fdebe2e2f25ebd28e36a9" [
            s."babel-plugin-syntax-object-rest-spread@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-object-rest-spread@6.26.0" = f "babel-plugin-transform-object-rest-spread" "6.26.0" y "0f36692d50fef6b7e2d4b3ac1478137a963b7b06" [
            s."babel-plugin-syntax-object-rest-spread@^6.8.0"
            s."babel-runtime@^6.26.0"
          ];
          "babel-plugin-transform-object-rest-spread@^6.16.0" = s."babel-plugin-transform-object-rest-spread@6.16.0";
          "babel-plugin-transform-object-rest-spread@^6.22.0" = s."babel-plugin-transform-object-rest-spread@6.26.0";
          "babel-plugin-transform-object-rest-spread@^6.6.5" = s."babel-plugin-transform-object-rest-spread@6.16.0";
          "babel-plugin-transform-react-constant-elements@6.9.1" = f "babel-plugin-transform-react-constant-elements" "6.9.1" y "125b86d96cb322e2139b607fd749ad5fbb17f005" [
            s."babel-runtime@^6.9.1"
          ];
          "babel-plugin-transform-react-constant-elements@^6.5.0" = s."babel-plugin-transform-react-constant-elements@6.9.1";
          "babel-plugin-transform-react-display-name@6.25.0" = f "babel-plugin-transform-react-display-name" "6.25.0" y "67e2bf1f1e9c93ab08db96792e05392bf2cc28d1" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-react-display-name@6.8.0" = f "babel-plugin-transform-react-display-name" "6.8.0" y "f7a084977383d728bdbdc2835bba0159577f660e" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-react-display-name@^6.23.0" = s."babel-plugin-transform-react-display-name@6.25.0";
          "babel-plugin-transform-react-display-name@^6.3.13" = s."babel-plugin-transform-react-display-name@6.8.0";
          "babel-plugin-transform-react-inline-elements@6.8.0" = f "babel-plugin-transform-react-inline-elements" "6.8.0" y "fc2d8fec1f2f87e5c4961ac367610039f325bbe6" [
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-react-inline-elements@^6.6.5" = s."babel-plugin-transform-react-inline-elements@6.8.0";
          "babel-plugin-transform-react-jsx-self@6.11.0" = f "babel-plugin-transform-react-jsx-self" "6.11.0" y "605c9450c1429f97a930f7e1dfe3f0d9d0dbd0f4" [
            s."babel-plugin-syntax-jsx@^6.8.0"
            s."babel-runtime@^6.9.0"
          ];
          "babel-plugin-transform-react-jsx-self@6.22.0" = f "babel-plugin-transform-react-jsx-self" "6.22.0" y "df6d80a9da2612a121e6ddd7558bcbecf06e636e" [
            s."babel-plugin-syntax-jsx@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-react-jsx-self@^6.11.0" = s."babel-plugin-transform-react-jsx-self@6.11.0";
          "babel-plugin-transform-react-jsx-self@^6.22.0" = s."babel-plugin-transform-react-jsx-self@6.22.0";
          "babel-plugin-transform-react-jsx-source@6.22.0" = f "babel-plugin-transform-react-jsx-source" "6.22.0" y "66ac12153f5cd2d17b3c19268f4bf0197f44ecd6" [
            s."babel-plugin-syntax-jsx@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-react-jsx-source@6.9.0" = f "babel-plugin-transform-react-jsx-source" "6.9.0" y "af684a05c2067a86e0957d4f343295ccf5dccf00" [
            s."babel-plugin-syntax-jsx@^6.8.0"
            s."babel-runtime@^6.9.0"
          ];
          "babel-plugin-transform-react-jsx-source@^6.22.0" = s."babel-plugin-transform-react-jsx-source@6.22.0";
          "babel-plugin-transform-react-jsx-source@^6.3.13" = s."babel-plugin-transform-react-jsx-source@6.9.0";
          "babel-plugin-transform-react-jsx@6.24.1" = f "babel-plugin-transform-react-jsx" "6.24.1" y "840a028e7df460dfc3a2d29f0c0d91f6376e66a3" [
            s."babel-helper-builder-react-jsx@^6.24.1"
            s."babel-plugin-syntax-jsx@^6.8.0"
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-react-jsx@6.8.0" = f "babel-plugin-transform-react-jsx" "6.8.0" y "94759942f70af18c617189aa7f3593f1644a71ab" [
            s."babel-helper-builder-react-jsx@^6.8.0"
            s."babel-plugin-syntax-jsx@^6.8.0"
            s."babel-runtime@^6.0.0"
          ];
          "babel-plugin-transform-react-jsx@^6.23.0" = s."babel-plugin-transform-react-jsx@6.24.1";
          "babel-plugin-transform-react-jsx@^6.3.13" = s."babel-plugin-transform-react-jsx@6.8.0";
          "babel-plugin-transform-react-pure-class-to-function@1.0.1" = f "babel-plugin-transform-react-pure-class-to-function" "1.0.1" y "32a649c97d653250b419cfd1489331b0290d9ee4" [
            s."babel-helper-is-react-class@^1.0.0"
          ];
          "babel-plugin-transform-react-pure-class-to-function@^1.0.1" = s."babel-plugin-transform-react-pure-class-to-function@1.0.1";
          "babel-plugin-transform-react-remove-prop-types@0.2.11" = f "babel-plugin-transform-react-remove-prop-types" "0.2.11" y "05eb7cc4670d6506d801680576589c7abcd51b00" [];
          "babel-plugin-transform-react-remove-prop-types@^0.2.5" = s."babel-plugin-transform-react-remove-prop-types@0.2.11";
          "babel-plugin-transform-regenerator@6.16.1" = f "babel-plugin-transform-regenerator" "6.16.1" y "a75de6b048a14154aae14b0122756c5bed392f59" [
            s."babel-runtime@^6.9.0"
            s."babel-types@^6.16.0"
            s."private@~0.1.5"
          ];
          "babel-plugin-transform-regenerator@6.21.0" = f "babel-plugin-transform-regenerator" "6.21.0" y "75d0c7e7f84f379358f508451c68a2c5fa5a9703" [
            s."regenerator-transform@0.9.8"
          ];
          "babel-plugin-transform-regenerator@6.26.0" = f "babel-plugin-transform-regenerator" "6.26.0" y "e0703696fbde27f0a3efcacf8b4dca2f7b3a8f2f" [
            s."regenerator-transform@^0.10.0"
          ];
          "babel-plugin-transform-regenerator@^6.16.0" = s."babel-plugin-transform-regenerator@6.21.0";
          "babel-plugin-transform-regenerator@^6.22.0" = s."babel-plugin-transform-regenerator@6.26.0";
          "babel-plugin-transform-regenerator@^6.6.0" = s."babel-plugin-transform-regenerator@6.21.0";
          "babel-plugin-transform-runtime@6.15.0" = f "babel-plugin-transform-runtime" "6.15.0" y "3d75b4d949ad81af157570273846fb59aeb0d57c" [
            s."babel-runtime@^6.9.0"
          ];
          "babel-plugin-transform-runtime@6.23.0" = f "babel-plugin-transform-runtime" "6.23.0" y "88490d446502ea9b8e7efb0fe09ec4d99479b1ee" [
            s."babel-runtime@^6.22.0"
          ];
          "babel-plugin-transform-runtime@^6.15.0" = s."babel-plugin-transform-runtime@6.15.0";
          "babel-plugin-transform-strict-mode@6.18.0" = f "babel-plugin-transform-strict-mode" "6.18.0" y "df7cf2991fe046f44163dcd110d5ca43bc652b9d" [
            s."babel-runtime@^6.0.0"
            s."babel-types@^6.18.0"
          ];
          "babel-plugin-transform-strict-mode@6.24.1" = f "babel-plugin-transform-strict-mode" "6.24.1" y "d5faf7aa578a65bbe591cf5edae04a0c67020758" [
            s."babel-runtime@^6.22.0"
            s."babel-types@^6.24.1"
          ];
          "babel-plugin-transform-strict-mode@^6.18.0" = s."babel-plugin-transform-strict-mode@6.18.0";
          "babel-plugin-transform-strict-mode@^6.24.1" = s."babel-plugin-transform-strict-mode@6.24.1";
          "babel-plugin-webpack-loaders@0.8.0" = f "babel-plugin-webpack-loaders" "0.8.0" y "1ec5255e2c9de8d5226c58a099890d935a876065" [
            s."babel-preset-es2015@^6.3.13"
            s."babel-preset-stage-0@^6.5.0"
            s."babel-register@^6.4.3"
            s."babel-traverse@^6.3.26"
            s."babel-types@^6.3.24"
            s."babylon@^6.3.26"
            s."colors@^1.1.2"
            s."enhanced-resolve@^2.2.2"
            s."lodash@^4.6.1"
            s."rimraf@^2.5.0"
          ];
          "babel-polyfill@6.23.0" = f "babel-polyfill" "6.23.0" y "8364ca62df8eafb830499f699177466c3b03499d" [
            s."babel-runtime@^6.22.0"
            s."core-js@^2.4.0"
            s."regenerator-runtime@^0.10.0"
          ];
          "babel-polyfill@6.26.0" = f "babel-polyfill" "6.26.0" y "379937abc67d7895970adc621f284cd966cf2153" [
            s."babel-runtime@^6.26.0"
            s."core-js@^2.5.0"
            s."regenerator-runtime@^0.10.5"
          ];
          "babel-polyfill@^6.23.0" = s."babel-polyfill@6.26.0";
          "babel-preset-env@0.0.6" = f "babel-preset-env" "0.0.6" y "cda63a020069098fad12272a7a447a7c5bafb3c8" [
            s."babel-plugin-check-es2015-constants@^6.3.13"
            s."babel-plugin-syntax-trailing-function-commas@^6.13.0"
            s."babel-plugin-transform-async-to-generator@^6.8.0"
            s."babel-plugin-transform-es2015-arrow-functions@^6.3.13"
            s."babel-plugin-transform-es2015-block-scoped-functions@^6.3.13"
            s."babel-plugin-transform-es2015-block-scoping@^6.6.0"
            s."babel-plugin-transform-es2015-classes@^6.6.0"
            s."babel-plugin-transform-es2015-computed-properties@^6.3.13"
            s."babel-plugin-transform-es2015-destructuring@^6.6.0"
            s."babel-plugin-transform-es2015-duplicate-keys@^6.6.0"
            s."babel-plugin-transform-es2015-for-of@^6.6.0"
            s."babel-plugin-transform-es2015-function-name@^6.3.13"
            s."babel-plugin-transform-es2015-literals@^6.3.13"
            s."babel-plugin-transform-es2015-modules-amd@^6.8.0"
            s."babel-plugin-transform-es2015-modules-commonjs@^6.6.0"
            s."babel-plugin-transform-es2015-modules-systemjs@^6.12.0"
            s."babel-plugin-transform-es2015-modules-umd@^6.12.0"
            s."babel-plugin-transform-es2015-object-super@^6.3.13"
            s."babel-plugin-transform-es2015-parameters@^6.6.0"
            s."babel-plugin-transform-es2015-shorthand-properties@^6.3.13"
            s."babel-plugin-transform-es2015-spread@^6.3.13"
            s."babel-plugin-transform-es2015-sticky-regex@^6.3.13"
            s."babel-plugin-transform-es2015-template-literals@^6.6.0"
            s."babel-plugin-transform-es2015-typeof-symbol@^6.6.0"
            s."babel-plugin-transform-es2015-unicode-regex@^6.3.13"
            s."babel-plugin-transform-exponentiation-operator@^6.8.0"
            s."babel-plugin-transform-regenerator@^6.6.0"
            s."browserslist@^1.4.0"
          ];
          "babel-preset-es2015@6.18.0" = f "babel-preset-es2015" "6.18.0" y "b8c70df84ec948c43dcf2bf770e988eb7da88312" [
            s."babel-plugin-check-es2015-constants@^6.3.13"
            s."babel-plugin-transform-es2015-arrow-functions@^6.3.13"
            s."babel-plugin-transform-es2015-block-scoped-functions@^6.3.13"
            s."babel-plugin-transform-es2015-block-scoping@^6.18.0"
            s."babel-plugin-transform-es2015-classes@^6.18.0"
            s."babel-plugin-transform-es2015-computed-properties@^6.3.13"
            s."babel-plugin-transform-es2015-destructuring@^6.18.0"
            s."babel-plugin-transform-es2015-duplicate-keys@^6.6.0"
            s."babel-plugin-transform-es2015-for-of@^6.18.0"
            s."babel-plugin-transform-es2015-function-name@^6.9.0"
            s."babel-plugin-transform-es2015-literals@^6.3.13"
            s."babel-plugin-transform-es2015-modules-amd@^6.18.0"
            s."babel-plugin-transform-es2015-modules-commonjs@^6.18.0"
            s."babel-plugin-transform-es2015-modules-systemjs@^6.18.0"
            s."babel-plugin-transform-es2015-modules-umd@^6.18.0"
            s."babel-plugin-transform-es2015-object-super@^6.3.13"
            s."babel-plugin-transform-es2015-parameters@^6.18.0"
            s."babel-plugin-transform-es2015-shorthand-properties@^6.18.0"
            s."babel-plugin-transform-es2015-spread@^6.3.13"
            s."babel-plugin-transform-es2015-sticky-regex@^6.3.13"
            s."babel-plugin-transform-es2015-template-literals@^6.6.0"
            s."babel-plugin-transform-es2015-typeof-symbol@^6.18.0"
            s."babel-plugin-transform-es2015-unicode-regex@^6.3.13"
            s."babel-plugin-transform-regenerator@^6.16.0"
          ];
          "babel-preset-es2015@6.24.0" = f "babel-preset-es2015" "6.24.0" y "c162d68b1932696e036cd3110dc1ccd303d2673a" [
            s."babel-plugin-check-es2015-constants@^6.22.0"
            s."babel-plugin-transform-es2015-arrow-functions@^6.22.0"
            s."babel-plugin-transform-es2015-block-scoped-functions@^6.22.0"
            s."babel-plugin-transform-es2015-block-scoping@^6.22.0"
            s."babel-plugin-transform-es2015-classes@^6.22.0"
            s."babel-plugin-transform-es2015-computed-properties@^6.22.0"
            s."babel-plugin-transform-es2015-destructuring@^6.22.0"
            s."babel-plugin-transform-es2015-duplicate-keys@^6.22.0"
            s."babel-plugin-transform-es2015-for-of@^6.22.0"
            s."babel-plugin-transform-es2015-function-name@^6.22.0"
            s."babel-plugin-transform-es2015-literals@^6.22.0"
            s."babel-plugin-transform-es2015-modules-amd@^6.24.0"
            s."babel-plugin-transform-es2015-modules-commonjs@^6.24.0"
            s."babel-plugin-transform-es2015-modules-systemjs@^6.22.0"
            s."babel-plugin-transform-es2015-modules-umd@^6.24.0"
            s."babel-plugin-transform-es2015-object-super@^6.22.0"
            s."babel-plugin-transform-es2015-parameters@^6.22.0"
            s."babel-plugin-transform-es2015-shorthand-properties@^6.22.0"
            s."babel-plugin-transform-es2015-spread@^6.22.0"
            s."babel-plugin-transform-es2015-sticky-regex@^6.22.0"
            s."babel-plugin-transform-es2015-template-literals@^6.22.0"
            s."babel-plugin-transform-es2015-typeof-symbol@^6.22.0"
            s."babel-plugin-transform-es2015-unicode-regex@^6.22.0"
            s."babel-plugin-transform-regenerator@^6.22.0"
          ];
          "babel-preset-es2015@^6.16.0" = s."babel-preset-es2015@6.18.0";
          "babel-preset-es2015@^6.3.13" = s."babel-preset-es2015@6.18.0";
          "babel-preset-es2016@6.16.0" = f "babel-preset-es2016" "6.16.0" y "c7daf5feedeee99c867813bdf0d573d94ca12812" [
            s."babel-plugin-transform-exponentiation-operator@^6.3.13"
          ];
          "babel-preset-es2016@^6.16.0" = s."babel-preset-es2016@6.16.0";
          "babel-preset-es2017@6.16.0" = f "babel-preset-es2017" "6.16.0" y "536c6287778a758948ddd092b466b6ef50b786fa" [
            s."babel-plugin-syntax-trailing-function-commas@^6.8.0"
            s."babel-plugin-transform-async-to-generator@^6.16.0"
          ];
          "babel-preset-es2017@^6.16.0" = s."babel-preset-es2017@6.16.0";
          "babel-preset-fbjs@1.0.0" = f "babel-preset-fbjs" "1.0.0" y "c972e5c9b301d4ec9e7971f4aec3e14ac017a8b0" [
            s."babel-plugin-check-es2015-constants@^6.7.2"
            s."babel-plugin-syntax-flow@^6.5.0"
            s."babel-plugin-syntax-object-rest-spread@^6.5.0"
            s."babel-plugin-syntax-trailing-function-commas@^6.5.0"
            s."babel-plugin-transform-class-properties@^6.6.0"
            s."babel-plugin-transform-es2015-arrow-functions@^6.5.2"
            s."babel-plugin-transform-es2015-block-scoped-functions@^6.6.5"
            s."babel-plugin-transform-es2015-block-scoping@^6.7.1"
            s."babel-plugin-transform-es2015-classes@^6.6.5"
            s."babel-plugin-transform-es2015-computed-properties@^6.6.5"
            s."babel-plugin-transform-es2015-destructuring@^6.6.5"
            s."babel-plugin-transform-es2015-for-of@^6.6.0"
            s."babel-plugin-transform-es2015-literals@^6.5.0"
            s."babel-plugin-transform-es2015-modules-commonjs@^6.7.0"
            s."babel-plugin-transform-es2015-object-super@^6.6.5"
            s."babel-plugin-transform-es2015-parameters@^6.7.0"
            s."babel-plugin-transform-es2015-shorthand-properties@^6.5.0"
            s."babel-plugin-transform-es2015-spread@^6.6.5"
            s."babel-plugin-transform-es2015-template-literals@^6.6.5"
            s."babel-plugin-transform-es3-member-expression-literals@^6.5.0"
            s."babel-plugin-transform-es3-property-literals@^6.5.0"
            s."babel-plugin-transform-flow-strip-types@^6.7.0"
            s."babel-plugin-transform-object-rest-spread@^6.6.5"
            s."object-assign@^4.0.1"
          ];
          "babel-preset-fbjs@^1.0.0" = s."babel-preset-fbjs@1.0.0";
          "babel-preset-flow@6.23.0" = f "babel-preset-flow" "6.23.0" y "e71218887085ae9a24b5be4169affb599816c49d" [
            s."babel-plugin-transform-flow-strip-types@^6.22.0"
          ];
          "babel-preset-flow@^6.23.0" = s."babel-preset-flow@6.23.0";
          "babel-preset-latest@6.16.0" = f "babel-preset-latest" "6.16.0" y "5b87e19e250bb1213f13af4ec9dc7a51d53f388d" [
            s."babel-preset-es2015@^6.16.0"
            s."babel-preset-es2016@^6.16.0"
            s."babel-preset-es2017@^6.16.0"
          ];
          "babel-preset-react-app@1.0.0" = f "babel-preset-react-app" "1.0.0" y "e7613500859d96f177ba7a38a3ed0a923ee50da8" [
            s."babel-plugin-transform-class-properties@6.16.0"
            s."babel-plugin-transform-es2015-destructuring@6.16.0"
            s."babel-plugin-transform-es2015-parameters@6.17.0"
            s."babel-plugin-transform-object-rest-spread@6.16.0"
            s."babel-plugin-transform-react-constant-elements@6.9.1"
            s."babel-plugin-transform-react-jsx-self@6.11.0"
            s."babel-plugin-transform-react-jsx-source@6.9.0"
            s."babel-plugin-transform-regenerator@6.16.1"
            s."babel-plugin-transform-runtime@6.15.0"
            s."babel-preset-env@0.0.6"
            s."babel-preset-latest@6.16.0"
            s."babel-preset-react@6.16.0"
            s."babel-runtime@6.11.6"
          ];
          "babel-preset-react-app@^1.0.0" = s."babel-preset-react-app@1.0.0";
          "babel-preset-react-hmre@1.1.1" = f "babel-preset-react-hmre" "1.1.1" y "d216e60cb5b8d4c873e19ed0f54eaff1437bc492" [
            s."babel-plugin-react-transform@^2.0.2"
            s."react-transform-catch-errors@^1.0.2"
            s."react-transform-hmr@^1.0.3"
            s."redbox-react@^1.2.2"
          ];
          "babel-preset-react-optimize@1.0.1" = f "babel-preset-react-optimize" "1.0.1" y "c23509fba7cbc76d7de7050e7d26bcd22bc304e8" [
            s."babel-plugin-transform-react-constant-elements@^6.5.0"
            s."babel-plugin-transform-react-inline-elements@^6.6.5"
            s."babel-plugin-transform-react-pure-class-to-function@^1.0.1"
            s."babel-plugin-transform-react-remove-prop-types@^0.2.5"
          ];
          "babel-preset-react@6.16.0" = f "babel-preset-react" "6.16.0" y "aa117d60de0928607e343c4828906e4661824316" [
            s."babel-plugin-syntax-flow@^6.3.13"
            s."babel-plugin-syntax-jsx@^6.3.13"
            s."babel-plugin-transform-flow-strip-types@^6.3.13"
            s."babel-plugin-transform-react-display-name@^6.3.13"
            s."babel-plugin-transform-react-jsx@^6.3.13"
            s."babel-plugin-transform-react-jsx-self@^6.11.0"
            s."babel-plugin-transform-react-jsx-source@^6.3.13"
          ];
          "babel-preset-react@6.23.0" = f "babel-preset-react" "6.23.0" y "eb7cee4de98a3f94502c28565332da9819455195" [
            s."babel-plugin-syntax-jsx@^6.3.13"
            s."babel-plugin-transform-react-display-name@^6.23.0"
            s."babel-plugin-transform-react-jsx@^6.23.0"
            s."babel-plugin-transform-react-jsx-self@^6.22.0"
            s."babel-plugin-transform-react-jsx-source@^6.22.0"
            s."babel-preset-flow@^6.23.0"
          ];
          "babel-preset-stage-0@6.16.0" = f "babel-preset-stage-0" "6.16.0" y "f5a263c420532fd57491f1a7315b3036e428f823" [
            s."babel-plugin-transform-do-expressions@^6.3.13"
            s."babel-plugin-transform-function-bind@^6.3.13"
            s."babel-preset-stage-1@^6.16.0"
          ];
          "babel-preset-stage-0@6.22.0" = f "babel-preset-stage-0" "6.22.0" y "707eeb5b415da769eff9c42f4547f644f9296ef9" [
            s."babel-plugin-transform-do-expressions@^6.22.0"
            s."babel-plugin-transform-function-bind@^6.22.0"
            s."babel-preset-stage-1@^6.22.0"
          ];
          "babel-preset-stage-0@^6.5.0" = s."babel-preset-stage-0@6.16.0";
          "babel-preset-stage-1@6.16.0" = f "babel-preset-stage-1" "6.16.0" y "9d31fbbdae7b17c549fd3ac93e3cf6902695e479" [
            s."babel-plugin-transform-class-constructor-call@^6.3.13"
            s."babel-plugin-transform-export-extensions@^6.3.13"
            s."babel-preset-stage-2@^6.16.0"
          ];
          "babel-preset-stage-1@6.24.1" = f "babel-preset-stage-1" "6.24.1" y "7692cd7dcd6849907e6ae4a0a85589cfb9e2bfb0" [
            s."babel-plugin-transform-class-constructor-call@^6.24.1"
            s."babel-plugin-transform-export-extensions@^6.22.0"
            s."babel-preset-stage-2@^6.24.1"
          ];
          "babel-preset-stage-1@^6.16.0" = s."babel-preset-stage-1@6.16.0";
          "babel-preset-stage-1@^6.22.0" = s."babel-preset-stage-1@6.24.1";
          "babel-preset-stage-2@6.18.0" = f "babel-preset-stage-2" "6.18.0" y "9eb7bf9a8e91c68260d5ba7500493caaada4b5b5" [
            s."babel-plugin-syntax-dynamic-import@^6.18.0"
            s."babel-plugin-transform-class-properties@^6.18.0"
            s."babel-plugin-transform-decorators@^6.13.0"
            s."babel-preset-stage-3@^6.17.0"
          ];
          "babel-preset-stage-2@6.24.1" = f "babel-preset-stage-2" "6.24.1" y "d9e2960fb3d71187f0e64eec62bc07767219bdc1" [
            s."babel-plugin-syntax-dynamic-import@^6.18.0"
            s."babel-plugin-transform-class-properties@^6.24.1"
            s."babel-plugin-transform-decorators@^6.24.1"
            s."babel-preset-stage-3@^6.24.1"
          ];
          "babel-preset-stage-2@^6.16.0" = s."babel-preset-stage-2@6.18.0";
          "babel-preset-stage-2@^6.24.1" = s."babel-preset-stage-2@6.24.1";
          "babel-preset-stage-3@6.17.0" = f "babel-preset-stage-3" "6.17.0" y "b6638e46db6e91e3f889013d8ce143917c685e39" [
            s."babel-plugin-syntax-trailing-function-commas@^6.3.13"
            s."babel-plugin-transform-async-generator-functions@^6.17.0"
            s."babel-plugin-transform-async-to-generator@^6.16.0"
            s."babel-plugin-transform-exponentiation-operator@^6.3.13"
            s."babel-plugin-transform-object-rest-spread@^6.16.0"
          ];
          "babel-preset-stage-3@6.24.1" = f "babel-preset-stage-3" "6.24.1" y "836ada0a9e7a7fa37cb138fb9326f87934a48395" [
            s."babel-plugin-syntax-trailing-function-commas@^6.22.0"
            s."babel-plugin-transform-async-generator-functions@^6.24.1"
            s."babel-plugin-transform-async-to-generator@^6.24.1"
            s."babel-plugin-transform-exponentiation-operator@^6.24.1"
            s."babel-plugin-transform-object-rest-spread@^6.22.0"
          ];
          "babel-preset-stage-3@^6.17.0" = s."babel-preset-stage-3@6.17.0";
          "babel-preset-stage-3@^6.24.1" = s."babel-preset-stage-3@6.24.1";
          "babel-register@6.18.0" = f "babel-register" "6.18.0" y "892e2e03865078dd90ad2c715111ec4449b32a68" [
            s."babel-core@^6.18.0"
            s."babel-runtime@^6.11.6"
            s."core-js@^2.4.0"
            s."home-or-tmp@^2.0.0"
            s."lodash@^4.2.0"
            s."mkdirp@^0.5.1"
            s."source-map-support@^0.4.2"
          ];
          "babel-register@6.24.0" = f "babel-register" "6.24.0" y "5e89f8463ba9970356d02eb07dabe3308b080cfd" [
            s."babel-core@^6.24.0"
            s."babel-runtime@^6.22.0"
            s."core-js@^2.4.0"
            s."home-or-tmp@^2.0.0"
            s."lodash@^4.2.0"
            s."mkdirp@^0.5.1"
            s."source-map-support@^0.4.2"
          ];
          "babel-register@6.26.0" = f "babel-register" "6.26.0" y "6ed021173e2fcb486d7acb45c6009a856f647071" [
            s."babel-core@^6.26.0"
            s."babel-runtime@^6.26.0"
            s."core-js@^2.5.0"
            s."home-or-tmp@^2.0.0"
            s."lodash@^4.17.4"
            s."mkdirp@^0.5.1"
            s."source-map-support@^0.4.15"
          ];
          "babel-register@^6.18.0" = s."babel-register@6.18.0";
          "babel-register@^6.24.0" = s."babel-register@6.26.0";
          "babel-register@^6.26.0" = s."babel-register@6.26.0";
          "babel-register@^6.4.3" = s."babel-register@6.18.0";
          "babel-runtime@6.11.6" = f "babel-runtime" "6.11.6" y "6db707fef2d49c49bfa3cb64efdb436b518b8222" [
            s."core-js@^2.4.0"
            s."regenerator-runtime@^0.9.5"
          ];
          "babel-runtime@6.20.0" = f "babel-runtime" "6.20.0" y "87300bdcf4cd770f09bf0048c64204e17806d16f" [
            s."core-js@^2.4.0"
            s."regenerator-runtime@^0.10.0"
          ];
          "babel-runtime@6.26.0" = f "babel-runtime" "6.26.0" y "965c7058668e82b55d7bfe04ff2337bc8b5647fe" [
            s."core-js@^2.4.0"
            s."regenerator-runtime@^0.11.0"
          ];
          "babel-runtime@6.x.x" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.0.0" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.11.6" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.18.0" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.2.0" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.20.0" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.22.0" = s."babel-runtime@6.26.0";
          "babel-runtime@^6.26.0" = s."babel-runtime@6.26.0";
          "babel-runtime@^6.5.0" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.6.1" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.9.0" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.9.1" = s."babel-runtime@6.20.0";
          "babel-runtime@^6.9.2" = s."babel-runtime@6.20.0";
          "babel-template@6.16.0" = f "babel-template" "6.16.0" y "e149dd1a9f03a35f817ddbc4d0481988e7ebc8ca" [
            s."babel-runtime@^6.9.0"
            s."babel-traverse@^6.16.0"
            s."babel-types@^6.16.0"
            s."babylon@^6.11.0"
            s."lodash@^4.2.0"
          ];
          "babel-template@6.26.0" = f "babel-template" "6.26.0" y "de03e2d16396b069f46dd9fff8521fb1a0e35e02" [
            s."babel-runtime@^6.26.0"
            s."babel-traverse@^6.26.0"
            s."babel-types@^6.26.0"
            s."babylon@^6.18.0"
            s."lodash@^4.17.4"
          ];
          "babel-template@^6.14.0" = s."babel-template@6.16.0";
          "babel-template@^6.15.0" = s."babel-template@6.16.0";
          "babel-template@^6.16.0" = s."babel-template@6.16.0";
          "babel-template@^6.23.0" = s."babel-template@6.26.0";
          "babel-template@^6.24.1" = s."babel-template@6.26.0";
          "babel-template@^6.26.0" = s."babel-template@6.26.0";
          "babel-template@^6.3.0" = s."babel-template@6.16.0";
          "babel-template@^6.8.0" = s."babel-template@6.16.0";
          "babel-traverse@6.21.0" = f "babel-traverse" "6.21.0" y "69c6365804f1a4f69eb1213f85b00a818b8c21ad" [
            s."babel-code-frame@^6.20.0"
            s."babel-messages@^6.8.0"
            s."babel-runtime@^6.20.0"
            s."babel-types@^6.21.0"
            s."babylon@^6.11.0"
            s."debug@^2.2.0"
            s."globals@^9.0.0"
            s."invariant@^2.2.0"
            s."lodash@^4.2.0"
          ];
          "babel-traverse@6.26.0" = f "babel-traverse" "6.26.0" y "46a9cbd7edcc62c8e5c064e2d2d8d0f4035766ee" [
            s."babel-code-frame@^6.26.0"
            s."babel-messages@^6.23.0"
            s."babel-runtime@^6.26.0"
            s."babel-types@^6.26.0"
            s."babylon@^6.18.0"
            s."debug@^2.6.8"
            s."globals@^9.18.0"
            s."invariant@^2.2.2"
            s."lodash@^4.17.4"
          ];
          "babel-traverse@^6.16.0" = s."babel-traverse@6.21.0";
          "babel-traverse@^6.18.0" = s."babel-traverse@6.21.0";
          "babel-traverse@^6.20.0" = s."babel-traverse@6.21.0";
          "babel-traverse@^6.21.0" = s."babel-traverse@6.21.0";
          "babel-traverse@^6.23.1" = s."babel-traverse@6.26.0";
          "babel-traverse@^6.24.1" = s."babel-traverse@6.26.0";
          "babel-traverse@^6.26.0" = s."babel-traverse@6.26.0";
          "babel-traverse@^6.3.26" = s."babel-traverse@6.21.0";
          "babel-types@6.21.0" = f "babel-types" "6.21.0" y "314b92168891ef6d3806b7f7a917fdf87c11a4b2" [
            s."babel-runtime@^6.20.0"
            s."esutils@^2.0.2"
            s."lodash@^4.2.0"
            s."to-fast-properties@^1.0.1"
          ];
          "babel-types@6.26.0" = f "babel-types" "6.26.0" y "a3b073f94ab49eb6fa55cd65227a334380632497" [
            s."babel-runtime@^6.26.0"
            s."esutils@^2.0.2"
            s."lodash@^4.17.4"
            s."to-fast-properties@^1.0.3"
          ];
          "babel-types@^6.13.0" = s."babel-types@6.21.0";
          "babel-types@^6.16.0" = s."babel-types@6.21.0";
          "babel-types@^6.18.0" = s."babel-types@6.21.0";
          "babel-types@^6.19.0" = s."babel-types@6.21.0";
          "babel-types@^6.20.0" = s."babel-types@6.21.0";
          "babel-types@^6.21.0" = s."babel-types@6.21.0";
          "babel-types@^6.22.0" = s."babel-types@6.26.0";
          "babel-types@^6.23.0" = s."babel-types@6.26.0";
          "babel-types@^6.24.1" = s."babel-types@6.26.0";
          "babel-types@^6.26.0" = s."babel-types@6.26.0";
          "babel-types@^6.3.24" = s."babel-types@6.21.0";
          "babel-types@^6.8.0" = s."babel-types@6.21.0";
          "babel-types@^6.9.0" = s."babel-types@6.21.0";
          "babylon@5.8.38" = f "babylon" "5.8.38" y "ec9b120b11bf6ccd4173a18bf217e60b79859ffd" [];
          "babylon@6.14.1" = f "babylon" "6.14.1" y "956275fab72753ad9b3435d7afe58f8bf0a29815" [];
          "babylon@6.18.0" = f "babylon" "6.18.0" y "af2f3b88fa6f5c1e4c634d1a0f8eac4f55b395e3" [];
          "babylon@^6.11.0" = s."babylon@6.14.1";
          "babylon@^6.16.1" = s."babylon@6.18.0";
          "babylon@^6.18.0" = s."babylon@6.18.0";
          "babylon@^6.3.26" = s."babylon@6.14.1";
          "babylon@~5.8.3" = s."babylon@5.8.38";
          "balanced-match@0.4.2" = f "balanced-match" "0.4.2" y "cb3f3e3c732dc0f01ee70b403f302e61d7709838" [];
          "balanced-match@1.0.0" = f "balanced-match" "1.0.0" y "89b4d199ab2bee49de164ea02b89ce462d71b767" [];
          "balanced-match@^0.4.1" = s."balanced-match@0.4.2";
          "balanced-match@^0.4.2" = s."balanced-match@0.4.2";
          "balanced-match@^1.0.0" = s."balanced-match@1.0.0";
          "base-x@3.0.4" = f "base-x" "3.0.4" y "94c1788736da065edb1d68808869e357c977fa77" [
            s."safe-buffer@^5.0.1"
          ];
          "base-x@^3.0.2" = s."base-x@3.0.4";
          "base64-js@0.0.8" = f "base64-js" "0.0.8" y "1101e9544f4a76b1bc3b26d452ca96d7a35e7978" [];
          "base64-js@1.1.2" = f "base64-js" "1.1.2" y "d6400cac1c4c660976d90d07a04351d89395f5e8" [];
          "base64-js@^1.0.2" = s."base64-js@1.1.2";
          "basename@0.1.2" = f "basename" "0.1.2" y "d6039bef939863160c78048cced3c5e7f88cb261" [];
          "bcrypt-pbkdf@1.0.0" = f "bcrypt-pbkdf" "1.0.0" y "3ca76b85241c7170bf7d9703e7b9aa74630040d4" [
            s."tweetnacl@^0.14.3"
          ];
          "bcrypt-pbkdf@^1.0.0" = s."bcrypt-pbkdf@1.0.0";
          "becke-ch--regex--s0-0-v1--base--pl--lib@1.2.0" = f "becke-ch--regex--s0-0-v1--base--pl--lib" "1.2.0" y "2e73e9d21f2c2e6f5a5454045636f0ab93e46130" [];
          "becke-ch--regex--s0-0-v1--base--pl--lib@^1.2.0" = s."becke-ch--regex--s0-0-v1--base--pl--lib@1.2.0";
          "beeper@1.1.1" = f "beeper" "1.1.1" y "e6d5ea8c5dad001304a70b22638447f69cb2f809" [];
          "beeper@^1.0.0" = s."beeper@1.1.1";
          "biased-opener@0.2.8" = f "biased-opener" "0.2.8" y "159a49b9a9714c1fb102f2e0ed1906fab6a450f4" [
            s."browser-launcher2@~0.4.6"
            s."minimist@^1.2.0"
            s."x-default-browser@~0.3.0"
          ];
          "biased-opener@~0.2.2" = s."biased-opener@0.2.8";
          "big-integer@1.6.17" = f "big-integer" "1.6.17" y "f0dcf5109a949e42a993ee3e8fb2070452817b51" [];
          "big-integer@^1.6.7" = s."big-integer@1.6.17";
          "big.js@3.1.3" = f "big.js" "3.1.3" y "4cada2193652eb3ca9ec8e55c9015669c9806978" [];
          "big.js@^3.1.3" = s."big.js@3.1.3";
          "bignumber.js@4.0.0" = f "bignumber.js" "4.0.0" y "26b23a3240820fb6b875f07de822004c7d34b682" [];
          "binary-extensions@1.8.0" = f "binary-extensions" "1.8.0" y "48ec8d16df4377eae5fa5884682480af4d95c774" [];
          "binary-extensions@^1.0.0" = s."binary-extensions@1.8.0";
          "binary@0.3.0" = f "binary" "0.3.0" y "9f60553bc5ce8c3386f3b553cff47462adecaa79" [
            s."buffers@~0.1.1"
            s."chainsaw@~0.1.0"
          ];
          "binary@^0.3.0" = s."binary@0.3.0";
          "bip39@2.3.0" = f "bip39" "2.3.0" y "e4ee6c6d1bd90ca00ffd57ad446bdf8c017ff484" [
            s."create-hash@^1.1.0"
            s."pbkdf2@^3.0.9"
            s."randombytes@^2.0.1"
            s."unorm@^1.3.3"
          ];
          "bl@0.9.5" = f "bl" "0.9.5" y "c06b797af085ea00bc527afc8efcf11de2232054" [
            s."readable-stream@~1.0.26"
          ];
          "bl@1.1.2" = f "bl" "1.1.2" y "fdca871a99713aa00d19e3bbba41c44787a65398" [
            s."readable-stream@~2.0.5"
          ];
          "bl@^1.0.0" = s."bl@1.1.2";
          "bl@~0.9.0" = s."bl@0.9.5";
          "blakejs@1.0.1" = f "blakejs" "1.0.1" y "ae54b631fb4ab820c4f7a226a4b430a95f87065e" [];
          "block-stream@*" = s."block-stream@0.0.9";
          "block-stream@0.0.9" = f "block-stream" "0.0.9" y "13ebfe778a03205cfe03751481ebb4b3300c126a" [
            s."inherits@~2.0.0"
          ];
          "bluebird@2.11.0" = f "bluebird" "2.11.0" y "534b9033c022c9579c56ba3b3e5a5caafbb650e1" [];
          "bluebird@3.3.1" = f "bluebird" "3.3.1" y "f97ae1970f41d85177283053e9a120160e66c61d" [];
          "bluebird@3.4.7" = f "bluebird" "3.4.7" y "f72d760be09b7f76d08ed8fae98b289a8d05fab3" [];
          "bluebird@3.5.1" = f "bluebird" "3.5.1" y "d9551f9de98f1fcda1e683d17ee91a0602ee2eb9" [];
          "bluebird@^2.9.30" = s."bluebird@2.11.0";
          "bluebird@^2.9.34" = s."bluebird@2.11.0";
          "bluebird@^3.1.1" = s."bluebird@3.4.7";
          "bluebird@^3.4.1" = s."bluebird@3.5.1";
          "bluebird@^3.4.6" = s."bluebird@3.4.7";
          "bluebird@^3.5.0" = s."bluebird@3.5.1";
          "bn.js@4.11.6" = f "bn.js" "4.11.6" y "53344adb14617a13f6e8dd2ce28905d1c0ba3215" [];
          "bn.js@4.11.8" = f "bn.js" "4.11.8" y "2cde09eb5ee341f484746bb0309b3253b1b1442f" [];
          "bn.js@^4.0.0" = s."bn.js@4.11.6";
          "bn.js@^4.1.0" = s."bn.js@4.11.6";
          "bn.js@^4.1.1" = s."bn.js@4.11.6";
          "bn.js@^4.11.6" = s."bn.js@4.11.8";
          "bn.js@^4.4.0" = s."bn.js@4.11.6";
          "body-parser@1.18.2" = f "body-parser" "1.18.2" y "87678a19d84b47d859b83199bd59bce222b10454" [
            s."bytes@3.0.0"
            s."content-type@~1.0.4"
            s."debug@2.6.9"
            s."depd@~1.1.1"
            s."http-errors@~1.6.2"
            s."iconv-lite@0.4.19"
            s."on-finished@~2.3.0"
            s."qs@6.5.1"
            s."raw-body@2.3.2"
            s."type-is@~1.6.15"
          ];
          "body-parser@^1.16.0" = s."body-parser@1.18.2";
          "boiler-room-custodian@0.4.3" = f "boiler-room-custodian" "0.4.3" y "1c816fea4a410aeec2ebaf4abb1b334242befb3e" [
            s."chalk@^1.1.3"
            s."commander@^2.9.0"
            s."rimraf@^2.5.4"
          ];
          "boom@2.10.1" = f "boom" "2.10.1" y "39c8918ceff5799f83f9492a848f625add0c766f" [
            s."hoek@2.x.x"
          ];
          "boom@2.x.x" = s."boom@2.10.1";
          "boom@4.3.1" = f "boom" "4.3.1" y "4f8a3005cb4a7e3889f749030fd25b96e01d2e31" [
            s."hoek@4.x.x"
          ];
          "boom@4.x.x" = s."boom@4.3.1";
          "boom@5.2.0" = f "boom" "5.2.0" y "5dd9da6ee3a5f302077436290cb717d3f4a54e02" [
            s."hoek@4.x.x"
          ];
          "boom@5.x.x" = s."boom@5.2.0";
          "bplist-parser@0.1.1" = f "bplist-parser" "0.1.1" y "d60d5dcc20cba6dc7e1f299b35d3e1f95dafbae6" [
            s."big-integer@^1.6.7"
          ];
          "bplist-parser@^0.1.0" = s."bplist-parser@0.1.1";
          "brace-expansion@1.1.11" = f "brace-expansion" "1.1.11" y "3c7fcbf529d87226f3d2f52b966ff5271eb441dd" [
            s."balanced-match@^1.0.0"
            s."concat-map@0.0.1"
          ];
          "brace-expansion@1.1.6" = f "brace-expansion" "1.1.6" y "7197d7eaa9b87e648390ea61fc66c84427420df9" [
            s."balanced-match@^0.4.1"
            s."concat-map@0.0.1"
          ];
          "brace-expansion@^1.0.0" = s."brace-expansion@1.1.6";
          "brace-expansion@^1.1.7" = s."brace-expansion@1.1.11";
          "braces@1.8.5" = f "braces" "1.8.5" y "ba77962e12dff969d6b76711e914b737857bf6a7" [
            s."expand-range@^1.8.1"
            s."preserve@^0.2.0"
            s."repeat-element@^1.1.2"
          ];
          "braces@^1.8.2" = s."braces@1.8.5";
          "brorand@1.0.6" = f "brorand" "1.0.6" y "4028706b915f91f7b349a2e0bf3c376039d216e5" [];
          "brorand@^1.0.1" = s."brorand@1.0.6";
          "browser-launcher2@0.4.6" = f "browser-launcher2" "0.4.6" y "51598408a13f4c9c5b20eba44554b2c0b0ae4074" [
            s."headless@^0.1.7"
            s."lodash@^2.4.1"
            s."mkdirp@^0.5.0"
            s."osenv@^0.1.0"
            s."plist@^1.0.1"
            s."rimraf@~2.2.8"
            s."uid@0.0.2"
            s."win-detect-browsers@^1.0.1"
          ];
          "browser-launcher2@~0.4.6" = s."browser-launcher2@0.4.6";
          "browserify-aes@0.4.0" = f "browserify-aes" "0.4.0" y "067149b668df31c4b58533e02d01e806d8608e2c" [
            s."inherits@^2.0.1"
          ];
          "browserify-aes@1.0.6" = f "browserify-aes" "1.0.6" y "5e7725dbdef1fd5930d4ebab48567ce451c48a0a" [
            s."buffer-xor@^1.0.2"
            s."cipher-base@^1.0.0"
            s."create-hash@^1.1.0"
            s."evp_bytestokey@^1.0.0"
            s."inherits@^2.0.1"
          ];
          "browserify-aes@^1.0.0" = s."browserify-aes@1.0.6";
          "browserify-aes@^1.0.4" = s."browserify-aes@1.0.6";
          "browserify-cipher@1.0.0" = f "browserify-cipher" "1.0.0" y "9988244874bf5ed4e28da95666dcd66ac8fc363a" [
            s."browserify-aes@^1.0.4"
            s."browserify-des@^1.0.0"
            s."evp_bytestokey@^1.0.0"
          ];
          "browserify-cipher@^1.0.0" = s."browserify-cipher@1.0.0";
          "browserify-des@1.0.0" = f "browserify-des" "1.0.0" y "daa277717470922ed2fe18594118a175439721dd" [
            s."cipher-base@^1.0.1"
            s."des.js@^1.0.0"
            s."inherits@^2.0.1"
          ];
          "browserify-des@^1.0.0" = s."browserify-des@1.0.0";
          "browserify-rsa@4.0.1" = f "browserify-rsa" "4.0.1" y "21e0abfaf6f2029cf2fafb133567a701d4135524" [
            s."bn.js@^4.1.0"
            s."randombytes@^2.0.1"
          ];
          "browserify-rsa@^4.0.0" = s."browserify-rsa@4.0.1";
          "browserify-sha3@0.0.1" = f "browserify-sha3" "0.0.1" y "3ff34a3006ef15c0fb3567e541b91a2340123d11" [
            s."js-sha3@^0.3.1"
          ];
          "browserify-sha3@^0.0.1" = s."browserify-sha3@0.0.1";
          "browserify-sign@4.0.0" = f "browserify-sign" "4.0.0" y "10773910c3c206d5420a46aad8694f820b85968f" [
            s."bn.js@^4.1.1"
            s."browserify-rsa@^4.0.0"
            s."create-hash@^1.1.0"
            s."create-hmac@^1.1.2"
            s."elliptic@^6.0.0"
            s."inherits@^2.0.1"
            s."parse-asn1@^5.0.0"
          ];
          "browserify-sign@^4.0.0" = s."browserify-sign@4.0.0";
          "browserify-zlib@0.1.4" = f "browserify-zlib" "0.1.4" y "bb35f8a519f600e0fa6b8485241c979d0141fb2d" [
            s."pako@~0.2.0"
          ];
          "browserify-zlib@^0.1.4" = s."browserify-zlib@0.1.4";
          "browserslist@1.5.2" = f "browserslist" "1.5.2" y "1c82fde0ee8693e6d15c49b7bff209dc06298c56" [
            s."caniuse-db@^1.0.30000604"
          ];
          "browserslist@^1.0.1" = s."browserslist@1.5.2";
          "browserslist@^1.4.0" = s."browserslist@1.5.2";
          "browserslist@^1.5.2" = s."browserslist@1.5.2";
          "browserslist@~1.5.1" = s."browserslist@1.5.2";
          "bs58@4.0.1" = f "bs58" "4.0.1" y "be161e76c354f6f788ae4071f63f34e8c4f0a42a" [
            s."base-x@^3.0.2"
          ];
          "buffer-crc32@0.2.13" = f "buffer-crc32" "0.2.13" y "0d333e3f00eac50aa1454abd30ef8c2a5d9a7242" [];
          "buffer-crc32@^0.2.1" = s."buffer-crc32@0.2.13";
          "buffer-crc32@~0.2.3" = s."buffer-crc32@0.2.13";
          "buffer-shims@1.0.0" = f "buffer-shims" "1.0.0" y "9978ce317388c649ad8793028c3477ef044a8b51" [];
          "buffer-shims@^1.0.0" = s."buffer-shims@1.0.0";
          "buffer-to-arraybuffer@0.0.5" = f "buffer-to-arraybuffer" "0.0.5" y "6064a40fa76eb43c723aba9ef8f6e1216d10511a" [];
          "buffer-to-arraybuffer@^0.0.5" = s."buffer-to-arraybuffer@0.0.5";
          "buffer-xor@1.0.3" = f "buffer-xor" "1.0.3" y "26e61ed1422fb70dd42e6e36729ed51d855fe8d9" [];
          "buffer-xor@^1.0.2" = s."buffer-xor@1.0.3";
          "buffer@3.6.0" = f "buffer" "3.6.0" y "a72c936f77b96bf52f5f7e7b467180628551defb" [
            s."base64-js@0.0.8"
            s."ieee754@^1.1.4"
            s."isarray@^1.0.0"
          ];
          "buffer@4.9.1" = f "buffer" "4.9.1" y "6d1bb601b07a4efced97094132093027c95bc298" [
            s."base64-js@^1.0.2"
            s."ieee754@^1.1.4"
            s."isarray@^1.0.0"
          ];
          "buffer@5.0.8" = f "buffer" "5.0.8" y "84daa52e7cf2fa8ce4195bc5cf0f7809e0930b24" [
            s."base64-js@^1.0.2"
            s."ieee754@^1.1.4"
          ];
          "buffer@^3.0.1" = s."buffer@3.6.0";
          "buffer@^4.3.0" = s."buffer@4.9.1";
          "buffer@^4.9.0" = s."buffer@4.9.1";
          "buffer@^5.0.5" = s."buffer@5.0.8";
          "buffers@0.1.1" = f "buffers" "0.1.1" y "b24579c3bed4d6d396aeee6d9a8ae7f5482ab7bb" [];
          "buffers@~0.1.1" = s."buffers@0.1.1";
          "builtin-modules@1.1.1" = f "builtin-modules" "1.1.1" y "270f076c5a72c02f5b65a47df94c5fe3a278892f" [];
          "builtin-modules@^1.0.0" = s."builtin-modules@1.1.1";
          "builtin-modules@^1.1.1" = s."builtin-modules@1.1.1";
          "builtin-status-codes@3.0.0" = f "builtin-status-codes" "3.0.0" y "85982878e21b98e1c66425e03d0174788f569ee8" [];
          "builtin-status-codes@^3.0.0" = s."builtin-status-codes@3.0.0";
          "bytes@3.0.0" = f "bytes" "3.0.0" y "d32815404d689699f85a4ea4fa8755dd13a96048" [];
          "caller-path@0.1.0" = f "caller-path" "0.1.0" y "94085ef63581ecd3daa92444a8fe94e82577751f" [
            s."callsites@^0.2.0"
          ];
          "caller-path@^0.1.0" = s."caller-path@0.1.0";
          "callsites@0.2.0" = f "callsites" "0.2.0" y "afab96262910a7f33c19a5775825c69f34e350ca" [];
          "callsites@^0.2.0" = s."callsites@0.2.0";
          "camel-case@3.0.0" = f "camel-case" "3.0.0" y "ca3c3688a4e9cf3a4cda777dc4dcbc713249cf73" [
            s."no-case@^2.2.0"
            s."upper-case@^1.1.1"
          ];
          "camel-case@3.0.x" = s."camel-case@3.0.0";
          "camelcase-keys@2.1.0" = f "camelcase-keys" "2.1.0" y "308beeaffdf28119051efa1d932213c91b8f92e7" [
            s."camelcase@^2.0.0"
            s."map-obj@^1.0.0"
          ];
          "camelcase-keys@^2.0.0" = s."camelcase-keys@2.1.0";
          "camelcase@1.2.1" = f "camelcase" "1.2.1" y "9bb5304d2e0b56698b2c758b08a3eaa9daa58a39" [];
          "camelcase@2.1.1" = f "camelcase" "2.1.1" y "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f" [];
          "camelcase@3.0.0" = f "camelcase" "3.0.0" y "32fc4b9fcdaf845fcdf7e73bb97cac2261f0ab0a" [];
          "camelcase@^1.0.2" = s."camelcase@1.2.1";
          "camelcase@^2.0.0" = s."camelcase@2.1.1";
          "camelcase@^2.0.1" = s."camelcase@2.1.1";
          "camelcase@^3.0.0" = s."camelcase@3.0.0";
          "camelize@1.0.0" = f "camelize" "1.0.0" y "164a5483e630fa4321e5af07020e531831b2609b" [];
          "camelize@^1.0.0" = s."camelize@1.0.0";
          "caniuse-api@1.5.2" = f "caniuse-api" "1.5.2" y "8f393c682f661c0a997b77bba6e826483fb3600e" [
            s."browserslist@^1.0.1"
            s."caniuse-db@^1.0.30000346"
            s."lodash.memoize@^4.1.0"
            s."lodash.uniq@^4.3.0"
            s."shelljs@^0.7.0"
          ];
          "caniuse-api@^1.5.2" = s."caniuse-api@1.5.2";
          "caniuse-db@1.0.30000604" = f "caniuse-db" "1.0.30000604" y "bc139270a777564d19c0aadcd832b491d093bda5" [];
          "caniuse-db@^1.0.30000346" = s."caniuse-db@1.0.30000604";
          "caniuse-db@^1.0.30000604" = s."caniuse-db@1.0.30000604";
          "case-sensitive-paths-webpack-plugin@1.1.4" = f "case-sensitive-paths-webpack-plugin" "1.1.4" y "8aaedd5699a86cac2b34cf40d9b4145758978472" [];
          "case-sensitive-paths-webpack-plugin@^1.1.2" = s."case-sensitive-paths-webpack-plugin@1.1.4";
          "caseless@0.11.0" = f "caseless" "0.11.0" y "715b96ea9841593cc33067923f5ec60ebda4f7d7" [];
          "caseless@0.12.0" = f "caseless" "0.12.0" y "1b681c21ff84033c826543090689420d187151dc" [];
          "caseless@0.9.0" = f "caseless" "0.9.0" y "b7b65ce6bf1413886539cfd533f0b30effa9cf88" [];
          "caseless@~0.11.0" = s."caseless@0.11.0";
          "caseless@~0.12.0" = s."caseless@0.12.0";
          "caseless@~0.9.0" = s."caseless@0.9.0";
          "center-align@0.1.3" = f "center-align" "0.1.3" y "aa0d32629b6ee972200411cbd4461c907bc2b7ad" [
            s."align-text@^0.1.3"
            s."lazy-cache@^1.0.3"
          ];
          "center-align@^0.1.1" = s."center-align@0.1.3";
          "chai@4.1.2" = f "chai" "4.1.2" y "0f64584ba642f0f2ace2806279f4f06ca23ad73c" [
            s."assertion-error@^1.0.1"
            s."check-error@^1.0.1"
            s."deep-eql@^3.0.0"
            s."get-func-name@^2.0.0"
            s."pathval@^1.0.0"
            s."type-detect@^4.0.0"
          ];
          "chain-function@1.0.0" = f "chain-function" "1.0.0" y "0d4ab37e7e18ead0bdc47b920764118ce58733dc" [];
          "chain-function@^1.0.0" = s."chain-function@1.0.0";
          "chainsaw@0.1.0" = f "chainsaw" "0.1.0" y "5eab50b28afe58074d0d58291388828b5e5fbc98" [
            s."traverse@>=0.3.0 <0.4"
          ];
          "chainsaw@~0.1.0" = s."chainsaw@0.1.0";
          "chalk@0.5.1" = f "chalk" "0.5.1" y "663b3a648b68b55d04690d49167aa837858f2174" [
            s."ansi-styles@^1.1.0"
            s."escape-string-regexp@^1.0.0"
            s."has-ansi@^0.1.0"
            s."strip-ansi@^0.3.0"
            s."supports-color@^0.2.0"
          ];
          "chalk@1.1.3" = f "chalk" "1.1.3" y "a8115c55e4a702fe4d150abd3872822a7e09fc98" [
            s."ansi-styles@^2.2.1"
            s."escape-string-regexp@^1.0.2"
            s."has-ansi@^2.0.0"
            s."strip-ansi@^3.0.0"
            s."supports-color@^2.0.0"
          ];
          "chalk@2.3.1" = f "chalk" "2.3.1" y "523fe2678aec7b04e8041909292fe8b17059b796" [
            s."ansi-styles@^3.2.0"
            s."escape-string-regexp@^1.0.5"
            s."supports-color@^5.2.0"
          ];
          "chalk@^1.0.0" = s."chalk@1.1.3";
          "chalk@^1.1.0" = s."chalk@1.1.3";
          "chalk@^1.1.1" = s."chalk@1.1.3";
          "chalk@^1.1.3" = s."chalk@1.1.3";
          "chalk@^2.0.0" = s."chalk@2.3.1";
          "chalk@^2.0.1" = s."chalk@2.3.1";
          "chalk@^2.1.0" = s."chalk@2.3.1";
          "chardet@0.4.2" = f "chardet" "0.4.2" y "b5473b33dc97c424e5d98dc87d55d4d8a29c8bf2" [];
          "chardet@^0.4.0" = s."chardet@0.4.2";
          "check-error@1.0.2" = f "check-error" "1.0.2" y "574d312edd88bb5dd8912e9286dd6c0aed4aac82" [];
          "check-error@^1.0.1" = s."check-error@1.0.2";
          "chokidar@1.6.1" = f "chokidar" "1.6.1" y "2f4447ab5e96e50fb3d789fd90d4c72e0e4c70c2" [
            s."anymatch@^1.3.0"
            s."async-each@^1.0.0"
            s."glob-parent@^2.0.0"
            s."inherits@^2.0.1"
            s."is-binary-path@^1.0.0"
            s."is-glob@^2.0.0"
            s."path-is-absolute@^1.0.0"
            s."readdirp@^2.0.0"
            s."fsevents@^1.0.0"
          ];
          "chokidar@1.7.0" = f "chokidar" "1.7.0" y "798e689778151c8076b4b360e5edd28cda2bb468" [
            s."anymatch@^1.3.0"
            s."async-each@^1.0.0"
            s."glob-parent@^2.0.0"
            s."inherits@^2.0.1"
            s."is-binary-path@^1.0.0"
            s."is-glob@^2.0.0"
            s."path-is-absolute@^1.0.0"
            s."readdirp@^2.0.0"
            s."fsevents@^1.0.0"
          ];
          "chokidar@^1.0.0" = s."chokidar@1.6.1";
          "chokidar@^1.4.3" = s."chokidar@1.6.1";
          "chokidar@^1.6.1" = s."chokidar@1.7.0";
          "chromium-pickle-js@0.2.0" = f "chromium-pickle-js" "0.2.0" y "04a106672c18b085ab774d983dfa3ea138f22205" [];
          "chromium-pickle-js@^0.2.0" = s."chromium-pickle-js@0.2.0";
          "cipher-base@1.0.3" = f "cipher-base" "1.0.3" y "eeabf194419ce900da3018c207d212f2a6df0a07" [
            s."inherits@^2.0.1"
          ];
          "cipher-base@1.0.4" = f "cipher-base" "1.0.4" y "8760e4ecc272f4c363532f926d874aae2c1397de" [
            s."inherits@^2.0.1"
            s."safe-buffer@^5.0.1"
          ];
          "cipher-base@^1.0.0" = s."cipher-base@1.0.3";
          "cipher-base@^1.0.1" = s."cipher-base@1.0.3";
          "cipher-base@^1.0.3" = s."cipher-base@1.0.4";
          "circular-json@0.3.1" = f "circular-json" "0.3.1" y "be8b36aefccde8b3ca7aa2d6afc07a37242c0d2d" [];
          "circular-json@^0.3.1" = s."circular-json@0.3.1";
          "clap@1.1.2" = f "clap" "1.1.2" y "316545bf22229225a2cecaa6824cd2f56a9709ed" [
            s."chalk@^1.1.3"
          ];
          "clap@^1.0.9" = s."clap@1.1.2";
          "classnames@2.2.5" = f "classnames" "2.2.5" y "fb3801d453467649ef3603c7d61a02bd129bde6d" [];
          "classnames@^2.2.1" = s."classnames@2.2.5";
          "classnames@^2.2.3" = s."classnames@2.2.5";
          "clean-css@4.1.9" = f "clean-css" "4.1.9" y "35cee8ae7687a49b98034f70de00c4edd3826301" [
            s."source-map@0.5.x"
          ];
          "clean-css@4.1.x" = s."clean-css@4.1.9";
          "cli-cursor@1.0.2" = f "cli-cursor" "1.0.2" y "64da3f7d56a54412e59794bd62dc35295e8f2987" [
            s."restore-cursor@^1.0.1"
          ];
          "cli-cursor@2.1.0" = f "cli-cursor" "2.1.0" y "b35dac376479facc3e94747d41d0d0f5238ffcb5" [
            s."restore-cursor@^2.0.0"
          ];
          "cli-cursor@^1.0.1" = s."cli-cursor@1.0.2";
          "cli-cursor@^2.1.0" = s."cli-cursor@2.1.0";
          "cli-spinners@1.1.0" = f "cli-spinners" "1.1.0" y "f1847b168844d917a671eb9d147e3df497c90d06" [];
          "cli-spinners@^1.0.1" = s."cli-spinners@1.1.0";
          "cli-table@0.3.1" = f "cli-table" "0.3.1" y "f53b05266a8b1a0b934b3d0821e6e2dc5914ae23" [
            s."colors@1.0.3"
          ];
          "cli-table@^0.3.1" = s."cli-table@0.3.1";
          "cli-width@2.1.0" = f "cli-width" "2.1.0" y "b234ca209b29ef66fc518d9b98d5847b00edf00a" [];
          "cli-width@^2.0.0" = s."cli-width@2.1.0";
          "cliui@2.1.0" = f "cliui" "2.1.0" y "4b475760ff80264c762c3a1719032e91c7fea0d1" [
            s."center-align@^0.1.1"
            s."right-align@^0.1.1"
            s."wordwrap@0.0.2"
          ];
          "cliui@3.2.0" = f "cliui" "3.2.0" y "120601537a916d29940f934da3b48d585a39213d" [
            s."string-width@^1.0.1"
            s."strip-ansi@^3.0.1"
            s."wrap-ansi@^2.0.0"
          ];
          "cliui@^2.1.0" = s."cliui@2.1.0";
          "cliui@^3.0.3" = s."cliui@3.2.0";
          "cliui@^3.2.0" = s."cliui@3.2.0";
          "clone-stats@0.0.1" = f "clone-stats" "0.0.1" y "b88f94a82cf38b8791d58046ea4029ad88ca99d1" [];
          "clone-stats@^0.0.1" = s."clone-stats@0.0.1";
          "clone@1.0.2" = f "clone" "1.0.2" y "260b7a99ebb1edfe247538175f783243cb19d149" [];
          "clone@^1.0.0" = s."clone@1.0.2";
          "clone@^1.0.2" = s."clone@1.0.2";
          "co@4.6.0" = f "co" "4.6.0" y "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184" [];
          "co@^4.6.0" = s."co@4.6.0";
          "coa@1.0.1" = f "coa" "1.0.1" y "7f959346cfc8719e3f7233cd6852854a7c67d8a3" [
            s."q@^1.1.2"
          ];
          "coa@~1.0.1" = s."coa@1.0.1";
          "code-point-at@1.1.0" = f "code-point-at" "1.1.0" y "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77" [];
          "code-point-at@^1.0.0" = s."code-point-at@1.1.0";
          "color-convert@1.8.2" = f "color-convert" "1.8.2" y "be868184d7c8631766d54e7078e2672d7c7e3339" [
            s."color-name@^1.1.1"
          ];
          "color-convert@1.9.1" = f "color-convert" "1.9.1" y "c1261107aeb2f294ebffec9ed9ecad529a6097ed" [
            s."color-name@^1.1.1"
          ];
          "color-convert@^1.3.0" = s."color-convert@1.8.2";
          "color-convert@^1.9.0" = s."color-convert@1.9.1";
          "color-name@1.1.1" = f "color-name" "1.1.1" y "4b1415304cf50028ea81643643bd82ea05803689" [];
          "color-name@^1.0.0" = s."color-name@1.1.1";
          "color-name@^1.1.1" = s."color-name@1.1.1";
          "color-string@0.3.0" = f "color-string" "0.3.0" y "27d46fb67025c5c2fa25993bfbf579e47841b991" [
            s."color-name@^1.0.0"
          ];
          "color-string@^0.3.0" = s."color-string@0.3.0";
          "color@0.11.4" = f "color" "0.11.4" y "6d7b5c74fb65e841cd48792ad1ed5e07b904d764" [
            s."clone@^1.0.2"
            s."color-convert@^1.3.0"
            s."color-string@^0.3.0"
          ];
          "color@^0.11.0" = s."color@0.11.4";
          "colormin@1.1.2" = f "colormin" "1.1.2" y "ea2f7420a72b96881a38aae59ec124a6f7298133" [
            s."color@^0.11.0"
            s."css-color-names@0.0.4"
            s."has@^1.0.1"
          ];
          "colormin@^1.0.5" = s."colormin@1.1.2";
          "colors@1.0.3" = f "colors" "1.0.3" y "0433f44d809680fdeb60ed260f1b0c262e82a40b" [];
          "colors@1.0.x" = s."colors@1.0.3";
          "colors@1.1.2" = f "colors" "1.1.2" y "168a4701756b6a7f51a12ce0c97bfa28c084ed63" [];
          "colors@^1.1.2" = s."colors@1.1.2";
          "colors@~1.1.2" = s."colors@1.1.2";
          "combined-stream@0.0.7" = f "combined-stream" "0.0.7" y "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f" [
            s."delayed-stream@0.0.5"
          ];
          "combined-stream@1.0.5" = f "combined-stream" "1.0.5" y "938370a57b4a51dea2c77c15d5c5fdf895164009" [
            s."delayed-stream@~1.0.0"
          ];
          "combined-stream@1.0.6" = f "combined-stream" "1.0.6" y "723e7df6e801ac5613113a7e445a9b69cb632818" [
            s."delayed-stream@~1.0.0"
          ];
          "combined-stream@^1.0.5" = s."combined-stream@1.0.5";
          "combined-stream@~0.0.4" = s."combined-stream@0.0.7";
          "combined-stream@~0.0.5" = s."combined-stream@0.0.7";
          "combined-stream@~1.0.5" = s."combined-stream@1.0.5";
          "commander@2.14.1" = f "commander" "2.14.1" y "2235123e37af8ca3c65df45b026dbd357b01b9aa" [];
          "commander@2.14.x" = s."commander@2.14.1";
          "commander@2.6.0" = f "commander" "2.6.0" y "9df7e52fb2a0cb0fb89058ee80c3104225f37e1d" [];
          "commander@2.8.1" = f "commander" "2.8.1" y "06be367febfda0c330aa1e2a072d3dc9762425d4" [
            s."graceful-readlink@>= 1.0.0"
          ];
          "commander@2.9.0" = f "commander" "2.9.0" y "9c99094176e12240cb22d6c5146098400fe0f7d4" [
            s."graceful-readlink@>= 1.0.0"
          ];
          "commander@^2.8.1" = s."commander@2.9.0";
          "commander@^2.9.0" = s."commander@2.9.0";
          "commander@~2.14.1" = s."commander@2.14.1";
          "commander@~2.8.1" = s."commander@2.8.1";
          "common-tags@0.1.1" = f "common-tags" "0.1.1" y "d893486ecc6df22cffe6c393c88c12f71e7e8871" [
            s."babel-runtime@^6.6.1"
          ];
          "common-tags@1.4.0" = f "common-tags" "1.4.0" y "1187be4f3d4cf0c0427d43f74eef1f73501614c0" [
            s."babel-runtime@^6.18.0"
          ];
          "common-tags@^1.3.1" = s."common-tags@1.4.0";
          "commondir@1.0.1" = f "commondir" "1.0.1" y "ddd800da0c66127393cca5950ea968a3aaf1253b" [];
          "commondir@^1.0.1" = s."commondir@1.0.1";
          "commonmark-react-renderer@4.3.4" = f "commonmark-react-renderer" "4.3.4" y "29f345357951ab36eb386d45ea6bc08006f3ff9b" [
            s."lodash.assign@^4.2.0"
            s."lodash.isplainobject@^4.0.6"
            s."pascalcase@^0.1.1"
            s."xss-filters@^1.2.6"
          ];
          "commonmark-react-renderer@^4.2.4" = s."commonmark-react-renderer@4.3.4";
          "commonmark@0.24.0" = f "commonmark" "0.24.0" y "b80de0182c546355643aa15db12bfb282368278f" [
            s."entities@~ 1.1.1"
            s."mdurl@~ 1.0.1"
            s."string.prototype.repeat@^0.2.0"
          ];
          "commonmark@^0.24.0" = s."commonmark@0.24.0";
          "compare-version@0.1.2" = f "compare-version" "0.1.2" y "0162ec2d9351f5ddd59a9202cba935366a725080" [];
          "compare-version@^0.1.2" = s."compare-version@0.1.2";
          "compress-commons@1.2.2" = f "compress-commons" "1.2.2" y "524a9f10903f3a813389b0225d27c48bb751890f" [
            s."buffer-crc32@^0.2.1"
            s."crc32-stream@^2.0.0"
            s."normalize-path@^2.0.0"
            s."readable-stream@^2.0.0"
          ];
          "compress-commons@^1.2.0" = s."compress-commons@1.2.2";
          "concat-map@0.0.1" = f "concat-map" "0.0.1" y "d8a96bd77fd68df7793a73036a3ba0d5405d477b" [];
          "concat-stream@1.5.0" = f "concat-stream" "1.5.0" y "53f7d43c51c5e43f81c8fdd03321c631be68d611" [
            s."inherits@~2.0.1"
            s."readable-stream@~2.0.0"
            s."typedarray@~0.0.5"
          ];
          "concat-stream@1.6.0" = f "concat-stream" "1.6.0" y "0aac662fd52be78964d5532f694784e70110acf7" [
            s."inherits@^2.0.3"
            s."readable-stream@^2.2.2"
            s."typedarray@^0.0.6"
          ];
          "concat-stream@^1.5.2" = s."concat-stream@1.6.0";
          "concurrently@3.4.0" = f "concurrently" "3.4.0" y "60662b3defde07375bae19aac0ab780ec748ba79" [
            s."chalk@0.5.1"
            s."commander@2.6.0"
            s."date-fns@^1.23.0"
            s."lodash@^4.5.1"
            s."rx@2.3.24"
            s."spawn-command@^0.0.2-1"
            s."supports-color@^3.2.3"
            s."tree-kill@^1.1.0"
          ];
          "conf@1.4.0" = f "conf" "1.4.0" y "1ea66c9d7a9b601674a5bb9d2b8dc3c726625e67" [
            s."dot-prop@^4.1.0"
            s."env-paths@^1.0.0"
            s."make-dir@^1.0.0"
            s."pkg-up@^2.0.0"
            s."write-file-atomic@^2.3.0"
          ];
          "conf@^1.3.0" = s."conf@1.4.0";
          "configstore@1.4.0" = f "configstore" "1.4.0" y "c35781d0501d268c25c54b8b17f6240e8a4fb021" [
            s."graceful-fs@^4.1.2"
            s."mkdirp@^0.5.0"
            s."object-assign@^4.0.1"
            s."os-tmpdir@^1.0.0"
            s."osenv@^0.1.0"
            s."uuid@^2.0.1"
            s."write-file-atomic@^1.1.2"
            s."xdg-basedir@^2.0.0"
          ];
          "configstore@2.1.0" = f "configstore" "2.1.0" y "737a3a7036e9886102aa6099e47bb33ab1aba1a1" [
            s."dot-prop@^3.0.0"
            s."graceful-fs@^4.1.2"
            s."mkdirp@^0.5.0"
            s."object-assign@^4.0.1"
            s."os-tmpdir@^1.0.0"
            s."osenv@^0.1.0"
            s."uuid@^2.0.1"
            s."write-file-atomic@^1.1.2"
            s."xdg-basedir@^2.0.0"
          ];
          "configstore@^1.0.0" = s."configstore@1.4.0";
          "configstore@^2.0.0" = s."configstore@2.1.0";
          "console-browserify@1.1.0" = f "console-browserify" "1.1.0" y "f0241c45730a9fc6323b206dbf38edc741d0bb10" [
            s."date-now@^0.1.4"
          ];
          "console-browserify@^1.1.0" = s."console-browserify@1.1.0";
          "console-control-strings@1.1.0" = f "console-control-strings" "1.1.0" y "3d7cf4464db6446ea644bf4b39507f9851008e8e" [];
          "console-control-strings@^1.0.0" = s."console-control-strings@1.1.0";
          "console-control-strings@~1.1.0" = s."console-control-strings@1.1.0";
          "constants-browserify@1.0.0" = f "constants-browserify" "1.0.0" y "c20b96d8c617748aaf1c16021760cd27fcb8cb75" [];
          "constants-browserify@^1.0.0" = s."constants-browserify@1.0.0";
          "contains-path@0.1.0" = f "contains-path" "0.1.0" y "fe8cf184ff6670b6baef01a9d4861a5cbec4120a" [];
          "contains-path@^0.1.0" = s."contains-path@0.1.0";
          "content-disposition@0.5.1" = f "content-disposition" "0.5.1" y "87476c6a67c8daa87e32e87616df883ba7fb071b" [];
          "content-disposition@0.5.2" = f "content-disposition" "0.5.2" y "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4" [];
          "content-type-parser@1.0.1" = f "content-type-parser" "1.0.1" y "c3e56988c53c65127fb46d4032a3a900246fdc94" [];
          "content-type-parser@^1.0.1" = s."content-type-parser@1.0.1";
          "content-type@1.0.2" = f "content-type" "1.0.2" y "b7d113aee7a8dd27bd21133c4dc2529df1721eed" [];
          "content-type@1.0.4" = f "content-type" "1.0.4" y "e138cc75e040c727b1966fe5e5f8c9aee256fe3b" [];
          "content-type@~1.0.2" = s."content-type@1.0.2";
          "content-type@~1.0.4" = s."content-type@1.0.4";
          "convert-source-map@1.3.0" = f "convert-source-map" "1.3.0" y "e9f3e9c6e2728efc2676696a70eb382f73106a67" [];
          "convert-source-map@1.5.1" = f "convert-source-map" "1.5.1" y "b8278097b9bc229365de5c62cf5fcaed8b5599e5" [];
          "convert-source-map@^1.1.0" = s."convert-source-map@1.3.0";
          "convert-source-map@^1.5.0" = s."convert-source-map@1.5.1";
          "cookie-signature@1.0.6" = f "cookie-signature" "1.0.6" y "e303a882b342cc3ee8ca513a79999734dab3ae2c" [];
          "cookie@0.3.1" = f "cookie" "0.3.1" y "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb" [];
          "copy-to-clipboard@3.0.8" = f "copy-to-clipboard" "3.0.8" y "f4e82f4a8830dce4666b7eb8ded0c9bcc313aba9" [
            s."toggle-selection@^1.0.3"
          ];
          "copy-to-clipboard@^3" = s."copy-to-clipboard@3.0.8";
          "core-js@1.2.7" = f "core-js" "1.2.7" y "652294c14651db28fa93bd2d5ff2983a4f08c636" [];
          "core-js@2.4.1" = f "core-js" "2.4.1" y "4de911e667b0eae9124e34254b53aea6fc618d3e" [];
          "core-js@2.5.3" = f "core-js" "2.5.3" y "8acc38345824f16d8365b7c9b4259168e8ed603e" [];
          "core-js@^1.0.0" = s."core-js@1.2.7";
          "core-js@^2.4.0" = s."core-js@2.4.1";
          "core-js@^2.5.0" = s."core-js@2.5.3";
          "core-util-is@1.0.2" = f "core-util-is" "1.0.2" y "b5fd54220aa2bc5ab57aab7140c940754503c1a7" [];
          "core-util-is@~1.0.0" = s."core-util-is@1.0.2";
          "cors@2.8.4" = f "cors" "2.8.4" y "2bd381f2eb201020105cd50ea59da63090694686" [
            s."object-assign@^4"
            s."vary@^1"
          ];
          "cors@^2.8.1" = s."cors@2.8.4";
          "cosmiconfig@2.1.1" = f "cosmiconfig" "2.1.1" y "817f2c2039347a1e9bf7d090c0923e53f749ca82" [
            s."js-yaml@^3.4.3"
            s."minimist@^1.2.0"
            s."object-assign@^4.1.0"
            s."os-homedir@^1.0.1"
            s."parse-json@^2.2.0"
            s."require-from-string@^1.1.0"
          ];
          "cosmiconfig@^2.1.0" = s."cosmiconfig@2.1.1";
          "cosmiconfig@^2.1.1" = s."cosmiconfig@2.1.1";
          "crc32-stream@2.0.0" = f "crc32-stream" "2.0.0" y "e3cdd3b4df3168dd74e3de3fbbcb7b297fe908f4" [
            s."crc@^3.4.4"
            s."readable-stream@^2.0.0"
          ];
          "crc32-stream@^2.0.0" = s."crc32-stream@2.0.0";
          "crc@3.5.0" = f "crc" "3.5.0" y "98b8ba7d489665ba3979f59b21381374101a1964" [];
          "crc@^3.4.4" = s."crc@3.5.0";
          "create-ecdh@4.0.0" = f "create-ecdh" "4.0.0" y "888c723596cdf7612f6498233eebd7a35301737d" [
            s."bn.js@^4.1.0"
            s."elliptic@^6.0.0"
          ];
          "create-ecdh@^4.0.0" = s."create-ecdh@4.0.0";
          "create-hash@1.1.2" = f "create-hash" "1.1.2" y "51210062d7bb7479f6c65bb41a92208b1d61abad" [
            s."cipher-base@^1.0.1"
            s."inherits@^2.0.1"
            s."ripemd160@^1.0.0"
            s."sha.js@^2.3.6"
          ];
          "create-hash@1.1.3" = f "create-hash" "1.1.3" y "606042ac8b9262750f483caddab0f5819172d8fd" [
            s."cipher-base@^1.0.1"
            s."inherits@^2.0.1"
            s."ripemd160@^2.0.0"
            s."sha.js@^2.4.0"
          ];
          "create-hash@^1.1.0" = s."create-hash@1.1.2";
          "create-hash@^1.1.1" = s."create-hash@1.1.2";
          "create-hash@^1.1.2" = s."create-hash@1.1.3";
          "create-hmac@1.1.4" = f "create-hmac" "1.1.4" y "d3fb4ba253eb8b3f56e39ea2fbcb8af747bd3170" [
            s."create-hash@^1.1.0"
            s."inherits@^2.0.1"
          ];
          "create-hmac@1.1.6" = f "create-hmac" "1.1.6" y "acb9e221a4e17bdb076e90657c42b93e3726cf06" [
            s."cipher-base@^1.0.3"
            s."create-hash@^1.1.0"
            s."inherits@^2.0.1"
            s."ripemd160@^2.0.0"
            s."safe-buffer@^5.0.1"
            s."sha.js@^2.4.8"
          ];
          "create-hmac@^1.1.0" = s."create-hmac@1.1.4";
          "create-hmac@^1.1.2" = s."create-hmac@1.1.4";
          "create-hmac@^1.1.4" = s."create-hmac@1.1.6";
          "cross-env@3.1.4" = f "cross-env" "3.1.4" y "56e8bca96f17908a6eb1bc2012ca126f92842130" [
            s."cross-spawn@^3.0.1"
          ];
          "cross-env@3.2.4" = f "cross-env" "3.2.4" y "9e0585f277864ed421ce756f81a980ff0d698aba" [
            s."cross-spawn@^5.1.0"
            s."is-windows@^1.0.0"
          ];
          "cross-env@^3.1.1" = s."cross-env@3.1.4";
          "cross-spawn@3.0.1" = f "cross-spawn" "3.0.1" y "1256037ecb9f0c5f79e3d6ef135e30770184b982" [
            s."lru-cache@^4.0.1"
            s."which@^1.2.9"
          ];
          "cross-spawn@5.1.0" = f "cross-spawn" "5.1.0" y "e8bd0efee58fcff6f8f94510a0a554bbfa235449" [
            s."lru-cache@^4.0.1"
            s."shebang-command@^1.2.0"
            s."which@^1.2.9"
          ];
          "cross-spawn@^3.0.0" = s."cross-spawn@3.0.1";
          "cross-spawn@^3.0.1" = s."cross-spawn@3.0.1";
          "cross-spawn@^5.1.0" = s."cross-spawn@5.1.0";
          "cross-unzip@0.0.2" = f "cross-unzip" "0.0.2" y "5183bc47a09559befcf98cc4657964999359372f" [];
          "cryptiles@2.0.5" = f "cryptiles" "2.0.5" y "3bdfecdc608147c1c67202fa291e7dca59eaa3b8" [
            s."boom@2.x.x"
          ];
          "cryptiles@2.x.x" = s."cryptiles@2.0.5";
          "cryptiles@3.1.2" = f "cryptiles" "3.1.2" y "a89fbb220f5ce25ec56e8c4aa8a4fd7b5b0d29fe" [
            s."boom@5.x.x"
          ];
          "cryptiles@3.x.x" = s."cryptiles@3.1.2";
          "crypto-browserify@3.11.0" = f "crypto-browserify" "3.11.0" y "3652a0906ab9b2a7e0c3ce66a408e957a2485522" [
            s."browserify-cipher@^1.0.0"
            s."browserify-sign@^4.0.0"
            s."create-ecdh@^4.0.0"
            s."create-hash@^1.1.0"
            s."create-hmac@^1.1.0"
            s."diffie-hellman@^5.0.0"
            s."inherits@^2.0.1"
            s."pbkdf2@^3.0.3"
            s."public-encrypt@^4.0.0"
            s."randombytes@^2.0.0"
          ];
          "crypto-browserify@3.12.0" = f "crypto-browserify" "3.12.0" y "396cf9f3137f03e4b8e532c58f698254e00f80ec" [
            s."browserify-cipher@^1.0.0"
            s."browserify-sign@^4.0.0"
            s."create-ecdh@^4.0.0"
            s."create-hash@^1.1.0"
            s."create-hmac@^1.1.0"
            s."diffie-hellman@^5.0.0"
            s."inherits@^2.0.1"
            s."pbkdf2@^3.0.3"
            s."public-encrypt@^4.0.0"
            s."randombytes@^2.0.0"
            s."randomfill@^1.0.3"
          ];
          "crypto-browserify@3.3.0" = f "crypto-browserify" "3.3.0" y "b9fc75bb4a0ed61dcf1cd5dae96eb30c9c3e506c" [
            s."browserify-aes@0.4.0"
            s."pbkdf2-compat@2.0.1"
            s."ripemd160@0.2.0"
            s."sha.js@2.2.6"
          ];
          "crypto-browserify@^3.11.0" = s."crypto-browserify@3.11.0";
          "crypto-browserify@^3.12.0" = s."crypto-browserify@3.12.0";
          "css-color-names@0.0.4" = f "css-color-names" "0.0.4" y "808adc2e79cf84738069b646cb20ec27beb629e0" [];
          "css-loader@0.25.0" = f "css-loader" "0.25.0" y "c3febc8ce28f4c83576b6b13707f47f90c390223" [
            s."babel-code-frame@^6.11.0"
            s."css-selector-tokenizer@^0.6.0"
            s."cssnano@>=2.6.1 <4"
            s."loader-utils@~0.2.2"
            s."lodash.camelcase@^3.0.1"
            s."object-assign@^4.0.1"
            s."postcss@^5.0.6"
            s."postcss-modules-extract-imports@^1.0.0"
            s."postcss-modules-local-by-default@^1.0.1"
            s."postcss-modules-scope@^1.0.0"
            s."postcss-modules-values@^1.1.0"
            s."source-list-map@^0.1.4"
          ];
          "css-loader@0.26.1" = f "css-loader" "0.26.1" y "2ba7f20131b93597496b3e9bb500785a49cd29ea" [
            s."babel-code-frame@^6.11.0"
            s."css-selector-tokenizer@^0.7.0"
            s."cssnano@>=2.6.1 <4"
            s."loader-utils@~0.2.2"
            s."lodash.camelcase@^4.3.0"
            s."object-assign@^4.0.1"
            s."postcss@^5.0.6"
            s."postcss-modules-extract-imports@^1.0.0"
            s."postcss-modules-local-by-default@^1.0.1"
            s."postcss-modules-scope@^1.0.0"
            s."postcss-modules-values@^1.1.0"
            s."source-list-map@^0.1.4"
          ];
          "css-loader@^0.26.1" = s."css-loader@0.26.1";
          "css-modules-loader-core@1.0.1" = f "css-modules-loader-core" "1.0.1" y "94e3eec9bc8174df0f974641f3e0d0550497f694" [
            s."icss-replace-symbols@1.0.2"
            s."postcss@5.1.2"
            s."postcss-modules-extract-imports@1.0.0"
            s."postcss-modules-local-by-default@1.1.1"
            s."postcss-modules-scope@1.0.2"
            s."postcss-modules-values@1.2.2"
          ];
          "css-modules-loader-core@^1.0.1" = s."css-modules-loader-core@1.0.1";
          "css-modules-require-hook@4.0.6" = f "css-modules-require-hook" "4.0.6" y "70a03b0ca3784e36e5a1dc1aa82ba068d53248bf" [
            s."debug@^2.2.0"
            s."generic-names@^1.0.1"
            s."glob-to-regexp@^0.1.0"
            s."icss-replace-symbols@^1.0.2"
            s."lodash@^4.3.0"
            s."postcss@^5.0.19"
            s."postcss-modules-extract-imports@^1.0.0"
            s."postcss-modules-local-by-default@^1.0.1"
            s."postcss-modules-parser@^1.1.0"
            s."postcss-modules-scope@^1.0.0"
            s."postcss-modules-values@^1.1.1"
            s."seekout@^1.0.1"
          ];
          "css-parse@2.0.0" = f "css-parse" "2.0.0" y "a468ee667c16d81ccf05c58c38d2a97c780dbfd4" [
            s."css@^2.0.0"
          ];
          "css-parse@~2.0.0" = s."css-parse@2.0.0";
          "css-selector-tokenizer@0.6.0" = f "css-selector-tokenizer" "0.6.0" y "6445f582c7930d241dcc5007a43d6fcb8f073152" [
            s."cssesc@^0.1.0"
            s."fastparse@^1.1.1"
            s."regexpu-core@^1.0.0"
          ];
          "css-selector-tokenizer@0.7.0" = f "css-selector-tokenizer" "0.7.0" y "e6988474ae8c953477bf5e7efecfceccd9cf4c86" [
            s."cssesc@^0.1.0"
            s."fastparse@^1.1.1"
            s."regexpu-core@^1.0.0"
          ];
          "css-selector-tokenizer@^0.6.0" = s."css-selector-tokenizer@0.6.0";
          "css-selector-tokenizer@^0.7.0" = s."css-selector-tokenizer@0.7.0";
          "css-value@0.0.1" = f "css-value" "0.0.1" y "5efd6c2eea5ea1fd6b6ac57ec0427b18452424ea" [];
          "css-value@~0.0.1" = s."css-value@0.0.1";
          "css@2.2.1" = f "css" "2.2.1" y "73a4c81de85db664d4ee674f7d47085e3b2d55dc" [
            s."inherits@^2.0.1"
            s."source-map@^0.1.38"
            s."source-map-resolve@^0.3.0"
            s."urix@^0.1.0"
          ];
          "css@^2.0.0" = s."css@2.2.1";
          "cssesc@0.1.0" = f "cssesc" "0.1.0" y "c814903e45623371a0477b40109aaafbeeaddbb4" [];
          "cssesc@^0.1.0" = s."cssesc@0.1.0";
          "cssnano@3.10.0" = f "cssnano" "3.10.0" y "4f38f6cea2b9b17fa01490f23f1dc68ea65c1c38" [
            s."autoprefixer@^6.3.1"
            s."decamelize@^1.1.2"
            s."defined@^1.0.0"
            s."has@^1.0.1"
            s."object-assign@^4.0.1"
            s."postcss@^5.0.14"
            s."postcss-calc@^5.2.0"
            s."postcss-colormin@^2.1.8"
            s."postcss-convert-values@^2.3.4"
            s."postcss-discard-comments@^2.0.4"
            s."postcss-discard-duplicates@^2.0.1"
            s."postcss-discard-empty@^2.0.1"
            s."postcss-discard-overridden@^0.1.1"
            s."postcss-discard-unused@^2.2.1"
            s."postcss-filter-plugins@^2.0.0"
            s."postcss-merge-idents@^2.1.5"
            s."postcss-merge-longhand@^2.0.1"
            s."postcss-merge-rules@^2.0.3"
            s."postcss-minify-font-values@^1.0.2"
            s."postcss-minify-gradients@^1.0.1"
            s."postcss-minify-params@^1.0.4"
            s."postcss-minify-selectors@^2.0.4"
            s."postcss-normalize-charset@^1.1.0"
            s."postcss-normalize-url@^3.0.7"
            s."postcss-ordered-values@^2.1.0"
            s."postcss-reduce-idents@^2.2.2"
            s."postcss-reduce-initial@^1.0.0"
            s."postcss-reduce-transforms@^1.0.3"
            s."postcss-svgo@^2.1.1"
            s."postcss-unique-selectors@^2.0.2"
            s."postcss-value-parser@^3.2.3"
            s."postcss-zindex@^2.0.1"
          ];
          "cssnano@>=2.6.1 <4" = s."cssnano@3.10.0";
          "csso@2.2.1" = f "csso" "2.2.1" y "51fbb5347e50e81e6ed51668a48490ae6fe2afe2" [
            s."clap@^1.0.9"
            s."source-map@^0.5.3"
          ];
          "csso@~2.2.1" = s."csso@2.2.1";
          "cssom@0.3.1" = f "cssom" "0.3.1" y "c9e37ef2490e64f6d1baa10fda852257082c25d3" [];
          "cssom@0.3.x" = s."cssom@0.3.1";
          "cssom@>= 0.3.0 < 0.4.0" = s."cssom@0.3.1";
          "cssstyle@0.2.37" = f "cssstyle" "0.2.37" y "541097234cb2513c83ceed3acddc27ff27987d54" [
            s."cssom@0.3.x"
          ];
          "cssstyle@>= 0.2.36 < 0.3.0" = s."cssstyle@0.2.37";
          "ctype@0.5.3" = f "ctype" "0.5.3" y "82c18c2461f74114ef16c135224ad0b9144ca12f" [];
          "cucumber-expressions@5.0.13" = f "cucumber-expressions" "5.0.13" y "f174597dae6d2f0121294ac2ea65443249cf1587" [
            s."becke-ch--regex--s0-0-v1--base--pl--lib@^1.2.0"
          ];
          "cucumber-expressions@^5.0.0" = s."cucumber-expressions@5.0.13";
          "cucumber-tag-expressions@1.1.1" = f "cucumber-tag-expressions" "1.1.1" y "7f5c7b70009bc2b666591bfe64854578bedee85a" [];
          "cucumber-tag-expressions@^1.0.0" = s."cucumber-tag-expressions@1.1.1";
          "cucumber@3.1.0" = f "cucumber" "3.1.0" y "13886bce87e9018ecb57999bb00c03a1bfa58d5d" [
            s."assertion-error-formatter@^2.0.0"
            s."babel-runtime@^6.11.6"
            s."bluebird@^3.4.1"
            s."cli-table@^0.3.1"
            s."colors@^1.1.2"
            s."commander@^2.9.0"
            s."cucumber-expressions@^5.0.0"
            s."cucumber-tag-expressions@^1.0.0"
            s."duration@^0.2.0"
            s."escape-string-regexp@^1.0.5"
            s."figures@2.0.0"
            s."gherkin@^5.0.0"
            s."glob@^7.0.0"
            s."indent-string@^3.1.0"
            s."is-generator@^1.0.2"
            s."is-stream@^1.1.0"
            s."lodash@^4.0.0"
            s."mz@^2.4.0"
            s."progress@^2.0.0"
            s."resolve@^1.3.3"
            s."stack-chain@^2.0.0"
            s."stacktrace-js@^2.0.0"
            s."string-argv@0.0.2"
            s."title-case@^2.1.1"
            s."util-arity@^1.0.2"
            s."verror@^1.9.0"
          ];
          "cuint@0.2.2" = f "cuint" "0.2.2" y "408086d409550c2631155619e9fa7bcadc3b991b" [];
          "cuint@^0.2.1" = s."cuint@0.2.2";
          "currently-unhandled@0.4.1" = f "currently-unhandled" "0.4.1" y "988df33feab191ef799a61369dd76c17adf957ea" [
            s."array-find-index@^1.0.1"
          ];
          "currently-unhandled@^0.4.1" = s."currently-unhandled@0.4.1";
          "cycle@1.0.3" = f "cycle" "1.0.3" y "21e80b2be8580f98b468f379430662b046c34ad2" [];
          "cycle@1.0.x" = s."cycle@1.0.3";
          "d3-array@1" = s."d3-array@1.0.2";
          "d3-array@1.0.2" = f "d3-array" "1.0.2" y "174237bf356a852fadd6af87743d928631de7655" [];
          "d3-collection@1" = s."d3-collection@1.0.2";
          "d3-collection@1.0.2" = f "d3-collection" "1.0.2" y "df5acb5400443e9eabe9c1379896c67e52426b39" [];
          "d3-color@1" = s."d3-color@1.0.2";
          "d3-color@1.0.2" = f "d3-color" "1.0.2" y "83cb4b3a9474e40795f009d97e97a15649830bbc" [];
          "d3-format@1" = s."d3-format@1.0.2";
          "d3-format@1.0.2" = f "d3-format" "1.0.2" y "138618320b4bbeb43b5c0ff30519079fbbd7375e" [];
          "d3-interpolate@1" = s."d3-interpolate@1.1.2";
          "d3-interpolate@1.1.2" = f "d3-interpolate" "1.1.2" y "b52e6927a04fe1fe2a4cffc139e5389ed3e5e790" [
            s."d3-color@1"
          ];
          "d3-interpolate@1.1.6" = f "d3-interpolate" "1.1.6" y "2cf395ae2381804df08aa1bf766b7f97b5f68fb6" [
            s."d3-color@1"
          ];
          "d3-interpolate@^1.1.5" = s."d3-interpolate@1.1.6";
          "d3-path@1" = s."d3-path@1.0.3";
          "d3-path@1.0.3" = f "d3-path" "1.0.3" y "60103d0dea9a6cd6ca58de86c6d56724002d3fde" [];
          "d3-scale@1.0.4" = f "d3-scale" "1.0.4" y "50e28bf6a193b706745528515ed9b3d44205a033" [
            s."d3-array@1"
            s."d3-collection@1"
            s."d3-color@1"
            s."d3-format@1"
            s."d3-interpolate@1"
            s."d3-time@1"
            s."d3-time-format@2"
          ];
          "d3-shape@1.0.4" = f "d3-shape" "1.0.4" y "145ee100ccbec42f8e3f1996cd05c786f79fe1c6" [
            s."d3-path@1"
          ];
          "d3-time-format@2" = s."d3-time-format@2.0.3";
          "d3-time-format@2.0.3" = f "d3-time-format" "2.0.3" y "3241569b74ddc9c42e0689c0e8a903579fd6280a" [
            s."d3-time@1"
          ];
          "d3-time@1" = s."d3-time@1.0.4";
          "d3-time@1.0.4" = f "d3-time" "1.0.4" y "2ceba09a76b7450c992a1ded4e10fc6195e69649" [];
          "d@0.1.1" = f "d" "0.1.1" y "da184c535d18d8ee7ba2aa229b914009fae11309" [];
          "d@^0.1.1" = s."d@0.1.1";
          "d@~0.1.1" = s."d@0.1.1";
          "damerau-levenshtein@1.0.3" = f "damerau-levenshtein" "1.0.3" y "ae4f4ce0b62acae10ff63a01bb08f652f5213af2" [];
          "damerau-levenshtein@^1.0.0" = s."damerau-levenshtein@1.0.3";
          "dashdash@1.14.1" = f "dashdash" "1.14.1" y "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0" [
            s."assert-plus@^1.0.0"
          ];
          "dashdash@^1.12.0" = s."dashdash@1.14.1";
          "date-fns@1.29.0" = f "date-fns" "1.29.0" y "12e609cdcb935127311d04d33334e2960a2a54e6" [];
          "date-fns@^1.23.0" = s."date-fns@1.29.0";
          "date-now@0.1.4" = f "date-now" "0.1.4" y "eaf439fd4d4848ad74e5cc7dbef200672b9e345b" [];
          "date-now@^0.1.4" = s."date-now@0.1.4";
          "dateformat@2.0.0" = f "dateformat" "2.0.0" y "2743e3abb5c3fc2462e527dca445e04e9f4dee17" [];
          "dateformat@^2.0.0" = s."dateformat@2.0.0";
          "debug@0.7.4" = f "debug" "0.7.4" y "06e1ea8082c2cb14e39806e22e2f6f757f92af39" [];
          "debug@2.2.0" = f "debug" "2.2.0" y "f87057e995b1a1f6ae6a4960664137bc56f039da" [
            s."ms@0.7.1"
          ];
          "debug@2.6.0" = f "debug" "2.6.0" y "bc596bcabe7617f11d9fa15361eded5608b8499b" [
            s."ms@0.7.2"
          ];
          "debug@2.6.1" = f "debug" "2.6.1" y "79855090ba2c4e3115cc7d8769491d58f0491351" [
            s."ms@0.7.2"
          ];
          "debug@2.6.9" = f "debug" "2.6.9" y "5d128515df134ff327e90a4c93f4e077a536341f" [
            s."ms@2.0.0"
          ];
          "debug@3.1.0" = f "debug" "3.1.0" y "5bb5a0672628b64149566ba16819e61518c67261" [
            s."ms@2.0.0"
          ];
          "debug@^2.1.0" = s."debug@2.6.0";
          "debug@^2.1.1" = s."debug@2.6.0";
          "debug@^2.1.3" = s."debug@2.6.0";
          "debug@^2.2.0" = s."debug@2.6.0";
          "debug@^2.3.2" = s."debug@2.6.0";
          "debug@^2.5.1" = s."debug@2.6.0";
          "debug@^2.6.3" = s."debug@2.6.9";
          "debug@^2.6.8" = s."debug@2.6.9";
          "debug@^3.0.0" = s."debug@3.1.0";
          "debug@~2.2.0" = s."debug@2.2.0";
          "decamelize@1.2.0" = f "decamelize" "1.2.0" y "f6534d15148269b20352e7bee26f501f9a191290" [];
          "decamelize@^1.0.0" = s."decamelize@1.2.0";
          "decamelize@^1.1.1" = s."decamelize@1.2.0";
          "decamelize@^1.1.2" = s."decamelize@1.2.0";
          "decode-uri-component@0.2.0" = f "decode-uri-component" "0.2.0" y "eb3913333458775cb84cd1a1fae062106bb87545" [];
          "decode-uri-component@^0.2.0" = s."decode-uri-component@0.2.0";
          "decompress-response@3.3.0" = f "decompress-response" "3.3.0" y "80a4dd323748384bfa248083622aedec982adff3" [
            s."mimic-response@^1.0.0"
          ];
          "decompress-response@^3.2.0" = s."decompress-response@3.3.0";
          "decompress-response@^3.3.0" = s."decompress-response@3.3.0";
          "decompress-tar@4.1.1" = f "decompress-tar" "4.1.1" y "718cbd3fcb16209716e70a26b84e7ba4592e5af1" [
            s."file-type@^5.2.0"
            s."is-stream@^1.1.0"
            s."tar-stream@^1.5.2"
          ];
          "decompress-tar@^4.0.0" = s."decompress-tar@4.1.1";
          "decompress-tar@^4.1.0" = s."decompress-tar@4.1.1";
          "decompress-tar@^4.1.1" = s."decompress-tar@4.1.1";
          "decompress-tarbz2@4.1.1" = f "decompress-tarbz2" "4.1.1" y "3082a5b880ea4043816349f378b56c516be1a39b" [
            s."decompress-tar@^4.1.0"
            s."file-type@^6.1.0"
            s."is-stream@^1.1.0"
            s."seek-bzip@^1.0.5"
            s."unbzip2-stream@^1.0.9"
          ];
          "decompress-tarbz2@^4.0.0" = s."decompress-tarbz2@4.1.1";
          "decompress-targz@4.1.1" = f "decompress-targz" "4.1.1" y "c09bc35c4d11f3de09f2d2da53e9de23e7ce1eee" [
            s."decompress-tar@^4.1.1"
            s."file-type@^5.2.0"
            s."is-stream@^1.1.0"
          ];
          "decompress-targz@^4.0.0" = s."decompress-targz@4.1.1";
          "decompress-unzip@4.0.1" = f "decompress-unzip" "4.0.1" y "deaaccdfd14aeaf85578f733ae8210f9b4848f69" [
            s."file-type@^3.8.0"
            s."get-stream@^2.2.0"
            s."pify@^2.3.0"
            s."yauzl@^2.4.2"
          ];
          "decompress-unzip@^4.0.1" = s."decompress-unzip@4.0.1";
          "decompress-zip@0.3.0" = f "decompress-zip" "0.3.0" y "ae3bcb7e34c65879adfe77e19c30f86602b4bdb0" [
            s."binary@^0.3.0"
            s."graceful-fs@^4.1.3"
            s."mkpath@^0.1.0"
            s."nopt@^3.0.1"
            s."q@^1.1.2"
            s."readable-stream@^1.1.8"
            s."touch@0.0.3"
          ];
          "decompress@4.2.0" = f "decompress" "4.2.0" y "7aedd85427e5a92dacfe55674a7c505e96d01f9d" [
            s."decompress-tar@^4.0.0"
            s."decompress-tarbz2@^4.0.0"
            s."decompress-targz@^4.0.0"
            s."decompress-unzip@^4.0.1"
            s."graceful-fs@^4.1.10"
            s."make-dir@^1.0.0"
            s."pify@^2.3.0"
            s."strip-dirs@^2.0.0"
          ];
          "decompress@^4.0.0" = s."decompress@4.2.0";
          "deep-eql@3.0.1" = f "deep-eql" "3.0.1" y "dfc9404400ad1c8fe023e7da1df1c147c4b444df" [
            s."type-detect@^4.0.0"
          ];
          "deep-eql@^3.0.0" = s."deep-eql@3.0.1";
          "deep-equal@1.0.1" = f "deep-equal" "1.0.1" y "f5d260292b660e084eff4cdbc9f08ad3247448b5" [];
          "deep-equal@^1.0.1" = s."deep-equal@1.0.1";
          "deep-extend@0.4.1" = f "deep-extend" "0.4.1" y "efe4113d08085f4e6f9687759810f807469e2253" [];
          "deep-extend@~0.4.0" = s."deep-extend@0.4.1";
          "deep-is@0.1.3" = f "deep-is" "0.1.3" y "b369d6fb5dbc13eecf524f91b070feedc357cf34" [];
          "deep-is@~0.1.3" = s."deep-is@0.1.3";
          "deepmerge@2.0.1" = f "deepmerge" "2.0.1" y "25c1c24f110fb914f80001b925264dd77f3f4312" [];
          "deepmerge@~2.0.1" = s."deepmerge@2.0.1";
          "default-browser-id@1.0.4" = f "default-browser-id" "1.0.4" y "e59d09a5d157b828b876c26816e61c3d2a2c203a" [
            s."bplist-parser@^0.1.0"
            s."meow@^3.1.0"
            s."untildify@^2.0.0"
          ];
          "default-browser-id@^1.0.4" = s."default-browser-id@1.0.4";
          "define-properties@1.1.2" = f "define-properties" "1.1.2" y "83a73f2fea569898fb737193c8f873caf6d45c94" [
            s."foreach@^2.0.5"
            s."object-keys@^1.0.8"
          ];
          "define-properties@^1.1.2" = s."define-properties@1.1.2";
          "defined@1.0.0" = f "defined" "1.0.0" y "c98d9bcef75674188e110969151199e39b1fa693" [];
          "defined@^1.0.0" = s."defined@1.0.0";
          "del@2.2.2" = f "del" "2.2.2" y "c12c981d067846c84bcaf862cff930d907ffd1a8" [
            s."globby@^5.0.0"
            s."is-path-cwd@^1.0.0"
            s."is-path-in-cwd@^1.0.0"
            s."object-assign@^4.0.1"
            s."pify@^2.0.0"
            s."pinkie-promise@^2.0.0"
            s."rimraf@^2.2.8"
          ];
          "del@^2.0.2" = s."del@2.2.2";
          "delayed-stream@0.0.5" = f "delayed-stream" "0.0.5" y "d4b1f43a93e8296dfe02694f4680bc37a313c73f" [];
          "delayed-stream@1.0.0" = f "delayed-stream" "1.0.0" y "df3ae199acadfb7d440aaae0b29e2272b24ec619" [];
          "delayed-stream@~1.0.0" = s."delayed-stream@1.0.0";
          "delegates@1.0.0" = f "delegates" "1.0.0" y "84c6e159b81904fdca59a0ef44cd870d31250f9a" [];
          "delegates@^1.0.0" = s."delegates@1.0.0";
          "depd@1.1.0" = f "depd" "1.1.0" y "e1bd82c6aab6ced965b97b88b17ed3e528ca18c3" [];
          "depd@1.1.1" = f "depd" "1.1.1" y "5783b4e1c459f06fa5ca27f991f3d06e7a310359" [];
          "depd@1.1.2" = f "depd" "1.1.2" y "9bcd52e14c097763e749b274c4346ed2e560b5a9" [];
          "depd@~1.1.0" = s."depd@1.1.0";
          "depd@~1.1.1" = s."depd@1.1.2";
          "des.js@1.0.0" = f "des.js" "1.0.0" y "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc" [
            s."inherits@^2.0.1"
            s."minimalistic-assert@^1.0.0"
          ];
          "des.js@^1.0.0" = s."des.js@1.0.0";
          "destroy@1.0.4" = f "destroy" "1.0.4" y "978857442c44749e4206613e37946205826abd80" [];
          "destroy@~1.0.4" = s."destroy@1.0.4";
          "detect-file@0.1.0" = f "detect-file" "0.1.0" y "4935dedfd9488648e006b0129566e9386711ea63" [
            s."fs-exists-sync@^0.1.0"
          ];
          "detect-file@^0.1.0" = s."detect-file@0.1.0";
          "detect-indent@4.0.0" = f "detect-indent" "4.0.0" y "f76d064352cdf43a1cb6ce619c4ee3a9475de208" [
            s."repeating@^2.0.0"
          ];
          "detect-indent@^4.0.0" = s."detect-indent@4.0.0";
          "dev-null@0.1.1" = f "dev-null" "0.1.1" y "5a205ce3c2b2ef77b6238d6ba179eb74c6a0e818" [];
          "dev-null@^0.1.1" = s."dev-null@0.1.1";
          "devtron@1.4.0" = f "devtron" "1.4.0" y "b5e748bd6e95bbe70bfcc68aae6fe696119441e1" [
            s."accessibility-developer-tools@^2.11.0"
            s."highlight.js@^9.3.0"
            s."humanize-plus@^1.8.1"
          ];
          "diff@3.4.0" = f "diff" "3.4.0" y "b1d85507daf3964828de54b37d0d73ba67dda56c" [];
          "diff@^3.0.0" = s."diff@3.4.0";
          "diffie-hellman@5.0.2" = f "diffie-hellman" "5.0.2" y "b5835739270cfe26acf632099fded2a07f209e5e" [
            s."bn.js@^4.1.0"
            s."miller-rabin@^4.0.0"
            s."randombytes@^2.0.0"
          ];
          "diffie-hellman@^5.0.0" = s."diffie-hellman@5.0.2";
          "doctrine@1.3.0" = f "doctrine" "1.3.0" y "13e75682b55518424276f7c173783456ef913d26" [
            s."esutils@^2.0.2"
            s."isarray@^1.0.0"
          ];
          "doctrine@1.3.x" = s."doctrine@1.3.0";
          "doctrine@2.0.0" = f "doctrine" "2.0.0" y "c73d8d2909d22291e1a007a395804da8b665fe63" [
            s."esutils@^2.0.2"
            s."isarray@^1.0.0"
          ];
          "doctrine@^1.2.2" = s."doctrine@1.3.0";
          "doctrine@^2.0.0" = s."doctrine@2.0.0";
          "dom-helpers@3.3.1" = f "dom-helpers" "3.3.1" y "fc1a4e15ffdf60ddde03a480a9c0fece821dd4a6" [];
          "dom-helpers@^3.2.0" = s."dom-helpers@3.3.1";
          "dom-walk@0.1.1" = f "dom-walk" "0.1.1" y "672226dc74c8f799ad35307df936aba11acd6018" [];
          "dom-walk@^0.1.0" = s."dom-walk@0.1.1";
          "domain-browser@1.1.7" = f "domain-browser" "1.1.7" y "867aa4b093faa05f1de08c06f4d7b21fdf8698bc" [];
          "domain-browser@^1.1.1" = s."domain-browser@1.1.7";
          "dot-prop@3.0.0" = f "dot-prop" "3.0.0" y "1b708af094a49c9a0e7dbcad790aba539dac1177" [
            s."is-obj@^1.0.0"
          ];
          "dot-prop@4.2.0" = f "dot-prop" "4.2.0" y "1f19e0c2e1aa0e32797c49799f2837ac6af69c57" [
            s."is-obj@^1.0.0"
          ];
          "dot-prop@^3.0.0" = s."dot-prop@3.0.0";
          "dot-prop@^4.1.0" = s."dot-prop@4.2.0";
          "duplexer2@0.0.2" = f "duplexer2" "0.0.2" y "c614dcf67e2fb14995a91711e5a617e8a60a31db" [
            s."readable-stream@~1.1.9"
          ];
          "duplexer3@0.1.4" = f "duplexer3" "0.1.4" y "ee01dd1cac0ed3cbc7fdbea37dc0a8f1ce002ce2" [];
          "duplexer3@^0.1.4" = s."duplexer3@0.1.4";
          "duplexer@0.1.1" = f "duplexer" "0.1.1" y "ace6ff808c1ce66b57d1ebf97977acb02334cfc1" [];
          "duplexer@~0.1.1" = s."duplexer@0.1.1";
          "duplexify@3.5.0" = f "duplexify" "3.5.0" y "1aa773002e1578457e9d9d4a50b0ccaaebcbd604" [
            s."end-of-stream@1.0.0"
            s."inherits@^2.0.1"
            s."readable-stream@^2.0.0"
            s."stream-shift@^1.0.0"
          ];
          "duplexify@^3.2.0" = s."duplexify@3.5.0";
          "duration@0.2.0" = f "duration" "0.2.0" y "5f9c4dfaafff655de986112efe25c5978dd85146" [
            s."d@~0.1.1"
            s."es5-ext@~0.10.2"
          ];
          "duration@^0.2.0" = s."duration@0.2.0";
          "ecc-jsbn@0.1.1" = f "ecc-jsbn" "0.1.1" y "0fc73a9ed5f0d53c38193398523ef7e543777505" [
            s."jsbn@~0.1.0"
          ];
          "ecc-jsbn@~0.1.1" = s."ecc-jsbn@0.1.1";
          "ee-first@1.1.1" = f "ee-first" "1.1.1" y "590c61156b0ae2f4f0255732a158b266bc56b21d" [];
          "ejs@2.5.7" = f "ejs" "2.5.7" y "cc872c168880ae3c7189762fd5ffc00896c9518a" [];
          "ejs@~2.5.6" = s."ejs@2.5.7";
          "electron-chromedriver@1.7.1" = f "electron-chromedriver" "1.7.1" y "008c97976007aa4eb18491ee095e94d17ee47610" [
            s."electron-download@^4.1.0"
            s."extract-zip@^1.6.5"
          ];
          "electron-chromedriver@~1.7.1" = s."electron-chromedriver@1.7.1";
          "electron-debug@1.1.0" = f "electron-debug" "1.1.0" y "050a9c3f906fffc2492510cf8ac31d0f32a579e1" [
            s."electron-is-dev@^0.1.0"
            s."electron-localshortcut@^0.6.0"
          ];
          "electron-devtools-installer@2.2.1" = f "electron-devtools-installer" "2.2.1" y "0beb73ccbf65cbc4d09e706cebda638f839b8c55" [
            s."7zip@0.0.6"
            s."cross-unzip@0.0.2"
            s."rimraf@^2.5.2"
            s."semver@^5.3.0"
          ];
          "electron-download@3.2.0" = f "electron-download" "3.2.0" y "d7509b686b77855f2e6fe0014acc9cce6379c4b1" [
            s."debug@^2.2.0"
            s."fs-extra@^0.30.0"
            s."home-path@^1.0.1"
            s."minimist@^1.2.0"
            s."nugget@^2.0.0"
            s."path-exists@^2.1.0"
            s."rc@^1.1.2"
            s."semver@^5.3.0"
            s."sumchecker@^1.2.0"
          ];
          "electron-download@4.1.0" = f "electron-download" "4.1.0" y "bf932c746f2f87ffcc09d1dd472f2ff6b9187845" [
            s."debug@^2.2.0"
            s."env-paths@^1.0.0"
            s."fs-extra@^2.0.0"
            s."minimist@^1.2.0"
            s."nugget@^2.0.0"
            s."path-exists@^3.0.0"
            s."rc@^1.1.2"
            s."semver@^5.3.0"
            s."sumchecker@^2.0.1"
          ];
          "electron-download@^3.0.1" = s."electron-download@3.2.0";
          "electron-download@^4.0.0" = s."electron-download@4.1.0";
          "electron-download@^4.1.0" = s."electron-download@4.1.0";
          "electron-inspector@0.1.4" = f "electron-inspector" "0.1.4" y "1814207983261d43a26e7ddb82f413429543f778" [
            s."node-inspector@git+https://github.com/enlight/node-inspector"
            s."v8-debug@^0.7.7"
            s."v8-profiler@git+https://github.com/enlight/v8-profiler.git#v5.6.5-electron-v1.3"
            s."yargs@^5.0.0"
          ];
          "electron-is-dev@0.1.2" = f "electron-is-dev" "0.1.2" y "8a1043e32b3a1da1c3f553dce28ce764246167e3" [];
          "electron-is-dev@^0.1.0" = s."electron-is-dev@0.1.2";
          "electron-localshortcut@0.6.1" = f "electron-localshortcut" "0.6.1" y "c4e268c38a6e42f40de5618fc906d1ed608f11aa" [];
          "electron-localshortcut@^0.6.0" = s."electron-localshortcut@0.6.1";
          "electron-log@2.0.2" = f "electron-log" "2.0.2" y "ea7c3d584da1e02df48e68f16fb750b61e3ab05b" [];
          "electron-osx-sign@0.4.2" = f "electron-osx-sign" "0.4.2" y "518e3895a63d30c0d17520ad49c66a23d66a0cd3" [
            s."bluebird@^3.4.6"
            s."compare-version@^0.1.2"
            s."debug@^2.3.2"
            s."isbinaryfile@^3.0.1"
            s."minimist@^1.2.0"
            s."plist@^2.0.1"
            s."tempfile@^1.1.1"
          ];
          "electron-osx-sign@^0.4.1" = s."electron-osx-sign@0.4.2";
          "electron-packager@9.1.0" = f "electron-packager" "9.1.0" y "4b2ef9f8343f5de431182d82929d9c06c0d51a1d" [
            s."asar@^0.13.0"
            s."camelize@^1.0.0"
            s."debug@^3.0.0"
            s."electron-download@^4.0.0"
            s."electron-osx-sign@^0.4.1"
            s."extract-zip@^1.0.3"
            s."fs-extra@^4.0.0"
            s."get-package-info@^1.0.0"
            s."minimist@^1.1.1"
            s."parse-author@^2.0.0"
            s."pify@^3.0.0"
            s."plist@^2.0.0"
            s."pruner@^0.0.7"
            s."rcedit@^0.9.0"
            s."resolve@^1.1.6"
            s."run-series@^1.1.1"
            s."sanitize-filename@^1.6.0"
            s."semver@^5.3.0"
          ];
          "electron-rebuild@1.6.0" = f "electron-rebuild" "1.6.0" y "e8d26f4d8e9fe5388df35864b3658e5cfd4dcb7e" [
            s."colors@^1.1.2"
            s."debug@^2.6.3"
            s."fs-extra@^3.0.1"
            s."node-abi@^2.0.0"
            s."node-gyp@^3.6.0"
            s."ora@^1.2.0"
            s."rimraf@^2.6.1"
            s."spawn-rx@^2.0.10"
            s."yargs@^7.0.2"
          ];
          "electron-store@1.3.0" = f "electron-store" "1.3.0" y "ee488a28a61fb982fd35b658fb9cb6331eb201f8" [
            s."conf@^1.3.0"
          ];
          "electron@1.7.11" = f "electron" "1.7.11" y "993b6aa79e0e79a7cfcc369f4c813fbd9a0b08d9" [
            s."@types/node@^7.0.18"
            s."electron-download@^3.0.1"
            s."extract-zip@^1.0.3"
          ];
          "element-class@0.2.2" = f "element-class" "0.2.2" y "9d3bbd0767f9013ef8e1c8ebe722c1402a60050e" [];
          "element-class@^0.2.0" = s."element-class@0.2.2";
          "elliptic@6.3.2" = f "elliptic" "6.3.2" y "e4c81e0829cf0a65ab70e998b8232723b5c1bc48" [
            s."bn.js@^4.4.0"
            s."brorand@^1.0.1"
            s."hash.js@^1.0.0"
            s."inherits@^2.0.1"
          ];
          "elliptic@6.4.0" = f "elliptic" "6.4.0" y "cac9af8762c85836187003c8dfe193e5e2eae5df" [
            s."bn.js@^4.4.0"
            s."brorand@^1.0.1"
            s."hash.js@^1.0.0"
            s."hmac-drbg@^1.0.0"
            s."inherits@^2.0.1"
            s."minimalistic-assert@^1.0.0"
            s."minimalistic-crypto-utils@^1.0.0"
          ];
          "elliptic@^6.0.0" = s."elliptic@6.3.2";
          "elliptic@^6.4.0" = s."elliptic@6.4.0";
          "emojis-list@2.1.0" = f "emojis-list" "2.1.0" y "4daa4d9db00f9819880c79fa457ae5b09a1fd389" [];
          "emojis-list@^2.0.0" = s."emojis-list@2.1.0";
          "encodeurl@1.0.1" = f "encodeurl" "1.0.1" y "79e3d58655346909fe6f0f45a5de68103b294d20" [];
          "encodeurl@~1.0.1" = s."encodeurl@1.0.1";
          "encoding@0.1.12" = f "encoding" "0.1.12" y "538b66f3ee62cd1ab51ec323829d1f9480c74beb" [
            s."iconv-lite@~0.4.13"
          ];
          "encoding@^0.1.11" = s."encoding@0.1.12";
          "end-of-stream@1.0.0" = f "end-of-stream" "1.0.0" y "d4596e702734a93e40e9af864319eabd99ff2f0e" [
            s."once@~1.3.0"
          ];
          "end-of-stream@1.1.0" = f "end-of-stream" "1.1.0" y "e9353258baa9108965efc41cb0ef8ade2f3cfb07" [
            s."once@~1.3.0"
          ];
          "end-of-stream@^1.0.0" = s."end-of-stream@1.1.0";
          "enhanced-resolve@0.9.1" = f "enhanced-resolve" "0.9.1" y "4d6e689b3725f86090927ccc86cd9f1635b89e2e" [
            s."graceful-fs@^4.1.2"
            s."memory-fs@^0.2.0"
            s."tapable@^0.1.8"
          ];
          "enhanced-resolve@2.3.0" = f "enhanced-resolve" "2.3.0" y "a115c32504b6302e85a76269d7a57ccdd962e359" [
            s."graceful-fs@^4.1.2"
            s."memory-fs@^0.3.0"
            s."object-assign@^4.0.1"
            s."tapable@^0.2.3"
          ];
          "enhanced-resolve@^2.2.2" = s."enhanced-resolve@2.3.0";
          "enhanced-resolve@~0.9.0" = s."enhanced-resolve@0.9.1";
          "entities@1.1.1" = f "entities" "1.1.1" y "6e5c2d0a5621b5dadaecef80b90edfb5cd7772f0" [];
          "entities@~ 1.1.1" = s."entities@1.1.1";
          "env-paths@1.0.0" = f "env-paths" "1.0.0" y "4168133b42bb05c38a35b1ae4397c8298ab369e0" [];
          "env-paths@^1.0.0" = s."env-paths@1.0.0";
          "errno@0.1.4" = f "errno" "0.1.4" y "b896e23a9e5e8ba33871fc996abd3635fc9a1c7d" [
            s."prr@~0.0.0"
          ];
          "errno@^0.1.3" = s."errno@0.1.4";
          "error-ex@1.3.0" = f "error-ex" "1.3.0" y "e67b43f3e82c96ea3a584ffee0b9fc3325d802d9" [
            s."is-arrayish@^0.2.1"
          ];
          "error-ex@^1.2.0" = s."error-ex@1.3.0";
          "error-stack-parser@1.3.6" = f "error-stack-parser" "1.3.6" y "e0e73b93e417138d1cd7c0b746b1a4a14854c292" [
            s."stackframe@^0.3.1"
          ];
          "error-stack-parser@2.0.1" = f "error-stack-parser" "2.0.1" y "a3202b8fb03114aa9b40a0e3669e48b2b65a010a" [
            s."stackframe@^1.0.3"
          ];
          "error-stack-parser@^1.3.6" = s."error-stack-parser@1.3.6";
          "error-stack-parser@^2.0.1" = s."error-stack-parser@2.0.1";
          "es-abstract@1.6.1" = f "es-abstract" "1.6.1" y "bb8a2064120abcf928a086ea3d9043114285ec99" [
            s."es-to-primitive@^1.1.1"
            s."function-bind@^1.1.0"
            s."is-callable@^1.1.3"
            s."is-regex@^1.0.3"
          ];
          "es-abstract@^1.4.3" = s."es-abstract@1.6.1";
          "es-abstract@^1.5.0" = s."es-abstract@1.6.1";
          "es-abstract@^1.5.1" = s."es-abstract@1.6.1";
          "es-abstract@^1.6.1" = s."es-abstract@1.6.1";
          "es-to-primitive@1.1.1" = f "es-to-primitive" "1.1.1" y "45355248a88979034b6792e19bb81f2b7975dd0d" [
            s."is-callable@^1.1.1"
            s."is-date-object@^1.0.1"
            s."is-symbol@^1.0.1"
          ];
          "es-to-primitive@^1.1.1" = s."es-to-primitive@1.1.1";
          "es5-ext@0.10.12" = f "es5-ext" "0.10.12" y "aa84641d4db76b62abba5e45fd805ecbab140047" [];
          "es5-ext@^0.10.7" = s."es5-ext@0.10.12";
          "es5-ext@^0.10.8" = s."es5-ext@0.10.12";
          "es5-ext@~0.10.11" = s."es5-ext@0.10.12";
          "es5-ext@~0.10.2" = s."es5-ext@0.10.12";
          "es5-ext@~0.10.7" = s."es5-ext@0.10.12";
          "es5-shim@4.5.9" = f "es5-shim" "4.5.9" y "2a1e2b9e583ff5fed0c20a3ee2cbf3f75230a5c0" [];
          "es5-shim@^4.5.9" = s."es5-shim@4.5.9";
          "es6-error@4.0.2" = f "es6-error" "4.0.2" y "eec5c726eacef51b7f6b73c20db6e1b13b069c98" [];
          "es6-iterator@2" = s."es6-iterator@2.0.0";
          "es6-iterator@2.0.0" = f "es6-iterator" "2.0.0" y "bd968567d61635e33c0b80727613c9cb4b096bac" [
            s."d@^0.1.1"
            s."es5-ext@^0.10.7"
            s."es6-symbol@3"
          ];
          "es6-map@0.1.4" = f "es6-map" "0.1.4" y "a34b147be224773a4d7da8072794cefa3632b897" [
            s."d@~0.1.1"
            s."es5-ext@~0.10.11"
            s."es6-iterator@2"
            s."es6-set@~0.1.3"
            s."es6-symbol@~3.1.0"
            s."event-emitter@~0.3.4"
          ];
          "es6-map@^0.1.3" = s."es6-map@0.1.4";
          "es6-promise@3.3.1" = f "es6-promise" "3.3.1" y "a08cdde84ccdbf34d027a1451bc91d4bcd28a613" [];
          "es6-promise@4.0.5" = f "es6-promise" "4.0.5" y "7882f30adde5b240ccfa7f7d78c548330951ae42" [];
          "es6-promise@^3.0.2" = s."es6-promise@3.3.1";
          "es6-promise@^4.0.5" = s."es6-promise@4.0.5";
          "es6-set@0.1.4" = f "es6-set" "0.1.4" y "9516b6761c2964b92ff479456233a247dc707ce8" [
            s."d@~0.1.1"
            s."es5-ext@~0.10.11"
            s."es6-iterator@2"
            s."es6-symbol@3"
            s."event-emitter@~0.3.4"
          ];
          "es6-set@^0.1.4" = s."es6-set@0.1.4";
          "es6-set@~0.1.3" = s."es6-set@0.1.4";
          "es6-shim@0.35.2" = f "es6-shim" "0.35.2" y "45c5b3eb2f792ed28f130d826239be50affb897f" [];
          "es6-shim@^0.35.1" = s."es6-shim@0.35.2";
          "es6-symbol@3" = s."es6-symbol@3.1.0";
          "es6-symbol@3.1.0" = f "es6-symbol" "3.1.0" y "94481c655e7a7cad82eba832d97d5433496d7ffa" [
            s."es5-ext@~0.10.11"
          ];
          "es6-symbol@^3.0.2" = s."es6-symbol@3.1.0";
          "es6-symbol@~3.1" = s."es6-symbol@3.1.0";
          "es6-symbol@~3.1.0" = s."es6-symbol@3.1.0";
          "es6-templates@0.2.3" = f "es6-templates" "0.2.3" y "5cb9ac9fb1ded6eb1239342b81d792bbb4078ee4" [
            s."recast@~0.11.12"
            s."through@~2.3.6"
          ];
          "es6-templates@^0.2.2" = s."es6-templates@0.2.3";
          "es6-weak-map@2.0.1" = f "es6-weak-map" "2.0.1" y "0d2bbd8827eb5fb4ba8f97fbfea50d43db21ea81" [
            s."d@^0.1.1"
            s."es5-ext@^0.10.8"
            s."es6-iterator@2"
            s."es6-symbol@3"
          ];
          "es6-weak-map@^2.0.1" = s."es6-weak-map@2.0.1";
          "escape-html@1.0.3" = f "escape-html" "1.0.3" y "0258eae4d3d0c0974de1c169188ef0051d1d1988" [];
          "escape-html@~1.0.3" = s."escape-html@1.0.3";
          "escape-string-regexp@1.0.5" = f "escape-string-regexp" "1.0.5" y "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4" [];
          "escape-string-regexp@^1.0.0" = s."escape-string-regexp@1.0.5";
          "escape-string-regexp@^1.0.2" = s."escape-string-regexp@1.0.5";
          "escape-string-regexp@^1.0.5" = s."escape-string-regexp@1.0.5";
          "escodegen@1.8.1" = f "escodegen" "1.8.1" y "5a5b53af4693110bebb0867aa3430dd3b70a1018" [
            s."esprima@^2.7.1"
            s."estraverse@^1.9.1"
            s."esutils@^2.0.2"
            s."optionator@^0.8.1"
            s."source-map@~0.2.0"
          ];
          "escodegen@^1.6.1" = s."escodegen@1.8.1";
          "escope@3.6.0" = f "escope" "3.6.0" y "e01975e812781a163a6dadfdd80398dc64c889c3" [
            s."es6-map@^0.1.3"
            s."es6-weak-map@^2.0.1"
            s."esrecurse@^4.1.0"
            s."estraverse@^4.1.1"
          ];
          "escope@^3.6.0" = s."escope@3.6.0";
          "eslint-config-airbnb-base@8.0.0" = f "eslint-config-airbnb-base" "8.0.0" y "c5e958a469ab8af76aff068b43d784e5afe74ca7" [];
          "eslint-config-airbnb-base@^8.0.0" = s."eslint-config-airbnb-base@8.0.0";
          "eslint-config-airbnb@12.0.0" = f "eslint-config-airbnb" "12.0.0" y "ab282b756a25f03d04ac264c24d673a08a803270" [
            s."eslint-config-airbnb-base@^8.0.0"
          ];
          "eslint-formatter-pretty@1.1.0" = f "eslint-formatter-pretty" "1.1.0" y "ab4d06da02fed8c13ae9f0dc540a433ef7ed6f5e" [
            s."ansi-escapes@^1.4.0"
            s."chalk@^1.1.3"
            s."log-symbols@^1.0.2"
            s."plur@^2.1.2"
            s."string-width@^2.0.0"
          ];
          "eslint-import-resolver-node@0.2.3" = f "eslint-import-resolver-node" "0.2.3" y "5add8106e8c928db2cba232bcd9efa846e3da16c" [
            s."debug@^2.2.0"
            s."object-assign@^4.0.1"
            s."resolve@^1.1.6"
          ];
          "eslint-import-resolver-node@^0.2.0" = s."eslint-import-resolver-node@0.2.3";
          "eslint-import-resolver-webpack@0.6.0" = f "eslint-import-resolver-webpack" "0.6.0" y "cfa48c727b633eb523e29ef019750b2106d0f609" [
            s."array-find@^1.0.0"
            s."debug@^2.2.0"
            s."enhanced-resolve@~0.9.0"
            s."find-root@^0.1.1"
            s."interpret@^1.0.0"
            s."is-absolute@^0.2.3"
            s."lodash.get@^3.7.0"
            s."node-libs-browser@^1.0.0"
            s."object-assign@^4.1.0"
            s."resolve@^1.1.7"
            s."semver@^5.3.0"
          ];
          "eslint-loader@1.7.0" = f "eslint-loader" "1.7.0" y "9813e77046730191ab399938732dff7960c639cb" [
            s."find-cache-dir@^0.1.1"
            s."loader-fs-cache@^1.0.0"
            s."loader-utils@^1.0.2"
            s."object-assign@^4.0.1"
            s."object-hash@^1.1.4"
            s."rimraf@^2.6.1"
          ];
          "eslint-plugin-flowtype-errors@1.5.0" = f "eslint-plugin-flowtype-errors" "1.5.0" y "e8031f25b2af4a6bd266d9f19abe28ca51cd7d2b" [
            s."babel-plugin-transform-runtime@^6.15.0"
            s."flow-bin@^0.33.0"
            s."q@^1.4.1"
            s."ramda@^0.22.1"
            s."shelljs@^0.7.4"
            s."slash@^1.0.0"
          ];
          "eslint-plugin-import@1.16.0" = f "eslint-plugin-import" "1.16.0" y "b2fa07ebcc53504d0f2a4477582ec8bff1871b9f" [
            s."builtin-modules@^1.1.1"
            s."contains-path@^0.1.0"
            s."debug@^2.2.0"
            s."doctrine@1.3.x"
            s."es6-map@^0.1.3"
            s."es6-set@^0.1.4"
            s."eslint-import-resolver-node@^0.2.0"
            s."has@^1.0.1"
            s."lodash.cond@^4.3.0"
            s."lodash.endswith@^4.0.1"
            s."lodash.find@^4.3.0"
            s."lodash.findindex@^4.3.0"
            s."minimatch@^3.0.3"
            s."object-assign@^4.0.1"
            s."pkg-dir@^1.0.0"
            s."pkg-up@^1.0.0"
          ];
          "eslint-plugin-jsx-a11y@2.2.3" = f "eslint-plugin-jsx-a11y" "2.2.3" y "4e35cb71b8a7db702ac415c806eb8e8d9ea6c65d" [
            s."damerau-levenshtein@^1.0.0"
            s."jsx-ast-utils@^1.0.0"
            s."object-assign@^4.0.1"
          ];
          "eslint-plugin-promise@2.0.1" = f "eslint-plugin-promise" "2.0.1" y "a9759cefa5e38ab11bb2ef65a04ef042309aa0a4" [];
          "eslint-plugin-react@6.10.3" = f "eslint-plugin-react" "6.10.3" y "c5435beb06774e12c7db2f6abaddcbf900cd3f78" [
            s."array.prototype.find@^2.0.1"
            s."doctrine@^1.2.2"
            s."has@^1.0.1"
            s."jsx-ast-utils@^1.3.4"
            s."object.assign@^4.0.4"
          ];
          "eslint@3.18.0" = f "eslint" "3.18.0" y "647e985c4ae71502d20ac62c109f66d5104c8a4b" [
            s."babel-code-frame@^6.16.0"
            s."chalk@^1.1.3"
            s."concat-stream@^1.5.2"
            s."debug@^2.1.1"
            s."doctrine@^2.0.0"
            s."escope@^3.6.0"
            s."espree@^3.4.0"
            s."esquery@^1.0.0"
            s."estraverse@^4.2.0"
            s."esutils@^2.0.2"
            s."file-entry-cache@^2.0.0"
            s."glob@^7.0.3"
            s."globals@^9.14.0"
            s."ignore@^3.2.0"
            s."imurmurhash@^0.1.4"
            s."inquirer@^0.12.0"
            s."is-my-json-valid@^2.10.0"
            s."is-resolvable@^1.0.0"
            s."js-yaml@^3.5.1"
            s."json-stable-stringify@^1.0.0"
            s."levn@^0.3.0"
            s."lodash@^4.0.0"
            s."mkdirp@^0.5.0"
            s."natural-compare@^1.4.0"
            s."optionator@^0.8.2"
            s."path-is-inside@^1.0.1"
            s."pluralize@^1.2.1"
            s."progress@^1.1.8"
            s."require-uncached@^1.0.2"
            s."shelljs@^0.7.5"
            s."strip-bom@^3.0.0"
            s."strip-json-comments@~2.0.1"
            s."table@^3.7.8"
            s."text-table@~0.2.0"
            s."user-home@^2.0.0"
          ];
          "espree@3.5.3" = f "espree" "3.5.3" y "931e0af64e7fbbed26b050a29daad1fc64799fa6" [
            s."acorn@^5.4.0"
            s."acorn-jsx@^3.0.0"
          ];
          "espree@^3.4.0" = s."espree@3.5.3";
          "esprima@2.7.3" = f "esprima" "2.7.3" y "96e3b70d5779f6ad49cd032673d1c312767ba581" [];
          "esprima@3.1.3" = f "esprima" "3.1.3" y "fdca51cee6133895e3c88d535ce49dbff62a4633" [];
          "esprima@^2.6.0" = s."esprima@2.7.3";
          "esprima@^2.7.1" = s."esprima@2.7.3";
          "esprima@~3.1.0" = s."esprima@3.1.3";
          "esquery@1.0.0" = f "esquery" "1.0.0" y "cfba8b57d7fba93f17298a8a006a04cda13d80fa" [
            s."estraverse@^4.0.0"
          ];
          "esquery@^1.0.0" = s."esquery@1.0.0";
          "esrecurse@4.1.0" = f "esrecurse" "4.1.0" y "4713b6536adf7f2ac4f327d559e7756bff648220" [
            s."estraverse@~4.1.0"
            s."object-assign@^4.0.1"
          ];
          "esrecurse@^4.1.0" = s."esrecurse@4.1.0";
          "estraverse@1.9.3" = f "estraverse" "1.9.3" y "af67f2dc922582415950926091a4005d29c9bb44" [];
          "estraverse@4.1.1" = f "estraverse" "4.1.1" y "f6caca728933a850ef90661d0e17982ba47111a2" [];
          "estraverse@4.2.0" = f "estraverse" "4.2.0" y "0dee3fed31fcd469618ce7342099fc1afa0bdb13" [];
          "estraverse@^1.9.1" = s."estraverse@1.9.3";
          "estraverse@^4.0.0" = s."estraverse@4.2.0";
          "estraverse@^4.1.1" = s."estraverse@4.2.0";
          "estraverse@^4.2.0" = s."estraverse@4.2.0";
          "estraverse@~4.1.0" = s."estraverse@4.1.1";
          "esutils@2.0.2" = f "esutils" "2.0.2" y "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b" [];
          "esutils@^2.0.0" = s."esutils@2.0.2";
          "esutils@^2.0.2" = s."esutils@2.0.2";
          "etag@1.7.0" = f "etag" "1.7.0" y "03d30b5f67dd6e632d2945d30d6652731a34d5d8" [];
          "etag@1.8.1" = f "etag" "1.8.1" y "41ae2eeb65efa62268aebfea83ac7d79299b0887" [];
          "etag@~1.7.0" = s."etag@1.7.0";
          "etag@~1.8.0" = s."etag@1.8.1";
          "eth-lib@0.1.27" = f "eth-lib" "0.1.27" y "f0b0fd144f865d2d6bf8257a40004f2e75ca1dd6" [
            s."bn.js@^4.11.6"
            s."elliptic@^6.4.0"
            s."keccakjs@^0.2.1"
            s."nano-json-stream-parser@^0.1.2"
            s."servify@^0.1.12"
            s."ws@^3.0.0"
            s."xhr-request-promise@^0.1.2"
          ];
          "eth-lib@0.2.7" = f "eth-lib" "0.2.7" y "2f93f17b1e23aec3759cd4a3fe20c1286a3fc1ca" [
            s."bn.js@^4.11.6"
            s."elliptic@^6.4.0"
            s."xhr-request-promise@^0.1.2"
          ];
          "eth-lib@^0.1.26" = s."eth-lib@0.1.27";
          "eth-lib@^0.1.27" = s."eth-lib@0.1.27";
          "ethjs-unit@0.1.6" = f "ethjs-unit" "0.1.6" y "c665921e476e87bce2a9d588a6fe0405b2c41699" [
            s."bn.js@4.11.6"
            s."number-to-bn@1.7.0"
          ];
          "event-emitter@0.3.4" = f "event-emitter" "0.3.4" y "8d63ddfb4cfe1fae3b32ca265c4c720222080bb5" [
            s."d@~0.1.1"
            s."es5-ext@~0.10.7"
          ];
          "event-emitter@~0.3.4" = s."event-emitter@0.3.4";
          "event-stream@3.3.4" = f "event-stream" "3.3.4" y "4ab4c9a0f5a54db9338b4c34d86bfce8f4b35571" [
            s."duplexer@~0.1.1"
            s."from@~0"
            s."map-stream@~0.1.0"
            s."pause-stream@0.0.11"
            s."split@0.3"
            s."stream-combiner@~0.0.4"
            s."through@~2.3.1"
          ];
          "event-stream@~3.3.0" = s."event-stream@3.3.4";
          "eventemitter3@1.1.1" = f "eventemitter3" "1.1.1" y "47786bdaa087caf7b1b75e73abc5c7d540158cd0" [];
          "events@1.1.1" = f "events" "1.1.1" y "9ebdb7635ad099c70dcc4c2a1f5004288e8bd924" [];
          "events@^1.0.0" = s."events@1.1.1";
          "events@^1.1.1" = s."events@1.1.1";
          "evp_bytestokey@1.0.0" = f "evp_bytestokey" "1.0.0" y "497b66ad9fef65cd7c08a6180824ba1476b66e53" [
            s."create-hash@^1.1.1"
          ];
          "evp_bytestokey@^1.0.0" = s."evp_bytestokey@1.0.0";
          "exenv@1.2.0" = f "exenv" "1.2.0" y "3835f127abf075bfe082d0aed4484057c78e3c89" [];
          "exenv@1.2.2" = f "exenv" "1.2.2" y "2ae78e85d9894158670b03d47bec1f03bd91bb9d" [];
          "exenv@^1.2.0" = s."exenv@1.2.2";
          "exit-hook@1.1.1" = f "exit-hook" "1.1.1" y "f05ca233b48c05d54fff07765df8507e95c02ff8" [];
          "exit-hook@^1.0.0" = s."exit-hook@1.1.1";
          "expand-brackets@0.1.5" = f "expand-brackets" "0.1.5" y "df07284e342a807cd733ac5af72411e581d1177b" [
            s."is-posix-bracket@^0.1.0"
          ];
          "expand-brackets@^0.1.4" = s."expand-brackets@0.1.5";
          "expand-range@1.8.2" = f "expand-range" "1.8.2" y "a299effd335fe2721ebae8e257ec79644fc85337" [
            s."fill-range@^2.1.0"
          ];
          "expand-range@^1.8.1" = s."expand-range@1.8.2";
          "expand-tilde@1.2.2" = f "expand-tilde" "1.2.2" y "0b81eba897e5a3d31d1c3d102f8f01441e559449" [
            s."os-homedir@^1.0.1"
          ];
          "expand-tilde@^1.2.2" = s."expand-tilde@1.2.2";
          "express@4.14.0" = f "express" "4.14.0" y "c1ee3f42cdc891fb3dc650a8922d51ec847d0d66" [
            s."accepts@~1.3.3"
            s."array-flatten@1.1.1"
            s."content-disposition@0.5.1"
            s."content-type@~1.0.2"
            s."cookie@0.3.1"
            s."cookie-signature@1.0.6"
            s."debug@~2.2.0"
            s."depd@~1.1.0"
            s."encodeurl@~1.0.1"
            s."escape-html@~1.0.3"
            s."etag@~1.7.0"
            s."finalhandler@0.5.0"
            s."fresh@0.3.0"
            s."merge-descriptors@1.0.1"
            s."methods@~1.1.2"
            s."on-finished@~2.3.0"
            s."parseurl@~1.3.1"
            s."path-to-regexp@0.1.7"
            s."proxy-addr@~1.1.2"
            s."qs@6.2.0"
            s."range-parser@~1.2.0"
            s."send@0.14.1"
            s."serve-static@~1.11.1"
            s."type-is@~1.6.13"
            s."utils-merge@1.0.0"
            s."vary@~1.1.0"
          ];
          "express@4.15.2" = f "express" "4.15.2" y "af107fc148504457f2dca9a6f2571d7129b97b35" [
            s."accepts@~1.3.3"
            s."array-flatten@1.1.1"
            s."content-disposition@0.5.2"
            s."content-type@~1.0.2"
            s."cookie@0.3.1"
            s."cookie-signature@1.0.6"
            s."debug@2.6.1"
            s."depd@~1.1.0"
            s."encodeurl@~1.0.1"
            s."escape-html@~1.0.3"
            s."etag@~1.8.0"
            s."finalhandler@~1.0.0"
            s."fresh@0.5.0"
            s."merge-descriptors@1.0.1"
            s."methods@~1.1.2"
            s."on-finished@~2.3.0"
            s."parseurl@~1.3.1"
            s."path-to-regexp@0.1.7"
            s."proxy-addr@~1.1.3"
            s."qs@6.4.0"
            s."range-parser@~1.2.0"
            s."send@0.15.1"
            s."serve-static@1.12.1"
            s."setprototypeof@1.0.3"
            s."statuses@~1.3.1"
            s."type-is@~1.6.14"
            s."utils-merge@1.0.0"
            s."vary@~1.1.0"
          ];
          "express@^4.12.3" = s."express@4.14.0";
          "express@^4.13.3" = s."express@4.14.0";
          "express@^4.14.0" = s."express@4.14.0";
          "extend@3.0.0" = f "extend" "3.0.0" y "5a474353b9f3353ddd8176dfd37b91c83a46f1d4" [];
          "extend@3.0.1" = f "extend" "3.0.1" y "a755ea7bc1adfcc5a31ce7e762dbaadc5e636444" [];
          "extend@~3.0.0" = s."extend@3.0.0";
          "extend@~3.0.1" = s."extend@3.0.1";
          "external-editor@2.1.0" = f "external-editor" "2.1.0" y "3d026a21b7f95b5726387d4200ac160d372c3b48" [
            s."chardet@^0.4.0"
            s."iconv-lite@^0.4.17"
            s."tmp@^0.0.33"
          ];
          "external-editor@^2.0.4" = s."external-editor@2.1.0";
          "extglob@0.3.2" = f "extglob" "0.3.2" y "2e18ff3d2f49ab2765cec9023f011daa8d8349a1" [
            s."is-extglob@^1.0.0"
          ];
          "extglob@^0.3.1" = s."extglob@0.3.2";
          "extract-text-webpack-plugin@1.0.1" = f "extract-text-webpack-plugin" "1.0.1" y "c95bf3cbaac49dc96f1dc6e072549fbb654ccd2c" [
            s."async@^1.5.0"
            s."loader-utils@^0.2.3"
            s."webpack-sources@^0.1.0"
          ];
          "extract-zip@1.6.0" = f "extract-zip" "1.6.0" y "7f400c9607ea866ecab7aa6d54fb978eeb11621a" [
            s."concat-stream@1.5.0"
            s."debug@0.7.4"
            s."mkdirp@0.5.0"
            s."yauzl@2.4.1"
          ];
          "extract-zip@1.6.6" = f "extract-zip" "1.6.6" y "1290ede8d20d0872b429fd3f351ca128ec5ef85c" [
            s."concat-stream@1.6.0"
            s."debug@2.6.9"
            s."mkdirp@0.5.0"
            s."yauzl@2.4.1"
          ];
          "extract-zip@^1.0.3" = s."extract-zip@1.6.0";
          "extract-zip@^1.6.5" = s."extract-zip@1.6.6";
          "extsprintf@1.0.2" = f "extsprintf" "1.0.2" y "e1080e0658e300b06294990cc70e1502235fd550" [];
          "extsprintf@1.4.0" = f "extsprintf" "1.4.0" y "e2689f8f356fad62cca65a3a91c5df5f9551692f" [];
          "extsprintf@^1.2.0" = s."extsprintf@1.4.0";
          "eyes@0.1.8" = f "eyes" "0.1.8" y "62cf120234c683785d902348a800ef3e0cc20bc0" [];
          "eyes@0.1.x" = s."eyes@0.1.8";
          "faker@4.1.0" = f "faker" "4.1.0" y "1e45bbbecc6774b3c195fad2835109c6d748cc3f" [];
          "fancy-log@1.3.0" = f "fancy-log" "1.3.0" y "45be17d02bb9917d60ccffd4995c999e6c8c9948" [
            s."chalk@^1.1.1"
            s."time-stamp@^1.0.0"
          ];
          "fancy-log@^1.1.0" = s."fancy-log@1.3.0";
          "fast-deep-equal@1.0.0" = f "fast-deep-equal" "1.0.0" y "96256a3bc975595eb36d82e9929d060d893439ff" [];
          "fast-deep-equal@^1.0.0" = s."fast-deep-equal@1.0.0";
          "fast-json-stable-stringify@2.0.0" = f "fast-json-stable-stringify" "2.0.0" y "d5142c0caee6b1189f87d3a76111064f86c8bbf2" [];
          "fast-json-stable-stringify@^2.0.0" = s."fast-json-stable-stringify@2.0.0";
          "fast-levenshtein@2.0.6" = f "fast-levenshtein" "2.0.6" y "3d8a5c66883a16a30ca8643e851f19baa7797917" [];
          "fast-levenshtein@~2.0.4" = s."fast-levenshtein@2.0.6";
          "fastparse@1.1.1" = f "fastparse" "1.1.1" y "d1e2643b38a94d7583b479060e6c4affc94071f8" [];
          "fastparse@^1.1.1" = s."fastparse@1.1.1";
          "fbjs-scripts@0.7.1" = f "fbjs-scripts" "0.7.1" y "4f115e218e243e3addbf0eddaac1e3c62f703fac" [
            s."babel-core@^6.7.2"
            s."babel-preset-fbjs@^1.0.0"
            s."core-js@^1.0.0"
            s."cross-spawn@^3.0.1"
            s."gulp-util@^3.0.4"
            s."object-assign@^4.0.1"
            s."semver@^5.1.0"
            s."through2@^2.0.0"
          ];
          "fbjs@0.8.16" = f "fbjs" "0.8.16" y "5e67432f550dc41b572bf55847b8aca64e5337db" [
            s."core-js@^1.0.0"
            s."isomorphic-fetch@^2.1.1"
            s."loose-envify@^1.0.0"
            s."object-assign@^4.1.0"
            s."promise@^7.1.1"
            s."setimmediate@^1.0.5"
            s."ua-parser-js@^0.7.9"
          ];
          "fbjs@0.8.8" = f "fbjs" "0.8.8" y "02f1b6e0ea0d46c24e0b51a2d24df069563a5ad6" [
            s."core-js@^1.0.0"
            s."isomorphic-fetch@^2.1.1"
            s."loose-envify@^1.0.0"
            s."object-assign@^4.1.0"
            s."promise@^7.1.1"
            s."setimmediate@^1.0.5"
            s."ua-parser-js@^0.7.9"
          ];
          "fbjs@^0.8.1" = s."fbjs@0.8.8";
          "fbjs@^0.8.16" = s."fbjs@0.8.16";
          "fbjs@^0.8.4" = s."fbjs@0.8.8";
          "fbjs@^0.8.9" = s."fbjs@0.8.16";
          "fd-slicer@1.0.1" = f "fd-slicer" "1.0.1" y "8b5bcbd9ec327c5041bf9ab023fd6750f1177e65" [
            s."pend@~1.2.0"
          ];
          "fd-slicer@~1.0.1" = s."fd-slicer@1.0.1";
          "figures@1.7.0" = f "figures" "1.7.0" y "cbe1e3affcf1cd44b80cadfed28dc793a9701d2e" [
            s."escape-string-regexp@^1.0.5"
            s."object-assign@^4.1.0"
          ];
          "figures@2.0.0" = f "figures" "2.0.0" y "3ab1a2d2a62c8bfb431a0c94cb797a2fce27c962" [
            s."escape-string-regexp@^1.0.5"
          ];
          "figures@^1.3.5" = s."figures@1.7.0";
          "figures@^2.0.0" = s."figures@2.0.0";
          "file-entry-cache@2.0.0" = f "file-entry-cache" "2.0.0" y "c392990c3e684783d838b8c84a45d8a048458361" [
            s."flat-cache@^1.2.1"
            s."object-assign@^4.0.1"
          ];
          "file-entry-cache@^2.0.0" = s."file-entry-cache@2.0.0";
          "file-loader@0.9.0" = f "file-loader" "0.9.0" y "1d2daddd424ce6d1b07cfe3f79731bed3617ab42" [
            s."loader-utils@~0.2.5"
          ];
          "file-loader@^0.9.0" = s."file-loader@0.9.0";
          "file-type@3.9.0" = f "file-type" "3.9.0" y "257a078384d1db8087bc449d107d52a52672b9e9" [];
          "file-type@5.2.0" = f "file-type" "5.2.0" y "2ddbea7c73ffe36368dfae49dc338c058c2b8ad6" [];
          "file-type@6.2.0" = f "file-type" "6.2.0" y "e50cd75d356ffed4e306dc4f5bcf52a79903a919" [];
          "file-type@^3.8.0" = s."file-type@3.9.0";
          "file-type@^5.2.0" = s."file-type@5.2.0";
          "file-type@^6.1.0" = s."file-type@6.2.0";
          "filename-regex@2.0.0" = f "filename-regex" "2.0.0" y "996e3e80479b98b9897f15a8a58b3d084e926775" [];
          "filename-regex@^2.0.0" = s."filename-regex@2.0.0";
          "fill-range@2.2.3" = f "fill-range" "2.2.3" y "50b77dfd7e469bc7492470963699fe7a8485a723" [
            s."is-number@^2.1.0"
            s."isobject@^2.0.0"
            s."randomatic@^1.1.3"
            s."repeat-element@^1.1.2"
            s."repeat-string@^1.5.2"
          ];
          "fill-range@^2.1.0" = s."fill-range@2.2.3";
          "filter-react-dom-props@0.0.2" = f "filter-react-dom-props" "0.0.2" y "d5c1e5a89c13534cebe3930a22afa9ae3238813b" [];
          "finalhandler@0.5.0" = f "finalhandler" "0.5.0" y "e9508abece9b6dba871a6942a1d7911b91911ac7" [
            s."debug@~2.2.0"
            s."escape-html@~1.0.3"
            s."on-finished@~2.3.0"
            s."statuses@~1.3.0"
            s."unpipe@~1.0.0"
          ];
          "finalhandler@1.0.6" = f "finalhandler" "1.0.6" y "007aea33d1a4d3e42017f624848ad58d212f814f" [
            s."debug@2.6.9"
            s."encodeurl@~1.0.1"
            s."escape-html@~1.0.3"
            s."on-finished@~2.3.0"
            s."parseurl@~1.3.2"
            s."statuses@~1.3.1"
            s."unpipe@~1.0.0"
          ];
          "finalhandler@~1.0.0" = s."finalhandler@1.0.6";
          "find-cache-dir@0.1.1" = f "find-cache-dir" "0.1.1" y "c8defae57c8a52a8a784f9e31c57c742e993a0b9" [
            s."commondir@^1.0.1"
            s."mkdirp@^0.5.1"
            s."pkg-dir@^1.0.0"
          ];
          "find-cache-dir@^0.1.1" = s."find-cache-dir@0.1.1";
          "find-node-modules@1.0.4" = f "find-node-modules" "1.0.4" y "b6deb3cccb699c87037677bcede2c5f5862b2550" [
            s."findup-sync@0.4.2"
            s."merge@^1.2.0"
          ];
          "find-node-modules@^1.0.1" = s."find-node-modules@1.0.4";
          "find-root@0.1.2" = f "find-root" "0.1.2" y "98d2267cff1916ccaf2743b3a0eea81d79d7dcd1" [];
          "find-root@^0.1.1" = s."find-root@0.1.2";
          "find-up@1.1.2" = f "find-up" "1.1.2" y "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f" [
            s."path-exists@^2.0.0"
            s."pinkie-promise@^2.0.0"
          ];
          "find-up@2.1.0" = f "find-up" "2.1.0" y "45d1b7e506c717ddd482775a2b77920a3c0c57a7" [
            s."locate-path@^2.0.0"
          ];
          "find-up@^1.0.0" = s."find-up@1.1.2";
          "find-up@^2.0.0" = s."find-up@2.1.0";
          "find-up@^2.1.0" = s."find-up@2.1.0";
          "findup-sync@0.4.2" = f "findup-sync" "0.4.2" y "a8117d0f73124f5a4546839579fe52d7129fb5e5" [
            s."detect-file@^0.1.0"
            s."is-glob@^2.0.1"
            s."micromatch@^2.3.7"
            s."resolve-dir@^0.1.0"
          ];
          "flat-cache@1.2.2" = f "flat-cache" "1.2.2" y "fa86714e72c21db88601761ecf2f555d1abc6b96" [
            s."circular-json@^0.3.1"
            s."del@^2.0.2"
            s."graceful-fs@^4.1.2"
            s."write@^0.2.1"
          ];
          "flat-cache@^1.2.1" = s."flat-cache@1.2.2";
          "flatten@1.0.2" = f "flatten" "1.0.2" y "dae46a9d78fbe25292258cc1e780a41d95c03782" [];
          "flatten@^1.0.2" = s."flatten@1.0.2";
          "flow-bin@0.33.0" = f "flow-bin" "0.33.0" y "ef011eace7a6100f1ae08b852db78279032b8750" [];
          "flow-bin@0.59.0" = f "flow-bin" "0.59.0" y "8c151ee7f09f1deed9bf0b9d1f2e8ab9d470f1bb" [];
          "flow-bin@^0.33.0" = s."flow-bin@0.33.0";
          "for-each@0.3.2" = f "for-each" "0.3.2" y "2c40450b9348e97f281322593ba96704b9abd4d4" [
            s."is-function@~1.0.0"
          ];
          "for-each@^0.3.2" = s."for-each@0.3.2";
          "for-in@0.1.6" = f "for-in" "0.1.6" y "c9f96e89bfad18a545af5ec3ed352a1d9e5b4dc8" [];
          "for-in@^0.1.5" = s."for-in@0.1.6";
          "for-own@0.1.4" = f "for-own" "0.1.4" y "0149b41a39088c7515f51ebe1c1386d45f935072" [
            s."for-in@^0.1.5"
          ];
          "for-own@^0.1.4" = s."for-own@0.1.4";
          "foreach@2.0.5" = f "foreach" "2.0.5" y "0bee005018aeb260d0a3af3ae658dd0136ec1b99" [];
          "foreach@^2.0.5" = s."foreach@2.0.5";
          "forever-agent@0.6.1" = f "forever-agent" "0.6.1" y "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91" [];
          "forever-agent@~0.6.0" = s."forever-agent@0.6.1";
          "forever-agent@~0.6.1" = s."forever-agent@0.6.1";
          "form-data@0.2.0" = f "form-data" "0.2.0" y "26f8bc26da6440e299cbdcfb69035c4f77a6e466" [
            s."async@~0.9.0"
            s."combined-stream@~0.0.4"
            s."mime-types@~2.0.3"
          ];
          "form-data@2.1.2" = f "form-data" "2.1.2" y "89c3534008b97eada4cbb157d58f6f5df025eae4" [
            s."asynckit@^0.4.0"
            s."combined-stream@^1.0.5"
            s."mime-types@^2.1.12"
          ];
          "form-data@2.3.2" = f "form-data" "2.3.2" y "4970498be604c20c005d4f5c23aecd21d6b49099" [
            s."asynckit@^0.4.0"
            s."combined-stream@1.0.6"
            s."mime-types@^2.1.12"
          ];
          "form-data@~0.2.0" = s."form-data@0.2.0";
          "form-data@~2.1.1" = s."form-data@2.1.2";
          "form-data@~2.3.1" = s."form-data@2.3.2";
          "forwarded@0.1.0" = f "forwarded" "0.1.0" y "19ef9874c4ae1c297bcf078fde63a09b66a84363" [];
          "forwarded@~0.1.0" = s."forwarded@0.1.0";
          "fresh@0.3.0" = f "fresh" "0.3.0" y "651f838e22424e7566de161d8358caa199f83d4f" [];
          "fresh@0.5.0" = f "fresh" "0.5.0" y "f474ca5e6a9246d6fd8e0953cfa9b9c805afa78e" [];
          "from@0.1.3" = f "from" "0.1.3" y "ef63ac2062ac32acf7862e0d40b44b896f22f3bc" [];
          "from@~0" = s."from@0.1.3";
          "fs-exists-sync@0.1.0" = f "fs-exists-sync" "0.1.0" y "982d6893af918e72d08dec9e8673ff2b5a8d6add" [];
          "fs-exists-sync@^0.1.0" = s."fs-exists-sync@0.1.0";
          "fs-extra@0.26.7" = f "fs-extra" "0.26.7" y "9ae1fdd94897798edab76d0918cf42d0c3184fa9" [
            s."graceful-fs@^4.1.2"
            s."jsonfile@^2.1.0"
            s."klaw@^1.0.0"
            s."path-is-absolute@^1.0.0"
            s."rimraf@^2.2.8"
          ];
          "fs-extra@0.30.0" = f "fs-extra" "0.30.0" y "f233ffcc08d4da7d432daa449776989db1df93f0" [
            s."graceful-fs@^4.1.2"
            s."jsonfile@^2.1.0"
            s."klaw@^1.0.0"
            s."path-is-absolute@^1.0.0"
            s."rimraf@^2.2.8"
          ];
          "fs-extra@2.1.2" = f "fs-extra" "2.1.2" y "046c70163cef9aad46b0e4a7fa467fb22d71de35" [
            s."graceful-fs@^4.1.2"
            s."jsonfile@^2.1.0"
          ];
          "fs-extra@3.0.1" = f "fs-extra" "3.0.1" y "3794f378c58b342ea7dbbb23095109c4b3b62291" [
            s."graceful-fs@^4.1.2"
            s."jsonfile@^3.0.0"
            s."universalify@^0.1.0"
          ];
          "fs-extra@4.0.3" = f "fs-extra" "4.0.3" y "0d852122e5bc5beb453fb028e9c0c9bf36340c94" [
            s."graceful-fs@^4.1.2"
            s."jsonfile@^4.0.0"
            s."universalify@^0.1.0"
          ];
          "fs-extra@^0.30.0" = s."fs-extra@0.30.0";
          "fs-extra@^2.0.0" = s."fs-extra@2.1.2";
          "fs-extra@^2.1.2" = s."fs-extra@2.1.2";
          "fs-extra@^3.0.1" = s."fs-extra@3.0.1";
          "fs-extra@^4.0.0" = s."fs-extra@4.0.3";
          "fs-promise@2.0.3" = f "fs-promise" "2.0.3" y "f64e4f854bcf689aa8bddcba268916db3db46854" [
            s."any-promise@^1.3.0"
            s."fs-extra@^2.0.0"
            s."mz@^2.6.0"
            s."thenify-all@^1.6.0"
          ];
          "fs-promise@^2.0.0" = s."fs-promise@2.0.3";
          "fs-readdir-recursive@1.0.0" = f "fs-readdir-recursive" "1.0.0" y "8cd1745c8b4f8a29c8caec392476921ba195f560" [];
          "fs-readdir-recursive@^1.0.0" = s."fs-readdir-recursive@1.0.0";
          "fs.realpath@1.0.0" = f "fs.realpath" "1.0.0" y "1504ad2523158caa40db4a2787cb01411994ea4f" [];
          "fs.realpath@^1.0.0" = s."fs.realpath@1.0.0";
          "fsevents@1.0.17" = f "fsevents" "1.0.17" y "8537f3f12272678765b4fd6528c0f1f66f8f4558" [
            s."nan@^2.3.0"
            s."node-pre-gyp@^0.6.29"
          ];
          "fsevents@^1.0.0" = s."fsevents@1.0.17";
          "fstream-ignore@1.0.5" = f "fstream-ignore" "1.0.5" y "9c31dae34767018fe1d249b24dada67d092da105" [
            s."fstream@^1.0.0"
            s."inherits@2"
            s."minimatch@^3.0.0"
          ];
          "fstream-ignore@~1.0.5" = s."fstream-ignore@1.0.5";
          "fstream@1.0.10" = f "fstream" "1.0.10" y "604e8a92fe26ffd9f6fae30399d4984e1ab22822" [
            s."graceful-fs@^4.1.2"
            s."inherits@~2.0.0"
            s."mkdirp@>=0.5 0"
            s."rimraf@2"
          ];
          "fstream@1.0.11" = f "fstream" "1.0.11" y "5c1fb1f117477114f0632a0eb4b71b3cb0fd3171" [
            s."graceful-fs@^4.1.2"
            s."inherits@~2.0.0"
            s."mkdirp@>=0.5 0"
            s."rimraf@2"
          ];
          "fstream@^1.0.0" = s."fstream@1.0.10";
          "fstream@^1.0.2" = s."fstream@1.0.10";
          "fstream@^1.0.8" = s."fstream@1.0.11";
          "fstream@~1.0.10" = s."fstream@1.0.10";
          "function-bind@1.1.0" = f "function-bind" "1.1.0" y "16176714c801798e4e8f2cf7f7529467bb4a5771" [];
          "function-bind@1.1.1" = f "function-bind" "1.1.1" y "a56899d3ea3c9bab874bb9773b7c5ede92f4895d" [];
          "function-bind@^1.0.2" = s."function-bind@1.1.0";
          "function-bind@^1.1.0" = s."function-bind@1.1.0";
          "function-bind@^1.1.1" = s."function-bind@1.1.1";
          "fuse.js@2.6.1" = f "fuse.js" "2.6.1" y "d118e00f9a859f7b354ed4f7740214249e32a57a" [];
          "fuse.js@^2.2.0" = s."fuse.js@2.6.1";
          "fuzzysearch@1.0.3" = f "fuzzysearch" "1.0.3" y "dffc80f6d6b04223f2226aa79dd194231096d008" [];
          "fuzzysearch@^1.0.3" = s."fuzzysearch@1.0.3";
          "gauge@1.2.7" = f "gauge" "1.2.7" y "e9cec5483d3d4ee0ef44b60a7d99e4935e136d93" [
            s."ansi@^0.3.0"
            s."has-unicode@^2.0.0"
            s."lodash.pad@^4.1.0"
            s."lodash.padend@^4.1.0"
            s."lodash.padstart@^4.1.0"
          ];
          "gauge@2.7.2" = f "gauge" "2.7.2" y "15cecc31b02d05345a5d6b0e171cdb3ad2307774" [
            s."aproba@^1.0.3"
            s."console-control-strings@^1.0.0"
            s."has-unicode@^2.0.0"
            s."object-assign@^4.1.0"
            s."signal-exit@^3.0.0"
            s."string-width@^1.0.1"
            s."strip-ansi@^3.0.1"
            s."supports-color@^0.2.0"
            s."wide-align@^1.1.0"
          ];
          "gauge@2.7.4" = f "gauge" "2.7.4" y "2c03405c7538c39d7eb37b317022e325fb018bf7" [
            s."aproba@^1.0.3"
            s."console-control-strings@^1.0.0"
            s."has-unicode@^2.0.0"
            s."object-assign@^4.1.0"
            s."signal-exit@^3.0.0"
            s."string-width@^1.0.1"
            s."strip-ansi@^3.0.1"
            s."wide-align@^1.1.0"
          ];
          "gauge@~1.2.5" = s."gauge@1.2.7";
          "gauge@~2.7.1" = s."gauge@2.7.2";
          "gauge@~2.7.3" = s."gauge@2.7.4";
          "gaze@1.1.2" = f "gaze" "1.1.2" y "847224677adb8870d679257ed3388fdb61e40105" [
            s."globule@^1.0.0"
          ];
          "gaze@^1.0.0" = s."gaze@1.1.2";
          "gaze@~1.1.2" = s."gaze@1.1.2";
          "generate-function@2.0.0" = f "generate-function" "2.0.0" y "6858fe7c0969b7d4e9093337647ac79f60dfbe74" [];
          "generate-function@^2.0.0" = s."generate-function@2.0.0";
          "generate-object-property@1.2.0" = f "generate-object-property" "1.2.0" y "9c0e1c40308ce804f4783618b937fa88f99d50d0" [
            s."is-property@^1.0.0"
          ];
          "generate-object-property@^1.1.0" = s."generate-object-property@1.2.0";
          "generic-names@1.0.2" = f "generic-names" "1.0.2" y "e25b7feceb5b5a8f28f5f972a7ccfe57e562adcd" [
            s."loader-utils@^0.2.16"
          ];
          "generic-names@^1.0.1" = s."generic-names@1.0.2";
          "get-caller-file@1.0.2" = f "get-caller-file" "1.0.2" y "f702e63127e7e231c160a80c1554acb70d5047e5" [];
          "get-caller-file@^1.0.1" = s."get-caller-file@1.0.2";
          "get-func-name@2.0.0" = f "get-func-name" "2.0.0" y "ead774abee72e20409433a066366023dd6887a41" [];
          "get-func-name@^2.0.0" = s."get-func-name@2.0.0";
          "get-package-info@1.0.0" = f "get-package-info" "1.0.0" y "6432796563e28113cd9474dbbd00052985a4999c" [
            s."bluebird@^3.1.1"
            s."debug@^2.2.0"
            s."lodash.get@^4.0.0"
            s."read-pkg-up@^2.0.0"
          ];
          "get-package-info@^1.0.0" = s."get-package-info@1.0.0";
          "get-stdin@4.0.1" = f "get-stdin" "4.0.1" y "b968c6b0a04384324902e8bf1a5df32579a450fe" [];
          "get-stdin@^4.0.1" = s."get-stdin@4.0.1";
          "get-stream@2.3.1" = f "get-stream" "2.3.1" y "5f38f93f346009666ee0150a054167f91bdd95de" [
            s."object-assign@^4.0.1"
            s."pinkie-promise@^2.0.0"
          ];
          "get-stream@3.0.0" = f "get-stream" "3.0.0" y "8e943d1358dc37555054ecbe2edb05aa174ede14" [];
          "get-stream@^2.2.0" = s."get-stream@2.3.1";
          "get-stream@^3.0.0" = s."get-stream@3.0.0";
          "getpass@0.1.6" = f "getpass" "0.1.6" y "283ffd9fc1256840875311c1b60e8c40187110e6" [
            s."assert-plus@^1.0.0"
          ];
          "getpass@^0.1.1" = s."getpass@0.1.6";
          "gherkin@5.0.0" = f "gherkin" "5.0.0" y "96def41198ec3908258b511af74f655a2764d2a1" [];
          "gherkin@^5.0.0" = s."gherkin@5.0.0";
          "glob-base@0.3.0" = f "glob-base" "0.3.0" y "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4" [
            s."glob-parent@^2.0.0"
            s."is-glob@^2.0.0"
          ];
          "glob-base@^0.3.0" = s."glob-base@0.3.0";
          "glob-parent@2.0.0" = f "glob-parent" "2.0.0" y "81383d72db054fcccf5336daa902f182f6edbb28" [
            s."is-glob@^2.0.0"
          ];
          "glob-parent@^2.0.0" = s."glob-parent@2.0.0";
          "glob-to-regexp@0.1.0" = f "glob-to-regexp" "0.1.0" y "e0369d426578fd456d47dc23b09de05c1da9ea5d" [];
          "glob-to-regexp@^0.1.0" = s."glob-to-regexp@0.1.0";
          "glob@5.0.15" = f "glob" "5.0.15" y "1bc936b9e02f4a603fcc222ecf7633d30b8b93b1" [
            s."inflight@^1.0.4"
            s."inherits@2"
            s."minimatch@2 || 3"
            s."once@^1.3.0"
            s."path-is-absolute@^1.0.0"
          ];
          "glob@6.0.4" = f "glob" "6.0.4" y "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22" [
            s."inflight@^1.0.4"
            s."inherits@2"
            s."minimatch@2 || 3"
            s."once@^1.3.0"
            s."path-is-absolute@^1.0.0"
          ];
          "glob@7.1.1" = f "glob" "7.1.1" y "805211df04faaf1c63a3600306cdf5ade50b2ec8" [
            s."fs.realpath@^1.0.0"
            s."inflight@^1.0.4"
            s."inherits@2"
            s."minimatch@^3.0.2"
            s."once@^1.3.0"
            s."path-is-absolute@^1.0.0"
          ];
          "glob@^5.0.5" = s."glob@5.0.15";
          "glob@^6.0.4" = s."glob@6.0.4";
          "glob@^7.0.0" = s."glob@7.1.1";
          "glob@^7.0.3" = s."glob@7.1.1";
          "glob@^7.0.5" = s."glob@7.1.1";
          "glob@^7.1.1" = s."glob@7.1.1";
          "glob@~7.1.1" = s."glob@7.1.1";
          "global-modules@0.2.3" = f "global-modules" "0.2.3" y "ea5a3bed42c6d6ce995a4f8a1269b5dae223828d" [
            s."global-prefix@^0.1.4"
            s."is-windows@^0.2.0"
          ];
          "global-modules@^0.2.3" = s."global-modules@0.2.3";
          "global-prefix@0.1.5" = f "global-prefix" "0.1.5" y "8d3bc6b8da3ca8112a160d8d496ff0462bfef78f" [
            s."homedir-polyfill@^1.0.0"
            s."ini@^1.3.4"
            s."is-windows@^0.2.0"
            s."which@^1.2.12"
          ];
          "global-prefix@^0.1.4" = s."global-prefix@0.1.5";
          "global@4.3.1" = f "global" "4.3.1" y "5f757908c7cbabce54f386ae440e11e26b7916df" [
            s."min-document@^2.19.0"
            s."process@~0.5.1"
          ];
          "global@4.3.2" = f "global" "4.3.2" y "e76989268a6c74c38908b1305b10fc0e394e9d0f" [
            s."min-document@^2.19.0"
            s."process@~0.5.1"
          ];
          "global@^4.3.0" = s."global@4.3.1";
          "global@~4.3.0" = s."global@4.3.2";
          "globals@9.14.0" = f "globals" "9.14.0" y "8859936af0038741263053b39d0e76ca241e4034" [];
          "globals@9.18.0" = f "globals" "9.18.0" y "aa3896b3e69b487f17e31ed2143d69a8e30c2d8a" [];
          "globals@^9.0.0" = s."globals@9.14.0";
          "globals@^9.14.0" = s."globals@9.14.0";
          "globals@^9.18.0" = s."globals@9.18.0";
          "globby@5.0.0" = f "globby" "5.0.0" y "ebd84667ca0dbb330b99bcfc68eac2bc54370e0d" [
            s."array-union@^1.0.1"
            s."arrify@^1.0.0"
            s."glob@^7.0.3"
            s."object-assign@^4.0.1"
            s."pify@^2.0.0"
            s."pinkie-promise@^2.0.0"
          ];
          "globby@^5.0.0" = s."globby@5.0.0";
          "globule@1.1.0" = f "globule" "1.1.0" y "c49352e4dc183d85893ee825385eb994bb6df45f" [
            s."glob@~7.1.1"
            s."lodash@~4.16.4"
            s."minimatch@~3.0.2"
          ];
          "globule@^1.0.0" = s."globule@1.1.0";
          "glogg@1.0.0" = f "glogg" "1.0.0" y "7fe0f199f57ac906cf512feead8f90ee4a284fc5" [
            s."sparkles@^1.0.0"
          ];
          "glogg@^1.0.0" = s."glogg@1.0.0";
          "glossy@0.1.7" = f "glossy" "0.1.7" y "769b5984a96f6066ab9ea758224825ee6c210f0b" [];
          "glossy@^0.1.7" = s."glossy@0.1.7";
          "got@3.3.1" = f "got" "3.3.1" y "e5d0ed4af55fc3eef4d56007769d98192bcb2eca" [
            s."duplexify@^3.2.0"
            s."infinity-agent@^2.0.0"
            s."is-redirect@^1.0.0"
            s."is-stream@^1.0.0"
            s."lowercase-keys@^1.0.0"
            s."nested-error-stacks@^1.0.0"
            s."object-assign@^3.0.0"
            s."prepend-http@^1.0.0"
            s."read-all-stream@^3.0.0"
            s."timed-out@^2.0.0"
          ];
          "got@7.1.0" = f "got" "7.1.0" y "05450fd84094e6bbea56f451a43a9c289166385a" [
            s."decompress-response@^3.2.0"
            s."duplexer3@^0.1.4"
            s."get-stream@^3.0.0"
            s."is-plain-obj@^1.1.0"
            s."is-retry-allowed@^1.0.0"
            s."is-stream@^1.0.0"
            s."isurl@^1.0.0-alpha5"
            s."lowercase-keys@^1.0.0"
            s."p-cancelable@^0.3.0"
            s."p-timeout@^1.1.1"
            s."safe-buffer@^5.0.1"
            s."timed-out@^4.0.0"
            s."url-parse-lax@^1.0.0"
            s."url-to-options@^1.0.1"
          ];
          "got@^3.2.0" = s."got@3.3.1";
          "got@^7.1.0" = s."got@7.1.0";
          "graceful-fs@4.1.11" = f "graceful-fs" "4.1.11" y "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658" [];
          "graceful-fs@^4.1.0" = s."graceful-fs@4.1.11";
          "graceful-fs@^4.1.10" = s."graceful-fs@4.1.11";
          "graceful-fs@^4.1.11" = s."graceful-fs@4.1.11";
          "graceful-fs@^4.1.2" = s."graceful-fs@4.1.11";
          "graceful-fs@^4.1.3" = s."graceful-fs@4.1.11";
          "graceful-fs@^4.1.4" = s."graceful-fs@4.1.11";
          "graceful-fs@^4.1.6" = s."graceful-fs@4.1.11";
          "graceful-fs@^4.1.9" = s."graceful-fs@4.1.11";
          "graceful-readlink@1.0.1" = f "graceful-readlink" "1.0.1" y "4cafad76bc62f02fa039b2f94e9a3dd3a391a725" [];
          "graceful-readlink@>= 1.0.0" = s."graceful-readlink@1.0.1";
          "gulp-util@3.0.8" = f "gulp-util" "3.0.8" y "0054e1e744502e27c04c187c3ecc505dd54bbb4f" [
            s."array-differ@^1.0.0"
            s."array-uniq@^1.0.2"
            s."beeper@^1.0.0"
            s."chalk@^1.0.0"
            s."dateformat@^2.0.0"
            s."fancy-log@^1.1.0"
            s."gulplog@^1.0.0"
            s."has-gulplog@^0.1.0"
            s."lodash._reescape@^3.0.0"
            s."lodash._reevaluate@^3.0.0"
            s."lodash._reinterpolate@^3.0.0"
            s."lodash.template@^3.0.0"
            s."minimist@^1.1.0"
            s."multipipe@^0.1.2"
            s."object-assign@^3.0.0"
            s."replace-ext@0.0.1"
            s."through2@^2.0.0"
            s."vinyl@^0.5.0"
          ];
          "gulp-util@^3.0.4" = s."gulp-util@3.0.8";
          "gulplog@1.0.0" = f "gulplog" "1.0.0" y "e28c4d45d05ecbbed818363ce8f9c5926229ffe5" [
            s."glogg@^1.0.0"
          ];
          "gulplog@^1.0.0" = s."gulplog@1.0.0";
          "happypack@4.0.0-beta.2" = f "happypack" "4.0.0-beta.2" y "552e75d17292d5142c84be32f9b255d91e40e020" [
            s."async@1.5.0"
            s."json-stringify-safe@5.0.1"
            s."loader-utils@1.1.0"
            s."serialize-error@^2.1.0"
          ];
          "har-schema@2.0.0" = f "har-schema" "2.0.0" y "a94c2224ebcac04782a0d9035521f24735b7ec92" [];
          "har-schema@^2.0.0" = s."har-schema@2.0.0";
          "har-validator@1.8.0" = f "har-validator" "1.8.0" y "d83842b0eb4c435960aeb108a067a3aa94c0eeb2" [
            s."bluebird@^2.9.30"
            s."chalk@^1.0.0"
            s."commander@^2.8.1"
            s."is-my-json-valid@^2.12.0"
          ];
          "har-validator@2.0.6" = f "har-validator" "2.0.6" y "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d" [
            s."chalk@^1.1.1"
            s."commander@^2.9.0"
            s."is-my-json-valid@^2.12.4"
            s."pinkie-promise@^2.0.0"
          ];
          "har-validator@5.0.3" = f "har-validator" "5.0.3" y "ba402c266194f15956ef15e0fcf242993f6a7dfd" [
            s."ajv@^5.1.0"
            s."har-schema@^2.0.0"
          ];
          "har-validator@^1.4.0" = s."har-validator@1.8.0";
          "har-validator@~2.0.6" = s."har-validator@2.0.6";
          "har-validator@~5.0.3" = s."har-validator@5.0.3";
          "has-ansi@0.1.0" = f "has-ansi" "0.1.0" y "84f265aae8c0e6a88a12d7022894b7568894c62e" [
            s."ansi-regex@^0.2.0"
          ];
          "has-ansi@2.0.0" = f "has-ansi" "2.0.0" y "34f5049ce1ecdf2b0649af3ef24e45ed35416d91" [
            s."ansi-regex@^2.0.0"
          ];
          "has-ansi@^0.1.0" = s."has-ansi@0.1.0";
          "has-ansi@^2.0.0" = s."has-ansi@2.0.0";
          "has-flag@1.0.0" = f "has-flag" "1.0.0" y "9d9e793165ce017a00f00418c43f942a7b1d11fa" [];
          "has-flag@2.0.0" = f "has-flag" "2.0.0" y "e8207af1cc7b30d446cc70b734b5e8be18f88d51" [];
          "has-flag@3.0.0" = f "has-flag" "3.0.0" y "b5d454dc2199ae225699f3467e5a07f3b955bafd" [];
          "has-flag@^1.0.0" = s."has-flag@1.0.0";
          "has-flag@^2.0.0" = s."has-flag@2.0.0";
          "has-flag@^3.0.0" = s."has-flag@3.0.0";
          "has-gulplog@0.1.0" = f "has-gulplog" "0.1.0" y "6414c82913697da51590397dafb12f22967811ce" [
            s."sparkles@^1.0.0"
          ];
          "has-gulplog@^0.1.0" = s."has-gulplog@0.1.0";
          "has-symbol-support-x@1.4.1" = f "has-symbol-support-x" "1.4.1" y "66ec2e377e0c7d7ccedb07a3a84d77510ff1bc4c" [];
          "has-symbol-support-x@^1.4.1" = s."has-symbol-support-x@1.4.1";
          "has-symbols@1.0.0" = f "has-symbols" "1.0.0" y "ba1a8f1af2a0fc39650f5c850367704122063b44" [];
          "has-symbols@^1.0.0" = s."has-symbols@1.0.0";
          "has-to-string-tag-x@1.4.1" = f "has-to-string-tag-x" "1.4.1" y "a045ab383d7b4b2012a00148ab0aa5f290044d4d" [
            s."has-symbol-support-x@^1.4.1"
          ];
          "has-to-string-tag-x@^1.2.0" = s."has-to-string-tag-x@1.4.1";
          "has-unicode@2.0.1" = f "has-unicode" "2.0.1" y "e0e6fe6a28cf51138855e086d1691e771de2a8b9" [];
          "has-unicode@^2.0.0" = s."has-unicode@2.0.1";
          "has@1.0.1" = f "has" "1.0.1" y "8461733f538b0837c9361e39a9ab9e9704dc2f28" [
            s."function-bind@^1.0.2"
          ];
          "has@^1.0.1" = s."has@1.0.1";
          "hash-base@2.0.2" = f "hash-base" "2.0.2" y "66ea1d856db4e8a5470cadf6fce23ae5244ef2e1" [
            s."inherits@^2.0.1"
          ];
          "hash-base@^2.0.0" = s."hash-base@2.0.2";
          "hash.js@1.0.3" = f "hash.js" "1.0.3" y "1332ff00156c0a0ffdd8236013d07b77a0451573" [
            s."inherits@^2.0.1"
          ];
          "hash.js@1.1.3" = f "hash.js" "1.1.3" y "340dedbe6290187151c1ea1d777a3448935df846" [
            s."inherits@^2.0.3"
            s."minimalistic-assert@^1.0.0"
          ];
          "hash.js@^1.0.0" = s."hash.js@1.0.3";
          "hash.js@^1.0.3" = s."hash.js@1.1.3";
          "hawk@2.3.1" = f "hawk" "2.3.1" y "1e731ce39447fa1d0f6d707f7bceebec0fd1ec1f" [
            s."boom@2.x.x"
            s."cryptiles@2.x.x"
            s."hoek@2.x.x"
            s."sntp@1.x.x"
          ];
          "hawk@3.1.3" = f "hawk" "3.1.3" y "078444bd7c1640b0fe540d2c9b73d59678e8e1c4" [
            s."boom@2.x.x"
            s."cryptiles@2.x.x"
            s."hoek@2.x.x"
            s."sntp@1.x.x"
          ];
          "hawk@6.0.2" = f "hawk" "6.0.2" y "af4d914eb065f9b5ce4d9d11c1cb2126eecc3038" [
            s."boom@4.x.x"
            s."cryptiles@3.x.x"
            s."hoek@4.x.x"
            s."sntp@2.x.x"
          ];
          "hawk@~2.3.0" = s."hawk@2.3.1";
          "hawk@~3.1.3" = s."hawk@3.1.3";
          "hawk@~6.0.2" = s."hawk@6.0.2";
          "he@1.1.1" = f "he" "1.1.1" y "93410fd21b009735151f8868c2f271f3427e23fd" [];
          "he@1.1.x" = s."he@1.1.1";
          "headless@0.1.7" = f "headless" "0.1.7" y "6e62fae668947f88184d5c156ede7c5695a7e9c8" [];
          "headless@^0.1.7" = s."headless@0.1.7";
          "highlight.js@9.9.0" = f "highlight.js" "9.9.0" y "b9995dcfdc2773e307a34f0460d92b9a474782c0" [];
          "highlight.js@^9.3.0" = s."highlight.js@9.9.0";
          "history@3.2.1" = f "history" "3.2.1" y "71c7497f4e6090363d19a6713bb52a1bfcdd99aa" [
            s."invariant@^2.2.1"
            s."loose-envify@^1.2.0"
            s."query-string@^4.2.2"
            s."warning@^3.0.0"
          ];
          "history@^3.0.0" = s."history@3.2.1";
          "hmac-drbg@1.0.1" = f "hmac-drbg" "1.0.1" y "d2745701025a6c775a6c545793ed502fc0c649a1" [
            s."hash.js@^1.0.3"
            s."minimalistic-assert@^1.0.0"
            s."minimalistic-crypto-utils@^1.0.1"
          ];
          "hmac-drbg@^1.0.0" = s."hmac-drbg@1.0.1";
          "hoek@2.16.3" = f "hoek" "2.16.3" y "20bb7403d3cea398e91dc4710a8ff1b8274a25ed" [];
          "hoek@2.x.x" = s."hoek@2.16.3";
          "hoek@4.1.0" = f "hoek" "4.1.0" y "4a4557460f69842ed463aa00628cc26d2683afa7" [];
          "hoek@4.x.x" = s."hoek@4.1.0";
          "hoist-non-react-statics@1.2.0" = f "hoist-non-react-statics" "1.2.0" y "aa448cf0986d55cc40773b17174b7dd066cb7cfb" [];
          "hoist-non-react-statics@1.x.x" = s."hoist-non-react-statics@1.2.0";
          "hoist-non-react-statics@^1.2.0" = s."hoist-non-react-statics@1.2.0";
          "home-or-tmp@2.0.0" = f "home-or-tmp" "2.0.0" y "e36c3f2d2cae7d746a857e38d18d5f32a7882db8" [
            s."os-homedir@^1.0.0"
            s."os-tmpdir@^1.0.1"
          ];
          "home-or-tmp@^2.0.0" = s."home-or-tmp@2.0.0";
          "home-path@1.0.3" = f "home-path" "1.0.3" y "9ece59fec3f032e6d10b5434fee264df4c2de32f" [];
          "home-path@^1.0.1" = s."home-path@1.0.3";
          "homedir-polyfill@1.0.1" = f "homedir-polyfill" "1.0.1" y "4c2bbc8a758998feebf5ed68580f76d46768b4bc" [
            s."parse-passwd@^1.0.0"
          ];
          "homedir-polyfill@^1.0.0" = s."homedir-polyfill@1.0.1";
          "hosted-git-info@2.1.5" = f "hosted-git-info" "2.1.5" y "0ba81d90da2e25ab34a332e6ec77936e1598118b" [];
          "hosted-git-info@^2.1.4" = s."hosted-git-info@2.1.5";
          "html-comment-regex@1.1.1" = f "html-comment-regex" "1.1.1" y "668b93776eaae55ebde8f3ad464b307a4963625e" [];
          "html-comment-regex@^1.1.0" = s."html-comment-regex@1.1.1";
          "html-encoding-sniffer@1.0.1" = f "html-encoding-sniffer" "1.0.1" y "79bf7a785ea495fe66165e734153f363ff5437da" [
            s."whatwg-encoding@^1.0.1"
          ];
          "html-encoding-sniffer@^1.0.1" = s."html-encoding-sniffer@1.0.1";
          "html-entities@1.2.0" = f "html-entities" "1.2.0" y "41948caf85ce82fed36e4e6a0ed371a6664379e2" [];
          "html-entities@^1.2.0" = s."html-entities@1.2.0";
          "html-loader@0.4.5" = f "html-loader" "0.4.5" y "5fbcd87cd63a5c49a7fce2fe56f425e05729c68c" [
            s."es6-templates@^0.2.2"
            s."fastparse@^1.1.1"
            s."html-minifier@^3.0.1"
            s."loader-utils@^1.0.2"
            s."object-assign@^4.1.0"
          ];
          "html-minifier@3.5.9" = f "html-minifier" "3.5.9" y "74424014b872598d4bb0e20ac420926ec61024b6" [
            s."camel-case@3.0.x"
            s."clean-css@4.1.x"
            s."commander@2.14.x"
            s."he@1.1.x"
            s."ncname@1.0.x"
            s."param-case@2.1.x"
            s."relateurl@0.2.x"
            s."uglify-js@3.3.x"
          ];
          "html-minifier@^3.0.1" = s."html-minifier@3.5.9";
          "http-errors@1.5.1" = f "http-errors" "1.5.1" y "788c0d2c1de2c81b9e6e8c01843b6b97eb920750" [
            s."inherits@2.0.3"
            s."setprototypeof@1.0.2"
            s."statuses@>= 1.3.1 < 2"
          ];
          "http-errors@1.6.2" = f "http-errors" "1.6.2" y "0a002cc85707192a7e7946ceedc11155f60ec736" [
            s."depd@1.1.1"
            s."inherits@2.0.3"
            s."setprototypeof@1.0.3"
            s."statuses@>= 1.3.1 < 2"
          ];
          "http-errors@~1.5.0" = s."http-errors@1.5.1";
          "http-errors@~1.6.1" = s."http-errors@1.6.2";
          "http-errors@~1.6.2" = s."http-errors@1.6.2";
          "http-https@1.0.0" = f "http-https" "1.0.0" y "2f908dd5f1db4068c058cd6e6d4ce392c913389b" [];
          "http-https@^1.0.0" = s."http-https@1.0.0";
          "http-signature@0.10.1" = f "http-signature" "0.10.1" y "4fbdac132559aa8323121e540779c0a012b27e66" [
            s."asn1@0.1.11"
            s."assert-plus@^0.1.5"
            s."ctype@0.5.3"
          ];
          "http-signature@1.1.1" = f "http-signature" "1.1.1" y "df72e267066cd0ac67fb76adf8e134a8fbcf91bf" [
            s."assert-plus@^0.2.0"
            s."jsprim@^1.2.2"
            s."sshpk@^1.7.0"
          ];
          "http-signature@1.2.0" = f "http-signature" "1.2.0" y "9aecd925114772f3d95b65a60abb8f7c18fbace1" [
            s."assert-plus@^1.0.0"
            s."jsprim@^1.2.2"
            s."sshpk@^1.7.0"
          ];
          "http-signature@~0.10.0" = s."http-signature@0.10.1";
          "http-signature@~1.1.0" = s."http-signature@1.1.1";
          "http-signature@~1.2.0" = s."http-signature@1.2.0";
          "https-browserify@0.0.1" = f "https-browserify" "0.0.1" y "3f91365cabe60b77ed0ebba24b454e3e09d95a82" [];
          "humanize-duration@3.12.0" = f "humanize-duration" "3.12.0" y "be2fb3062f5d7abc0892e715b5dd2bd152c7055e" [];
          "humanize-plus@1.8.2" = f "humanize-plus" "1.8.2" y "a65b34459ad6367adbb3707a82a3c9f916167030" [];
          "humanize-plus@^1.8.1" = s."humanize-plus@1.8.2";
          "iconv-lite@0.4.13" = f "iconv-lite" "0.4.13" y "1f88aba4ab0b1508e8312acc39345f36e992e2f2" [];
          "iconv-lite@0.4.15" = f "iconv-lite" "0.4.15" y "fe265a218ac6a57cfe854927e9d04c19825eddeb" [];
          "iconv-lite@0.4.19" = f "iconv-lite" "0.4.19" y "f7468f60135f5e5dad3399c0a81be9a1603a082b" [];
          "iconv-lite@^0.4.13" = s."iconv-lite@0.4.15";
          "iconv-lite@^0.4.17" = s."iconv-lite@0.4.19";
          "iconv-lite@~0.4.13" = s."iconv-lite@0.4.15";
          "icss-replace-symbols@1.0.2" = f "icss-replace-symbols" "1.0.2" y "cb0b6054eb3af6edc9ab1d62d01933e2d4c8bfa5" [];
          "icss-replace-symbols@^1.0.2" = s."icss-replace-symbols@1.0.2";
          "ieee754@1.1.8" = f "ieee754" "1.1.8" y "be33d40ac10ef1926701f6f08a2d86fbfd1ad3e4" [];
          "ieee754@^1.1.4" = s."ieee754@1.1.8";
          "ignore-by-default@1.0.1" = f "ignore-by-default" "1.0.1" y "48ca6d72f6c6a3af00a9ad4ae6876be3889e2b09" [];
          "ignore-by-default@^1.0.0" = s."ignore-by-default@1.0.1";
          "ignore@3.2.0" = f "ignore" "3.2.0" y "8d88f03c3002a0ac52114db25d2c673b0bf1e435" [];
          "ignore@^3.2.0" = s."ignore@3.2.0";
          "immutable@3.8.1" = f "immutable" "3.8.1" y "200807f11ab0f72710ea485542de088075f68cd2" [];
          "immutable@^3.8.1" = s."immutable@3.8.1";
          "imurmurhash@0.1.4" = f "imurmurhash" "0.1.4" y "9218b9b2b928a238b13dc4fb6b6d576f231453ea" [];
          "imurmurhash@^0.1.4" = s."imurmurhash@0.1.4";
          "in-publish@2.0.0" = f "in-publish" "2.0.0" y "e20ff5e3a2afc2690320b6dc552682a9c7fadf51" [];
          "in-publish@^2.0.0" = s."in-publish@2.0.0";
          "indent-string@2.1.0" = f "indent-string" "2.1.0" y "8e2d48348742121b4a8218b7a137e9a52049dc80" [
            s."repeating@^2.0.0"
          ];
          "indent-string@3.2.0" = f "indent-string" "3.2.0" y "4a5fd6d27cc332f37e5419a504dbb837105c9289" [];
          "indent-string@^2.1.0" = s."indent-string@2.1.0";
          "indent-string@^3.1.0" = s."indent-string@3.2.0";
          "indexes-of@1.0.1" = f "indexes-of" "1.0.1" y "f30f716c8e2bd346c7b67d3df3915566a7c05607" [];
          "indexes-of@^1.0.1" = s."indexes-of@1.0.1";
          "indexof@0.0.1" = f "indexof" "0.0.1" y "82dc336d232b9062179d05ab3293a66059fd435d" [];
          "infinity-agent@2.0.3" = f "infinity-agent" "2.0.3" y "45e0e2ff7a9eb030b27d62b74b3744b7a7ac4216" [];
          "infinity-agent@^2.0.0" = s."infinity-agent@2.0.3";
          "inflight@1.0.6" = f "inflight" "1.0.6" y "49bd6331d7d02d0c09bc910a1075ba8165b56df9" [
            s."once@^1.3.0"
            s."wrappy@1"
          ];
          "inflight@^1.0.4" = s."inflight@1.0.6";
          "inherits@2" = s."inherits@2.0.3";
          "inherits@2.0.1" = f "inherits" "2.0.1" y "b17d08d326b4423e568eff719f91b0b1cbdf69f1" [];
          "inherits@2.0.3" = f "inherits" "2.0.3" y "633c2c83e3da42a502f52466022480f4208261de" [];
          "inherits@^2.0.1" = s."inherits@2.0.3";
          "inherits@^2.0.3" = s."inherits@2.0.3";
          "inherits@~2.0.0" = s."inherits@2.0.3";
          "inherits@~2.0.1" = s."inherits@2.0.3";
          "ini@1.3.4" = f "ini" "1.3.4" y "0537cb79daf59b59a1a517dff706c86ec039162e" [];
          "ini@^1.3.4" = s."ini@1.3.4";
          "ini@~1.3.0" = s."ini@1.3.4";
          "inquirer@0.12.0" = f "inquirer" "0.12.0" y "1ef2bfd63504df0bc75785fff8c2c41df12f077e" [
            s."ansi-escapes@^1.1.0"
            s."ansi-regex@^2.0.0"
            s."chalk@^1.0.0"
            s."cli-cursor@^1.0.1"
            s."cli-width@^2.0.0"
            s."figures@^1.3.5"
            s."lodash@^4.3.0"
            s."readline2@^1.0.1"
            s."run-async@^0.1.0"
            s."rx-lite@^3.1.2"
            s."string-width@^1.0.1"
            s."strip-ansi@^3.0.0"
            s."through@^2.3.6"
          ];
          "inquirer@3.3.0" = f "inquirer" "3.3.0" y "9dd2f2ad765dcab1ff0443b491442a20ba227dc9" [
            s."ansi-escapes@^3.0.0"
            s."chalk@^2.0.0"
            s."cli-cursor@^2.1.0"
            s."cli-width@^2.0.0"
            s."external-editor@^2.0.4"
            s."figures@^2.0.0"
            s."lodash@^4.3.0"
            s."mute-stream@0.0.7"
            s."run-async@^2.2.0"
            s."rx-lite@^4.0.8"
            s."rx-lite-aggregates@^4.0.8"
            s."string-width@^2.1.0"
            s."strip-ansi@^4.0.0"
            s."through@^2.3.6"
          ];
          "inquirer@^0.12.0" = s."inquirer@0.12.0";
          "inquirer@~3.3.0" = s."inquirer@3.3.0";
          "interpret@0.6.6" = f "interpret" "0.6.6" y "fecd7a18e7ce5ca6abfb953e1f86213a49f1625b" [];
          "interpret@1.0.1" = f "interpret" "1.0.1" y "d579fb7f693b858004947af39fa0db49f795602c" [];
          "interpret@^0.6.4" = s."interpret@0.6.6";
          "interpret@^1.0.0" = s."interpret@1.0.1";
          "intl-format-cache@2.0.5" = f "intl-format-cache" "2.0.5" y "b484cefcb9353f374f25de389a3ceea1af18d7c9" [];
          "intl-format-cache@^2.0.5" = s."intl-format-cache@2.0.5";
          "intl-messageformat-parser@1.2.0" = f "intl-messageformat-parser" "1.2.0" y "5906b7f953ab7470e0dc8549097b648b991892ff" [];
          "intl-messageformat-parser@^1.2.0" = s."intl-messageformat-parser@1.2.0";
          "intl-messageformat@1.3.0" = f "intl-messageformat" "1.3.0" y "f7d926aded7a3ab19b2dc601efd54e99a4bd4eae" [
            s."intl-messageformat-parser@1.2.0"
          ];
          "intl-messageformat@^1.3.0" = s."intl-messageformat@1.3.0";
          "intl-relativeformat@1.3.0" = f "intl-relativeformat" "1.3.0" y "893dc7076fccd380cf091a2300c380fa57ace45b" [
            s."intl-messageformat@1.3.0"
          ];
          "intl-relativeformat@^1.3.0" = s."intl-relativeformat@1.3.0";
          "invariant@2.2.2" = f "invariant" "2.2.2" y "9e1f56ac0acdb6bf303306f338be3b204ae60360" [
            s."loose-envify@^1.0.0"
          ];
          "invariant@2.x.x" = s."invariant@2.2.2";
          "invariant@^2.1.1" = s."invariant@2.2.2";
          "invariant@^2.2.0" = s."invariant@2.2.2";
          "invariant@^2.2.1" = s."invariant@2.2.2";
          "invariant@^2.2.2" = s."invariant@2.2.2";
          "invert-kv@1.0.0" = f "invert-kv" "1.0.0" y "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6" [];
          "invert-kv@^1.0.0" = s."invert-kv@1.0.0";
          "ipaddr.js@1.1.1" = f "ipaddr.js" "1.1.1" y "c791d95f52b29c1247d5df80ada39b8a73647230" [];
          "ipaddr.js@1.4.0" = f "ipaddr.js" "1.4.0" y "296aca878a821816e5b85d0a285a99bcff4582f0" [];
          "irregular-plurals@1.2.0" = f "irregular-plurals" "1.2.0" y "38f299834ba8c00c30be9c554e137269752ff3ac" [];
          "irregular-plurals@^1.0.0" = s."irregular-plurals@1.2.0";
          "is-absolute-url@2.1.0" = f "is-absolute-url" "2.1.0" y "50530dfb84fcc9aa7dbe7852e83a37b93b9f2aa6" [];
          "is-absolute-url@^2.0.0" = s."is-absolute-url@2.1.0";
          "is-absolute@0.2.6" = f "is-absolute" "0.2.6" y "20de69f3db942ef2d87b9c2da36f172235b1b5eb" [
            s."is-relative@^0.2.1"
            s."is-windows@^0.2.0"
          ];
          "is-absolute@^0.2.3" = s."is-absolute@0.2.6";
          "is-arrayish@0.2.1" = f "is-arrayish" "0.2.1" y "77c99840527aa8ecb1a8ba697b80645a7a926a9d" [];
          "is-arrayish@^0.2.1" = s."is-arrayish@0.2.1";
          "is-binary-path@1.0.1" = f "is-binary-path" "1.0.1" y "75f16642b480f187a711c814161fd3a4a7655898" [
            s."binary-extensions@^1.0.0"
          ];
          "is-binary-path@^1.0.0" = s."is-binary-path@1.0.1";
          "is-buffer@1.1.4" = f "is-buffer" "1.1.4" y "cfc86ccd5dc5a52fa80489111c6920c457e2d98b" [];
          "is-buffer@^1.0.2" = s."is-buffer@1.1.4";
          "is-builtin-module@1.0.0" = f "is-builtin-module" "1.0.0" y "540572d34f7ac3119f8f76c30cbc1b1e037affbe" [
            s."builtin-modules@^1.0.0"
          ];
          "is-builtin-module@^1.0.0" = s."is-builtin-module@1.0.0";
          "is-callable@1.1.3" = f "is-callable" "1.1.3" y "86eb75392805ddc33af71c92a0eedf74ee7604b2" [];
          "is-callable@^1.1.1" = s."is-callable@1.1.3";
          "is-callable@^1.1.3" = s."is-callable@1.1.3";
          "is-date-object@1.0.1" = f "is-date-object" "1.0.1" y "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16" [];
          "is-date-object@^1.0.1" = s."is-date-object@1.0.1";
          "is-dom@1.0.7" = f "is-dom" "1.0.7" y "d5ffac0b73f90d07d9d1061436f60c409a071caf" [
            s."jsdom@^9.9.1"
          ];
          "is-dom@^1.0.5" = s."is-dom@1.0.7";
          "is-dotfile@1.0.2" = f "is-dotfile" "1.0.2" y "2c132383f39199f8edc268ca01b9b007d205cc4d" [];
          "is-dotfile@^1.0.0" = s."is-dotfile@1.0.2";
          "is-equal-shallow@0.1.3" = f "is-equal-shallow" "0.1.3" y "2238098fc221de0bcfa5d9eac4c45d638aa1c534" [
            s."is-primitive@^2.0.0"
          ];
          "is-equal-shallow@^0.1.3" = s."is-equal-shallow@0.1.3";
          "is-extendable@0.1.1" = f "is-extendable" "0.1.1" y "62b110e289a471418e3ec36a617d472e301dfc89" [];
          "is-extendable@^0.1.1" = s."is-extendable@0.1.1";
          "is-extglob@1.0.0" = f "is-extglob" "1.0.0" y "ac468177c4943405a092fc8f29760c6ffc6206c0" [];
          "is-extglob@^1.0.0" = s."is-extglob@1.0.0";
          "is-finite@1.0.2" = f "is-finite" "1.0.2" y "cc6677695602be550ef11e8b4aa6305342b6d0aa" [
            s."number-is-nan@^1.0.0"
          ];
          "is-finite@^1.0.0" = s."is-finite@1.0.2";
          "is-fullwidth-code-point@1.0.0" = f "is-fullwidth-code-point" "1.0.0" y "ef9e31386f031a7f0d643af82fde50c457ef00cb" [
            s."number-is-nan@^1.0.0"
          ];
          "is-fullwidth-code-point@2.0.0" = f "is-fullwidth-code-point" "2.0.0" y "a3b30a5c4f199183167aaab93beefae3ddfb654f" [];
          "is-fullwidth-code-point@^1.0.0" = s."is-fullwidth-code-point@1.0.0";
          "is-fullwidth-code-point@^2.0.0" = s."is-fullwidth-code-point@2.0.0";
          "is-function@1.0.1" = f "is-function" "1.0.1" y "12cfb98b65b57dd3d193a3121f5f6e2f437602b5" [];
          "is-function@^1.0.1" = s."is-function@1.0.1";
          "is-function@~1.0.0" = s."is-function@1.0.1";
          "is-generator@1.0.3" = f "is-generator" "1.0.3" y "c14c21057ed36e328db80347966c693f886389f3" [];
          "is-generator@^1.0.2" = s."is-generator@1.0.3";
          "is-glob@2.0.1" = f "is-glob" "2.0.1" y "d096f926a3ded5600f3fdfd91198cb0888c2d863" [
            s."is-extglob@^1.0.0"
          ];
          "is-glob@^2.0.0" = s."is-glob@2.0.1";
          "is-glob@^2.0.1" = s."is-glob@2.0.1";
          "is-hex-prefixed@1.0.0" = f "is-hex-prefixed" "1.0.0" y "7d8d37e6ad77e5d127148913c573e082d777f554" [];
          "is-my-json-valid@2.15.0" = f "is-my-json-valid" "2.15.0" y "936edda3ca3c211fd98f3b2d3e08da43f7b2915b" [
            s."generate-function@^2.0.0"
            s."generate-object-property@^1.1.0"
            s."jsonpointer@^4.0.0"
            s."xtend@^4.0.0"
          ];
          "is-my-json-valid@^2.10.0" = s."is-my-json-valid@2.15.0";
          "is-my-json-valid@^2.12.0" = s."is-my-json-valid@2.15.0";
          "is-my-json-valid@^2.12.4" = s."is-my-json-valid@2.15.0";
          "is-natural-number@4.0.1" = f "is-natural-number" "4.0.1" y "ab9d76e1db4ced51e35de0c72ebecf09f734cde8" [];
          "is-natural-number@^4.0.1" = s."is-natural-number@4.0.1";
          "is-npm@1.0.0" = f "is-npm" "1.0.0" y "f2fb63a65e4905b406c86072765a1a4dc793b9f4" [];
          "is-npm@^1.0.0" = s."is-npm@1.0.0";
          "is-number@2.1.0" = f "is-number" "2.1.0" y "01fcbbb393463a548f2f466cce16dece49db908f" [
            s."kind-of@^3.0.2"
          ];
          "is-number@^2.0.2" = s."is-number@2.1.0";
          "is-number@^2.1.0" = s."is-number@2.1.0";
          "is-obj@1.0.1" = f "is-obj" "1.0.1" y "3e4729ac1f5fde025cd7d83a896dab9f4f67db0f" [];
          "is-obj@^1.0.0" = s."is-obj@1.0.1";
          "is-object@1.0.1" = f "is-object" "1.0.1" y "8952688c5ec2ffd6b03ecc85e769e02903083470" [];
          "is-object@^1.0.1" = s."is-object@1.0.1";
          "is-path-cwd@1.0.0" = f "is-path-cwd" "1.0.0" y "d225ec23132e89edd38fda767472e62e65f1106d" [];
          "is-path-cwd@^1.0.0" = s."is-path-cwd@1.0.0";
          "is-path-in-cwd@1.0.0" = f "is-path-in-cwd" "1.0.0" y "6477582b8214d602346094567003be8a9eac04dc" [
            s."is-path-inside@^1.0.0"
          ];
          "is-path-in-cwd@^1.0.0" = s."is-path-in-cwd@1.0.0";
          "is-path-inside@1.0.0" = f "is-path-inside" "1.0.0" y "fc06e5a1683fbda13de667aff717bbc10a48f37f" [
            s."path-is-inside@^1.0.1"
          ];
          "is-path-inside@^1.0.0" = s."is-path-inside@1.0.0";
          "is-plain-obj@1.1.0" = f "is-plain-obj" "1.1.0" y "71a50c8429dfca773c92a390a4a03b39fcd51d3e" [];
          "is-plain-obj@^1.0.0" = s."is-plain-obj@1.1.0";
          "is-plain-obj@^1.1.0" = s."is-plain-obj@1.1.0";
          "is-posix-bracket@0.1.1" = f "is-posix-bracket" "0.1.1" y "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4" [];
          "is-posix-bracket@^0.1.0" = s."is-posix-bracket@0.1.1";
          "is-primitive@2.0.0" = f "is-primitive" "2.0.0" y "207bab91638499c07b2adf240a41a87210034575" [];
          "is-primitive@^2.0.0" = s."is-primitive@2.0.0";
          "is-promise@2.1.0" = f "is-promise" "2.1.0" y "79a2a9ece7f096e80f36d2b2f3bc16c1ff4bf3fa" [];
          "is-promise@^2.1.0" = s."is-promise@2.1.0";
          "is-property@1.0.2" = f "is-property" "1.0.2" y "57fe1c4e48474edd65b09911f26b1cd4095dda84" [];
          "is-property@^1.0.0" = s."is-property@1.0.2";
          "is-redirect@1.0.0" = f "is-redirect" "1.0.0" y "1d03dded53bd8db0f30c26e4f95d36fc7c87dc24" [];
          "is-redirect@^1.0.0" = s."is-redirect@1.0.0";
          "is-regex@1.0.3" = f "is-regex" "1.0.3" y "0d55182bddf9f2fde278220aec3a75642c908637" [];
          "is-regex@^1.0.3" = s."is-regex@1.0.3";
          "is-relative@0.2.1" = f "is-relative" "0.2.1" y "d27f4c7d516d175fb610db84bbeef23c3bc97aa5" [
            s."is-unc-path@^0.1.1"
          ];
          "is-relative@^0.2.1" = s."is-relative@0.2.1";
          "is-resolvable@1.0.0" = f "is-resolvable" "1.0.0" y "8df57c61ea2e3c501408d100fb013cf8d6e0cc62" [
            s."tryit@^1.0.1"
          ];
          "is-resolvable@^1.0.0" = s."is-resolvable@1.0.0";
          "is-retry-allowed@1.1.0" = f "is-retry-allowed" "1.1.0" y "11a060568b67339444033d0125a61a20d564fb34" [];
          "is-retry-allowed@^1.0.0" = s."is-retry-allowed@1.1.0";
          "is-stream@1.1.0" = f "is-stream" "1.1.0" y "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44" [];
          "is-stream@^1.0.0" = s."is-stream@1.1.0";
          "is-stream@^1.0.1" = s."is-stream@1.1.0";
          "is-stream@^1.1.0" = s."is-stream@1.1.0";
          "is-svg@2.1.0" = f "is-svg" "2.1.0" y "cf61090da0d9efbcab8722deba6f032208dbb0e9" [
            s."html-comment-regex@^1.1.0"
          ];
          "is-svg@^2.0.0" = s."is-svg@2.1.0";
          "is-symbol@1.0.1" = f "is-symbol" "1.0.1" y "3cc59f00025194b6ab2e38dbae6689256b660572" [];
          "is-symbol@^1.0.1" = s."is-symbol@1.0.1";
          "is-typedarray@1.0.0" = f "is-typedarray" "1.0.0" y "e479c80858df0c1b11ddda6940f96011fcda4a9a" [];
          "is-typedarray@^1.0.0" = s."is-typedarray@1.0.0";
          "is-typedarray@~1.0.0" = s."is-typedarray@1.0.0";
          "is-unc-path@0.1.2" = f "is-unc-path" "0.1.2" y "6ab053a72573c10250ff416a3814c35178af39b9" [
            s."unc-path-regex@^0.1.0"
          ];
          "is-unc-path@^0.1.1" = s."is-unc-path@0.1.2";
          "is-utf8@0.2.1" = f "is-utf8" "0.2.1" y "4b0da1442104d1b336340e80797e865cf39f7d72" [];
          "is-utf8@^0.2.0" = s."is-utf8@0.2.1";
          "is-windows@0.2.0" = f "is-windows" "0.2.0" y "de1aa6d63ea29dd248737b69f1ff8b8002d2108c" [];
          "is-windows@1.0.2" = f "is-windows" "1.0.2" y "d1850eb9791ecd18e6182ce12a30f396634bb19d" [];
          "is-windows@^0.2.0" = s."is-windows@0.2.0";
          "is-windows@^1.0.0" = s."is-windows@1.0.2";
          "isarray@0.0.1" = f "isarray" "0.0.1" y "8a18acfca9a8f4177e09abfc6038939b05d1eedf" [];
          "isarray@1.0.0" = f "isarray" "1.0.0" y "bb935d48582cba168c06834957a54a3e07124f11" [];
          "isarray@^1.0.0" = s."isarray@1.0.0";
          "isarray@~1.0.0" = s."isarray@1.0.0";
          "isbinaryfile@3.0.2" = f "isbinaryfile" "3.0.2" y "4a3e974ec0cba9004d3fc6cde7209ea69368a621" [];
          "isbinaryfile@^3.0.1" = s."isbinaryfile@3.0.2";
          "isemail@2.2.1" = f "isemail" "2.2.1" y "0353d3d9a62951080c262c2aa0a42b8ea8e9e2a6" [];
          "isemail@2.x.x" = s."isemail@2.2.1";
          "isexe@1.1.2" = f "isexe" "1.1.2" y "36f3e22e60750920f5e7241a476a8c6a42275ad0" [];
          "isexe@^1.1.1" = s."isexe@1.1.2";
          "isobject@2.1.0" = f "isobject" "2.1.0" y "f065561096a3f1da2ef46272f815c840d87e0c89" [
            s."isarray@1.0.0"
          ];
          "isobject@^2.0.0" = s."isobject@2.1.0";
          "isomorphic-fetch@2.2.1" = f "isomorphic-fetch" "2.2.1" y "611ae1acf14f5e81f729507472819fe9733558a9" [
            s."node-fetch@^1.0.1"
            s."whatwg-fetch@>=0.10.0"
          ];
          "isomorphic-fetch@^2.1.1" = s."isomorphic-fetch@2.2.1";
          "isstream@0.1.2" = f "isstream" "0.1.2" y "47e63f7af55afa6f92e1500e690eb8b8529c099a" [];
          "isstream@0.1.x" = s."isstream@0.1.2";
          "isstream@~0.1.1" = s."isstream@0.1.2";
          "isstream@~0.1.2" = s."isstream@0.1.2";
          "isurl@1.0.0" = f "isurl" "1.0.0" y "b27f4f49f3cdaa3ea44a0a5b7f3462e6edc39d67" [
            s."has-to-string-tag-x@^1.2.0"
            s."is-object@^1.0.1"
          ];
          "isurl@^1.0.0-alpha5" = s."isurl@1.0.0";
          "items@2.1.1" = f "items" "2.1.1" y "8bd16d9c83b19529de5aea321acaada78364a198" [];
          "items@2.x.x" = s."items@2.1.1";
          "jodid25519@1.0.2" = f "jodid25519" "1.0.2" y "06d4912255093419477d425633606e0e90782967" [
            s."jsbn@~0.1.0"
          ];
          "jodid25519@^1.0.0" = s."jodid25519@1.0.2";
          "joi@9.0.0-0" = f "joi" "9.0.0-0" y "a7ca4219602149ae0da7a7c5ca1d63d3c79e096b" [
            s."hoek@4.x.x"
            s."isemail@2.x.x"
            s."items@2.x.x"
            s."moment@2.x.x"
            s."topo@2.x.x"
          ];
          "js-base64@2.1.9" = f "js-base64" "2.1.9" y "f0e80ae039a4bd654b5f281fc93f04a914a7fcce" [];
          "js-base64@^2.1.9" = s."js-base64@2.1.9";
          "js-sha3@0.3.1" = f "js-sha3" "0.3.1" y "86122802142f0828502a0d1dee1d95e253bb0243" [];
          "js-sha3@^0.3.1" = s."js-sha3@0.3.1";
          "js-tokens@2.0.0" = f "js-tokens" "2.0.0" y "79903f5563ee778cc1162e6dcf1a0027c97f9cb5" [];
          "js-tokens@3.0.2" = f "js-tokens" "3.0.2" y "9866df395102130e38f7f996bceb65443209c25b" [];
          "js-tokens@^2.0.0" = s."js-tokens@2.0.0";
          "js-tokens@^3.0.0" = s."js-tokens@3.0.2";
          "js-tokens@^3.0.2" = s."js-tokens@3.0.2";
          "js-yaml@3.6.1" = f "js-yaml" "3.6.1" y "6e5fe67d8b205ce4d22fad05b7781e8dadcc4b30" [
            s."argparse@^1.0.7"
            s."esprima@^2.6.0"
          ];
          "js-yaml@3.7.0" = f "js-yaml" "3.7.0" y "5c967ddd837a9bfdca5f2de84253abe8a1c03b80" [
            s."argparse@^1.0.7"
            s."esprima@^2.6.0"
          ];
          "js-yaml@^3.4.3" = s."js-yaml@3.7.0";
          "js-yaml@^3.5.1" = s."js-yaml@3.7.0";
          "js-yaml@~3.6.1" = s."js-yaml@3.6.1";
          "jsbn@0.1.0" = f "jsbn" "0.1.0" y "650987da0dd74f4ebf5a11377a2aa2d273e97dfd" [];
          "jsbn@~0.1.0" = s."jsbn@0.1.0";
          "jsdom@9.9.1" = f "jsdom" "9.9.1" y "84f3972ad394ab963233af8725211bce4d01bfd5" [
            s."abab@^1.0.0"
            s."acorn@^2.4.0"
            s."acorn-globals@^1.0.4"
            s."array-equal@^1.0.0"
            s."content-type-parser@^1.0.1"
            s."cssom@>= 0.3.0 < 0.4.0"
            s."cssstyle@>= 0.2.36 < 0.3.0"
            s."escodegen@^1.6.1"
            s."html-encoding-sniffer@^1.0.1"
            s."iconv-lite@^0.4.13"
            s."nwmatcher@>= 1.3.9 < 2.0.0"
            s."parse5@^1.5.1"
            s."request@^2.55.0"
            s."sax@^1.1.4"
            s."symbol-tree@>= 3.1.0 < 4.0.0"
            s."tough-cookie@^2.3.1"
            s."webidl-conversions@^3.0.1"
            s."whatwg-encoding@^1.0.1"
            s."whatwg-url@^4.1.0"
            s."xml-name-validator@>= 2.0.1 < 3.0.0"
          ];
          "jsdom@^9.9.1" = s."jsdom@9.9.1";
          "jsesc@0.5.0" = f "jsesc" "0.5.0" y "e7dee66e35d6fc16f710fe91d5cf69f70f08911d" [];
          "jsesc@1.3.0" = f "jsesc" "1.3.0" y "46c3fec8c1892b12b0833db9bc7622176dbab34b" [];
          "jsesc@^1.3.0" = s."jsesc@1.3.0";
          "jsesc@~0.5.0" = s."jsesc@0.5.0";
          "json-loader@0.5.4" = f "json-loader" "0.5.4" y "8baa1365a632f58a3c46d20175fc6002c96e37de" [];
          "json-loader@^0.5.4" = s."json-loader@0.5.4";
          "json-schema-traverse@0.3.1" = f "json-schema-traverse" "0.3.1" y "349a6d44c53a51de89b40805c5d5e59b417d3340" [];
          "json-schema-traverse@^0.3.0" = s."json-schema-traverse@0.3.1";
          "json-schema@0.2.3" = f "json-schema" "0.2.3" y "b480c892e59a2f05954ce727bd3f2a4e882f9e13" [];
          "json-stable-stringify@1.0.1" = f "json-stable-stringify" "1.0.1" y "9a759d39c5f2ff503fd5300646ed445f88c4f9af" [
            s."jsonify@~0.0.0"
          ];
          "json-stable-stringify@^1.0.0" = s."json-stable-stringify@1.0.1";
          "json-stable-stringify@^1.0.1" = s."json-stable-stringify@1.0.1";
          "json-stringify-safe@5.0.1" = f "json-stringify-safe" "5.0.1" y "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb" [];
          "json-stringify-safe@^5.0.1" = s."json-stringify-safe@5.0.1";
          "json-stringify-safe@~5.0.0" = s."json-stringify-safe@5.0.1";
          "json-stringify-safe@~5.0.1" = s."json-stringify-safe@5.0.1";
          "json5@0.5.1" = f "json5" "0.5.1" y "1eade7acc012034ad84e2396767ead9fa5495821" [];
          "json5@^0.5.0" = s."json5@0.5.1";
          "json5@^0.5.1" = s."json5@0.5.1";
          "jsonfile@2.4.0" = f "jsonfile" "2.4.0" y "3736a2b428b87bbda0cc83b53fa3d633a35c2ae8" [
            s."graceful-fs@^4.1.6"
          ];
          "jsonfile@3.0.1" = f "jsonfile" "3.0.1" y "a5ecc6f65f53f662c4415c7675a0331d0992ec66" [
            s."graceful-fs@^4.1.6"
          ];
          "jsonfile@4.0.0" = f "jsonfile" "4.0.0" y "8771aae0799b64076b76640fca058f9c10e33ecb" [
            s."graceful-fs@^4.1.6"
          ];
          "jsonfile@^2.1.0" = s."jsonfile@2.4.0";
          "jsonfile@^3.0.0" = s."jsonfile@3.0.1";
          "jsonfile@^4.0.0" = s."jsonfile@4.0.0";
          "jsonify@0.0.0" = f "jsonify" "0.0.0" y "2c74b6ee41d93ca51b7b5aaee8f503631d252a73" [];
          "jsonify@~0.0.0" = s."jsonify@0.0.0";
          "jsonpointer@4.0.1" = f "jsonpointer" "4.0.1" y "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9" [];
          "jsonpointer@^4.0.0" = s."jsonpointer@4.0.1";
          "jsprim@1.3.1" = f "jsprim" "1.3.1" y "2a7256f70412a29ee3670aaca625994c4dcff252" [
            s."extsprintf@1.0.2"
            s."json-schema@0.2.3"
            s."verror@1.3.6"
          ];
          "jsprim@^1.2.2" = s."jsprim@1.3.1";
          "jsx-ast-utils@1.3.5" = f "jsx-ast-utils" "1.3.5" y "9ba6297198d9f754594d62e59496ffb923778dd4" [
            s."acorn-jsx@^3.0.1"
            s."object-assign@^4.1.0"
          ];
          "jsx-ast-utils@^1.0.0" = s."jsx-ast-utils@1.3.5";
          "jsx-ast-utils@^1.3.4" = s."jsx-ast-utils@1.3.5";
          "keccakjs@0.2.1" = f "keccakjs" "0.2.1" y "1d633af907ef305bbf9f2fa616d56c44561dfa4d" [
            s."browserify-sha3@^0.0.1"
            s."sha3@^1.1.0"
          ];
          "keccakjs@^0.2.1" = s."keccakjs@0.2.1";
          "keycode@2.1.8" = f "keycode" "2.1.8" y "94d2b7098215eff0e8f9a8931d5a59076c4532fb" [];
          "keycode@^2.1.1" = s."keycode@2.1.8";
          "kind-of@3.1.0" = f "kind-of" "3.1.0" y "475d698a5e49ff5e53d14e3e732429dc8bf4cf47" [
            s."is-buffer@^1.0.2"
          ];
          "kind-of@^3.0.2" = s."kind-of@3.1.0";
          "klaw@1.3.1" = f "klaw" "1.3.1" y "4088433b46b3b1ba259d78785d8e96f73ba02439" [
            s."graceful-fs@^4.1.9"
          ];
          "klaw@^1.0.0" = s."klaw@1.3.1";
          "latest-version@1.0.1" = f "latest-version" "1.0.1" y "72cfc46e3e8d1be651e1ebb54ea9f6ea96f374bb" [
            s."package-json@^1.0.0"
          ];
          "latest-version@^1.0.0" = s."latest-version@1.0.1";
          "lazy-cache@1.0.4" = f "lazy-cache" "1.0.4" y "a1d78fc3a50474cb80845d3b3b6e1da49a446e8e" [];
          "lazy-cache@^1.0.3" = s."lazy-cache@1.0.4";
          "lazystream@1.0.0" = f "lazystream" "1.0.0" y "f6995fe0f820392f61396be89462407bb77168e4" [
            s."readable-stream@^2.0.5"
          ];
          "lazystream@^1.0.0" = s."lazystream@1.0.0";
          "lcid@1.0.0" = f "lcid" "1.0.0" y "308accafa0bc483a3867b4b6f2b9506251d1b835" [
            s."invert-kv@^1.0.0"
          ];
          "lcid@^1.0.0" = s."lcid@1.0.0";
          "levn@0.3.0" = f "levn" "0.3.0" y "3b09924edf9f083c0490fdd4c0bc4421e04764ee" [
            s."prelude-ls@~1.1.2"
            s."type-check@~0.3.2"
          ];
          "levn@^0.3.0" = s."levn@0.3.0";
          "levn@~0.3.0" = s."levn@0.3.0";
          "load-json-file@1.1.0" = f "load-json-file" "1.1.0" y "956905708d58b4bab4c2261b04f59f31c99374c0" [
            s."graceful-fs@^4.1.2"
            s."parse-json@^2.2.0"
            s."pify@^2.0.0"
            s."pinkie-promise@^2.0.0"
            s."strip-bom@^2.0.0"
          ];
          "load-json-file@2.0.0" = f "load-json-file" "2.0.0" y "7947e42149af80d696cbf797bcaabcfe1fe29ca8" [
            s."graceful-fs@^4.1.2"
            s."parse-json@^2.2.0"
            s."pify@^2.0.0"
            s."strip-bom@^3.0.0"
          ];
          "load-json-file@^1.0.0" = s."load-json-file@1.1.0";
          "load-json-file@^1.1.0" = s."load-json-file@1.1.0";
          "load-json-file@^2.0.0" = s."load-json-file@2.0.0";
          "loader-fs-cache@1.0.1" = f "loader-fs-cache" "1.0.1" y "56e0bf08bd9708b26a765b68509840c8dec9fdbc" [
            s."find-cache-dir@^0.1.1"
            s."mkdirp@0.5.1"
          ];
          "loader-fs-cache@^1.0.0" = s."loader-fs-cache@1.0.1";
          "loader-utils@0.2.16" = f "loader-utils" "0.2.16" y "f08632066ed8282835dff88dfb52704765adee6d" [
            s."big.js@^3.1.3"
            s."emojis-list@^2.0.0"
            s."json5@^0.5.0"
            s."object-assign@^4.0.1"
          ];
          "loader-utils@0.2.x" = s."loader-utils@0.2.16";
          "loader-utils@1.1.0" = f "loader-utils" "1.1.0" y "c98aef488bcceda2ffb5e2de646d6a754429f5cd" [
            s."big.js@^3.1.3"
            s."emojis-list@^2.0.0"
            s."json5@^0.5.0"
          ];
          "loader-utils@^0.2.11" = s."loader-utils@0.2.16";
          "loader-utils@^0.2.15" = s."loader-utils@0.2.16";
          "loader-utils@^0.2.16" = s."loader-utils@0.2.16";
          "loader-utils@^0.2.3" = s."loader-utils@0.2.16";
          "loader-utils@^0.2.7" = s."loader-utils@0.2.16";
          "loader-utils@^1.0.2" = s."loader-utils@1.1.0";
          "loader-utils@~0.2.2" = s."loader-utils@0.2.16";
          "loader-utils@~0.2.5" = s."loader-utils@0.2.16";
          "locate-path@2.0.0" = f "locate-path" "2.0.0" y "2b568b265eec944c6d9c0de9c3dbbbca0354cd8e" [
            s."p-locate@^2.0.0"
            s."path-exists@^3.0.0"
          ];
          "locate-path@^2.0.0" = s."locate-path@2.0.0";
          "lodash-es@4.17.4" = f "lodash-es" "4.17.4" y "dcc1d7552e150a0640073ba9cb31d70f032950e7" [];
          "lodash-es@^4.2.1" = s."lodash-es@4.17.4";
          "lodash._arraycopy@3.0.0" = f "lodash._arraycopy" "3.0.0" y "76e7b7c1f1fb92547374878a562ed06a3e50f6e1" [];
          "lodash._arraycopy@^3.0.0" = s."lodash._arraycopy@3.0.0";
          "lodash._arrayeach@3.0.0" = f "lodash._arrayeach" "3.0.0" y "bab156b2a90d3f1bbd5c653403349e5e5933ef9e" [];
          "lodash._arrayeach@^3.0.0" = s."lodash._arrayeach@3.0.0";
          "lodash._baseassign@3.2.0" = f "lodash._baseassign" "3.2.0" y "8c38a099500f215ad09e59f1722fd0c52bfe0a4e" [
            s."lodash._basecopy@^3.0.0"
            s."lodash.keys@^3.0.0"
          ];
          "lodash._baseassign@^3.0.0" = s."lodash._baseassign@3.2.0";
          "lodash._basecallback@3.3.1" = f "lodash._basecallback" "3.3.1" y "b7b2bb43dc2160424a21ccf26c57e443772a8e27" [
            s."lodash._baseisequal@^3.0.0"
            s."lodash._bindcallback@^3.0.0"
            s."lodash.isarray@^3.0.0"
            s."lodash.pairs@^3.0.0"
          ];
          "lodash._basecallback@^3.0.0" = s."lodash._basecallback@3.3.1";
          "lodash._basecopy@3.0.1" = f "lodash._basecopy" "3.0.1" y "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36" [];
          "lodash._basecopy@^3.0.0" = s."lodash._basecopy@3.0.1";
          "lodash._baseeach@3.0.4" = f "lodash._baseeach" "3.0.4" y "cf8706572ca144e8d9d75227c990da982f932af3" [
            s."lodash.keys@^3.0.0"
          ];
          "lodash._baseeach@^3.0.0" = s."lodash._baseeach@3.0.4";
          "lodash._basefind@3.0.0" = f "lodash._basefind" "3.0.0" y "b2bba05cc645f972de2cf925fa2bf63a0f60c8ae" [];
          "lodash._basefind@^3.0.0" = s."lodash._basefind@3.0.0";
          "lodash._basefindindex@3.6.0" = f "lodash._basefindindex" "3.6.0" y "f083360a1b022418ed81bc899beb312e21e74a4f" [];
          "lodash._basefindindex@^3.0.0" = s."lodash._basefindindex@3.6.0";
          "lodash._basefor@3.0.3" = f "lodash._basefor" "3.0.3" y "7550b4e9218ef09fad24343b612021c79b4c20c2" [];
          "lodash._basefor@^3.0.0" = s."lodash._basefor@3.0.3";
          "lodash._baseget@3.7.2" = f "lodash._baseget" "3.7.2" y "1b6ae1d5facf3c25532350a13c1197cb8bb674f4" [];
          "lodash._baseget@^3.0.0" = s."lodash._baseget@3.7.2";
          "lodash._baseisequal@3.0.7" = f "lodash._baseisequal" "3.0.7" y "d8025f76339d29342767dcc887ce5cb95a5b51f1" [
            s."lodash.isarray@^3.0.0"
            s."lodash.istypedarray@^3.0.0"
            s."lodash.keys@^3.0.0"
          ];
          "lodash._baseisequal@^3.0.0" = s."lodash._baseisequal@3.0.7";
          "lodash._basetostring@3.0.1" = f "lodash._basetostring" "3.0.1" y "d1861d877f824a52f669832dcaf3ee15566a07d5" [];
          "lodash._basetostring@^3.0.0" = s."lodash._basetostring@3.0.1";
          "lodash._basevalues@3.0.0" = f "lodash._basevalues" "3.0.0" y "5b775762802bde3d3297503e26300820fdf661b7" [];
          "lodash._basevalues@^3.0.0" = s."lodash._basevalues@3.0.0";
          "lodash._bindcallback@3.0.1" = f "lodash._bindcallback" "3.0.1" y "e531c27644cf8b57a99e17ed95b35c748789392e" [];
          "lodash._bindcallback@^3.0.0" = s."lodash._bindcallback@3.0.1";
          "lodash._createassigner@3.1.1" = f "lodash._createassigner" "3.1.1" y "838a5bae2fdaca63ac22dee8e19fa4e6d6970b11" [
            s."lodash._bindcallback@^3.0.0"
            s."lodash._isiterateecall@^3.0.0"
            s."lodash.restparam@^3.0.0"
          ];
          "lodash._createassigner@^3.0.0" = s."lodash._createassigner@3.1.1";
          "lodash._createcompounder@3.0.0" = f "lodash._createcompounder" "3.0.0" y "5dd2cb55372d6e70e0e2392fb2304d6631091075" [
            s."lodash.deburr@^3.0.0"
            s."lodash.words@^3.0.0"
          ];
          "lodash._createcompounder@^3.0.0" = s."lodash._createcompounder@3.0.0";
          "lodash._getnative@3.9.1" = f "lodash._getnative" "3.9.1" y "570bc7dede46d61cdcde687d65d3eecbaa3aaff5" [];
          "lodash._getnative@^3.0.0" = s."lodash._getnative@3.9.1";
          "lodash._isiterateecall@3.0.9" = f "lodash._isiterateecall" "3.0.9" y "5203ad7ba425fae842460e696db9cf3e6aac057c" [];
          "lodash._isiterateecall@^3.0.0" = s."lodash._isiterateecall@3.0.9";
          "lodash._reescape@3.0.0" = f "lodash._reescape" "3.0.0" y "2b1d6f5dfe07c8a355753e5f27fac7f1cde1616a" [];
          "lodash._reescape@^3.0.0" = s."lodash._reescape@3.0.0";
          "lodash._reevaluate@3.0.0" = f "lodash._reevaluate" "3.0.0" y "58bc74c40664953ae0b124d806996daca431e2ed" [];
          "lodash._reevaluate@^3.0.0" = s."lodash._reevaluate@3.0.0";
          "lodash._reinterpolate@3.0.0" = f "lodash._reinterpolate" "3.0.0" y "0ccf2d89166af03b3663c796538b75ac6e114d9d" [];
          "lodash._reinterpolate@^3.0.0" = s."lodash._reinterpolate@3.0.0";
          "lodash._root@3.0.1" = f "lodash._root" "3.0.1" y "fba1c4524c19ee9a5f8136b4609f017cf4ded692" [];
          "lodash._root@^3.0.0" = s."lodash._root@3.0.1";
          "lodash._topath@3.8.1" = f "lodash._topath" "3.8.1" y "3ec5e2606014f4cb97f755fe6914edd8bfc00eac" [
            s."lodash.isarray@^3.0.0"
          ];
          "lodash._topath@^3.0.0" = s."lodash._topath@3.8.1";
          "lodash.assign@3.2.0" = f "lodash.assign" "3.2.0" y "3ce9f0234b4b2223e296b8fa0ac1fee8ebca64fa" [
            s."lodash._baseassign@^3.0.0"
            s."lodash._createassigner@^3.0.0"
            s."lodash.keys@^3.0.0"
          ];
          "lodash.assign@4.2.0" = f "lodash.assign" "4.2.0" y "0d99f3ccd7a6d261d19bdaeb9245005d285808e7" [];
          "lodash.assign@^3.0.0" = s."lodash.assign@3.2.0";
          "lodash.assign@^4.0.3" = s."lodash.assign@4.2.0";
          "lodash.assign@^4.0.6" = s."lodash.assign@4.2.0";
          "lodash.assign@^4.1.0" = s."lodash.assign@4.2.0";
          "lodash.assign@^4.2.0" = s."lodash.assign@4.2.0";
          "lodash.camelcase@3.0.1" = f "lodash.camelcase" "3.0.1" y "932c8b87f8a4377897c67197533282f97aeac298" [
            s."lodash._createcompounder@^3.0.0"
          ];
          "lodash.camelcase@4.3.0" = f "lodash.camelcase" "4.3.0" y "b28aa6288a2b9fc651035c7711f65ab6190331a6" [];
          "lodash.camelcase@^3.0.1" = s."lodash.camelcase@3.0.1";
          "lodash.camelcase@^4.3.0" = s."lodash.camelcase@4.3.0";
          "lodash.clonedeep@4.5.0" = f "lodash.clonedeep" "4.5.0" y "e23f3f9c4f8fbdde872529c1071857a086e5ccef" [];
          "lodash.clonedeep@^4.3.2" = s."lodash.clonedeep@4.5.0";
          "lodash.cond@4.5.2" = f "lodash.cond" "4.5.2" y "f471a1da486be60f6ab955d17115523dd1d255d5" [];
          "lodash.cond@^4.3.0" = s."lodash.cond@4.5.2";
          "lodash.deburr@3.2.0" = f "lodash.deburr" "3.2.0" y "6da8f54334a366a7cf4c4c76ef8d80aa1b365ed5" [
            s."lodash._root@^3.0.0"
          ];
          "lodash.deburr@^3.0.0" = s."lodash.deburr@3.2.0";
          "lodash.defaults@3.1.2" = f "lodash.defaults" "3.1.2" y "c7308b18dbf8bc9372d701a73493c61192bd2e2c" [
            s."lodash.assign@^3.0.0"
            s."lodash.restparam@^3.0.0"
          ];
          "lodash.defaults@^3.1.2" = s."lodash.defaults@3.1.2";
          "lodash.endswith@4.2.1" = f "lodash.endswith" "4.2.1" y "fed59ac1738ed3e236edd7064ec456448b37bc09" [];
          "lodash.endswith@^4.0.1" = s."lodash.endswith@4.2.1";
          "lodash.escape@3.2.0" = f "lodash.escape" "3.2.0" y "995ee0dc18c1b48cc92effae71a10aab5b487698" [
            s."lodash._root@^3.0.0"
          ];
          "lodash.escape@^3.0.0" = s."lodash.escape@3.2.0";
          "lodash.find@3.2.1" = f "lodash.find" "3.2.1" y "046e319f3ace912ac6c9246c7f683c5ec07b36ad" [
            s."lodash._basecallback@^3.0.0"
            s."lodash._baseeach@^3.0.0"
            s."lodash._basefind@^3.0.0"
            s."lodash._basefindindex@^3.0.0"
            s."lodash.isarray@^3.0.0"
            s."lodash.keys@^3.0.0"
          ];
          "lodash.find@4.6.0" = f "lodash.find" "4.6.0" y "cb0704d47ab71789ffa0de8b97dd926fb88b13b1" [];
          "lodash.find@^3.2.1" = s."lodash.find@3.2.1";
          "lodash.find@^4.3.0" = s."lodash.find@4.6.0";
          "lodash.findindex@4.6.0" = f "lodash.findindex" "4.6.0" y "a3245dee61fb9b6e0624b535125624bb69c11106" [];
          "lodash.findindex@^4.3.0" = s."lodash.findindex@4.6.0";
          "lodash.foreach@3.0.3" = f "lodash.foreach" "3.0.3" y "6fd7efb79691aecd67fdeac2761c98e701d6c39a" [
            s."lodash._arrayeach@^3.0.0"
            s."lodash._baseeach@^3.0.0"
            s."lodash._bindcallback@^3.0.0"
            s."lodash.isarray@^3.0.0"
          ];
          "lodash.foreach@^3.0.3" = s."lodash.foreach@3.0.3";
          "lodash.get@3.7.0" = f "lodash.get" "3.7.0" y "3ce68ae2c91683b281cc5394128303cbf75e691f" [
            s."lodash._baseget@^3.0.0"
            s."lodash._topath@^3.0.0"
          ];
          "lodash.get@4.4.2" = f "lodash.get" "4.4.2" y "2d177f652fa31e939b4438d5341499dfa3825e99" [];
          "lodash.get@^3.7.0" = s."lodash.get@3.7.0";
          "lodash.get@^4.0.0" = s."lodash.get@4.4.2";
          "lodash.indexof@4.0.5" = f "lodash.indexof" "4.0.5" y "53714adc2cddd6ed87638f893aa9b6c24e31ef3c" [];
          "lodash.indexof@^4.0.5" = s."lodash.indexof@4.0.5";
          "lodash.isarguments@3.1.0" = f "lodash.isarguments" "3.1.0" y "2f573d85c6a24289ff00663b491c1d338ff3458a" [];
          "lodash.isarguments@^3.0.0" = s."lodash.isarguments@3.1.0";
          "lodash.isarray@3.0.4" = f "lodash.isarray" "3.0.4" y "79e4eb88c36a8122af86f844aa9bcd851b5fbb55" [];
          "lodash.isarray@^3.0.0" = s."lodash.isarray@3.0.4";
          "lodash.isequal@4.4.0" = f "lodash.isequal" "4.4.0" y "6295768e98e14dc15ce8d362ef6340db82852031" [];
          "lodash.isequal@^4.2.0" = s."lodash.isequal@4.4.0";
          "lodash.isplainobject@3.2.0" = f "lodash.isplainobject" "3.2.0" y "9a8238ae16b200432960cd7346512d0123fbf4c5" [
            s."lodash._basefor@^3.0.0"
            s."lodash.isarguments@^3.0.0"
            s."lodash.keysin@^3.0.0"
          ];
          "lodash.isplainobject@4.0.6" = f "lodash.isplainobject" "4.0.6" y "7c526a52d89b45c45cc690b88163be0497f550cb" [];
          "lodash.isplainobject@^3.0.0" = s."lodash.isplainobject@3.2.0";
          "lodash.isplainobject@^3.2.0" = s."lodash.isplainobject@3.2.0";
          "lodash.isplainobject@^4.0.6" = s."lodash.isplainobject@4.0.6";
          "lodash.istypedarray@3.0.6" = f "lodash.istypedarray" "3.0.6" y "c9a477498607501d8e8494d283b87c39281cef62" [];
          "lodash.istypedarray@^3.0.0" = s."lodash.istypedarray@3.0.6";
          "lodash.keys@3.1.2" = f "lodash.keys" "3.1.2" y "4dbc0472b156be50a0b286855d1bd0b0c656098a" [
            s."lodash._getnative@^3.0.0"
            s."lodash.isarguments@^3.0.0"
            s."lodash.isarray@^3.0.0"
          ];
          "lodash.keys@^3.0.0" = s."lodash.keys@3.1.2";
          "lodash.keys@^3.1.2" = s."lodash.keys@3.1.2";
          "lodash.keysin@3.0.8" = f "lodash.keysin" "3.0.8" y "22c4493ebbedb1427962a54b445b2c8a767fb47f" [
            s."lodash.isarguments@^3.0.0"
            s."lodash.isarray@^3.0.0"
          ];
          "lodash.keysin@^3.0.0" = s."lodash.keysin@3.0.8";
          "lodash.memoize@4.1.2" = f "lodash.memoize" "4.1.2" y "bcc6c49a42a2840ed997f323eada5ecd182e0bfe" [];
          "lodash.memoize@^4.1.0" = s."lodash.memoize@4.1.2";
          "lodash.merge@3.3.2" = f "lodash.merge" "3.3.2" y "0d90d93ed637b1878437bb3e21601260d7afe994" [
            s."lodash._arraycopy@^3.0.0"
            s."lodash._arrayeach@^3.0.0"
            s."lodash._createassigner@^3.0.0"
            s."lodash._getnative@^3.0.0"
            s."lodash.isarguments@^3.0.0"
            s."lodash.isarray@^3.0.0"
            s."lodash.isplainobject@^3.0.0"
            s."lodash.istypedarray@^3.0.0"
            s."lodash.keys@^3.0.0"
            s."lodash.keysin@^3.0.0"
            s."lodash.toplainobject@^3.0.0"
          ];
          "lodash.merge@^3.3.2" = s."lodash.merge@3.3.2";
          "lodash.pad@4.5.1" = f "lodash.pad" "4.5.1" y "4330949a833a7c8da22cc20f6a26c4d59debba70" [];
          "lodash.pad@^4.1.0" = s."lodash.pad@4.5.1";
          "lodash.padend@4.6.1" = f "lodash.padend" "4.6.1" y "53ccba047d06e158d311f45da625f4e49e6f166e" [];
          "lodash.padend@^4.1.0" = s."lodash.padend@4.6.1";
          "lodash.padstart@4.6.1" = f "lodash.padstart" "4.6.1" y "d2e3eebff0d9d39ad50f5cbd1b52a7bce6bb611b" [];
          "lodash.padstart@^4.1.0" = s."lodash.padstart@4.6.1";
          "lodash.pairs@3.0.1" = f "lodash.pairs" "3.0.1" y "bbe08d5786eeeaa09a15c91ebf0dcb7d2be326a9" [
            s."lodash.keys@^3.0.0"
          ];
          "lodash.pairs@^3.0.0" = s."lodash.pairs@3.0.1";
          "lodash.pick@4.4.0" = f "lodash.pick" "4.4.0" y "52f05610fff9ded422611441ed1fc123a03001b3" [];
          "lodash.pick@^4.2.0" = s."lodash.pick@4.4.0";
          "lodash.pick@^4.2.1" = s."lodash.pick@4.4.0";
          "lodash.pick@^4.4.0" = s."lodash.pick@4.4.0";
          "lodash.restparam@3.6.1" = f "lodash.restparam" "3.6.1" y "936a4e309ef330a7645ed4145986c85ae5b20805" [];
          "lodash.restparam@^3.0.0" = s."lodash.restparam@3.6.1";
          "lodash.template@3.6.2" = f "lodash.template" "3.6.2" y "f8cdecc6169a255be9098ae8b0c53d378931d14f" [
            s."lodash._basecopy@^3.0.0"
            s."lodash._basetostring@^3.0.0"
            s."lodash._basevalues@^3.0.0"
            s."lodash._isiterateecall@^3.0.0"
            s."lodash._reinterpolate@^3.0.0"
            s."lodash.escape@^3.0.0"
            s."lodash.keys@^3.0.0"
            s."lodash.restparam@^3.0.0"
            s."lodash.templatesettings@^3.0.0"
          ];
          "lodash.template@^3.0.0" = s."lodash.template@3.6.2";
          "lodash.templatesettings@3.1.1" = f "lodash.templatesettings" "3.1.1" y "fb307844753b66b9f1afa54e262c745307dba8e5" [
            s."lodash._reinterpolate@^3.0.0"
            s."lodash.escape@^3.0.0"
          ];
          "lodash.templatesettings@^3.0.0" = s."lodash.templatesettings@3.1.1";
          "lodash.toplainobject@3.0.0" = f "lodash.toplainobject" "3.0.0" y "28790ad942d293d78aa663a07ecf7f52ca04198d" [
            s."lodash._basecopy@^3.0.0"
            s."lodash.keysin@^3.0.0"
          ];
          "lodash.toplainobject@^3.0.0" = s."lodash.toplainobject@3.0.0";
          "lodash.uniq@4.5.0" = f "lodash.uniq" "4.5.0" y "d0225373aeb652adc1bc82e4945339a842754773" [];
          "lodash.uniq@^4.3.0" = s."lodash.uniq@4.5.0";
          "lodash.words@3.2.0" = f "lodash.words" "3.2.0" y "4e2a8649bc08745b17c695b1a3ce8fee596623b3" [
            s."lodash._root@^3.0.0"
          ];
          "lodash.words@^3.0.0" = s."lodash.words@3.2.0";
          "lodash@2.4.2" = f "lodash" "2.4.2" y "fadd834b9683073da179b3eae6d9c0d15053f73e" [];
          "lodash@3.10.1" = f "lodash" "3.10.1" y "5bf45e8e49ba4189e17d482789dfd15bd140b7b6" [];
          "lodash@4.11.1" = f "lodash" "4.11.1" y "a32106eb8e2ec8e82c241611414773c9df15f8bc" [];
          "lodash@4.16.6" = f "lodash" "4.16.6" y "d22c9ac660288f3843e16ba7d2b5d06cca27d777" [];
          "lodash@4.17.4" = f "lodash" "4.17.4" y "78203a4d1c328ae1d86dca6460e369b57f4055ae" [];
          "lodash@4.17.5" = f "lodash" "4.17.5" y "99a92d65c0272debe8c96b6057bc8fbfa3bed511" [];
          "lodash@4.x.x" = s."lodash@4.17.4";
          "lodash@^2.4.1" = s."lodash@2.4.2";
          "lodash@^3.5.0" = s."lodash@3.10.1";
          "lodash@^4.0.0" = s."lodash@4.17.4";
          "lodash@^4.14.0" = s."lodash@4.17.4";
          "lodash@^4.16.2" = s."lodash@4.17.4";
          "lodash@^4.16.4" = s."lodash@4.17.4";
          "lodash@^4.17.2" = s."lodash@4.17.4";
          "lodash@^4.17.4" = s."lodash@4.17.5";
          "lodash@^4.2.0" = s."lodash@4.17.4";
          "lodash@^4.2.1" = s."lodash@4.17.4";
          "lodash@^4.3.0" = s."lodash@4.17.4";
          "lodash@^4.5.1" = s."lodash@4.17.4";
          "lodash@^4.6.1" = s."lodash@4.17.4";
          "lodash@^4.8.0" = s."lodash@4.17.4";
          "lodash@~4.16.4" = s."lodash@4.16.6";
          "lodash@~4.17.4" = s."lodash@4.17.5";
          "log-symbols@1.0.2" = f "log-symbols" "1.0.2" y "376ff7b58ea3086a0f09facc74617eca501e1a18" [
            s."chalk@^1.0.0"
          ];
          "log-symbols@2.2.0" = f "log-symbols" "2.2.0" y "5740e1c5d6f0dfda4ad9323b5332107ef6b4c40a" [
            s."chalk@^2.0.1"
          ];
          "log-symbols@^1.0.2" = s."log-symbols@1.0.2";
          "log-symbols@^2.1.0" = s."log-symbols@2.2.0";
          "longest@1.0.1" = f "longest" "1.0.1" y "30a0b2da38f73770e8294a0d22e6625ed77d0097" [];
          "longest@^1.0.1" = s."longest@1.0.1";
          "loose-envify@1.3.0" = f "loose-envify" "1.3.0" y "6b26248c42f6d4fa4b0d8542f78edfcde35642a8" [
            s."js-tokens@^2.0.0"
          ];
          "loose-envify@1.3.1" = f "loose-envify" "1.3.1" y "d1a8ad33fa9ce0e713d65fdd0ac8b748d478c848" [
            s."js-tokens@^3.0.0"
          ];
          "loose-envify@^1.0.0" = s."loose-envify@1.3.0";
          "loose-envify@^1.1.0" = s."loose-envify@1.3.0";
          "loose-envify@^1.2.0" = s."loose-envify@1.3.0";
          "loose-envify@^1.3.1" = s."loose-envify@1.3.1";
          "loud-rejection@1.6.0" = f "loud-rejection" "1.6.0" y "5b46f80147edee578870f086d04821cf998e551f" [
            s."currently-unhandled@^0.4.1"
            s."signal-exit@^3.0.0"
          ];
          "loud-rejection@^1.0.0" = s."loud-rejection@1.6.0";
          "lower-case@1.1.3" = f "lower-case" "1.1.3" y "c92393d976793eee5ba4edb583cf8eae35bd9bfb" [];
          "lower-case@^1.1.1" = s."lower-case@1.1.3";
          "lowercase-keys@1.0.0" = f "lowercase-keys" "1.0.0" y "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306" [];
          "lowercase-keys@^1.0.0" = s."lowercase-keys@1.0.0";
          "lru-cache@4.0.2" = f "lru-cache" "4.0.2" y "1d17679c069cda5d040991a09dbc2c0db377e55e" [
            s."pseudomap@^1.0.1"
            s."yallist@^2.0.0"
          ];
          "lru-cache@^4.0.1" = s."lru-cache@4.0.2";
          "macaddress@0.2.8" = f "macaddress" "0.2.8" y "5904dc537c39ec6dbefeae902327135fa8511f12" [];
          "macaddress@^0.2.8" = s."macaddress@0.2.8";
          "make-dir@1.1.0" = f "make-dir" "1.1.0" y "19b4369fe48c116f53c2af95ad102c0e39e85d51" [
            s."pify@^3.0.0"
          ];
          "make-dir@^1.0.0" = s."make-dir@1.1.0";
          "mantra-core@1.7.0" = f "mantra-core" "1.7.0" y "a8c83e8cee83ef6a7383131519fe8031ad546386" [
            s."babel-runtime@6.x.x"
            s."react-komposer@^1.9.0"
            s."react-simple-di@^1.2.0"
          ];
          "mantra-core@^1.7.0" = s."mantra-core@1.7.0";
          "map-obj@1.0.1" = f "map-obj" "1.0.1" y "d933ceb9205d82bdcf4886f6742bdc2b4dea146d" [];
          "map-obj@^1.0.0" = s."map-obj@1.0.1";
          "map-obj@^1.0.1" = s."map-obj@1.0.1";
          "map-stream@0.1.0" = f "map-stream" "0.1.0" y "e56aa94c4c8055a16404a0674b78f215f7c8e194" [];
          "map-stream@~0.1.0" = s."map-stream@0.1.0";
          "markdown-loader@2.0.0" = f "markdown-loader" "2.0.0" y "421862d38c4224fd3615eb648017ea385b562d78" [
            s."loader-utils@^0.2.16"
            s."marked@^0.3.6"
          ];
          "marked@0.3.12" = f "marked" "0.3.12" y "7cf25ff2252632f3fe2406bde258e94eee927519" [];
          "marked@^0.3.6" = s."marked@0.3.12";
          "math-expression-evaluator@1.2.14" = f "math-expression-evaluator" "1.2.14" y "39511771ed9602405fba9affff17eb4d2a3843ab" [
            s."lodash.indexof@^4.0.5"
          ];
          "math-expression-evaluator@^1.2.14" = s."math-expression-evaluator@1.2.14";
          "mdurl@1.0.1" = f "mdurl" "1.0.1" y "fe85b2ec75a59037f2adfec100fd6c601761152e" [];
          "mdurl@~ 1.0.1" = s."mdurl@1.0.1";
          "media-typer@0.3.0" = f "media-typer" "0.3.0" y "8710d7af0aa626f8fffa1ce00168545263255748" [];
          "memory-fs@0.2.0" = f "memory-fs" "0.2.0" y "f2bb25368bc121e391c2520de92969caee0a0290" [];
          "memory-fs@0.3.0" = f "memory-fs" "0.3.0" y "7bcc6b629e3a43e871d7e29aca6ae8a7f15cbb20" [
            s."errno@^0.1.3"
            s."readable-stream@^2.0.1"
          ];
          "memory-fs@0.4.1" = f "memory-fs" "0.4.1" y "3a9a20b8462523e447cfbc7e8bb80ed667bfc552" [
            s."errno@^0.1.3"
            s."readable-stream@^2.0.1"
          ];
          "memory-fs@^0.2.0" = s."memory-fs@0.2.0";
          "memory-fs@^0.3.0" = s."memory-fs@0.3.0";
          "memory-fs@~0.3.0" = s."memory-fs@0.3.0";
          "memory-fs@~0.4.1" = s."memory-fs@0.4.1";
          "meow@3.7.0" = f "meow" "3.7.0" y "72cb668b425228290abbfa856892587308a801fb" [
            s."camelcase-keys@^2.0.0"
            s."decamelize@^1.1.2"
            s."loud-rejection@^1.0.0"
            s."map-obj@^1.0.1"
            s."minimist@^1.1.3"
            s."normalize-package-data@^2.3.4"
            s."object-assign@^4.0.1"
            s."read-pkg-up@^1.0.1"
            s."redent@^1.0.0"
            s."trim-newlines@^1.0.0"
          ];
          "meow@^3.1.0" = s."meow@3.7.0";
          "meow@^3.7.0" = s."meow@3.7.0";
          "merge-descriptors@1.0.1" = f "merge-descriptors" "1.0.1" y "b00aaa556dd8b44568150ec9d1b953f3f90cbb61" [];
          "merge@1.2.0" = f "merge" "1.2.0" y "7531e39d4949c281a66b8c5a6e0265e8b05894da" [];
          "merge@^1.2.0" = s."merge@1.2.0";
          "methods@1.1.2" = f "methods" "1.1.2" y "5529a4d67654134edcc5266656835b0f851afcee" [];
          "methods@~1.1.2" = s."methods@1.1.2";
          "micromatch@2.3.11" = f "micromatch" "2.3.11" y "86677c97d1720b363431d04d0d15293bd38c1565" [
            s."arr-diff@^2.0.0"
            s."array-unique@^0.2.1"
            s."braces@^1.8.2"
            s."expand-brackets@^0.1.4"
            s."extglob@^0.3.1"
            s."filename-regex@^2.0.0"
            s."is-extglob@^1.0.0"
            s."is-glob@^2.0.1"
            s."kind-of@^3.0.2"
            s."normalize-path@^2.0.1"
            s."object.omit@^2.0.0"
            s."parse-glob@^3.0.4"
            s."regex-cache@^0.4.2"
          ];
          "micromatch@^2.1.5" = s."micromatch@2.3.11";
          "micromatch@^2.3.7" = s."micromatch@2.3.11";
          "miller-rabin@4.0.0" = f "miller-rabin" "4.0.0" y "4a62fb1d42933c05583982f4c716f6fb9e6c6d3d" [
            s."bn.js@^4.0.0"
            s."brorand@^1.0.1"
          ];
          "miller-rabin@^4.0.0" = s."miller-rabin@4.0.0";
          "mime-db@1.12.0" = f "mime-db" "1.12.0" y "3d0c63180f458eb10d325aaa37d7c58ae312e9d7" [];
          "mime-db@1.25.0" = f "mime-db" "1.25.0" y "c18dbd7c73a5dbf6f44a024dc0d165a1e7b1c392" [];
          "mime-db@1.30.0" = f "mime-db" "1.30.0" y "74c643da2dd9d6a45399963465b26d5ca7d71f01" [];
          "mime-db@~1.12.0" = s."mime-db@1.12.0";
          "mime-db@~1.25.0" = s."mime-db@1.25.0";
          "mime-db@~1.30.0" = s."mime-db@1.30.0";
          "mime-types@2.0.14" = f "mime-types" "2.0.14" y "310e159db23e077f8bb22b748dabfa4957140aa6" [
            s."mime-db@~1.12.0"
          ];
          "mime-types@2.1.13" = f "mime-types" "2.1.13" y "e07aaa9c6c6b9a7ca3012c69003ad25a39e92a88" [
            s."mime-db@~1.25.0"
          ];
          "mime-types@2.1.17" = f "mime-types" "2.1.17" y "09d7a393f03e995a79f8af857b70a9e0ab16557a" [
            s."mime-db@~1.30.0"
          ];
          "mime-types@^2.1.12" = s."mime-types@2.1.13";
          "mime-types@^2.1.16" = s."mime-types@2.1.17";
          "mime-types@~2.0.1" = s."mime-types@2.0.14";
          "mime-types@~2.0.3" = s."mime-types@2.0.14";
          "mime-types@~2.1.11" = s."mime-types@2.1.13";
          "mime-types@~2.1.13" = s."mime-types@2.1.13";
          "mime-types@~2.1.15" = s."mime-types@2.1.17";
          "mime-types@~2.1.17" = s."mime-types@2.1.17";
          "mime-types@~2.1.7" = s."mime-types@2.1.13";
          "mime@1.2.11" = f "mime" "1.2.11" y "58203eed86e3a5ef17aed2b7d9ebd47f0a60dd10" [];
          "mime@1.2.x" = s."mime@1.2.11";
          "mime@1.3.4" = f "mime" "1.3.4" y "115f9e3b6b3daf2959983cb38f149a2d40eb5d53" [];
          "mime@1.3.6" = f "mime" "1.3.6" y "591d84d3653a6b0b4a3b9df8de5aa8108e72e5e0" [];
          "mime@1.3.x" = s."mime@1.3.6";
          "mime@^1.3.4" = s."mime@1.3.4";
          "mimic-fn@1.2.0" = f "mimic-fn" "1.2.0" y "820c86a39334640e99516928bd03fca88057d022" [];
          "mimic-fn@^1.0.0" = s."mimic-fn@1.2.0";
          "mimic-response@1.0.0" = f "mimic-response" "1.0.0" y "df3d3652a73fded6b9b0b24146e6fd052353458e" [];
          "mimic-response@^1.0.0" = s."mimic-response@1.0.0";
          "min-document@2.19.0" = f "min-document" "2.19.0" y "7bd282e3f5842ed295bb748cdd9f1ffa2c824685" [
            s."dom-walk@^0.1.0"
          ];
          "min-document@^2.19.0" = s."min-document@2.19.0";
          "minimalistic-assert@1.0.0" = f "minimalistic-assert" "1.0.0" y "702be2dda6b37f4836bcb3f5db56641b64a1d3d3" [];
          "minimalistic-assert@^1.0.0" = s."minimalistic-assert@1.0.0";
          "minimalistic-crypto-utils@1.0.1" = f "minimalistic-crypto-utils" "1.0.1" y "f6c00c1c0b082246e5c4d99dfb8c7c083b2b582a" [];
          "minimalistic-crypto-utils@^1.0.0" = s."minimalistic-crypto-utils@1.0.1";
          "minimalistic-crypto-utils@^1.0.1" = s."minimalistic-crypto-utils@1.0.1";
          "minimatch@2 || 3" = s."minimatch@3.0.3";
          "minimatch@3.0.3" = f "minimatch" "3.0.3" y "2a4e4090b96b2db06a9d7df01055a62a77c9b774" [
            s."brace-expansion@^1.0.0"
          ];
          "minimatch@3.0.4" = f "minimatch" "3.0.4" y "5166e286457f03306064be5497e8dbb0c3d32083" [
            s."brace-expansion@^1.1.7"
          ];
          "minimatch@^3.0.0" = s."minimatch@3.0.3";
          "minimatch@^3.0.2" = s."minimatch@3.0.3";
          "minimatch@^3.0.3" = s."minimatch@3.0.3";
          "minimatch@^3.0.4" = s."minimatch@3.0.4";
          "minimatch@~3.0.2" = s."minimatch@3.0.3";
          "minimist@0.0.8" = f "minimist" "0.0.8" y "857fcabfc3397d2625b8228262e86aa7a011b05d" [];
          "minimist@1.2.0" = f "minimist" "1.2.0" y "a35008b20f41383eec1fb914f4cd5df79a264284" [];
          "minimist@^1.1.0" = s."minimist@1.2.0";
          "minimist@^1.1.1" = s."minimist@1.2.0";
          "minimist@^1.1.3" = s."minimist@1.2.0";
          "minimist@^1.2.0" = s."minimist@1.2.0";
          "minimist@~0.0.1" = s."minimist@0.0.8";
          "mkdirp-promise@5.0.1" = f "mkdirp-promise" "5.0.1" y "e9b8f68e552c68a9c1713b84883f7a1dd039b8a1" [
            s."mkdirp@*"
          ];
          "mkdirp-promise@^5.0.1" = s."mkdirp-promise@5.0.1";
          "mkdirp@*" = s."mkdirp@0.5.1";
          "mkdirp@0.5.0" = f "mkdirp" "0.5.0" y "1d73076a6df986cd9344e15e71fcc05a4c9abf12" [
            s."minimist@0.0.8"
          ];
          "mkdirp@0.5.1" = f "mkdirp" "0.5.1" y "30057438eac6cf7f8c4767f38648d6697d75c903" [
            s."minimist@0.0.8"
          ];
          "mkdirp@>=0.5 0" = s."mkdirp@0.5.1";
          "mkdirp@^0.5.0" = s."mkdirp@0.5.1";
          "mkdirp@^0.5.1" = s."mkdirp@0.5.1";
          "mkdirp@~0.5.0" = s."mkdirp@0.5.1";
          "mkdirp@~0.5.1" = s."mkdirp@0.5.1";
          "mkpath@0.1.0" = f "mkpath" "0.1.0" y "7554a6f8d871834cc97b5462b122c4c124d6de91" [];
          "mkpath@^0.1.0" = s."mkpath@0.1.0";
          "mksnapshot@0.3.0" = f "mksnapshot" "0.3.0" y "32ea984ad6f532324c6a3fae6400876b85828407" [
            s."decompress-zip@0.3.0"
            s."fs-extra@0.26.7"
            s."request@2.55.0"
          ];
          "mksnapshot@^0.3.0" = s."mksnapshot@0.3.0";
          "mobx-react-devtools@4.2.11" = f "mobx-react-devtools" "4.2.11" y "18d89a32b7d28b48228d12ccde73cf733aacc395" [];
          "mobx-react-form@1.32.2" = f "mobx-react-form" "1.32.2" y "5610dd0e4fab006acf2daf1becbedecad182a5a0" [
            s."lodash@^4.16.2"
          ];
          "mobx-react-router@3.1.2" = f "mobx-react-router" "3.1.2" y "83328b108393017148d86fea17f611de2d2aacdc" [];
          "mobx-react@4.1.5" = f "mobx-react" "4.1.5" y "75cf4dbffc91b9cb23d56c060dfd8d2ca52450dc" [
            s."hoist-non-react-statics@^1.2.0"
          ];
          "mobx@2.7.0" = f "mobx" "2.7.0" y "cf3d82d18c0ca7f458d8f2a240817b3dc7e54a01" [];
          "mobx@3.1.7" = f "mobx" "3.1.7" y "910c01f6e2f7e88ec47baabefee5fe667d37ac00" [];
          "mobx@^2.3.4" = s."mobx@2.7.0";
          "mock-fs@4.4.2" = f "mock-fs" "4.4.2" y "09dec5313f97095a450be6aa2ad8ab6738d63d6b" [];
          "mock-fs@^4.1.0" = s."mock-fs@4.4.2";
          "moment@2.17.1" = f "moment" "2.17.1" y "fed9506063f36b10f066c8b59a144d7faebe1d82" [];
          "moment@2.18.1" = f "moment" "2.18.1" y "c36193dd3ce1c2eed2adb7c802dbbc77a81b1c0f" [];
          "moment@2.x.x" = s."moment@2.17.1";
          "mout@0.11.1" = f "mout" "0.11.1" y "ba3611df5f0e5b1ffbfd01166b8f02d1f5fa2b99" [];
          "mout@^0.11.0" = s."mout@0.11.1";
          "ms@0.7.1" = f "ms" "0.7.1" y "9cd13c03adbff25b65effde7ce864ee952017098" [];
          "ms@0.7.2" = f "ms" "0.7.2" y "ae25cf2512b3885a1d95d7f037868d8431124765" [];
          "ms@2.0.0" = f "ms" "2.0.0" y "5608aeadfc00be6c2901df5f9861788de0d597c8" [];
          "multipipe@0.1.2" = f "multipipe" "0.1.2" y "2a8f2ddf70eed564dff2d57f1e1a137d9f05078b" [
            s."duplexer2@0.0.2"
          ];
          "multipipe@^0.1.2" = s."multipipe@0.1.2";
          "mute-stream@0.0.5" = f "mute-stream" "0.0.5" y "8fbfabb0a98a253d3184331f9e8deb7372fac6c0" [];
          "mute-stream@0.0.7" = f "mute-stream" "0.0.7" y "3075ce93bc21b8fab43e1bc4da7e8115ed1e7bab" [];
          "mz@2.7.0" = f "mz" "2.7.0" y "95008057a56cafadc2bc63dde7f9ff6955948e32" [
            s."any-promise@^1.0.0"
            s."object-assign@^4.0.1"
            s."thenify-all@^1.0.0"
          ];
          "mz@^2.4.0" = s."mz@2.7.0";
          "mz@^2.6.0" = s."mz@2.7.0";
          "nan@2.5.0" = f "nan" "2.5.0" y "aa8f1e34531d807e9e27755b234b4a6ec0c152a8" [];
          "nan@2.8.0" = f "nan" "2.8.0" y "ed715f3fe9de02b57a5e6252d90a96675e1f085a" [];
          "nan@^2.0.5" = s."nan@2.8.0";
          "nan@^2.0.8" = s."nan@2.8.0";
          "nan@^2.3.0" = s."nan@2.5.0";
          "nan@^2.3.2" = s."nan@2.5.0";
          "nan@^2.3.3" = s."nan@2.8.0";
          "nano-json-stream-parser@0.1.2" = f "nano-json-stream-parser" "0.1.2" y "0cc8f6d0e2b622b479c40d499c46d64b755c6f5f" [];
          "nano-json-stream-parser@^0.1.2" = s."nano-json-stream-parser@0.1.2";
          "natural-compare@1.4.0" = f "natural-compare" "1.4.0" y "4abebfeed7541f2c27acfb29bdbbd15c8d5ba4f7" [];
          "natural-compare@^1.4.0" = s."natural-compare@1.4.0";
          "ncname@1.0.0" = f "ncname" "1.0.0" y "5b57ad18b1ca092864ef62b0b1ed8194f383b71c" [
            s."xml-char-classes@^1.0.0"
          ];
          "ncname@1.0.x" = s."ncname@1.0.0";
          "negotiator@0.6.1" = f "negotiator" "0.6.1" y "2b327184e8992101177b28563fb5e7102acd0ca9" [];
          "nested-error-stacks@1.0.2" = f "nested-error-stacks" "1.0.2" y "19f619591519f096769a5ba9a86e6eeec823c3cf" [
            s."inherits@~2.0.1"
          ];
          "nested-error-stacks@^1.0.0" = s."nested-error-stacks@1.0.2";
          "no-case@2.3.1" = f "no-case" "2.3.1" y "7aeba1c73a52184265554b7dc03baf720df80081" [
            s."lower-case@^1.1.1"
          ];
          "no-case@^2.2.0" = s."no-case@2.3.1";
          "node-abi@2.2.0" = f "node-abi" "2.2.0" y "e802ac7a2408e2c0593fb3176ffdf8a99a9b4dec" [
            s."semver@^5.4.1"
          ];
          "node-abi@^2.0.0" = s."node-abi@2.2.0";
          "node-dir@0.1.16" = f "node-dir" "0.1.16" y "d2ef583aa50b90d93db8cdd26fcea58353957fe4" [
            s."minimatch@^3.0.2"
          ];
          "node-dir@^0.1.10" = s."node-dir@0.1.16";
          "node-fetch@1.6.3" = f "node-fetch" "1.6.3" y "dc234edd6489982d58e8f0db4f695029abcd8c04" [
            s."encoding@^0.1.11"
            s."is-stream@^1.0.1"
          ];
          "node-fetch@^1.0.1" = s."node-fetch@1.6.3";
          "node-gyp@3.4.0" = f "node-gyp" "3.4.0" y "dda558393b3ecbbe24c9e6b8703c71194c63fa36" [
            s."fstream@^1.0.0"
            s."glob@^7.0.3"
            s."graceful-fs@^4.1.2"
            s."minimatch@^3.0.2"
            s."mkdirp@^0.5.0"
            s."nopt@2 || 3"
            s."npmlog@0 || 1 || 2 || 3"
            s."osenv@0"
            s."path-array@^1.0.0"
            s."request@2"
            s."rimraf@2"
            s."semver@2.x || 3.x || 4 || 5"
            s."tar@^2.0.0"
            s."which@1"
          ];
          "node-gyp@3.6.2" = f "node-gyp" "3.6.2" y "9bfbe54562286284838e750eac05295853fa1c60" [
            s."fstream@^1.0.0"
            s."glob@^7.0.3"
            s."graceful-fs@^4.1.2"
            s."minimatch@^3.0.2"
            s."mkdirp@^0.5.0"
            s."nopt@2 || 3"
            s."npmlog@0 || 1 || 2 || 3 || 4"
            s."osenv@0"
            s."request@2"
            s."rimraf@2"
            s."semver@~5.3.0"
            s."tar@^2.0.0"
            s."which@1"
          ];
          "node-gyp@^3.3.1" = s."node-gyp@3.4.0";
          "node-gyp@^3.6.0" = s."node-gyp@3.6.2";
          "node-inspector@0.12.8" = g "node-inspector" "0.12.8" "https://github.com/enlight/node-inspector" "accd46758501d8187e55b32b54e3eff65c3fdaa3" "06yq498kgbxxxi7z0z9b6wyjjdqb90zp69xgrdslxihakc3ymywz" [
            s."async@~0.9"
            s."biased-opener@~0.2.2"
            s."debug@^2.2.0"
            s."express@^4.12.3"
            s."glob@^5.0.5"
            s."path-is-absolute@^1.0.0"
            s."rc@^1.0.1"
            s."semver@^4.3.4"
            s."serve-favicon@^2.1.1"
            s."strong-data-uri@^1.0.0"
            s."v8-debug@~0.7.1"
            s."v8-profiler@~5.6.0"
            s."which@^1.1.1"
            s."ws@^1.0.1"
            s."yargs@^3.9.0"
          ];
          "node-inspector@git+https://github.com/enlight/node-inspector" = s."node-inspector@0.12.8";
          "node-libs-browser@0.7.0" = f "node-libs-browser" "0.7.0" y "3e272c0819e308935e26674408d7af0e1491b83b" [
            s."assert@^1.1.1"
            s."browserify-zlib@^0.1.4"
            s."buffer@^4.9.0"
            s."console-browserify@^1.1.0"
            s."constants-browserify@^1.0.0"
            s."crypto-browserify@3.3.0"
            s."domain-browser@^1.1.1"
            s."events@^1.0.0"
            s."https-browserify@0.0.1"
            s."os-browserify@^0.2.0"
            s."path-browserify@0.0.0"
            s."process@^0.11.0"
            s."punycode@^1.2.4"
            s."querystring-es3@^0.2.0"
            s."readable-stream@^2.0.5"
            s."stream-browserify@^2.0.1"
            s."stream-http@^2.3.1"
            s."string_decoder@^0.10.25"
            s."timers-browserify@^2.0.2"
            s."tty-browserify@0.0.0"
            s."url@^0.11.0"
            s."util@^0.10.3"
            s."vm-browserify@0.0.4"
          ];
          "node-libs-browser@1.1.1" = f "node-libs-browser" "1.1.1" y "2a38243abedd7dffcd07a97c9aca5668975a6fea" [
            s."assert@^1.1.1"
            s."browserify-zlib@^0.1.4"
            s."buffer@^4.3.0"
            s."console-browserify@^1.1.0"
            s."constants-browserify@^1.0.0"
            s."crypto-browserify@^3.11.0"
            s."domain-browser@^1.1.1"
            s."events@^1.0.0"
            s."https-browserify@0.0.1"
            s."os-browserify@^0.2.0"
            s."path-browserify@0.0.0"
            s."process@^0.11.0"
            s."punycode@^1.2.4"
            s."querystring-es3@^0.2.0"
            s."readable-stream@^2.0.5"
            s."stream-browserify@^2.0.1"
            s."stream-http@^2.3.1"
            s."string_decoder@^0.10.25"
            s."timers-browserify@^1.4.2"
            s."tty-browserify@0.0.0"
            s."url@^0.11.0"
            s."util@^0.10.3"
            s."vm-browserify@0.0.4"
          ];
          "node-libs-browser@^0.7.0" = s."node-libs-browser@0.7.0";
          "node-libs-browser@^1.0.0" = s."node-libs-browser@1.1.1";
          "node-pre-gyp@0.6.32" = f "node-pre-gyp" "0.6.32" y "fc452b376e7319b3d255f5f34853ef6fd8fe1fd5" [
            s."mkdirp@~0.5.1"
            s."nopt@~3.0.6"
            s."npmlog@^4.0.1"
            s."rc@~1.1.6"
            s."request@^2.79.0"
            s."rimraf@~2.5.4"
            s."semver@~5.3.0"
            s."tar@~2.2.1"
            s."tar-pack@~3.3.0"
          ];
          "node-pre-gyp@^0.6.29" = s."node-pre-gyp@0.6.32";
          "node-pre-gyp@^0.6.5" = s."node-pre-gyp@0.6.32";
          "node-sass@3.13.1" = f "node-sass" "3.13.1" y "7240fbbff2396304b4223527ed3020589c004fc2" [
            s."async-foreach@^0.1.3"
            s."chalk@^1.1.1"
            s."cross-spawn@^3.0.0"
            s."gaze@^1.0.0"
            s."get-stdin@^4.0.1"
            s."glob@^7.0.3"
            s."in-publish@^2.0.0"
            s."lodash.assign@^4.2.0"
            s."lodash.clonedeep@^4.3.2"
            s."meow@^3.7.0"
            s."mkdirp@^0.5.1"
            s."nan@^2.3.2"
            s."node-gyp@^3.3.1"
            s."npmlog@^4.0.0"
            s."request@^2.61.0"
            s."sass-graph@^2.1.1"
          ];
          "node-uuid@1.4.7" = f "node-uuid" "1.4.7" y "6da5a17668c4b3dd59623bda11cf7fa4c1f60a6f" [];
          "node-uuid@~1.4.0" = s."node-uuid@1.4.7";
          "nodemon@1.11.0" = f "nodemon" "1.11.0" y "226c562bd2a7b13d3d7518b49ad4828a3623d06c" [
            s."chokidar@^1.4.3"
            s."debug@^2.2.0"
            s."es6-promise@^3.0.2"
            s."ignore-by-default@^1.0.0"
            s."lodash.defaults@^3.1.2"
            s."minimatch@^3.0.0"
            s."ps-tree@^1.0.1"
            s."touch@1.0.0"
            s."undefsafe@0.0.3"
            s."update-notifier@0.5.0"
          ];
          "nopt@1.0.10" = f "nopt" "1.0.10" y "6ddd21bd2a31417b92727dd585f8a6f37608ebee" [
            s."abbrev@1"
          ];
          "nopt@2 || 3" = s."nopt@3.0.6";
          "nopt@3.0.6" = f "nopt" "3.0.6" y "c6465dbf08abcd4db359317f79ac68a646b28ff9" [
            s."abbrev@1"
          ];
          "nopt@^3.0.1" = s."nopt@3.0.6";
          "nopt@~1.0.10" = s."nopt@1.0.10";
          "nopt@~3.0.6" = s."nopt@3.0.6";
          "normalize-package-data@2.3.5" = f "normalize-package-data" "2.3.5" y "8d924f142960e1777e7ffe170543631cc7cb02df" [
            s."hosted-git-info@^2.1.4"
            s."is-builtin-module@^1.0.0"
            s."semver@2 || 3 || 4 || 5"
            s."validate-npm-package-license@^3.0.1"
          ];
          "normalize-package-data@^2.3.2" = s."normalize-package-data@2.3.5";
          "normalize-package-data@^2.3.4" = s."normalize-package-data@2.3.5";
          "normalize-path@2.0.1" = f "normalize-path" "2.0.1" y "47886ac1662760d4261b7d979d241709d3ce3f7a" [];
          "normalize-path@^2.0.0" = s."normalize-path@2.0.1";
          "normalize-path@^2.0.1" = s."normalize-path@2.0.1";
          "normalize-range@0.1.2" = f "normalize-range" "0.1.2" y "2d10c06bdfd312ea9777695a4d28439456b75942" [];
          "normalize-range@^0.1.2" = s."normalize-range@0.1.2";
          "normalize-url@1.9.0" = f "normalize-url" "1.9.0" y "c2bb50035edee62cd81edb2d45da68dc25e3423e" [
            s."object-assign@^4.0.1"
            s."prepend-http@^1.0.0"
            s."query-string@^4.1.0"
            s."sort-keys@^1.0.0"
          ];
          "normalize-url@^1.4.0" = s."normalize-url@1.9.0";
          "npm-install-package@2.1.0" = f "npm-install-package" "2.1.0" y "d7efe3cfcd7ab00614b896ea53119dc9ab259125" [];
          "npm-install-package@~2.1.0" = s."npm-install-package@2.1.0";
          "npmlog@0 || 1 || 2 || 3" = s."npmlog@2.0.3";
          "npmlog@0 || 1 || 2 || 3 || 4" = s."npmlog@4.1.2";
          "npmlog@2.0.3" = f "npmlog" "2.0.3" y "020f99351f0c02e399c674ba256e7c4d3b3dd298" [
            s."ansi@~0.3.1"
            s."are-we-there-yet@~1.1.2"
            s."gauge@~1.2.5"
          ];
          "npmlog@4.0.2" = f "npmlog" "4.0.2" y "d03950e0e78ce1527ba26d2a7592e9348ac3e75f" [
            s."are-we-there-yet@~1.1.2"
            s."console-control-strings@~1.1.0"
            s."gauge@~2.7.1"
            s."set-blocking@~2.0.0"
          ];
          "npmlog@4.1.2" = f "npmlog" "4.1.2" y "08a7f2a8bf734604779a9efa4ad5cc717abb954b" [
            s."are-we-there-yet@~1.1.2"
            s."console-control-strings@~1.1.0"
            s."gauge@~2.7.3"
            s."set-blocking@~2.0.0"
          ];
          "npmlog@^4.0.0" = s."npmlog@4.0.2";
          "npmlog@^4.0.1" = s."npmlog@4.0.2";
          "nugget@2.0.1" = f "nugget" "2.0.1" y "201095a487e1ad36081b3432fa3cada4f8d071b0" [
            s."debug@^2.1.3"
            s."minimist@^1.1.0"
            s."pretty-bytes@^1.0.2"
            s."progress-stream@^1.1.0"
            s."request@^2.45.0"
            s."single-line-log@^1.1.2"
            s."throttleit@0.0.2"
          ];
          "nugget@^2.0.0" = s."nugget@2.0.1";
          "num2fraction@1.2.2" = f "num2fraction" "1.2.2" y "6f682b6a027a4e9ddfa4564cd2589d1d4e669ede" [];
          "num2fraction@^1.2.2" = s."num2fraction@1.2.2";
          "number-is-nan@1.0.1" = f "number-is-nan" "1.0.1" y "097b602b53422a522c1afb8790318336941a011d" [];
          "number-is-nan@^1.0.0" = s."number-is-nan@1.0.1";
          "number-to-bn@1.7.0" = f "number-to-bn" "1.7.0" y "bb3623592f7e5f9e0030b1977bd41a0c53fe1ea0" [
            s."bn.js@4.11.6"
            s."strip-hex-prefix@1.0.0"
          ];
          "nwmatcher@1.3.9" = f "nwmatcher" "1.3.9" y "8bab486ff7fa3dfd086656bbe8b17116d3692d2a" [];
          "nwmatcher@>= 1.3.9 < 2.0.0" = s."nwmatcher@1.3.9";
          "oauth-sign@0.6.0" = f "oauth-sign" "0.6.0" y "7dbeae44f6ca454e1f168451d630746735813ce3" [];
          "oauth-sign@0.8.2" = f "oauth-sign" "0.8.2" y "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43" [];
          "oauth-sign@~0.6.0" = s."oauth-sign@0.6.0";
          "oauth-sign@~0.8.1" = s."oauth-sign@0.8.2";
          "oauth-sign@~0.8.2" = s."oauth-sign@0.8.2";
          "object-assign@3.0.0" = f "object-assign" "3.0.0" y "9bedd5ca0897949bca47e7ff408062d549f587f2" [];
          "object-assign@4.1.0" = f "object-assign" "4.1.0" y "7a3b3d0e98063d43f4c03f2e8ae6cd51a86883a0" [];
          "object-assign@4.1.1" = f "object-assign" "4.1.1" y "2109adc7965887cfc05cbbd442cac8bfbb360863" [];
          "object-assign@^3.0.0" = s."object-assign@3.0.0";
          "object-assign@^4" = s."object-assign@4.1.1";
          "object-assign@^4.0.1" = s."object-assign@4.1.0";
          "object-assign@^4.1.0" = s."object-assign@4.1.0";
          "object-assign@^4.1.1" = s."object-assign@4.1.1";
          "object-hash@1.1.5" = f "object-hash" "1.1.5" y "bdd844e030d0861b692ca175c6cab6868ec233d7" [];
          "object-hash@^1.1.4" = s."object-hash@1.1.5";
          "object-keys@0.4.0" = f "object-keys" "0.4.0" y "28a6aae7428dd2c3a92f3d95f21335dd204e0336" [];
          "object-keys@1.0.11" = f "object-keys" "1.0.11" y "c54601778ad560f1142ce0e01bcca8b56d13426d" [];
          "object-keys@^1.0.11" = s."object-keys@1.0.11";
          "object-keys@^1.0.8" = s."object-keys@1.0.11";
          "object-keys@~0.4.0" = s."object-keys@0.4.0";
          "object.assign@4.1.0" = f "object.assign" "4.1.0" y "968bf1100d7956bb3ca086f006f846b3bc4008da" [
            s."define-properties@^1.1.2"
            s."function-bind@^1.1.1"
            s."has-symbols@^1.0.0"
            s."object-keys@^1.0.11"
          ];
          "object.assign@^4.0.4" = s."object.assign@4.1.0";
          "object.entries@1.0.4" = f "object.entries" "1.0.4" y "1bf9a4dd2288f5b33f3a993d257661f05d161a5f" [
            s."define-properties@^1.1.2"
            s."es-abstract@^1.6.1"
            s."function-bind@^1.1.0"
            s."has@^1.0.1"
          ];
          "object.entries@^1.0.3" = s."object.entries@1.0.4";
          "object.getownpropertydescriptors@2.0.3" = f "object.getownpropertydescriptors" "2.0.3" y "8758c846f5b407adab0f236e0986f14b051caa16" [
            s."define-properties@^1.1.2"
            s."es-abstract@^1.5.1"
          ];
          "object.getownpropertydescriptors@^2.0.3" = s."object.getownpropertydescriptors@2.0.3";
          "object.omit@2.0.1" = f "object.omit" "2.0.1" y "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa" [
            s."for-own@^0.1.4"
            s."is-extendable@^0.1.1"
          ];
          "object.omit@^2.0.0" = s."object.omit@2.0.1";
          "object.values@1.0.4" = f "object.values" "1.0.4" y "e524da09b4f66ff05df457546ec72ac99f13069a" [
            s."define-properties@^1.1.2"
            s."es-abstract@^1.6.1"
            s."function-bind@^1.1.0"
            s."has@^1.0.1"
          ];
          "object.values@^1.0.3" = s."object.values@1.0.4";
          "oboe@2.1.3" = f "oboe" "2.1.3" y "2b4865dbd46be81225713f4e9bfe4bcf4f680a4f" [
            s."http-https@^1.0.0"
          ];
          "on-finished@2.3.0" = f "on-finished" "2.3.0" y "20f1336481b083cd75337992a16971aa2d906947" [
            s."ee-first@1.1.1"
          ];
          "on-finished@~2.3.0" = s."on-finished@2.3.0";
          "once@1.3.3" = f "once" "1.3.3" y "b2e261557ce4c314ec8304f3fa82663e4297ca20" [
            s."wrappy@1"
          ];
          "once@1.4.0" = f "once" "1.4.0" y "583b1aa775961d4b113ac17d9c50baef9dd76bd1" [
            s."wrappy@1"
          ];
          "once@^1.3.0" = s."once@1.4.0";
          "once@^1.3.1" = s."once@1.4.0";
          "once@~1.3.0" = s."once@1.3.3";
          "once@~1.3.3" = s."once@1.3.3";
          "onetime@1.1.0" = f "onetime" "1.1.0" y "a1f7838f8314c516f05ecefcbc4ccfe04b4ed789" [];
          "onetime@2.0.1" = f "onetime" "2.0.1" y "067428230fd67443b2794b22bba528b6867962d4" [
            s."mimic-fn@^1.0.0"
          ];
          "onetime@^1.0.0" = s."onetime@1.1.0";
          "onetime@^2.0.0" = s."onetime@2.0.1";
          "optimist@0.6.1" = f "optimist" "0.6.1" y "da3ea74686fa21a19a111c326e90eb15a0196686" [
            s."minimist@~0.0.1"
            s."wordwrap@~0.0.2"
          ];
          "optimist@~0.6.0" = s."optimist@0.6.1";
          "optimist@~0.6.1" = s."optimist@0.6.1";
          "optionator@0.8.2" = f "optionator" "0.8.2" y "364c5e409d3f4d6301d6c0b4c05bba50180aeb64" [
            s."deep-is@~0.1.3"
            s."fast-levenshtein@~2.0.4"
            s."levn@~0.3.0"
            s."prelude-ls@~1.1.2"
            s."type-check@~0.3.2"
            s."wordwrap@~1.0.0"
          ];
          "optionator@^0.8.1" = s."optionator@0.8.2";
          "optionator@^0.8.2" = s."optionator@0.8.2";
          "options@0.0.6" = f "options" "0.0.6" y "ec22d312806bb53e731773e7cdaefcf1c643128f" [];
          "options@>=0.0.5" = s."options@0.0.6";
          "ora@1.4.0" = f "ora" "1.4.0" y "884458215b3a5d4097592285f93321bb7a79e2e5" [
            s."chalk@^2.1.0"
            s."cli-cursor@^2.1.0"
            s."cli-spinners@^1.0.1"
            s."log-symbols@^2.1.0"
          ];
          "ora@^1.2.0" = s."ora@1.4.0";
          "os-browserify@0.2.1" = f "os-browserify" "0.2.1" y "63fc4ccee5d2d7763d26bbf8601078e6c2e0044f" [];
          "os-browserify@^0.2.0" = s."os-browserify@0.2.1";
          "os-homedir@1.0.2" = f "os-homedir" "1.0.2" y "ffbc4988336e0e833de0c168c7ef152121aa7fb3" [];
          "os-homedir@^1.0.0" = s."os-homedir@1.0.2";
          "os-homedir@^1.0.1" = s."os-homedir@1.0.2";
          "os-locale@1.4.0" = f "os-locale" "1.4.0" y "20f9f17ae29ed345e8bde583b13d2009803c14d9" [
            s."lcid@^1.0.0"
          ];
          "os-locale@^1.4.0" = s."os-locale@1.4.0";
          "os-tmpdir@1.0.2" = f "os-tmpdir" "1.0.2" y "bbe67406c79aa85c5cfec766fe5734555dfa1274" [];
          "os-tmpdir@^1.0.0" = s."os-tmpdir@1.0.2";
          "os-tmpdir@^1.0.1" = s."os-tmpdir@1.0.2";
          "os-tmpdir@~1.0.1" = s."os-tmpdir@1.0.2";
          "os-tmpdir@~1.0.2" = s."os-tmpdir@1.0.2";
          "osenv@0" = s."osenv@0.1.4";
          "osenv@0.1.4" = f "osenv" "0.1.4" y "42fe6d5953df06c8064be6f176c3d05aaaa34644" [
            s."os-homedir@^1.0.0"
            s."os-tmpdir@^1.0.0"
          ];
          "osenv@^0.1.0" = s."osenv@0.1.4";
          "output-file-sync@1.1.2" = f "output-file-sync" "1.1.2" y "d0a33eefe61a205facb90092e826598d5245ce76" [
            s."graceful-fs@^4.1.4"
            s."mkdirp@^0.5.1"
            s."object-assign@^4.1.0"
          ];
          "output-file-sync@^1.1.0" = s."output-file-sync@1.1.2";
          "p-cancelable@0.3.0" = f "p-cancelable" "0.3.0" y "b9e123800bcebb7ac13a479be195b507b98d30fa" [];
          "p-cancelable@^0.3.0" = s."p-cancelable@0.3.0";
          "p-finally@1.0.0" = f "p-finally" "1.0.0" y "3fbcfb15b899a44123b34b6dcc18b724336a2cae" [];
          "p-finally@^1.0.0" = s."p-finally@1.0.0";
          "p-limit@1.1.0" = f "p-limit" "1.1.0" y "b07ff2d9a5d88bec806035895a2bab66a27988bc" [];
          "p-limit@^1.1.0" = s."p-limit@1.1.0";
          "p-locate@2.0.0" = f "p-locate" "2.0.0" y "20a0103b222a70c8fd39cc2e580680f3dde5ec43" [
            s."p-limit@^1.1.0"
          ];
          "p-locate@^2.0.0" = s."p-locate@2.0.0";
          "p-timeout@1.2.1" = f "p-timeout" "1.2.1" y "5eb3b353b7fce99f101a1038880bb054ebbea386" [
            s."p-finally@^1.0.0"
          ];
          "p-timeout@^1.1.1" = s."p-timeout@1.2.1";
          "package-json@1.2.0" = f "package-json" "1.2.0" y "c8ecac094227cdf76a316874ed05e27cc939a0e0" [
            s."got@^3.2.0"
            s."registry-url@^3.0.0"
          ];
          "package-json@^1.0.0" = s."package-json@1.2.0";
          "pad-right@0.2.2" = f "pad-right" "0.2.2" y "6fbc924045d244f2a2a244503060d3bfc6009774" [
            s."repeat-string@^1.5.2"
          ];
          "pad-right@^0.2.2" = s."pad-right@0.2.2";
          "pako@0.2.9" = f "pako" "0.2.9" y "f3f7522f4ef782348da8161bad9ecfd51bf83a75" [];
          "pako@~0.2.0" = s."pako@0.2.9";
          "param-case@2.1.1" = f "param-case" "2.1.1" y "df94fd8cf6531ecf75e6bef9a0858fbc72be2247" [
            s."no-case@^2.2.0"
          ];
          "param-case@2.1.x" = s."param-case@2.1.1";
          "parse-asn1@5.0.0" = f "parse-asn1" "5.0.0" y "35060f6d5015d37628c770f4e091a0b5a278bc23" [
            s."asn1.js@^4.0.0"
            s."browserify-aes@^1.0.0"
            s."create-hash@^1.1.0"
            s."evp_bytestokey@^1.0.0"
            s."pbkdf2@^3.0.3"
          ];
          "parse-asn1@^5.0.0" = s."parse-asn1@5.0.0";
          "parse-author@2.0.0" = f "parse-author" "2.0.0" y "d3460bf1ddd0dfaeed42da754242e65fb684a81f" [
            s."author-regex@^1.0.0"
          ];
          "parse-author@^2.0.0" = s."parse-author@2.0.0";
          "parse-glob@3.0.4" = f "parse-glob" "3.0.4" y "b2c376cfb11f35513badd173ef0bb6e3a388391c" [
            s."glob-base@^0.3.0"
            s."is-dotfile@^1.0.0"
            s."is-extglob@^1.0.0"
            s."is-glob@^2.0.0"
          ];
          "parse-glob@^3.0.4" = s."parse-glob@3.0.4";
          "parse-headers@2.0.1" = f "parse-headers" "2.0.1" y "6ae83a7aa25a9d9b700acc28698cd1f1ed7e9536" [
            s."for-each@^0.3.2"
            s."trim@0.0.1"
          ];
          "parse-headers@^2.0.0" = s."parse-headers@2.0.1";
          "parse-json@2.2.0" = f "parse-json" "2.2.0" y "f480f40434ef80741f8469099f8dea18f55a4dc9" [
            s."error-ex@^1.2.0"
          ];
          "parse-json@^2.2.0" = s."parse-json@2.2.0";
          "parse-passwd@1.0.0" = f "parse-passwd" "1.0.0" y "6d5b934a456993b23d37f40a382d6f1666a8e5c6" [];
          "parse-passwd@^1.0.0" = s."parse-passwd@1.0.0";
          "parse5@1.5.1" = f "parse5" "1.5.1" y "9b7f3b0de32be78dc2401b17573ccaf0f6f59d94" [];
          "parse5@^1.5.1" = s."parse5@1.5.1";
          "parseurl@1.3.1" = f "parseurl" "1.3.1" y "c8ab8c9223ba34888aa64a297b28853bec18da56" [];
          "parseurl@1.3.2" = f "parseurl" "1.3.2" y "fc289d4ed8993119460c156253262cdc8de65bf3" [];
          "parseurl@~1.3.1" = s."parseurl@1.3.1";
          "parseurl@~1.3.2" = s."parseurl@1.3.2";
          "pascalcase@0.1.1" = f "pascalcase" "0.1.1" y "b363e55e8006ca6fe21784d2db22bd15d7917f14" [];
          "pascalcase@^0.1.1" = s."pascalcase@0.1.1";
          "path-array@1.0.1" = f "path-array" "1.0.1" y "7e2f0f35f07a2015122b868b7eac0eb2c4fec271" [
            s."array-index@^1.0.0"
          ];
          "path-array@^1.0.0" = s."path-array@1.0.1";
          "path-browserify@0.0.0" = f "path-browserify" "0.0.0" y "a0b870729aae214005b7d5032ec2cbbb0fb4451a" [];
          "path-exists@2.1.0" = f "path-exists" "2.1.0" y "0feb6c64f0fc518d9a754dd5efb62c7022761f4b" [
            s."pinkie-promise@^2.0.0"
          ];
          "path-exists@3.0.0" = f "path-exists" "3.0.0" y "ce0ebeaa5f78cb18925ea7d810d7b59b010fd515" [];
          "path-exists@^2.0.0" = s."path-exists@2.1.0";
          "path-exists@^2.1.0" = s."path-exists@2.1.0";
          "path-exists@^3.0.0" = s."path-exists@3.0.0";
          "path-is-absolute@1.0.1" = f "path-is-absolute" "1.0.1" y "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f" [];
          "path-is-absolute@^1.0.0" = s."path-is-absolute@1.0.1";
          "path-is-absolute@^1.0.1" = s."path-is-absolute@1.0.1";
          "path-is-inside@1.0.2" = f "path-is-inside" "1.0.2" y "365417dede44430d1c11af61027facf074bdfc53" [];
          "path-is-inside@^1.0.1" = s."path-is-inside@1.0.2";
          "path-parse@1.0.5" = f "path-parse" "1.0.5" y "3c1adf871ea9cd6c9431b6ea2bd74a0ff055c4c1" [];
          "path-parse@^1.0.5" = s."path-parse@1.0.5";
          "path-to-regexp@0.1.7" = f "path-to-regexp" "0.1.7" y "df604178005f522f15eb4490e7247a1bfaa67f8c" [];
          "path-type@1.1.0" = f "path-type" "1.1.0" y "59c44f7ee491da704da415da5a4070ba4f8fe441" [
            s."graceful-fs@^4.1.2"
            s."pify@^2.0.0"
            s."pinkie-promise@^2.0.0"
          ];
          "path-type@2.0.0" = f "path-type" "2.0.0" y "f012ccb8415b7096fc2daa1054c3d72389594c73" [
            s."pify@^2.0.0"
          ];
          "path-type@^1.0.0" = s."path-type@1.1.0";
          "path-type@^2.0.0" = s."path-type@2.0.0";
          "pathval@1.1.0" = f "pathval" "1.1.0" y "b942e6d4bde653005ef6b71361def8727d0645e0" [];
          "pathval@^1.0.0" = s."pathval@1.1.0";
          "pause-stream@0.0.11" = f "pause-stream" "0.0.11" y "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445" [
            s."through@~2.3"
          ];
          "pbkdf2-compat@2.0.1" = f "pbkdf2-compat" "2.0.1" y "b6e0c8fa99494d94e0511575802a59a5c142f288" [];
          "pbkdf2@3.0.14" = f "pbkdf2" "3.0.14" y "a35e13c64799b06ce15320f459c230e68e73bade" [
            s."create-hash@^1.1.2"
            s."create-hmac@^1.1.4"
            s."ripemd160@^2.0.1"
            s."safe-buffer@^5.0.1"
            s."sha.js@^2.4.8"
          ];
          "pbkdf2@3.0.9" = f "pbkdf2" "3.0.9" y "f2c4b25a600058b3c3773c086c37dbbee1ffe693" [
            s."create-hmac@^1.1.2"
          ];
          "pbkdf2@^3.0.3" = s."pbkdf2@3.0.9";
          "pbkdf2@^3.0.9" = s."pbkdf2@3.0.14";
          "pdf.js-extract@0.0.5" = f "pdf.js-extract" "0.0.5" y "d141942ee2e291e8fd851159ec15cf6930aa95ce" [
            s."pdfjs-dist-for-node@^1.0.892-rc.1"
          ];
          "pdfjs-dist-for-node@1.0.893" = f "pdfjs-dist-for-node" "1.0.893" y "10be171dc212f4aa862528b43258d745399bc3ad" [];
          "pdfjs-dist-for-node@^1.0.892-rc.1" = s."pdfjs-dist-for-node@1.0.893";
          "pend@1.2.0" = f "pend" "1.2.0" y "7a57eb550a6783f9115331fcf4663d5c8e007a50" [];
          "pend@~1.2.0" = s."pend@1.2.0";
          "performance-now@0.2.0" = f "performance-now" "0.2.0" y "33ef30c5c77d4ea21c5a53869d91b56d8f2555e5" [];
          "performance-now@2.1.0" = f "performance-now" "2.1.0" y "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b" [];
          "performance-now@^2.1.0" = s."performance-now@2.1.0";
          "performance-now@~0.2.0" = s."performance-now@0.2.0";
          "pify@2.3.0" = f "pify" "2.3.0" y "ed141a6ac043a849ea588498e7dca8b15330e90c" [];
          "pify@3.0.0" = f "pify" "3.0.0" y "e5a4acd2c101fdf3d9a4d07f0dbc4db49dd28176" [];
          "pify@^2.0.0" = s."pify@2.3.0";
          "pify@^2.3.0" = s."pify@2.3.0";
          "pify@^3.0.0" = s."pify@3.0.0";
          "pinkie-promise@2.0.1" = f "pinkie-promise" "2.0.1" y "2135d6dfa7a358c069ac9b178776288228450ffa" [
            s."pinkie@^2.0.0"
          ];
          "pinkie-promise@^2.0.0" = s."pinkie-promise@2.0.1";
          "pinkie@2.0.4" = f "pinkie" "2.0.4" y "72556b80cfa0d48a974e80e77248e80ed4f7f870" [];
          "pinkie@^2.0.0" = s."pinkie@2.0.4";
          "pkg-conf@1.1.3" = f "pkg-conf" "1.1.3" y "378e56d6fd13e88bfb6f4a25df7a83faabddba5b" [
            s."find-up@^1.0.0"
            s."load-json-file@^1.1.0"
            s."object-assign@^4.0.1"
            s."symbol@^0.2.1"
          ];
          "pkg-conf@^1.1.2" = s."pkg-conf@1.1.3";
          "pkg-dir@1.0.0" = f "pkg-dir" "1.0.0" y "7a4b508a8d5bb2d629d447056ff4e9c9314cf3d4" [
            s."find-up@^1.0.0"
          ];
          "pkg-dir@^1.0.0" = s."pkg-dir@1.0.0";
          "pkg-up@1.0.0" = f "pkg-up" "1.0.0" y "3e08fb461525c4421624a33b9f7e6d0af5b05a26" [
            s."find-up@^1.0.0"
          ];
          "pkg-up@2.0.0" = f "pkg-up" "2.0.0" y "c819ac728059a461cab1c3889a2be3c49a004d7f" [
            s."find-up@^2.1.0"
          ];
          "pkg-up@^1.0.0" = s."pkg-up@1.0.0";
          "pkg-up@^2.0.0" = s."pkg-up@2.0.0";
          "plist@1.2.0" = f "plist" "1.2.0" y "084b5093ddc92506e259f874b8d9b1afb8c79593" [
            s."base64-js@0.0.8"
            s."util-deprecate@1.0.2"
            s."xmlbuilder@4.0.0"
            s."xmldom@0.1.x"
          ];
          "plist@2.0.1" = f "plist" "2.0.1" y "0a32ca9481b1c364e92e18dc55c876de9d01da8b" [
            s."base64-js@1.1.2"
            s."xmlbuilder@8.2.2"
            s."xmldom@0.1.x"
          ];
          "plist@^1.0.1" = s."plist@1.2.0";
          "plist@^2.0.0" = s."plist@2.0.1";
          "plist@^2.0.1" = s."plist@2.0.1";
          "plur@2.1.2" = f "plur" "2.1.2" y "7482452c1a0f508e3e344eaec312c91c29dc655a" [
            s."irregular-plurals@^1.0.0"
          ];
          "plur@^2.1.2" = s."plur@2.1.2";
          "pluralize@1.2.1" = f "pluralize" "1.2.1" y "d1a21483fd22bb41e58a12fa3421823140897c45" [];
          "pluralize@^1.2.1" = s."pluralize@1.2.1";
          "podda@1.2.2" = f "podda" "1.2.2" y "15b0edbd334ade145813343f5ecf9c10a71cf500" [
            s."babel-runtime@^6.11.6"
            s."immutable@^3.8.1"
          ];
          "podda@^1.2.1" = s."podda@1.2.2";
          "postcss-calc@5.3.1" = f "postcss-calc" "5.3.1" y "77bae7ca928ad85716e2fda42f261bf7c1d65b5e" [
            s."postcss@^5.0.2"
            s."postcss-message-helpers@^2.0.0"
            s."reduce-css-calc@^1.2.6"
          ];
          "postcss-calc@^5.2.0" = s."postcss-calc@5.3.1";
          "postcss-colormin@2.2.1" = f "postcss-colormin" "2.2.1" y "dc5421b6ae6f779ef6bfd47352b94abe59d0316b" [
            s."colormin@^1.0.5"
            s."postcss@^5.0.13"
            s."postcss-value-parser@^3.2.3"
          ];
          "postcss-colormin@^2.1.8" = s."postcss-colormin@2.2.1";
          "postcss-convert-values@2.6.0" = f "postcss-convert-values" "2.6.0" y "08c6d06130fe58a91a21ff50829e1aad6a3a1acc" [
            s."postcss@^5.0.11"
            s."postcss-value-parser@^3.1.2"
          ];
          "postcss-convert-values@^2.3.4" = s."postcss-convert-values@2.6.0";
          "postcss-discard-comments@2.0.4" = f "postcss-discard-comments" "2.0.4" y "befe89fafd5b3dace5ccce51b76b81514be00e3d" [
            s."postcss@^5.0.14"
          ];
          "postcss-discard-comments@^2.0.4" = s."postcss-discard-comments@2.0.4";
          "postcss-discard-duplicates@2.0.2" = f "postcss-discard-duplicates" "2.0.2" y "02be520e91571ffb10738766a981d5770989bb32" [
            s."postcss@^5.0.4"
          ];
          "postcss-discard-duplicates@^2.0.1" = s."postcss-discard-duplicates@2.0.2";
          "postcss-discard-empty@2.1.0" = f "postcss-discard-empty" "2.1.0" y "d2b4bd9d5ced5ebd8dcade7640c7d7cd7f4f92b5" [
            s."postcss@^5.0.14"
          ];
          "postcss-discard-empty@^2.0.1" = s."postcss-discard-empty@2.1.0";
          "postcss-discard-overridden@0.1.1" = f "postcss-discard-overridden" "0.1.1" y "8b1eaf554f686fb288cd874c55667b0aa3668d58" [
            s."postcss@^5.0.16"
          ];
          "postcss-discard-overridden@^0.1.1" = s."postcss-discard-overridden@0.1.1";
          "postcss-discard-unused@2.2.3" = f "postcss-discard-unused" "2.2.3" y "bce30b2cc591ffc634322b5fb3464b6d934f4433" [
            s."postcss@^5.0.14"
            s."uniqs@^2.0.0"
          ];
          "postcss-discard-unused@^2.2.1" = s."postcss-discard-unused@2.2.3";
          "postcss-filter-plugins@2.0.2" = f "postcss-filter-plugins" "2.0.2" y "6d85862534d735ac420e4a85806e1f5d4286d84c" [
            s."postcss@^5.0.4"
            s."uniqid@^4.0.0"
          ];
          "postcss-filter-plugins@^2.0.0" = s."postcss-filter-plugins@2.0.2";
          "postcss-load-config@1.0.0" = f "postcss-load-config" "1.0.0" y "1399f60dcd6bd9c3124b2eb22960f77f9dc08b3d" [
            s."cosmiconfig@^2.1.0"
            s."object-assign@^4.1.0"
            s."postcss-load-options@^1.0.2"
            s."postcss-load-plugins@^2.0.0"
          ];
          "postcss-load-config@^1.0.0" = s."postcss-load-config@1.0.0";
          "postcss-load-options@1.1.0" = f "postcss-load-options" "1.1.0" y "e39215d154a19f69f9cb6052bffad4a82f09f354" [
            s."cosmiconfig@^2.1.0"
            s."object-assign@^4.1.0"
          ];
          "postcss-load-options@^1.0.2" = s."postcss-load-options@1.1.0";
          "postcss-load-plugins@2.1.0" = f "postcss-load-plugins" "2.1.0" y "dbb6f46271df8d16e19b5d691ebda5175ce424a0" [
            s."cosmiconfig@^2.1.1"
            s."object-assign@^4.1.0"
          ];
          "postcss-load-plugins@^2.0.0" = s."postcss-load-plugins@2.1.0";
          "postcss-loader@1.1.0" = f "postcss-loader" "1.1.0" y "4eb0bcbfc710b8b11406f3ea6650aaaa6e51b84f" [
            s."loader-utils@^0.2.16"
            s."object-assign@^4.1.0"
            s."postcss@^5.2.5"
            s."postcss-load-config@^1.0.0"
          ];
          "postcss-merge-idents@2.1.7" = f "postcss-merge-idents" "2.1.7" y "4c5530313c08e1d5b3bbf3d2bbc747e278eea270" [
            s."has@^1.0.1"
            s."postcss@^5.0.10"
            s."postcss-value-parser@^3.1.1"
          ];
          "postcss-merge-idents@^2.1.5" = s."postcss-merge-idents@2.1.7";
          "postcss-merge-longhand@2.0.1" = f "postcss-merge-longhand" "2.0.1" y "ff59b5dec6d586ce2cea183138f55c5876fa9cdc" [
            s."postcss@^5.0.4"
          ];
          "postcss-merge-longhand@^2.0.1" = s."postcss-merge-longhand@2.0.1";
          "postcss-merge-rules@2.1.1" = f "postcss-merge-rules" "2.1.1" y "5e5640020ce43cddd343c73bba91c9a358d1fe0f" [
            s."browserslist@^1.5.2"
            s."caniuse-api@^1.5.2"
            s."postcss@^5.0.4"
            s."postcss-selector-parser@^2.2.2"
            s."vendors@^1.0.0"
          ];
          "postcss-merge-rules@^2.0.3" = s."postcss-merge-rules@2.1.1";
          "postcss-message-helpers@2.0.0" = f "postcss-message-helpers" "2.0.0" y "a4f2f4fab6e4fe002f0aed000478cdf52f9ba60e" [];
          "postcss-message-helpers@^2.0.0" = s."postcss-message-helpers@2.0.0";
          "postcss-minify-font-values@1.0.5" = f "postcss-minify-font-values" "1.0.5" y "4b58edb56641eba7c8474ab3526cafd7bbdecb69" [
            s."object-assign@^4.0.1"
            s."postcss@^5.0.4"
            s."postcss-value-parser@^3.0.2"
          ];
          "postcss-minify-font-values@^1.0.2" = s."postcss-minify-font-values@1.0.5";
          "postcss-minify-gradients@1.0.5" = f "postcss-minify-gradients" "1.0.5" y "5dbda11373703f83cfb4a3ea3881d8d75ff5e6e1" [
            s."postcss@^5.0.12"
            s."postcss-value-parser@^3.3.0"
          ];
          "postcss-minify-gradients@^1.0.1" = s."postcss-minify-gradients@1.0.5";
          "postcss-minify-params@1.2.2" = f "postcss-minify-params" "1.2.2" y "ad2ce071373b943b3d930a3fa59a358c28d6f1f3" [
            s."alphanum-sort@^1.0.1"
            s."postcss@^5.0.2"
            s."postcss-value-parser@^3.0.2"
            s."uniqs@^2.0.0"
          ];
          "postcss-minify-params@^1.0.4" = s."postcss-minify-params@1.2.2";
          "postcss-minify-selectors@2.1.1" = f "postcss-minify-selectors" "2.1.1" y "b2c6a98c0072cf91b932d1a496508114311735bf" [
            s."alphanum-sort@^1.0.2"
            s."has@^1.0.1"
            s."postcss@^5.0.14"
            s."postcss-selector-parser@^2.0.0"
          ];
          "postcss-minify-selectors@^2.0.4" = s."postcss-minify-selectors@2.1.1";
          "postcss-modules-extract-imports@1.0.0" = f "postcss-modules-extract-imports" "1.0.0" y "5b07f368e350cda6fd5c8844b79123a7bd3e37be" [
            s."postcss@^5.0.4"
          ];
          "postcss-modules-extract-imports@1.0.1" = f "postcss-modules-extract-imports" "1.0.1" y "8fb3fef9a6dd0420d3f6d4353cf1ff73f2b2a341" [
            s."postcss@^5.0.4"
          ];
          "postcss-modules-extract-imports@^1.0.0" = s."postcss-modules-extract-imports@1.0.1";
          "postcss-modules-local-by-default@1.1.1" = f "postcss-modules-local-by-default" "1.1.1" y "29a10673fa37d19251265ca2ba3150d9040eb4ce" [
            s."css-selector-tokenizer@^0.6.0"
            s."postcss@^5.0.4"
          ];
          "postcss-modules-local-by-default@^1.0.1" = s."postcss-modules-local-by-default@1.1.1";
          "postcss-modules-parser@1.1.0" = f "postcss-modules-parser" "1.1.0" y "1797f0e5ca129bbe6120c9d3babd328e8bc7748d" [
            s."icss-replace-symbols@^1.0.2"
            s."lodash.foreach@^3.0.3"
            s."postcss@^5.0.10"
          ];
          "postcss-modules-parser@^1.1.0" = s."postcss-modules-parser@1.1.0";
          "postcss-modules-scope@1.0.2" = f "postcss-modules-scope" "1.0.2" y "ff977395e5e06202d7362290b88b1e8cd049de29" [
            s."css-selector-tokenizer@^0.6.0"
            s."postcss@^5.0.4"
          ];
          "postcss-modules-scope@^1.0.0" = s."postcss-modules-scope@1.0.2";
          "postcss-modules-values@1.2.2" = f "postcss-modules-values" "1.2.2" y "f0e7d476fe1ed88c5e4c7f97533a3e772ad94ca1" [
            s."icss-replace-symbols@^1.0.2"
            s."postcss@^5.0.14"
          ];
          "postcss-modules-values@^1.1.0" = s."postcss-modules-values@1.2.2";
          "postcss-modules-values@^1.1.1" = s."postcss-modules-values@1.2.2";
          "postcss-modules@0.5.2" = f "postcss-modules" "0.5.2" y "9d682fed3f282bd64b2aa4feb6f22a2af435ffda" [
            s."css-modules-loader-core@^1.0.1"
            s."generic-names@^1.0.1"
            s."postcss@^5.1.2"
            s."string-hash@^1.1.0"
          ];
          "postcss-normalize-charset@1.1.1" = f "postcss-normalize-charset" "1.1.1" y "ef9ee71212d7fe759c78ed162f61ed62b5cb93f1" [
            s."postcss@^5.0.5"
          ];
          "postcss-normalize-charset@^1.1.0" = s."postcss-normalize-charset@1.1.1";
          "postcss-normalize-url@3.0.8" = f "postcss-normalize-url" "3.0.8" y "108f74b3f2fcdaf891a2ffa3ea4592279fc78222" [
            s."is-absolute-url@^2.0.0"
            s."normalize-url@^1.4.0"
            s."postcss@^5.0.14"
            s."postcss-value-parser@^3.2.3"
          ];
          "postcss-normalize-url@^3.0.7" = s."postcss-normalize-url@3.0.8";
          "postcss-ordered-values@2.2.2" = f "postcss-ordered-values" "2.2.2" y "be8b511741fab2dac8e614a2302e9d10267b0771" [
            s."postcss@^5.0.4"
            s."postcss-value-parser@^3.0.1"
          ];
          "postcss-ordered-values@^2.1.0" = s."postcss-ordered-values@2.2.2";
          "postcss-reduce-idents@2.4.0" = f "postcss-reduce-idents" "2.4.0" y "c2c6d20cc958284f6abfbe63f7609bf409059ad3" [
            s."postcss@^5.0.4"
            s."postcss-value-parser@^3.0.2"
          ];
          "postcss-reduce-idents@^2.2.2" = s."postcss-reduce-idents@2.4.0";
          "postcss-reduce-initial@1.0.1" = f "postcss-reduce-initial" "1.0.1" y "68f80695f045d08263a879ad240df8dd64f644ea" [
            s."postcss@^5.0.4"
          ];
          "postcss-reduce-initial@^1.0.0" = s."postcss-reduce-initial@1.0.1";
          "postcss-reduce-transforms@1.0.4" = f "postcss-reduce-transforms" "1.0.4" y "ff76f4d8212437b31c298a42d2e1444025771ae1" [
            s."has@^1.0.1"
            s."postcss@^5.0.8"
            s."postcss-value-parser@^3.0.1"
          ];
          "postcss-reduce-transforms@^1.0.3" = s."postcss-reduce-transforms@1.0.4";
          "postcss-selector-parser@2.2.2" = f "postcss-selector-parser" "2.2.2" y "3d70f5adda130da51c7c0c2fc023f56b1374fe08" [
            s."flatten@^1.0.2"
            s."indexes-of@^1.0.1"
            s."uniq@^1.0.1"
          ];
          "postcss-selector-parser@^2.0.0" = s."postcss-selector-parser@2.2.2";
          "postcss-selector-parser@^2.2.2" = s."postcss-selector-parser@2.2.2";
          "postcss-svgo@2.1.6" = f "postcss-svgo" "2.1.6" y "b6df18aa613b666e133f08adb5219c2684ac108d" [
            s."is-svg@^2.0.0"
            s."postcss@^5.0.14"
            s."postcss-value-parser@^3.2.3"
            s."svgo@^0.7.0"
          ];
          "postcss-svgo@^2.1.1" = s."postcss-svgo@2.1.6";
          "postcss-unique-selectors@2.0.2" = f "postcss-unique-selectors" "2.0.2" y "981d57d29ddcb33e7b1dfe1fd43b8649f933ca1d" [
            s."alphanum-sort@^1.0.1"
            s."postcss@^5.0.4"
            s."uniqs@^2.0.0"
          ];
          "postcss-unique-selectors@^2.0.2" = s."postcss-unique-selectors@2.0.2";
          "postcss-value-parser@3.3.0" = f "postcss-value-parser" "3.3.0" y "87f38f9f18f774a4ab4c8a232f5c5ce8872a9d15" [];
          "postcss-value-parser@^3.0.1" = s."postcss-value-parser@3.3.0";
          "postcss-value-parser@^3.0.2" = s."postcss-value-parser@3.3.0";
          "postcss-value-parser@^3.1.1" = s."postcss-value-parser@3.3.0";
          "postcss-value-parser@^3.1.2" = s."postcss-value-parser@3.3.0";
          "postcss-value-parser@^3.2.3" = s."postcss-value-parser@3.3.0";
          "postcss-value-parser@^3.3.0" = s."postcss-value-parser@3.3.0";
          "postcss-zindex@2.2.0" = f "postcss-zindex" "2.2.0" y "d2109ddc055b91af67fc4cb3b025946639d2af22" [
            s."has@^1.0.1"
            s."postcss@^5.0.4"
            s."uniqs@^2.0.0"
          ];
          "postcss-zindex@^2.0.1" = s."postcss-zindex@2.2.0";
          "postcss@5.1.2" = f "postcss" "5.1.2" y "bd84886a66bcad489afaf7c673eed5ef639551e2" [
            s."js-base64@^2.1.9"
            s."source-map@^0.5.6"
            s."supports-color@^3.1.2"
          ];
          "postcss@5.2.16" = f "postcss" "5.2.16" y "732b3100000f9ff8379a48a53839ed097376ad57" [
            s."chalk@^1.1.3"
            s."js-base64@^2.1.9"
            s."source-map@^0.5.6"
            s."supports-color@^3.2.3"
          ];
          "postcss@5.2.9" = f "postcss" "5.2.9" y "282a644f92d4b871ade2d3ce8bd0ea46f18317b6" [
            s."chalk@^1.1.3"
            s."js-base64@^2.1.9"
            s."source-map@^0.5.6"
            s."supports-color@^3.1.2"
          ];
          "postcss@^5.0.10" = s."postcss@5.2.9";
          "postcss@^5.0.11" = s."postcss@5.2.9";
          "postcss@^5.0.12" = s."postcss@5.2.9";
          "postcss@^5.0.13" = s."postcss@5.2.9";
          "postcss@^5.0.14" = s."postcss@5.2.9";
          "postcss@^5.0.16" = s."postcss@5.2.9";
          "postcss@^5.0.19" = s."postcss@5.2.9";
          "postcss@^5.0.2" = s."postcss@5.2.9";
          "postcss@^5.0.4" = s."postcss@5.2.9";
          "postcss@^5.0.5" = s."postcss@5.2.9";
          "postcss@^5.0.6" = s."postcss@5.2.9";
          "postcss@^5.0.8" = s."postcss@5.2.9";
          "postcss@^5.1.2" = s."postcss@5.2.9";
          "postcss@^5.2.5" = s."postcss@5.2.9";
          "postcss@^5.2.8" = s."postcss@5.2.9";
          "postinstall-build@5.0.1" = f "postinstall-build" "5.0.1" y "b917a9079b26178d9a24af5a5cd8cb4a991d11b9" [];
          "postinstall-build@^5.0.0" = s."postinstall-build@5.0.1";
          "prelude-ls@1.1.2" = f "prelude-ls" "1.1.2" y "21932a549f5e52ffd9a827f570e04be62a97da54" [];
          "prelude-ls@~1.1.2" = s."prelude-ls@1.1.2";
          "prepend-http@1.0.4" = f "prepend-http" "1.0.4" y "d4f4562b0ce3696e41ac52d0e002e57a635dc6dc" [];
          "prepend-http@^1.0.0" = s."prepend-http@1.0.4";
          "prepend-http@^1.0.1" = s."prepend-http@1.0.4";
          "preserve@0.2.0" = f "preserve" "0.2.0" y "815ed1f6ebc65926f865b310c0713bcb3315ce4b" [];
          "preserve@^0.2.0" = s."preserve@0.2.0";
          "pretty-bytes@1.0.4" = f "pretty-bytes" "1.0.4" y "0a22e8210609ad35542f8c8d5d2159aff0751c84" [
            s."get-stdin@^4.0.1"
            s."meow@^3.1.0"
          ];
          "pretty-bytes@^1.0.2" = s."pretty-bytes@1.0.4";
          "private@0.1.6" = f "private" "0.1.6" y "55c6a976d0f9bafb9924851350fe47b9b5fbb7c1" [];
          "private@0.1.8" = f "private" "0.1.8" y "2381edb3689f7a53d653190060fcf822d2f368ff" [];
          "private@^0.1.6" = s."private@0.1.6";
          "private@^0.1.7" = s."private@0.1.8";
          "private@~0.1.5" = s."private@0.1.6";
          "process-nextick-args@1.0.7" = f "process-nextick-args" "1.0.7" y "150e20b756590ad3f91093f25a4f2ad8bff30ba3" [];
          "process-nextick-args@~1.0.6" = s."process-nextick-args@1.0.7";
          "process@0.11.9" = f "process" "0.11.9" y "7bd5ad21aa6253e7da8682264f1e11d11c0318c1" [];
          "process@0.5.2" = f "process" "0.5.2" y "1638d8a8e34c2f440a91db95ab9aeb677fc185cf" [];
          "process@^0.11.0" = s."process@0.11.9";
          "process@~0.11.0" = s."process@0.11.9";
          "process@~0.5.1" = s."process@0.5.2";
          "progress-stream@1.2.0" = f "progress-stream" "1.2.0" y "2cd3cfea33ba3a89c9c121ec3347abe9ab125f77" [
            s."speedometer@~0.1.2"
            s."through2@~0.2.3"
          ];
          "progress-stream@^1.1.0" = s."progress-stream@1.2.0";
          "progress@1.1.8" = f "progress" "1.1.8" y "e260c78f6161cdd9b0e56cc3e0a85de17c7a57be" [];
          "progress@2.0.0" = f "progress" "2.0.0" y "8a1be366bf8fc23db2bd23f10c6fe920b4389d1f" [];
          "progress@^1.1.8" = s."progress@1.1.8";
          "progress@^2.0.0" = s."progress@2.0.0";
          "promise@7.1.1" = f "promise" "7.1.1" y "489654c692616b8aa55b0724fa809bb7db49c5bf" [
            s."asap@~2.0.3"
          ];
          "promise@^7.1.1" = s."promise@7.1.1";
          "prop-types@15.5.10" = f "prop-types" "15.5.10" y "2797dfc3126182e3a95e3dfbb2e893ddd7456154" [
            s."fbjs@^0.8.9"
            s."loose-envify@^1.3.1"
          ];
          "prop-types@15.6.0" = f "prop-types" "15.6.0" y "ceaf083022fc46b4a35f69e13ef75aed0d639856" [
            s."fbjs@^0.8.16"
            s."loose-envify@^1.3.1"
            s."object-assign@^4.1.1"
          ];
          "prop-types@^15.5.1" = s."prop-types@15.6.0";
          "prop-types@^15.5.10" = s."prop-types@15.6.0";
          "prop-types@^15.5.6" = s."prop-types@15.6.0";
          "prop-types@^15.5.8" = s."prop-types@15.6.0";
          "prop-types@~15.5.10" = s."prop-types@15.5.10";
          "proxy-addr@1.1.2" = f "proxy-addr" "1.1.2" y "b4cc5f22610d9535824c123aef9d3cf73c40ba37" [
            s."forwarded@~0.1.0"
            s."ipaddr.js@1.1.1"
          ];
          "proxy-addr@1.1.5" = f "proxy-addr" "1.1.5" y "71c0ee3b102de3f202f3b64f608d173fcba1a918" [
            s."forwarded@~0.1.0"
            s."ipaddr.js@1.4.0"
          ];
          "proxy-addr@~1.1.2" = s."proxy-addr@1.1.2";
          "proxy-addr@~1.1.3" = s."proxy-addr@1.1.5";
          "prr@0.0.0" = f "prr" "0.0.0" y "1a84b85908325501411853d0081ee3fa86e2926a" [];
          "prr@~0.0.0" = s."prr@0.0.0";
          "pruner@0.0.7" = f "pruner" "0.0.7" y "345fbcb3e80701163a1d7adf56bac229a5a1e4c1" [
            s."fs-extra@^4.0.0"
          ];
          "pruner@^0.0.7" = s."pruner@0.0.7";
          "ps-tree@1.1.0" = f "ps-tree" "1.1.0" y "b421b24140d6203f1ed3c76996b4427b08e8c014" [
            s."event-stream@~3.3.0"
          ];
          "ps-tree@^1.0.1" = s."ps-tree@1.1.0";
          "pseudomap@1.0.2" = f "pseudomap" "1.0.2" y "f052a28da70e618917ef0a8ac34c1ae5a68286b3" [];
          "pseudomap@^1.0.1" = s."pseudomap@1.0.2";
          "public-encrypt@4.0.0" = f "public-encrypt" "4.0.0" y "39f699f3a46560dd5ebacbca693caf7c65c18cc6" [
            s."bn.js@^4.1.0"
            s."browserify-rsa@^4.0.0"
            s."create-hash@^1.1.0"
            s."parse-asn1@^5.0.0"
            s."randombytes@^2.0.1"
          ];
          "public-encrypt@^4.0.0" = s."public-encrypt@4.0.0";
          "punycode@1.3.2" = f "punycode" "1.3.2" y "9653a036fb7c1ee42342f2325cceefea3926c48d" [];
          "punycode@1.4.1" = f "punycode" "1.4.1" y "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e" [];
          "punycode@^1.2.4" = s."punycode@1.4.1";
          "punycode@^1.4.1" = s."punycode@1.4.1";
          "q@1.4.1" = f "q" "1.4.1" y "55705bcd93c5f3673530c2c2cbc0c2b3addc286e" [];
          "q@1.5.1" = f "q" "1.5.1" y "7e32f75b41381291d04611f1bf14109ac00651d7" [];
          "q@^1.1.2" = s."q@1.4.1";
          "q@^1.4.1" = s."q@1.4.1";
          "q@~1.5.0" = s."q@1.5.1";
          "qr.js@0.0.0" = f "qr.js" "0.0.0" y "cace86386f59a0db8050fa90d9b6b0e88a1e364f" [];
          "qrcode.react@0.6.1" = f "qrcode.react" "0.6.1" y "e718192d17cdf87cb1f156a34cea16dd67575932" [
            s."qr.js@0.0.0"
          ];
          "qs@2.4.2" = f "qs" "2.4.2" y "f7ce788e5777df0b5010da7f7c4e73ba32470f5a" [];
          "qs@6.2.0" = f "qs" "6.2.0" y "3b7848c03c2dece69a9522b0fae8c4126d745f3b" [];
          "qs@6.3.0" = f "qs" "6.3.0" y "f403b264f23bc01228c74131b407f18d5ea5d442" [];
          "qs@6.4.0" = f "qs" "6.4.0" y "13e26d28ad6b0ffaa91312cd3bf708ed351e7233" [];
          "qs@6.5.1" = f "qs" "6.5.1" y "349cdf6eef89ec45c12d7d5eb3fc0c870343a6d8" [];
          "qs@^6.1.0" = s."qs@6.2.0";
          "qs@^6.2.0" = s."qs@6.2.0";
          "qs@~2.4.0" = s."qs@2.4.2";
          "qs@~6.3.0" = s."qs@6.3.0";
          "qs@~6.5.1" = s."qs@6.5.1";
          "query-string@4.2.3" = f "query-string" "4.2.3" y "9f27273d207a25a8ee4c7b8c74dcd45d556db822" [
            s."object-assign@^4.1.0"
            s."strict-uri-encode@^1.0.0"
          ];
          "query-string@5.1.0" = f "query-string" "5.1.0" y "9583b15fd1307f899e973ed418886426a9976469" [
            s."decode-uri-component@^0.2.0"
            s."object-assign@^4.1.0"
            s."strict-uri-encode@^1.0.0"
          ];
          "query-string@^4.1.0" = s."query-string@4.2.3";
          "query-string@^4.2.2" = s."query-string@4.2.3";
          "query-string@^5.0.1" = s."query-string@5.1.0";
          "querystring-es3@0.2.1" = f "querystring-es3" "0.2.1" y "9ec61f79049875707d69414596fd907a4d711e73" [];
          "querystring-es3@^0.2.0" = s."querystring-es3@0.2.1";
          "querystring@0.2.0" = f "querystring" "0.2.0" y "b209849203bb25df820da756e747005878521620" [];
          "querystring@^0.2.0" = s."querystring@0.2.0";
          "raf@3.3.0" = f "raf" "3.3.0" y "93845eeffc773f8129039f677f80a36044eee2c3" [
            s."performance-now@~0.2.0"
          ];
          "raf@^3.2.0" = s."raf@3.3.0";
          "ramda@0.22.1" = f "ramda" "0.22.1" y "031da0c3df417c5b33c96234757eb37033f36a0e" [];
          "ramda@^0.22.1" = s."ramda@0.22.1";
          "randomatic@1.1.6" = f "randomatic" "1.1.6" y "110dcabff397e9dcff7c0789ccc0a49adf1ec5bb" [
            s."is-number@^2.0.2"
            s."kind-of@^3.0.2"
          ];
          "randomatic@^1.1.3" = s."randomatic@1.1.6";
          "randombytes@2.0.3" = f "randombytes" "2.0.3" y "674c99760901c3c4112771a31e521dc349cc09ec" [];
          "randombytes@2.0.6" = f "randombytes" "2.0.6" y "d302c522948588848a8d300c932b44c24231da80" [
            s."safe-buffer@^5.1.0"
          ];
          "randombytes@^2.0.0" = s."randombytes@2.0.3";
          "randombytes@^2.0.1" = s."randombytes@2.0.3";
          "randombytes@^2.0.5" = s."randombytes@2.0.6";
          "randomfill@1.0.3" = f "randomfill" "1.0.3" y "b96b7df587f01dd91726c418f30553b1418e3d62" [
            s."randombytes@^2.0.5"
            s."safe-buffer@^5.1.0"
          ];
          "randomfill@^1.0.3" = s."randomfill@1.0.3";
          "randomhex@0.1.5" = f "randomhex" "0.1.5" y "baceef982329091400f2a2912c6cd02f1094f585" [];
          "range-parser@1.2.0" = f "range-parser" "1.2.0" y "f49be6b487894ddc40dcc94a322f611092e00d5e" [];
          "range-parser@^1.0.3" = s."range-parser@1.2.0";
          "range-parser@~1.2.0" = s."range-parser@1.2.0";
          "raw-body@2.3.2" = f "raw-body" "2.3.2" y "bcd60c77d3eb93cde0050295c3f379389bc88f89" [
            s."bytes@3.0.0"
            s."http-errors@1.6.2"
            s."iconv-lite@0.4.19"
            s."unpipe@1.0.0"
          ];
          "raw-loader@0.5.1" = f "raw-loader" "0.5.1" y "0c3d0beaed8a01c966d9787bf778281252a979aa" [];
          "rc@1.1.6" = f "rc" "1.1.6" y "43651b76b6ae53b5c802f1151fa3fc3b059969c9" [
            s."deep-extend@~0.4.0"
            s."ini@~1.3.0"
            s."minimist@^1.2.0"
            s."strip-json-comments@~1.0.4"
          ];
          "rc@^1.0.1" = s."rc@1.1.6";
          "rc@^1.1.2" = s."rc@1.1.6";
          "rc@~1.1.6" = s."rc@1.1.6";
          "rcedit@0.9.0" = f "rcedit" "0.9.0" y "3910df57345399e2b0325f4a519007f89e55ef1c" [];
          "rcedit@^0.9.0" = s."rcedit@0.9.0";
          "react-addons-css-transition-group@15.4.2" = f "react-addons-css-transition-group" "15.4.2" y "b7828834dfa14229fe07750e331e8a8cb6fb7745" [
            s."fbjs@^0.8.4"
            s."object-assign@^4.1.0"
          ];
          "react-copy-to-clipboard@4.2.3" = f "react-copy-to-clipboard" "4.2.3" y "268c5a0fbde9a95d96145014e7f85110b0e7fb8e" [
            s."copy-to-clipboard@^3"
          ];
          "react-css-themr@2.0.0" = f "react-css-themr" "2.0.0" y "c4f93b9284009d9b4565121f09eb6b2bf402c3ef" [
            s."invariant@^2.2.1"
          ];
          "react-deep-force-update@1.0.1" = f "react-deep-force-update" "1.0.1" y "f911b5be1d2a6fe387507dd6e9a767aa2924b4c7" [];
          "react-deep-force-update@^1.0.0" = s."react-deep-force-update@1.0.1";
          "react-docgen@2.13.0" = f "react-docgen" "2.13.0" y "7fcc4a3104ea8d4fd428383ba38df11166837be9" [
            s."async@^1.4.2"
            s."babel-runtime@^6.9.2"
            s."babylon@~5.8.3"
            s."commander@^2.9.0"
            s."doctrine@^2.0.0"
            s."node-dir@^0.1.10"
            s."recast@^0.11.5"
          ];
          "react-docgen@^2.12.1" = s."react-docgen@2.13.0";
          "react-dom@15.4.2" = f "react-dom" "15.4.2" y "015363f05b0a1fd52ae9efdd3a0060d90695208f" [
            s."fbjs@^0.8.1"
            s."loose-envify@^1.1.0"
            s."object-assign@^4.1.0"
          ];
          "react-dropzone@3.12.2" = f "react-dropzone" "3.12.2" y "7e66a37322a80cf26a205d749ecf8cad0d90aa6f" [
            s."attr-accept@^1.0.3"
          ];
          "react-fuzzy@0.3.3" = f "react-fuzzy" "0.3.3" y "9f6775393cd03bbd3c977651771abe16c8b29a81" [
            s."babel-runtime@^6.5.0"
            s."classnames@^2.2.3"
            s."fuse.js@^2.2.0"
          ];
          "react-fuzzy@^0.3.3" = s."react-fuzzy@0.3.3";
          "react-inspector@1.1.2" = f "react-inspector" "1.1.2" y "192bc54f2be44f9fa0f29f183386f7f6e380f5ec" [
            s."babel-runtime@^6.9.2"
            s."is-dom@^1.0.5"
          ];
          "react-inspector@^1.1.0" = s."react-inspector@1.1.2";
          "react-intl-translations-manager@4.0.1" = f "react-intl-translations-manager" "4.0.1" y "37f9e409642e9271e912cd0bb962f8cf13960337" [
            s."chalk@^1.1.3"
            s."glob@^7.0.3"
            s."json-stable-stringify@^1.0.1"
            s."mkdirp@^0.5.1"
          ];
          "react-intl@2.2.3" = f "react-intl" "2.2.3" y "8eebb03cddc38b337ed22fab78037ab53a594270" [
            s."intl-format-cache@^2.0.5"
            s."intl-messageformat@^1.3.0"
            s."intl-relativeformat@^1.3.0"
            s."invariant@^2.1.1"
          ];
          "react-komposer@1.13.1" = f "react-komposer" "1.13.1" y "4b8ac4bcc71323bd7413dcab95c831197f50eed0" [
            s."babel-runtime@6.x.x"
            s."hoist-non-react-statics@1.x.x"
            s."invariant@2.x.x"
            s."mobx@^2.3.4"
            s."shallowequal@0.2.x"
          ];
          "react-komposer@2.0.0" = f "react-komposer" "2.0.0" y "b964738014a9b4aee494a83c0b5b833d66072a90" [
            s."babel-runtime@^6.11.6"
            s."hoist-non-react-statics@^1.2.0"
            s."lodash.pick@^4.4.0"
            s."react-stubber@^1.0.0"
            s."shallowequal@^0.2.2"
          ];
          "react-komposer@^1.9.0" = s."react-komposer@1.13.1";
          "react-komposer@^2.0.0" = s."react-komposer@2.0.0";
          "react-markdown@2.5.0" = f "react-markdown" "2.5.0" y "b1c61904fee5895886803bd9df7db23c3dc3a89e" [
            s."commonmark@^0.24.0"
            s."commonmark-react-renderer@^4.2.4"
            s."in-publish@^2.0.0"
            s."prop-types@^15.5.1"
          ];
          "react-modal@1.6.5" = f "react-modal" "1.6.5" y "f720d99bd81b1def5c2c32e0ffaa48bdaf484862" [
            s."element-class@^0.2.0"
            s."exenv@1.2.0"
            s."lodash.assign@^4.2.0"
          ];
          "react-modal@2.4.1" = f "react-modal" "2.4.1" y "cb09b26711b148eb9f59cb180e1b7d82980ded05" [
            s."exenv@^1.2.0"
            s."prop-types@^15.5.10"
          ];
          "react-modal@^1.2.0" = s."react-modal@1.6.5";
          "react-modal@^1.2.1" = s."react-modal@1.6.5";
          "react-modal@^2.2.1" = s."react-modal@2.4.1";
          "react-number-format@1.1.2" = f "react-number-format" "1.1.2" y "74d8478fa5cdeed55637f392597a0911157e2568" [];
          "react-polymorph@0.5.4" = f "react-polymorph" "0.5.4" y "03aafde0938a4fc8286961e0a2491ff7d9f7eaf9" [
            s."filter-react-dom-props@0.0.2"
            s."postinstall-build@^5.0.0"
            s."react-modal@^2.2.1"
          ];
          "react-proxy@1.1.8" = f "react-proxy" "1.1.8" y "9dbfd9d927528c3aa9f444e4558c37830ab8c26a" [
            s."lodash@^4.6.1"
            s."react-deep-force-update@^1.0.0"
          ];
          "react-proxy@^1.1.7" = s."react-proxy@1.1.8";
          "react-resize-detector@0.4.1" = f "react-resize-detector" "0.4.1" y "19f8b993e1e869e2879344e20dc23c4fac28b256" [
            s."prop-types@^15.5.8"
          ];
          "react-router@3.0.3" = f "react-router" "3.0.3" y "e95304b2e418482e5ecff2699d2b8aae52d5f884" [
            s."history@^3.0.0"
            s."hoist-non-react-statics@^1.2.0"
            s."invariant@^2.2.1"
            s."loose-envify@^1.2.0"
            s."warning@^3.0.0"
          ];
          "react-simple-di@1.2.0" = f "react-simple-di" "1.2.0" y "dde0e5bf689f391ef2ab02c9043b213fe239c6d0" [
            s."babel-runtime@6.x.x"
            s."hoist-non-react-statics@1.x.x"
          ];
          "react-simple-di@^1.2.0" = s."react-simple-di@1.2.0";
          "react-smooth@0.3.0" = f "react-smooth" "0.3.0" y "b67665d7b9820257e34279c15e02e8e5131ebe99" [
            s."lodash@^4.16.4"
            s."prop-types@^15.5.8"
            s."raf@^3.2.0"
            s."react-transition-group@^1.1.1"
          ];
          "react-stubber@1.0.0" = f "react-stubber" "1.0.0" y "41ee2cac72d4d4fd70a63896da98e13739b84628" [
            s."babel-runtime@^6.5.0"
          ];
          "react-stubber@^1.0.0" = s."react-stubber@1.0.0";
          "react-svg-inline@2.0.0" = f "react-svg-inline" "2.0.0" y "0a4f60895588eecc7616af3a511d087801163600" [
            s."classnames@^2.2.1"
            s."prop-types@^15.5.8"
          ];
          "react-transform-catch-errors@1.0.2" = f "react-transform-catch-errors" "1.0.2" y "1b4d4a76e97271896fc16fe3086c793ec88a9eeb" [];
          "react-transform-catch-errors@^1.0.2" = s."react-transform-catch-errors@1.0.2";
          "react-transform-hmr@1.0.4" = f "react-transform-hmr" "1.0.4" y "e1a40bd0aaefc72e8dfd7a7cda09af85066397bb" [
            s."global@^4.3.0"
            s."react-proxy@^1.1.7"
          ];
          "react-transform-hmr@^1.0.3" = s."react-transform-hmr@1.0.4";
          "react-transition-group@1.2.1" = f "react-transition-group" "1.2.1" y "e11f72b257f921b213229a774df46612346c7ca6" [
            s."chain-function@^1.0.0"
            s."dom-helpers@^3.2.0"
            s."loose-envify@^1.3.1"
            s."prop-types@^15.5.6"
            s."warning@^3.0.0"
          ];
          "react-transition-group@^1.1.1" = s."react-transition-group@1.2.1";
          "react@15.4.2" = f "react" "15.4.2" y "41f7991b26185392ba9bae96c8889e7e018397ef" [
            s."fbjs@^0.8.4"
            s."loose-envify@^1.1.0"
            s."object-assign@^4.1.0"
          ];
          "read-all-stream@3.1.0" = f "read-all-stream" "3.1.0" y "35c3e177f2078ef789ee4bfafa4373074eaef4fa" [
            s."pinkie-promise@^2.0.0"
            s."readable-stream@^2.0.0"
          ];
          "read-all-stream@^3.0.0" = s."read-all-stream@3.1.0";
          "read-pkg-up@1.0.1" = f "read-pkg-up" "1.0.1" y "9d63c13276c065918d57f002a57f40a1b643fb02" [
            s."find-up@^1.0.0"
            s."read-pkg@^1.0.0"
          ];
          "read-pkg-up@2.0.0" = f "read-pkg-up" "2.0.0" y "6b72a8048984e0c41e79510fd5e9fa99b3b549be" [
            s."find-up@^2.0.0"
            s."read-pkg@^2.0.0"
          ];
          "read-pkg-up@^1.0.1" = s."read-pkg-up@1.0.1";
          "read-pkg-up@^2.0.0" = s."read-pkg-up@2.0.0";
          "read-pkg@1.1.0" = f "read-pkg" "1.1.0" y "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28" [
            s."load-json-file@^1.0.0"
            s."normalize-package-data@^2.3.2"
            s."path-type@^1.0.0"
          ];
          "read-pkg@2.0.0" = f "read-pkg" "2.0.0" y "8ef1c0623c6a6db0dc6713c4bfac46332b2368f8" [
            s."load-json-file@^2.0.0"
            s."normalize-package-data@^2.3.2"
            s."path-type@^2.0.0"
          ];
          "read-pkg@^1.0.0" = s."read-pkg@1.1.0";
          "read-pkg@^2.0.0" = s."read-pkg@2.0.0";
          "readable-stream@1.0.34" = f "readable-stream" "1.0.34" y "125820e34bc842d2f2aaafafe4c2916ee32c157c" [
            s."core-util-is@~1.0.0"
            s."inherits@~2.0.1"
            s."isarray@0.0.1"
            s."string_decoder@~0.10.x"
          ];
          "readable-stream@1.1.14" = f "readable-stream" "1.1.14" y "7cf4c54ef648e3813084c636dd2079e166c081d9" [
            s."core-util-is@~1.0.0"
            s."inherits@~2.0.1"
            s."isarray@0.0.1"
            s."string_decoder@~0.10.x"
          ];
          "readable-stream@2.0.6" = f "readable-stream" "2.0.6" y "8f90341e68a53ccc928788dacfcd11b36eb9b78e" [
            s."core-util-is@~1.0.0"
            s."inherits@~2.0.1"
            s."isarray@~1.0.0"
            s."process-nextick-args@~1.0.6"
            s."string_decoder@~0.10.x"
            s."util-deprecate@~1.0.1"
          ];
          "readable-stream@2.1.5" = f "readable-stream" "2.1.5" y "66fa8b720e1438b364681f2ad1a63c618448c9d0" [
            s."buffer-shims@^1.0.0"
            s."core-util-is@~1.0.0"
            s."inherits@~2.0.1"
            s."isarray@~1.0.0"
            s."process-nextick-args@~1.0.6"
            s."string_decoder@~0.10.x"
            s."util-deprecate@~1.0.1"
          ];
          "readable-stream@2.2.2" = f "readable-stream" "2.2.2" y "a9e6fec3c7dda85f8bb1b3ba7028604556fc825e" [
            s."buffer-shims@^1.0.0"
            s."core-util-is@~1.0.0"
            s."inherits@~2.0.1"
            s."isarray@~1.0.0"
            s."process-nextick-args@~1.0.6"
            s."string_decoder@~0.10.x"
            s."util-deprecate@~1.0.1"
          ];
          "readable-stream@^1.1.8" = s."readable-stream@1.1.14";
          "readable-stream@^2.0.0" = s."readable-stream@2.2.2";
          "readable-stream@^2.0.0 || ^1.1.13" = s."readable-stream@2.2.2";
          "readable-stream@^2.0.1" = s."readable-stream@2.2.2";
          "readable-stream@^2.0.2" = s."readable-stream@2.2.2";
          "readable-stream@^2.0.5" = s."readable-stream@2.2.2";
          "readable-stream@^2.1.0" = s."readable-stream@2.2.2";
          "readable-stream@^2.1.5" = s."readable-stream@2.2.2";
          "readable-stream@^2.2.2" = s."readable-stream@2.2.2";
          "readable-stream@~1.0.26" = s."readable-stream@1.0.34";
          "readable-stream@~1.1.9" = s."readable-stream@1.1.14";
          "readable-stream@~2.0.0" = s."readable-stream@2.0.6";
          "readable-stream@~2.0.5" = s."readable-stream@2.0.6";
          "readable-stream@~2.1.4" = s."readable-stream@2.1.5";
          "readdirp@2.1.0" = f "readdirp" "2.1.0" y "4ed0ad060df3073300c48440373f72d1cc642d78" [
            s."graceful-fs@^4.1.2"
            s."minimatch@^3.0.2"
            s."readable-stream@^2.0.2"
            s."set-immediate-shim@^1.0.1"
          ];
          "readdirp@^2.0.0" = s."readdirp@2.1.0";
          "readline2@1.0.1" = f "readline2" "1.0.1" y "41059608ffc154757b715d9989d199ffbf372e35" [
            s."code-point-at@^1.0.0"
            s."is-fullwidth-code-point@^1.0.0"
            s."mute-stream@0.0.5"
          ];
          "readline2@^1.0.1" = s."readline2@1.0.1";
          "recast@0.11.18" = f "recast" "0.11.18" y "07af6257ca769868815209401d4d60eef1b5b947" [
            s."ast-types@0.9.2"
            s."esprima@~3.1.0"
            s."private@~0.1.5"
            s."source-map@~0.5.0"
          ];
          "recast@0.11.23" = f "recast" "0.11.23" y "451fd3004ab1e4df9b4e4b66376b2a21912462d3" [
            s."ast-types@0.9.6"
            s."esprima@~3.1.0"
            s."private@~0.1.5"
            s."source-map@~0.5.0"
          ];
          "recast@^0.11.5" = s."recast@0.11.18";
          "recast@~0.11.12" = s."recast@0.11.23";
          "recharts-scale@0.3.2" = f "recharts-scale" "0.3.2" y "dac7621714a4765d152cb2adbc30c73b831208c9" [];
          "recharts@1.0.0-alpha.4" = f "recharts" "1.0.0-alpha.4" y "74b05457696987755bc05e8d6232ab5c58648676" [
            s."classnames@2.2.5"
            s."core-js@2.4.1"
            s."d3-interpolate@^1.1.5"
            s."d3-scale@1.0.4"
            s."d3-shape@1.0.4"
            s."lodash@~4.17.4"
            s."prop-types@~15.5.10"
            s."react-resize-detector@0.4.1"
            s."react-smooth@0.3.0"
            s."recharts-scale@0.3.2"
            s."reduce-css-calc@1.3.0"
          ];
          "rechoir@0.6.2" = f "rechoir" "0.6.2" y "85204b54dba82d5742e28c96756ef43af50e3384" [
            s."resolve@^1.1.6"
          ];
          "rechoir@^0.6.2" = s."rechoir@0.6.2";
          "redbox-react@1.3.3" = f "redbox-react" "1.3.3" y "63ec9c2cb9c620c46e2b9f8543b4898f1b787e41" [
            s."error-stack-parser@^1.3.6"
            s."object-assign@^4.0.1"
          ];
          "redbox-react@^1.2.2" = s."redbox-react@1.3.3";
          "redent@1.0.0" = f "redent" "1.0.0" y "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde" [
            s."indent-string@^2.1.0"
            s."strip-indent@^1.0.1"
          ];
          "redent@^1.0.0" = s."redent@1.0.0";
          "reduce-css-calc@1.3.0" = f "reduce-css-calc" "1.3.0" y "747c914e049614a4c9cfbba629871ad1d2927716" [
            s."balanced-match@^0.4.2"
            s."math-expression-evaluator@^1.2.14"
            s."reduce-function-call@^1.0.1"
          ];
          "reduce-css-calc@^1.2.6" = s."reduce-css-calc@1.3.0";
          "reduce-function-call@1.0.2" = f "reduce-function-call" "1.0.2" y "5a200bf92e0e37751752fe45b0ab330fd4b6be99" [
            s."balanced-match@^0.4.2"
          ];
          "reduce-function-call@^1.0.1" = s."reduce-function-call@1.0.2";
          "redux@3.6.0" = f "redux" "3.6.0" y "887c2b3d0b9bd86eca2be70571c27654c19e188d" [
            s."lodash@^4.2.1"
            s."lodash-es@^4.2.1"
            s."loose-envify@^1.1.0"
            s."symbol-observable@^1.0.2"
          ];
          "redux@^3.5.2" = s."redux@3.6.0";
          "regenerate@1.3.2" = f "regenerate" "1.3.2" y "d1941c67bad437e1be76433add5b385f95b19260" [];
          "regenerate@^1.2.1" = s."regenerate@1.3.2";
          "regenerator-runtime@0.10.1" = f "regenerator-runtime" "0.10.1" y "257f41961ce44558b18f7814af48c17559f9faeb" [];
          "regenerator-runtime@0.10.5" = f "regenerator-runtime" "0.10.5" y "336c3efc1220adcedda2c9fab67b5a7955a33658" [];
          "regenerator-runtime@0.11.1" = f "regenerator-runtime" "0.11.1" y "be05ad7f9bf7d22e056f9726cee5017fbf19e2e9" [];
          "regenerator-runtime@0.9.6" = f "regenerator-runtime" "0.9.6" y "d33eb95d0d2001a4be39659707c51b0cb71ce029" [];
          "regenerator-runtime@^0.10.0" = s."regenerator-runtime@0.10.1";
          "regenerator-runtime@^0.10.5" = s."regenerator-runtime@0.10.5";
          "regenerator-runtime@^0.11.0" = s."regenerator-runtime@0.11.1";
          "regenerator-runtime@^0.9.5" = s."regenerator-runtime@0.9.6";
          "regenerator-transform@0.10.1" = f "regenerator-transform" "0.10.1" y "1e4996837231da8b7f3cf4114d71b5691a0680dd" [
            s."babel-runtime@^6.18.0"
            s."babel-types@^6.19.0"
            s."private@^0.1.6"
          ];
          "regenerator-transform@0.9.8" = f "regenerator-transform" "0.9.8" y "0f88bb2bc03932ddb7b6b7312e68078f01026d6c" [
            s."babel-runtime@^6.18.0"
            s."babel-types@^6.19.0"
            s."private@^0.1.6"
          ];
          "regenerator-transform@^0.10.0" = s."regenerator-transform@0.10.1";
          "regex-cache@0.4.3" = f "regex-cache" "0.4.3" y "9b1a6c35d4d0dfcef5711ae651e8e9d3d7114145" [
            s."is-equal-shallow@^0.1.3"
            s."is-primitive@^2.0.0"
          ];
          "regex-cache@^0.4.2" = s."regex-cache@0.4.3";
          "regexpu-core@1.0.0" = f "regexpu-core" "1.0.0" y "86a763f58ee4d7c2f6b102e4764050de7ed90c6b" [
            s."regenerate@^1.2.1"
            s."regjsgen@^0.2.0"
            s."regjsparser@^0.1.4"
          ];
          "regexpu-core@2.0.0" = f "regexpu-core" "2.0.0" y "49d038837b8dcf8bfa5b9a42139938e6ea2ae240" [
            s."regenerate@^1.2.1"
            s."regjsgen@^0.2.0"
            s."regjsparser@^0.1.4"
          ];
          "regexpu-core@^1.0.0" = s."regexpu-core@1.0.0";
          "regexpu-core@^2.0.0" = s."regexpu-core@2.0.0";
          "registry-url@3.1.0" = f "registry-url" "3.1.0" y "3d4ef870f73dde1d77f0cf9a381432444e174942" [
            s."rc@^1.0.1"
          ];
          "registry-url@^3.0.0" = s."registry-url@3.1.0";
          "regjsgen@0.2.0" = f "regjsgen" "0.2.0" y "6c016adeac554f75823fe37ac05b92d5a4edb1f7" [];
          "regjsgen@^0.2.0" = s."regjsgen@0.2.0";
          "regjsparser@0.1.5" = f "regjsparser" "0.1.5" y "7ee8f84dc6fa792d3fd0ae228d24bd949ead205c" [
            s."jsesc@~0.5.0"
          ];
          "regjsparser@^0.1.4" = s."regjsparser@0.1.5";
          "relateurl@0.2.7" = f "relateurl" "0.2.7" y "54dbf377e51440aca90a4cd274600d3ff2d888a9" [];
          "relateurl@0.2.x" = s."relateurl@0.2.7";
          "repeat-element@1.1.2" = f "repeat-element" "1.1.2" y "ef089a178d1483baae4d93eb98b4f9e4e11d990a" [];
          "repeat-element@^1.1.2" = s."repeat-element@1.1.2";
          "repeat-string@1.6.1" = f "repeat-string" "1.6.1" y "8dcae470e1c88abc2d600fff4a776286da75e637" [];
          "repeat-string@^1.5.2" = s."repeat-string@1.6.1";
          "repeat-string@^1.6.1" = s."repeat-string@1.6.1";
          "repeating@1.1.3" = f "repeating" "1.1.3" y "3d4114218877537494f97f77f9785fab810fa4ac" [
            s."is-finite@^1.0.0"
          ];
          "repeating@2.0.1" = f "repeating" "2.0.1" y "5214c53a926d3552707527fbab415dbc08d06dda" [
            s."is-finite@^1.0.0"
          ];
          "repeating@^1.1.2" = s."repeating@1.1.3";
          "repeating@^2.0.0" = s."repeating@2.0.1";
          "replace-ext@0.0.1" = f "replace-ext" "0.0.1" y "29bbd92078a739f0bcce2b4ee41e837953522924" [];
          "request@2" = s."request@2.79.0";
          "request@2.55.0" = f "request" "2.55.0" y "d75c1cdf679d76bb100f9bffe1fe551b5c24e93d" [
            s."aws-sign2@~0.5.0"
            s."bl@~0.9.0"
            s."caseless@~0.9.0"
            s."combined-stream@~0.0.5"
            s."forever-agent@~0.6.0"
            s."form-data@~0.2.0"
            s."har-validator@^1.4.0"
            s."hawk@~2.3.0"
            s."http-signature@~0.10.0"
            s."isstream@~0.1.1"
            s."json-stringify-safe@~5.0.0"
            s."mime-types@~2.0.1"
            s."node-uuid@~1.4.0"
            s."oauth-sign@~0.6.0"
            s."qs@~2.4.0"
            s."stringstream@~0.0.4"
            s."tough-cookie@>=0.12.0"
            s."tunnel-agent@~0.4.0"
          ];
          "request@2.79.0" = f "request" "2.79.0" y "4dfe5bf6be8b8cdc37fcf93e04b65577722710de" [
            s."aws-sign2@~0.6.0"
            s."aws4@^1.2.1"
            s."caseless@~0.11.0"
            s."combined-stream@~1.0.5"
            s."extend@~3.0.0"
            s."forever-agent@~0.6.1"
            s."form-data@~2.1.1"
            s."har-validator@~2.0.6"
            s."hawk@~3.1.3"
            s."http-signature@~1.1.0"
            s."is-typedarray@~1.0.0"
            s."isstream@~0.1.2"
            s."json-stringify-safe@~5.0.1"
            s."mime-types@~2.1.7"
            s."oauth-sign@~0.8.1"
            s."qs@~6.3.0"
            s."stringstream@~0.0.4"
            s."tough-cookie@~2.3.0"
            s."tunnel-agent@~0.4.1"
            s."uuid@^3.0.0"
          ];
          "request@2.83.0" = f "request" "2.83.0" y "ca0b65da02ed62935887808e6f510381034e3356" [
            s."aws-sign2@~0.7.0"
            s."aws4@^1.6.0"
            s."caseless@~0.12.0"
            s."combined-stream@~1.0.5"
            s."extend@~3.0.1"
            s."forever-agent@~0.6.1"
            s."form-data@~2.3.1"
            s."har-validator@~5.0.3"
            s."hawk@~6.0.2"
            s."http-signature@~1.2.0"
            s."is-typedarray@~1.0.0"
            s."isstream@~0.1.2"
            s."json-stringify-safe@~5.0.1"
            s."mime-types@~2.1.17"
            s."oauth-sign@~0.8.2"
            s."performance-now@^2.1.0"
            s."qs@~6.5.1"
            s."safe-buffer@^5.1.1"
            s."stringstream@~0.0.5"
            s."tough-cookie@~2.3.3"
            s."tunnel-agent@^0.6.0"
            s."uuid@^3.1.0"
          ];
          "request@^2.45.0" = s."request@2.79.0";
          "request@^2.55.0" = s."request@2.79.0";
          "request@^2.61.0" = s."request@2.79.0";
          "request@^2.74.0" = s."request@2.79.0";
          "request@^2.79.0" = s."request@2.79.0";
          "request@^2.81.0" = s."request@2.83.0";
          "request@~2.83.0" = s."request@2.83.0";
          "require-directory@2.1.1" = f "require-directory" "2.1.1" y "8c64ad5fd30dab1c976e2344ffe7f792a6a6df42" [];
          "require-directory@^2.1.1" = s."require-directory@2.1.1";
          "require-from-string@1.2.1" = f "require-from-string" "1.2.1" y "529c9ccef27380adfec9a2f965b649bbee636418" [];
          "require-from-string@^1.1.0" = s."require-from-string@1.2.1";
          "require-main-filename@1.0.1" = f "require-main-filename" "1.0.1" y "97f717b69d48784f5f526a6c5aa8ffdda055a4d1" [];
          "require-main-filename@^1.0.1" = s."require-main-filename@1.0.1";
          "require-uncached@1.0.3" = f "require-uncached" "1.0.3" y "4e0d56d6c9662fd31e43011c4b95aa49955421d3" [
            s."caller-path@^0.1.0"
            s."resolve-from@^1.0.0"
          ];
          "require-uncached@^1.0.2" = s."require-uncached@1.0.3";
          "resolve-dir@0.1.1" = f "resolve-dir" "0.1.1" y "b219259a5602fac5c5c496ad894a6e8cc430261e" [
            s."expand-tilde@^1.2.2"
            s."global-modules@^0.2.3"
          ];
          "resolve-dir@^0.1.0" = s."resolve-dir@0.1.1";
          "resolve-from@1.0.1" = f "resolve-from" "1.0.1" y "26cbfe935d1aeeeabb29bc3fe5aeb01e93d44226" [];
          "resolve-from@^1.0.0" = s."resolve-from@1.0.1";
          "resolve-url@0.2.1" = f "resolve-url" "0.2.1" y "2c637fe77c893afd2a663fe21aa9080068e2052a" [];
          "resolve-url@~0.2.1" = s."resolve-url@0.2.1";
          "resolve@1.2.0" = f "resolve" "1.2.0" y "9589c3f2f6149d1417a40becc1663db6ec6bc26c" [];
          "resolve@1.5.0" = f "resolve" "1.5.0" y "1f09acce796c9a762579f31b2c1cc4c3cddf9f36" [
            s."path-parse@^1.0.5"
          ];
          "resolve@^1.1.6" = s."resolve@1.2.0";
          "resolve@^1.1.7" = s."resolve@1.2.0";
          "resolve@^1.3.3" = s."resolve@1.5.0";
          "restore-cursor@1.0.1" = f "restore-cursor" "1.0.1" y "34661f46886327fed2991479152252df92daa541" [
            s."exit-hook@^1.0.0"
            s."onetime@^1.0.0"
          ];
          "restore-cursor@2.0.0" = f "restore-cursor" "2.0.0" y "9f7ee287f82fd326d4fd162923d62129eee0dfaf" [
            s."onetime@^2.0.0"
            s."signal-exit@^3.0.2"
          ];
          "restore-cursor@^1.0.1" = s."restore-cursor@1.0.1";
          "restore-cursor@^2.0.0" = s."restore-cursor@2.0.0";
          "rgb2hex@0.1.0" = f "rgb2hex" "0.1.0" y "ccd55f860ae0c5c4ea37504b958e442d8d12325b" [];
          "rgb2hex@~0.1.0" = s."rgb2hex@0.1.0";
          "right-align@0.1.3" = f "right-align" "0.1.3" y "61339b722fe6a3515689210d24e14c96148613ef" [
            s."align-text@^0.1.1"
          ];
          "right-align@^0.1.1" = s."right-align@0.1.3";
          "rimraf@2" = s."rimraf@2.5.4";
          "rimraf@2.2.8" = f "rimraf" "2.2.8" y "e439be2aaee327321952730f99a8929e4fc50582" [];
          "rimraf@2.5.4" = f "rimraf" "2.5.4" y "96800093cbf1a0c86bd95b4625467535c29dfa04" [
            s."glob@^7.0.5"
          ];
          "rimraf@2.6.2" = f "rimraf" "2.6.2" y "2ed8150d24a16ea8651e6d6ef0f47c4158ce7a36" [
            s."glob@^7.0.5"
          ];
          "rimraf@^2.2.8" = s."rimraf@2.5.4";
          "rimraf@^2.5.0" = s."rimraf@2.5.4";
          "rimraf@^2.5.2" = s."rimraf@2.5.4";
          "rimraf@^2.5.4" = s."rimraf@2.5.4";
          "rimraf@^2.6.1" = s."rimraf@2.6.2";
          "rimraf@~2.2.8" = s."rimraf@2.2.8";
          "rimraf@~2.5.1" = s."rimraf@2.5.4";
          "rimraf@~2.5.4" = s."rimraf@2.5.4";
          "ripemd160@0.2.0" = f "ripemd160" "0.2.0" y "2bf198bde167cacfa51c0a928e84b68bbe171fce" [];
          "ripemd160@1.0.1" = f "ripemd160" "1.0.1" y "93a4bbd4942bc574b69a8fa57c71de10ecca7d6e" [];
          "ripemd160@2.0.1" = f "ripemd160" "2.0.1" y "0f4584295c53a3628af7e6d79aca21ce57d1c6e7" [
            s."hash-base@^2.0.0"
            s."inherits@^2.0.1"
          ];
          "ripemd160@^1.0.0" = s."ripemd160@1.0.1";
          "ripemd160@^2.0.0" = s."ripemd160@2.0.1";
          "ripemd160@^2.0.1" = s."ripemd160@2.0.1";
          "route-parser@0.0.5" = f "route-parser" "0.0.5" y "7d1d09d335e49094031ea16991a4a79b01bbe1f4" [];
          "run-async@0.1.0" = f "run-async" "0.1.0" y "c8ad4a5e110661e402a7d21b530e009f25f8e389" [
            s."once@^1.3.0"
          ];
          "run-async@2.3.0" = f "run-async" "2.3.0" y "0371ab4ae0bdd720d4166d7dfda64ff7a445a6c0" [
            s."is-promise@^2.1.0"
          ];
          "run-async@^0.1.0" = s."run-async@0.1.0";
          "run-async@^2.2.0" = s."run-async@2.3.0";
          "run-series@1.1.4" = f "run-series" "1.1.4" y "89a73ddc5e75c9ef8ab6320c0a1600d6a41179b9" [];
          "run-series@^1.1.1" = s."run-series@1.1.4";
          "rx-lite-aggregates@4.0.8" = f "rx-lite-aggregates" "4.0.8" y "753b87a89a11c95467c4ac1626c4efc4e05c67be" [
            s."rx-lite@*"
          ];
          "rx-lite-aggregates@^4.0.8" = s."rx-lite-aggregates@4.0.8";
          "rx-lite@*" = s."rx-lite@4.0.8";
          "rx-lite@3.1.2" = f "rx-lite" "3.1.2" y "19ce502ca572665f3b647b10939f97fd1615f102" [];
          "rx-lite@4.0.8" = f "rx-lite" "4.0.8" y "0b1e11af8bc44836f04a6407e92da42467b79444" [];
          "rx-lite@^3.1.2" = s."rx-lite@3.1.2";
          "rx-lite@^4.0.8" = s."rx-lite@4.0.8";
          "rx@2.3.24" = f "rx" "2.3.24" y "14f950a4217d7e35daa71bbcbe58eff68ea4b2b7" [];
          "rxjs@5.5.6" = f "rxjs" "5.5.6" y "e31fb96d6fd2ff1fd84bcea8ae9c02d007179c02" [
            s."symbol-observable@1.0.1"
          ];
          "rxjs@^5.1.1" = s."rxjs@5.5.6";
          "safe-buffer@5.1.1" = f "safe-buffer" "5.1.1" y "893312af69b2123def71f57889001671eeb2c853" [];
          "safe-buffer@^5.0.1" = s."safe-buffer@5.1.1";
          "safe-buffer@^5.1.0" = s."safe-buffer@5.1.1";
          "safe-buffer@^5.1.1" = s."safe-buffer@5.1.1";
          "safe-buffer@~5.1.0" = s."safe-buffer@5.1.1";
          "safe-buffer@~5.1.1" = s."safe-buffer@5.1.1";
          "sanitize-filename@1.6.1" = f "sanitize-filename" "1.6.1" y "612da1c96473fa02dccda92dcd5b4ab164a6772a" [
            s."truncate-utf8-bytes@^1.0.0"
          ];
          "sanitize-filename@^1.6.0" = s."sanitize-filename@1.6.1";
          "sass-graph@2.1.2" = f "sass-graph" "2.1.2" y "965104be23e8103cb7e5f710df65935b317da57b" [
            s."glob@^7.0.0"
            s."lodash@^4.0.0"
            s."yargs@^4.7.1"
          ];
          "sass-graph@^2.1.1" = s."sass-graph@2.1.2";
          "sass-loader@4.1.1" = f "sass-loader" "4.1.1" y "79ef9468cf0bf646c29529e1f2cba6bd6e51c7bc" [
            s."async@^2.0.1"
            s."loader-utils@^0.2.15"
            s."object-assign@^4.1.0"
          ];
          "sax@1.2.1" = f "sax" "1.2.1" y "7b8e656190b228e81a66aea748480d828cd2d37a" [];
          "sax@^1.1.4" = s."sax@1.2.1";
          "sax@~1.2.1" = s."sax@1.2.1";
          "scrypt.js@0.2.0" = f "scrypt.js" "0.2.0" y "af8d1465b71e9990110bedfc593b9479e03a8ada" [
            s."scrypt@^6.0.2"
            s."scryptsy@^1.2.1"
          ];
          "scrypt@6.0.3" = f "scrypt" "6.0.3" y "04e014a5682b53fa50c2d5cce167d719c06d870d" [
            s."nan@^2.0.8"
          ];
          "scrypt@^6.0.2" = s."scrypt@6.0.3";
          "scryptsy@1.2.1" = f "scryptsy" "1.2.1" y "a3225fa4b2524f802700761e2855bdf3b2d92163" [
            s."pbkdf2@^3.0.3"
          ];
          "scryptsy@^1.2.1" = s."scryptsy@1.2.1";
          "seek-bzip@1.0.5" = f "seek-bzip" "1.0.5" y "cfe917cb3d274bcffac792758af53173eb1fabdc" [
            s."commander@~2.8.1"
          ];
          "seek-bzip@^1.0.5" = s."seek-bzip@1.0.5";
          "seekout@1.0.2" = f "seekout" "1.0.2" y "09ba9f1bd5b46fbb134718eb19a68382cbb1b9c9" [];
          "seekout@^1.0.1" = s."seekout@1.0.2";
          "semver-diff@2.1.0" = f "semver-diff" "2.1.0" y "4bbb8437c8d37e4b0cf1a68fd726ec6d645d6d36" [
            s."semver@^5.0.3"
          ];
          "semver-diff@^2.0.0" = s."semver-diff@2.1.0";
          "semver@2 || 3 || 4 || 5" = s."semver@5.3.0";
          "semver@2.x || 3.x || 4 || 5" = s."semver@5.3.0";
          "semver@4.3.6" = f "semver" "4.3.6" y "300bc6e0e86374f7ba61068b5b1ecd57fc6532da" [];
          "semver@5.3.0" = f "semver" "5.3.0" y "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f" [];
          "semver@5.5.0" = f "semver" "5.5.0" y "dc4bbc7a6ca9d916dee5d43516f0092b58f7b8ab" [];
          "semver@^4.3.4" = s."semver@4.3.6";
          "semver@^5.0.3" = s."semver@5.3.0";
          "semver@^5.1.0" = s."semver@5.3.0";
          "semver@^5.3.0" = s."semver@5.3.0";
          "semver@^5.4.1" = s."semver@5.5.0";
          "semver@~5.3.0" = s."semver@5.3.0";
          "send@0.14.1" = f "send" "0.14.1" y "a954984325392f51532a7760760e459598c89f7a" [
            s."debug@~2.2.0"
            s."depd@~1.1.0"
            s."destroy@~1.0.4"
            s."encodeurl@~1.0.1"
            s."escape-html@~1.0.3"
            s."etag@~1.7.0"
            s."fresh@0.3.0"
            s."http-errors@~1.5.0"
            s."mime@1.3.4"
            s."ms@0.7.1"
            s."on-finished@~2.3.0"
            s."range-parser@~1.2.0"
            s."statuses@~1.3.0"
          ];
          "send@0.15.1" = f "send" "0.15.1" y "8a02354c26e6f5cca700065f5f0cdeba90ec7b5f" [
            s."debug@2.6.1"
            s."depd@~1.1.0"
            s."destroy@~1.0.4"
            s."encodeurl@~1.0.1"
            s."escape-html@~1.0.3"
            s."etag@~1.8.0"
            s."fresh@0.5.0"
            s."http-errors@~1.6.1"
            s."mime@1.3.4"
            s."ms@0.7.2"
            s."on-finished@~2.3.0"
            s."range-parser@~1.2.0"
            s."statuses@~1.3.1"
          ];
          "serialize-error@2.1.0" = f "serialize-error" "2.1.0" y "50b679d5635cdf84667bdc8e59af4e5b81d5f60a" [];
          "serialize-error@^2.1.0" = s."serialize-error@2.1.0";
          "serve-favicon@2.3.2" = f "serve-favicon" "2.3.2" y "dd419e268de012ab72b319d337f2105013f9381f" [
            s."etag@~1.7.0"
            s."fresh@0.3.0"
            s."ms@0.7.2"
            s."parseurl@~1.3.1"
          ];
          "serve-favicon@^2.1.1" = s."serve-favicon@2.3.2";
          "serve-favicon@^2.3.0" = s."serve-favicon@2.3.2";
          "serve-static@1.11.1" = f "serve-static" "1.11.1" y "d6cce7693505f733c759de57befc1af76c0f0805" [
            s."encodeurl@~1.0.1"
            s."escape-html@~1.0.3"
            s."parseurl@~1.3.1"
            s."send@0.14.1"
          ];
          "serve-static@1.12.1" = f "serve-static" "1.12.1" y "7443a965e3ced647aceb5639fa06bf4d1bbe0039" [
            s."encodeurl@~1.0.1"
            s."escape-html@~1.0.3"
            s."parseurl@~1.3.1"
            s."send@0.15.1"
          ];
          "serve-static@~1.11.1" = s."serve-static@1.11.1";
          "servify@0.1.12" = f "servify" "0.1.12" y "142ab7bee1f1d033b66d0707086085b17c06db95" [
            s."body-parser@^1.16.0"
            s."cors@^2.8.1"
            s."express@^4.14.0"
            s."request@^2.79.0"
            s."xhr@^2.3.3"
          ];
          "servify@^0.1.12" = s."servify@0.1.12";
          "set-blocking@1.0.0" = f "set-blocking" "1.0.0" y "cd5e5d938048df1ac92dfe92e1f16add656f5ec5" [];
          "set-blocking@2.0.0" = f "set-blocking" "2.0.0" y "045f9782d011ae9a6803ddd382b24392b3d890f7" [];
          "set-blocking@^1.0.0" = s."set-blocking@1.0.0";
          "set-blocking@^2.0.0" = s."set-blocking@2.0.0";
          "set-blocking@~2.0.0" = s."set-blocking@2.0.0";
          "set-immediate-shim@1.0.1" = f "set-immediate-shim" "1.0.1" y "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61" [];
          "set-immediate-shim@^1.0.1" = s."set-immediate-shim@1.0.1";
          "setimmediate@1.0.5" = f "setimmediate" "1.0.5" y "290cbb232e306942d7d7ea9b83732ab7856f8285" [];
          "setimmediate@^1.0.4" = s."setimmediate@1.0.5";
          "setimmediate@^1.0.5" = s."setimmediate@1.0.5";
          "setprototypeof@1.0.2" = f "setprototypeof" "1.0.2" y "81a552141ec104b88e89ce383103ad5c66564d08" [];
          "setprototypeof@1.0.3" = f "setprototypeof" "1.0.3" y "66567e37043eeb4f04d91bd658c0cbefb55b8e04" [];
          "sha.js@2.2.6" = f "sha.js" "2.2.6" y "17ddeddc5f722fb66501658895461977867315ba" [];
          "sha.js@2.4.10" = f "sha.js" "2.4.10" y "b1fde5cd7d11a5626638a07c604ab909cfa31f9b" [
            s."inherits@^2.0.1"
            s."safe-buffer@^5.0.1"
          ];
          "sha.js@2.4.8" = f "sha.js" "2.4.8" y "37068c2c476b6baf402d14a49c67f597921f634f" [
            s."inherits@^2.0.1"
          ];
          "sha.js@^2.3.6" = s."sha.js@2.4.8";
          "sha.js@^2.4.0" = s."sha.js@2.4.10";
          "sha.js@^2.4.8" = s."sha.js@2.4.10";
          "sha3@1.2.0" = f "sha3" "1.2.0" y "6989f1b70a498705876a373e2c62ace96aa9399a" [
            s."nan@^2.0.5"
          ];
          "sha3@^1.1.0" = s."sha3@1.2.0";
          "shallowequal@0.2.2" = f "shallowequal" "0.2.2" y "1e32fd5bcab6ad688a4812cb0cc04efc75c7014e" [
            s."lodash.keys@^3.1.2"
          ];
          "shallowequal@0.2.x" = s."shallowequal@0.2.2";
          "shallowequal@^0.2.2" = s."shallowequal@0.2.2";
          "shebang-command@1.2.0" = f "shebang-command" "1.2.0" y "44aac65b695b03398968c39f363fee5deafdf1ea" [
            s."shebang-regex@^1.0.0"
          ];
          "shebang-command@^1.2.0" = s."shebang-command@1.2.0";
          "shebang-regex@1.0.0" = f "shebang-regex" "1.0.0" y "da42f49740c0b42db2ca9728571cb190c98efea3" [];
          "shebang-regex@^1.0.0" = s."shebang-regex@1.0.0";
          "shelljs@0.7.0" = f "shelljs" "0.7.0" y "3f6f2e4965cec565f65ff3861d644f879281a576" [
            s."glob@^7.0.0"
            s."interpret@^1.0.0"
            s."rechoir@^0.6.2"
          ];
          "shelljs@0.7.6" = f "shelljs" "0.7.6" y "379cccfb56b91c8601e4793356eb5382924de9ad" [
            s."glob@^7.0.0"
            s."interpret@^1.0.0"
            s."rechoir@^0.6.2"
          ];
          "shelljs@^0.7.0" = s."shelljs@0.7.6";
          "shelljs@^0.7.4" = s."shelljs@0.7.6";
          "shelljs@^0.7.5" = s."shelljs@0.7.6";
          "signal-exit@3.0.2" = f "signal-exit" "3.0.2" y "b5fdc08f1287ea1178628e415e25132b73646c6d" [];
          "signal-exit@^3.0.0" = s."signal-exit@3.0.2";
          "signal-exit@^3.0.2" = s."signal-exit@3.0.2";
          "simple-concat@1.0.0" = f "simple-concat" "1.0.0" y "7344cbb8b6e26fb27d66b2fc86f9f6d5997521c6" [];
          "simple-concat@^1.0.0" = s."simple-concat@1.0.0";
          "simple-get@2.7.0" = f "simple-get" "2.7.0" y "ad37f926d08129237ff08c4f2edfd6f10e0380b5" [
            s."decompress-response@^3.3.0"
            s."once@^1.3.1"
            s."simple-concat@^1.0.0"
          ];
          "simple-get@^2.7.0" = s."simple-get@2.7.0";
          "single-line-log@1.1.2" = f "single-line-log" "1.1.2" y "c2f83f273a3e1a16edb0995661da0ed5ef033364" [
            s."string-width@^1.0.1"
          ];
          "single-line-log@^1.1.2" = s."single-line-log@1.1.2";
          "slash@1.0.0" = f "slash" "1.0.0" y "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55" [];
          "slash@^1.0.0" = s."slash@1.0.0";
          "slice-ansi@0.0.4" = f "slice-ansi" "0.0.4" y "edbf8903f66f7ce2f8eafd6ceed65e264c831b35" [];
          "slide@1.1.6" = f "slide" "1.1.6" y "56eb027d65b4d2dce6cb2e2d32c4d4afc9e1d707" [];
          "slide@^1.1.5" = s."slide@1.1.6";
          "sntp@1.0.9" = f "sntp" "1.0.9" y "6541184cc90aeea6c6e7b35e2659082443c66198" [
            s."hoek@2.x.x"
          ];
          "sntp@1.x.x" = s."sntp@1.0.9";
          "sntp@2.1.0" = f "sntp" "2.1.0" y "2c6cec14fedc2222739caf9b5c3d85d1cc5a2cc8" [
            s."hoek@4.x.x"
          ];
          "sntp@2.x.x" = s."sntp@2.1.0";
          "sort-keys@1.1.2" = f "sort-keys" "1.1.2" y "441b6d4d346798f1b4e49e8920adfba0e543f9ad" [
            s."is-plain-obj@^1.0.0"
          ];
          "sort-keys@^1.0.0" = s."sort-keys@1.1.2";
          "source-list-map@0.1.7" = f "source-list-map" "0.1.7" y "d4b5ce2a46535c72c7e8527c71a77d250618172e" [];
          "source-list-map@^0.1.4" = s."source-list-map@0.1.7";
          "source-list-map@~0.1.0" = s."source-list-map@0.1.7";
          "source-list-map@~0.1.7" = s."source-list-map@0.1.7";
          "source-map-resolve@0.3.1" = f "source-map-resolve" "0.3.1" y "610f6122a445b8dd51535a2a71b783dfc1248761" [
            s."atob@~1.1.0"
            s."resolve-url@~0.2.1"
            s."source-map-url@~0.3.0"
            s."urix@~0.1.0"
          ];
          "source-map-resolve@^0.3.0" = s."source-map-resolve@0.3.1";
          "source-map-support@0.4.14" = f "source-map-support" "0.4.14" y "9d4463772598b86271b4f523f6c1f4e02a7d6aef" [
            s."source-map@^0.5.6"
          ];
          "source-map-support@0.4.18" = f "source-map-support" "0.4.18" y "0286a6de8be42641338594e97ccea75f0a2c585f" [
            s."source-map@^0.5.6"
          ];
          "source-map-support@0.4.8" = f "source-map-support" "0.4.8" y "4871918d8a3af07289182e974e32844327b2e98b" [
            s."source-map@^0.5.3"
          ];
          "source-map-support@^0.4.15" = s."source-map-support@0.4.18";
          "source-map-support@^0.4.2" = s."source-map-support@0.4.8";
          "source-map-url@0.3.0" = f "source-map-url" "0.3.0" y "7ecaf13b57bcd09da8a40c5d269db33799d4aaf9" [];
          "source-map-url@~0.3.0" = s."source-map-url@0.3.0";
          "source-map@0.1.43" = f "source-map" "0.1.43" y "c24bc146ca517c1471f5dacbe2571b2b7f9e3346" [
            s."amdefine@>=0.0.4"
          ];
          "source-map@0.2.0" = f "source-map" "0.2.0" y "dab73fbcfc2ba819b4de03bd6f6eaa48164b3f9d" [
            s."amdefine@>=0.0.4"
          ];
          "source-map@0.4.4" = f "source-map" "0.4.4" y "eba4f5da9c0dc999de68032d8b4f76173652036b" [
            s."amdefine@>=0.0.4"
          ];
          "source-map@0.5.6" = f "source-map" "0.5.6" y "75ce38f52bf0733c5a7f0c118d81334a2bb5f412" [];
          "source-map@0.5.7" = f "source-map" "0.5.7" y "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc" [];
          "source-map@0.5.x" = s."source-map@0.5.7";
          "source-map@0.6.1" = f "source-map" "0.6.1" y "74722af32e9614e9c287a8d0bbde48b5e2f1a263" [];
          "source-map@^0.1.38" = s."source-map@0.1.43";
          "source-map@^0.5.0" = s."source-map@0.5.6";
          "source-map@^0.5.3" = s."source-map@0.5.6";
          "source-map@^0.5.6" = s."source-map@0.5.6";
          "source-map@^0.5.7" = s."source-map@0.5.7";
          "source-map@~0.2.0" = s."source-map@0.2.0";
          "source-map@~0.4.1" = s."source-map@0.4.4";
          "source-map@~0.5.0" = s."source-map@0.5.6";
          "source-map@~0.5.1" = s."source-map@0.5.6";
          "source-map@~0.5.3" = s."source-map@0.5.6";
          "source-map@~0.6.1" = s."source-map@0.6.1";
          "sparkles@1.0.0" = f "sparkles" "1.0.0" y "1acbbfb592436d10bbe8f785b7cc6f82815012c3" [];
          "sparkles@^1.0.0" = s."sparkles@1.0.0";
          "spawn-command@0.0.2-1" = f "spawn-command" "0.0.2-1" y "62f5e9466981c1b796dc5929937e11c9c6921bd0" [];
          "spawn-command@^0.0.2-1" = s."spawn-command@0.0.2-1";
          "spawn-rx@2.0.12" = f "spawn-rx" "2.0.12" y "b6285294499426089beea0c3c1ec32d7fc57a376" [
            s."debug@^2.5.1"
            s."lodash.assign@^4.2.0"
            s."rxjs@^5.1.1"
          ];
          "spawn-rx@^2.0.10" = s."spawn-rx@2.0.12";
          "spdx-correct@1.0.2" = f "spdx-correct" "1.0.2" y "4b3073d933ff51f3912f03ac5519498a4150db40" [
            s."spdx-license-ids@^1.0.2"
          ];
          "spdx-correct@~1.0.0" = s."spdx-correct@1.0.2";
          "spdx-expression-parse@1.0.4" = f "spdx-expression-parse" "1.0.4" y "9bdf2f20e1f40ed447fbe273266191fced51626c" [];
          "spdx-expression-parse@~1.0.0" = s."spdx-expression-parse@1.0.4";
          "spdx-license-ids@1.2.2" = f "spdx-license-ids" "1.2.2" y "c9df7a3424594ade6bd11900d596696dc06bac57" [];
          "spdx-license-ids@^1.0.2" = s."spdx-license-ids@1.2.2";
          "spectron@3.7.2" = f "spectron" "3.7.2" y "86f41306a9b70ed6ee1500f7f7d3adc389afb446" [
            s."dev-null@^0.1.1"
            s."electron-chromedriver@~1.7.1"
            s."request@^2.81.0"
            s."split@^1.0.0"
            s."webdriverio@^4.8.0"
          ];
          "speedometer@0.1.4" = f "speedometer" "0.1.4" y "9876dbd2a169d3115402d48e6ea6329c8816a50d" [];
          "speedometer@~0.1.2" = s."speedometer@0.1.4";
          "split@0.3" = s."split@0.3.3";
          "split@0.3.3" = f "split" "0.3.3" y "cd0eea5e63a211dfff7eb0f091c4133e2d0dd28f" [
            s."through@2"
          ];
          "split@1.0.0" = f "split" "1.0.0" y "c4395ce683abcd254bc28fe1dabb6e5c27dcffae" [
            s."through@2"
          ];
          "split@^1.0.0" = s."split@1.0.0";
          "sprintf-js@1.0.3" = f "sprintf-js" "1.0.3" y "04e6926f662895354f3dd015203633b857297e2c" [];
          "sprintf-js@~1.0.2" = s."sprintf-js@1.0.3";
          "sshpk@1.10.1" = f "sshpk" "1.10.1" y "30e1a5d329244974a1af61511339d595af6638b0" [
            s."asn1@~0.2.3"
            s."assert-plus@^1.0.0"
            s."dashdash@^1.12.0"
            s."getpass@^0.1.1"
            s."bcrypt-pbkdf@^1.0.0"
            s."ecc-jsbn@~0.1.1"
            s."jodid25519@^1.0.0"
            s."jsbn@~0.1.0"
            s."tweetnacl@~0.14.0"
          ];
          "sshpk@^1.7.0" = s."sshpk@1.10.1";
          "stack-chain@2.0.0" = f "stack-chain" "2.0.0" y "d73d1172af89565f07438b5bcc086831b6689b2d" [];
          "stack-chain@^2.0.0" = s."stack-chain@2.0.0";
          "stack-generator@2.0.2" = f "stack-generator" "2.0.2" y "3c13d952a596ab9318fec0669d0a1df8b87176c7" [
            s."stackframe@^1.0.4"
          ];
          "stack-generator@^2.0.1" = s."stack-generator@2.0.2";
          "stack-trace@0.0.10" = f "stack-trace" "0.0.10" y "547c70b347e8d32b4e108ea1a2a159e5fdde19c0" [];
          "stack-trace@0.0.x" = s."stack-trace@0.0.10";
          "stackframe@0.3.1" = f "stackframe" "0.3.1" y "33aa84f1177a5548c8935533cbfeb3420975f5a4" [];
          "stackframe@1.0.4" = f "stackframe" "1.0.4" y "357b24a992f9427cba6b545d96a14ed2cbca187b" [];
          "stackframe@^0.3.1" = s."stackframe@0.3.1";
          "stackframe@^1.0.3" = s."stackframe@1.0.4";
          "stackframe@^1.0.4" = s."stackframe@1.0.4";
          "stacktrace-gps@3.0.2" = f "stacktrace-gps" "3.0.2" y "33f8baa4467323ab2bd1816efa279942ba431ccc" [
            s."source-map@0.5.6"
            s."stackframe@^1.0.4"
          ];
          "stacktrace-gps@^3.0.1" = s."stacktrace-gps@3.0.2";
          "stacktrace-js@2.0.0" = f "stacktrace-js" "2.0.0" y "776ca646a95bc6c6b2b90776536a7fc72c6ddb58" [
            s."error-stack-parser@^2.0.1"
            s."stack-generator@^2.0.1"
            s."stacktrace-gps@^3.0.1"
          ];
          "stacktrace-js@^2.0.0" = s."stacktrace-js@2.0.0";
          "statuses@1.3.1" = f "statuses" "1.3.1" y "faf51b9eb74aaef3b3acf4ad5f61abf24cb7b93e" [];
          "statuses@>= 1.3.1 < 2" = s."statuses@1.3.1";
          "statuses@~1.3.0" = s."statuses@1.3.1";
          "statuses@~1.3.1" = s."statuses@1.3.1";
          "stream-browserify@2.0.1" = f "stream-browserify" "2.0.1" y "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db" [
            s."inherits@~2.0.1"
            s."readable-stream@^2.0.2"
          ];
          "stream-browserify@^2.0.1" = s."stream-browserify@2.0.1";
          "stream-combiner@0.0.4" = f "stream-combiner" "0.0.4" y "4d5e433c185261dde623ca3f44c586bcf5c4ad14" [
            s."duplexer@~0.1.1"
          ];
          "stream-combiner@~0.0.4" = s."stream-combiner@0.0.4";
          "stream-http@2.6.0" = f "stream-http" "2.6.0" y "adf3309ced17624ebfb7ef13e6ac4cfe405a8b12" [
            s."builtin-status-codes@^3.0.0"
            s."inherits@^2.0.1"
            s."readable-stream@^2.1.0"
            s."to-arraybuffer@^1.0.0"
            s."xtend@^4.0.0"
          ];
          "stream-http@^2.3.1" = s."stream-http@2.6.0";
          "stream-shift@1.0.0" = f "stream-shift" "1.0.0" y "d5c752825e5367e786f78e18e445ea223a155952" [];
          "stream-shift@^1.0.0" = s."stream-shift@1.0.0";
          "strict-uri-encode@1.1.0" = f "strict-uri-encode" "1.1.0" y "279b225df1d582b1f54e65addd4352e18faa0713" [];
          "strict-uri-encode@^1.0.0" = s."strict-uri-encode@1.1.0";
          "string-argv@0.0.2" = f "string-argv" "0.0.2" y "dac30408690c21f3c3630a3ff3a05877bdcbd736" [];
          "string-hash@1.1.1" = f "string-hash" "1.1.1" y "8e85bed291e0763b8f6809d9c3368fea048db3dc" [];
          "string-hash@^1.1.0" = s."string-hash@1.1.1";
          "string-length@1.0.1" = f "string-length" "1.0.1" y "56970fb1c38558e9e70b728bf3de269ac45adfac" [
            s."strip-ansi@^3.0.0"
          ];
          "string-length@^1.0.0" = s."string-length@1.0.1";
          "string-width@1.0.2" = f "string-width" "1.0.2" y "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3" [
            s."code-point-at@^1.0.0"
            s."is-fullwidth-code-point@^1.0.0"
            s."strip-ansi@^3.0.0"
          ];
          "string-width@2.0.0" = f "string-width" "2.0.0" y "635c5436cc72a6e0c387ceca278d4e2eec52687e" [
            s."is-fullwidth-code-point@^2.0.0"
            s."strip-ansi@^3.0.0"
          ];
          "string-width@2.1.1" = f "string-width" "2.1.1" y "ab93f27a8dc13d28cac815c462143a6d9012ae9e" [
            s."is-fullwidth-code-point@^2.0.0"
            s."strip-ansi@^4.0.0"
          ];
          "string-width@^1.0.1" = s."string-width@1.0.2";
          "string-width@^1.0.2" = s."string-width@1.0.2";
          "string-width@^2.0.0" = s."string-width@2.0.0";
          "string-width@^2.1.0" = s."string-width@2.1.1";
          "string.prototype.padend@3.0.0" = f "string.prototype.padend" "3.0.0" y "f3aaef7c1719f170c5eab1c32bf780d96e21f2f0" [
            s."define-properties@^1.1.2"
            s."es-abstract@^1.4.3"
            s."function-bind@^1.0.2"
          ];
          "string.prototype.padend@^3.0.0" = s."string.prototype.padend@3.0.0";
          "string.prototype.padstart@3.0.0" = f "string.prototype.padstart" "3.0.0" y "5bcfad39f4649bb2d031292e19bcf0b510d4b242" [
            s."define-properties@^1.1.2"
            s."es-abstract@^1.4.3"
            s."function-bind@^1.0.2"
          ];
          "string.prototype.padstart@^3.0.0" = s."string.prototype.padstart@3.0.0";
          "string.prototype.repeat@0.2.0" = f "string.prototype.repeat" "0.2.0" y "aba36de08dcee6a5a337d49b2ea1da1b28fc0ecf" [];
          "string.prototype.repeat@^0.2.0" = s."string.prototype.repeat@0.2.0";
          "string_decoder@0.10.31" = f "string_decoder" "0.10.31" y "62e203bc41766c6c28c9fc84301dab1c5310fa94" [];
          "string_decoder@^0.10.25" = s."string_decoder@0.10.31";
          "string_decoder@~0.10.x" = s."string_decoder@0.10.31";
          "stringstream@0.0.5" = f "stringstream" "0.0.5" y "4e484cd4de5a0bbbee18e46307710a8a81621878" [];
          "stringstream@~0.0.4" = s."stringstream@0.0.5";
          "stringstream@~0.0.5" = s."stringstream@0.0.5";
          "strip-ansi@0.3.0" = f "strip-ansi" "0.3.0" y "25f48ea22ca79187f3174a4db8759347bb126220" [
            s."ansi-regex@^0.2.1"
          ];
          "strip-ansi@3.0.1" = f "strip-ansi" "3.0.1" y "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf" [
            s."ansi-regex@^2.0.0"
          ];
          "strip-ansi@4.0.0" = f "strip-ansi" "4.0.0" y "a8479022eb1ac368a871389b635262c505ee368f" [
            s."ansi-regex@^3.0.0"
          ];
          "strip-ansi@^0.3.0" = s."strip-ansi@0.3.0";
          "strip-ansi@^3.0.0" = s."strip-ansi@3.0.1";
          "strip-ansi@^3.0.1" = s."strip-ansi@3.0.1";
          "strip-ansi@^4.0.0" = s."strip-ansi@4.0.0";
          "strip-bom@2.0.0" = f "strip-bom" "2.0.0" y "6219a85616520491f35788bdbf1447a99c7e6b0e" [
            s."is-utf8@^0.2.0"
          ];
          "strip-bom@3.0.0" = f "strip-bom" "3.0.0" y "2334c18e9c759f7bdd56fdef7e9ae3d588e68ed3" [];
          "strip-bom@^2.0.0" = s."strip-bom@2.0.0";
          "strip-bom@^3.0.0" = s."strip-bom@3.0.0";
          "strip-dirs@2.1.0" = f "strip-dirs" "2.1.0" y "4987736264fc344cf20f6c34aca9d13d1d4ed6c5" [
            s."is-natural-number@^4.0.1"
          ];
          "strip-dirs@^2.0.0" = s."strip-dirs@2.1.0";
          "strip-hex-prefix@1.0.0" = f "strip-hex-prefix" "1.0.0" y "0c5f155fef1151373377de9dbb588da05500e36f" [
            s."is-hex-prefixed@1.0.0"
          ];
          "strip-indent@1.0.1" = f "strip-indent" "1.0.1" y "0c7962a6adefa7bbd4ac366460a638552ae1a0a2" [
            s."get-stdin@^4.0.1"
          ];
          "strip-indent@^1.0.1" = s."strip-indent@1.0.1";
          "strip-json-comments@1.0.4" = f "strip-json-comments" "1.0.4" y "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91" [];
          "strip-json-comments@2.0.1" = f "strip-json-comments" "2.0.1" y "3c531942e908c2697c0ec344858c286c7ca0a60a" [];
          "strip-json-comments@~1.0.4" = s."strip-json-comments@1.0.4";
          "strip-json-comments@~2.0.1" = s."strip-json-comments@2.0.1";
          "strong-data-uri@1.0.4" = f "strong-data-uri" "1.0.4" y "136765ebaf8e0f4ad60c4b146779f062c29d18f0" [
            s."truncate@~1.0.2"
          ];
          "strong-data-uri@^1.0.0" = s."strong-data-uri@1.0.4";
          "style-loader@0.13.1" = f "style-loader" "0.13.1" y "468280efbc0473023cd3a6cd56e33b5a1d7fc3a9" [
            s."loader-utils@^0.2.7"
          ];
          "style-loader@0.13.2" = f "style-loader" "0.13.2" y "74533384cf698c7104c7951150b49717adc2f3bb" [
            s."loader-utils@^1.0.2"
          ];
          "sumchecker@1.3.0" = f "sumchecker" "1.3.0" y "6e3004d7bf3b5ad5567abf13a828946d8a19911b" [
            s."debug@^2.2.0"
            s."es6-promise@^4.0.5"
          ];
          "sumchecker@2.0.2" = f "sumchecker" "2.0.2" y "0f42c10e5d05da5d42eea3e56c3399a37d6c5b3e" [
            s."debug@^2.2.0"
          ];
          "sumchecker@^1.2.0" = s."sumchecker@1.3.0";
          "sumchecker@^2.0.1" = s."sumchecker@2.0.2";
          "supports-color@0.2.0" = f "supports-color" "0.2.0" y "d92de2694eb3f67323973d7ae3d8b55b4c22190a" [];
          "supports-color@2.0.0" = f "supports-color" "2.0.0" y "535d045ce6b6363fa40117084629995e9df324c7" [];
          "supports-color@3.1.2" = f "supports-color" "3.1.2" y "72a262894d9d408b956ca05ff37b2ed8a6e2a2d5" [
            s."has-flag@^1.0.0"
          ];
          "supports-color@3.2.3" = f "supports-color" "3.2.3" y "65ac0504b3954171d8a64946b2ae3cbb8a5f54f6" [
            s."has-flag@^1.0.0"
          ];
          "supports-color@5.0.1" = f "supports-color" "5.0.1" y "1c5331f22250c84202805b2f17adf16699f3a39a" [
            s."has-flag@^2.0.0"
          ];
          "supports-color@5.2.0" = f "supports-color" "5.2.0" y "b0d5333b1184dd3666cbe5aa0b45c5ac7ac17a4a" [
            s."has-flag@^3.0.0"
          ];
          "supports-color@^0.2.0" = s."supports-color@0.2.0";
          "supports-color@^2.0.0" = s."supports-color@2.0.0";
          "supports-color@^3.1.0" = s."supports-color@3.1.2";
          "supports-color@^3.1.2" = s."supports-color@3.1.2";
          "supports-color@^3.2.3" = s."supports-color@3.2.3";
          "supports-color@^5.2.0" = s."supports-color@5.2.0";
          "supports-color@~5.0.0" = s."supports-color@5.0.1";
          "svgo@0.7.1" = f "svgo" "0.7.1" y "287320fed972cb097e72c2bb1685f96fe08f8034" [
            s."coa@~1.0.1"
            s."colors@~1.1.2"
            s."csso@~2.2.1"
            s."js-yaml@~3.6.1"
            s."mkdirp@~0.5.1"
            s."sax@~1.2.1"
            s."whet.extend@~0.9.9"
          ];
          "svgo@^0.7.0" = s."svgo@0.7.1";
          "swarm-js@0.1.37" = f "swarm-js" "0.1.37" y "27d485317a340bbeec40292af783cc10acfa4663" [
            s."bluebird@^3.5.0"
            s."buffer@^5.0.5"
            s."decompress@^4.0.0"
            s."eth-lib@^0.1.26"
            s."fs-extra@^2.1.2"
            s."fs-promise@^2.0.0"
            s."got@^7.1.0"
            s."mime-types@^2.1.16"
            s."mkdirp-promise@^5.0.1"
            s."mock-fs@^4.1.0"
            s."setimmediate@^1.0.5"
            s."tar.gz@^1.0.5"
            s."xhr-request-promise@^0.1.2"
          ];
          "symbol-observable@1.0.1" = f "symbol-observable" "1.0.1" y "8340fc4702c3122df5d22288f88283f513d3fdd4" [];
          "symbol-observable@1.0.4" = f "symbol-observable" "1.0.4" y "29bf615d4aa7121bdd898b22d4b3f9bc4e2aa03d" [];
          "symbol-observable@^1.0.2" = s."symbol-observable@1.0.4";
          "symbol-tree@3.2.1" = f "symbol-tree" "3.2.1" y "8549dd1d01fa9f893c18cc9ab0b106b4d9b168cb" [];
          "symbol-tree@>= 3.1.0 < 4.0.0" = s."symbol-tree@3.2.1";
          "symbol@0.2.3" = f "symbol" "0.2.3" y "3b9873b8a901e47c6efe21526a3ac372ef28bbc7" [];
          "symbol@^0.2.1" = s."symbol@0.2.3";
          "table@3.8.3" = f "table" "3.8.3" y "2bbc542f0fda9861a755d3947fefd8b3f513855f" [
            s."ajv@^4.7.0"
            s."ajv-keywords@^1.0.0"
            s."chalk@^1.1.1"
            s."lodash@^4.0.0"
            s."slice-ansi@0.0.4"
            s."string-width@^2.0.0"
          ];
          "table@^3.7.8" = s."table@3.8.3";
          "tapable@0.1.10" = f "tapable" "0.1.10" y "29c35707c2b70e50d07482b5d202e8ed446dafd4" [];
          "tapable@0.2.5" = f "tapable" "0.2.5" y "1ff6ce7ade58e734ca9bfe36ba342304b377a4d0" [];
          "tapable@^0.1.8" = s."tapable@0.1.10";
          "tapable@^0.2.3" = s."tapable@0.2.5";
          "tapable@~0.1.8" = s."tapable@0.1.10";
          "tar-pack@3.3.0" = f "tar-pack" "3.3.0" y "30931816418f55afc4d21775afdd6720cee45dae" [
            s."debug@~2.2.0"
            s."fstream@~1.0.10"
            s."fstream-ignore@~1.0.5"
            s."once@~1.3.3"
            s."readable-stream@~2.1.4"
            s."rimraf@~2.5.1"
            s."tar@~2.2.1"
            s."uid-number@~0.0.6"
          ];
          "tar-pack@~3.3.0" = s."tar-pack@3.3.0";
          "tar-stream@1.5.2" = f "tar-stream" "1.5.2" y "fbc6c6e83c1a19d4cb48c7d96171fc248effc7bf" [
            s."bl@^1.0.0"
            s."end-of-stream@^1.0.0"
            s."readable-stream@^2.0.0"
            s."xtend@^4.0.0"
          ];
          "tar-stream@1.5.5" = f "tar-stream" "1.5.5" y "5cad84779f45c83b1f2508d96b09d88c7218af55" [
            s."bl@^1.0.0"
            s."end-of-stream@^1.0.0"
            s."readable-stream@^2.0.0"
            s."xtend@^4.0.0"
          ];
          "tar-stream@^1.5.0" = s."tar-stream@1.5.2";
          "tar-stream@^1.5.2" = s."tar-stream@1.5.5";
          "tar.gz@1.0.7" = f "tar.gz" "1.0.7" y "577ef2c595faaa73452ef0415fed41113212257b" [
            s."bluebird@^2.9.34"
            s."commander@^2.8.1"
            s."fstream@^1.0.8"
            s."mout@^0.11.0"
            s."tar@^2.1.1"
          ];
          "tar.gz@^1.0.5" = s."tar.gz@1.0.7";
          "tar@2.2.1" = f "tar" "2.2.1" y "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1" [
            s."block-stream@*"
            s."fstream@^1.0.2"
            s."inherits@2"
          ];
          "tar@^2.0.0" = s."tar@2.2.1";
          "tar@^2.1.1" = s."tar@2.2.1";
          "tar@~2.2.1" = s."tar@2.2.1";
          "tempfile@1.1.1" = f "tempfile" "1.1.1" y "5bcc4eaecc4ab2c707d8bc11d99ccc9a2cb287f2" [
            s."os-tmpdir@^1.0.0"
            s."uuid@^2.0.1"
          ];
          "tempfile@^1.1.1" = s."tempfile@1.1.1";
          "text-table@0.2.0" = f "text-table" "0.2.0" y "7f5ee823ae805207c00af2df4a84ec3fcfa570b4" [];
          "text-table@~0.2.0" = s."text-table@0.2.0";
          "thenify-all@1.6.0" = f "thenify-all" "1.6.0" y "1a1918d402d8fc3f98fbf234db0bcc8cc10e9726" [
            s."thenify@>= 3.1.0 < 4"
          ];
          "thenify-all@^1.0.0" = s."thenify-all@1.6.0";
          "thenify-all@^1.6.0" = s."thenify-all@1.6.0";
          "thenify@3.2.1" = f "thenify" "3.2.1" y "251fd1c80aff6e5cf57cb179ab1fcb724269bd11" [
            s."any-promise@^1.0.0"
          ];
          "thenify@>= 3.1.0 < 4" = s."thenify@3.2.1";
          "throttleit@0.0.2" = f "throttleit" "0.0.2" y "cfedf88e60c00dd9697b61fdd2a8343a9b680eaf" [];
          "through2@0.2.3" = f "through2" "0.2.3" y "eb3284da4ea311b6cc8ace3653748a52abf25a3f" [
            s."readable-stream@~1.1.9"
            s."xtend@~2.1.1"
          ];
          "through2@2.0.3" = f "through2" "2.0.3" y "0004569b37c7c74ba39c43f3ced78d1ad94140be" [
            s."readable-stream@^2.1.5"
            s."xtend@~4.0.1"
          ];
          "through2@^2.0.0" = s."through2@2.0.3";
          "through2@~0.2.3" = s."through2@0.2.3";
          "through@2" = s."through@2.3.8";
          "through@2.3.8" = f "through" "2.3.8" y "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5" [];
          "through@^2.3.6" = s."through@2.3.8";
          "through@~2.3" = s."through@2.3.8";
          "through@~2.3.1" = s."through@2.3.8";
          "through@~2.3.6" = s."through@2.3.8";
          "time-stamp@1.0.1" = f "time-stamp" "1.0.1" y "9f4bd23559c9365966f3302dbba2b07c6b99b151" [];
          "time-stamp@^1.0.0" = s."time-stamp@1.0.1";
          "timed-out@2.0.0" = f "timed-out" "2.0.0" y "f38b0ae81d3747d628001f41dafc652ace671c0a" [];
          "timed-out@4.0.1" = f "timed-out" "4.0.1" y "f32eacac5a175bea25d7fab565ab3ed8741ef56f" [];
          "timed-out@^2.0.0" = s."timed-out@2.0.0";
          "timed-out@^4.0.0" = s."timed-out@4.0.1";
          "timed-out@^4.0.1" = s."timed-out@4.0.1";
          "timers-browserify@1.4.2" = f "timers-browserify" "1.4.2" y "c9c58b575be8407375cb5e2462dacee74359f41d" [
            s."process@~0.11.0"
          ];
          "timers-browserify@2.0.2" = f "timers-browserify" "2.0.2" y "ab4883cf597dcd50af211349a00fbca56ac86b86" [
            s."setimmediate@^1.0.4"
          ];
          "timers-browserify@^1.4.2" = s."timers-browserify@1.4.2";
          "timers-browserify@^2.0.2" = s."timers-browserify@2.0.2";
          "title-case@2.1.1" = f "title-case" "2.1.1" y "3e127216da58d2bc5becf137ab91dae3a7cd8faa" [
            s."no-case@^2.2.0"
            s."upper-case@^1.0.3"
          ];
          "title-case@^2.1.1" = s."title-case@2.1.1";
          "tmp@0.0.28" = f "tmp" "0.0.28" y "172735b7f614ea7af39664fa84cf0de4e515d120" [
            s."os-tmpdir@~1.0.1"
          ];
          "tmp@0.0.33" = f "tmp" "0.0.33" y "6d34335889768d21b2bcda0aa277ced3b1bfadf9" [
            s."os-tmpdir@~1.0.2"
          ];
          "tmp@^0.0.33" = s."tmp@0.0.33";
          "to-arraybuffer@1.0.1" = f "to-arraybuffer" "1.0.1" y "7d229b1fcc637e466ca081180836a7aabff83f43" [];
          "to-arraybuffer@^1.0.0" = s."to-arraybuffer@1.0.1";
          "to-fast-properties@1.0.2" = f "to-fast-properties" "1.0.2" y "f3f5c0c3ba7299a7ef99427e44633257ade43320" [];
          "to-fast-properties@1.0.3" = f "to-fast-properties" "1.0.3" y "b83571fa4d8c25b82e231b06e3a3055de4ca1a47" [];
          "to-fast-properties@^1.0.1" = s."to-fast-properties@1.0.2";
          "to-fast-properties@^1.0.3" = s."to-fast-properties@1.0.3";
          "toggle-selection@1.0.6" = f "toggle-selection" "1.0.6" y "6e45b1263f2017fa0acc7d89d78b15b8bf77da32" [];
          "toggle-selection@^1.0.3" = s."toggle-selection@1.0.6";
          "topo@2.0.2" = f "topo" "2.0.2" y "cd5615752539057c0dc0491a621c3bc6fbe1d182" [
            s."hoek@4.x.x"
          ];
          "topo@2.x.x" = s."topo@2.0.2";
          "touch@0.0.3" = f "touch" "0.0.3" y "51aef3d449571d4f287a5d87c9c8b49181a0db1d" [
            s."nopt@~1.0.10"
          ];
          "touch@1.0.0" = f "touch" "1.0.0" y "449cbe2dbae5a8c8038e30d71fa0ff464947c4de" [
            s."nopt@~1.0.10"
          ];
          "tough-cookie@2.3.2" = f "tough-cookie" "2.3.2" y "f081f76e4c85720e6c37a5faced737150d84072a" [
            s."punycode@^1.4.1"
          ];
          "tough-cookie@2.3.3" = f "tough-cookie" "2.3.3" y "0b618a5565b6dea90bf3425d04d55edc475a7561" [
            s."punycode@^1.4.1"
          ];
          "tough-cookie@>=0.12.0" = s."tough-cookie@2.3.2";
          "tough-cookie@^2.3.1" = s."tough-cookie@2.3.2";
          "tough-cookie@~2.3.0" = s."tough-cookie@2.3.2";
          "tough-cookie@~2.3.3" = s."tough-cookie@2.3.3";
          "tr46@0.0.3" = f "tr46" "0.0.3" y "8184fd347dac9cdc185992f3a6622e14b9d9ab6a" [];
          "tr46@~0.0.3" = s."tr46@0.0.3";
          "traverse@0.3.9" = f "traverse" "0.3.9" y "717b8f220cc0bb7b44e40514c22b2e8bbc70d8b9" [];
          "traverse@>=0.3.0 <0.4" = s."traverse@0.3.9";
          "tree-kill@1.1.0" = f "tree-kill" "1.1.0" y "c963dcf03722892ec59cba569e940b71954d1729" [];
          "tree-kill@^1.1.0" = s."tree-kill@1.1.0";
          "trim-newlines@1.0.0" = f "trim-newlines" "1.0.0" y "5887966bb582a4503a41eb524f7d35011815a613" [];
          "trim-newlines@^1.0.0" = s."trim-newlines@1.0.0";
          "trim-right@1.0.1" = f "trim-right" "1.0.1" y "cb2e1203067e0c8de1f614094b9fe45704ea6003" [];
          "trim-right@^1.0.1" = s."trim-right@1.0.1";
          "trim@0.0.1" = f "trim" "0.0.1" y "5858547f6b290757ee95cccc666fb50084c460dd" [];
          "truncate-utf8-bytes@1.0.2" = f "truncate-utf8-bytes" "1.0.2" y "405923909592d56f78a5818434b0b78489ca5f2b" [
            s."utf8-byte-length@^1.0.1"
          ];
          "truncate-utf8-bytes@^1.0.0" = s."truncate-utf8-bytes@1.0.2";
          "truncate@1.0.5" = f "truncate" "1.0.5" y "c636c6c1f50eed7c927af06c1dbffab53c7abe28" [];
          "truncate@~1.0.2" = s."truncate@1.0.5";
          "tryit@1.0.3" = f "tryit" "1.0.3" y "393be730a9446fd1ead6da59a014308f36c289cb" [];
          "tryit@^1.0.1" = s."tryit@1.0.3";
          "tty-browserify@0.0.0" = f "tty-browserify" "0.0.0" y "a157ba402da24e9bf957f9aa69d524eed42901a6" [];
          "tunnel-agent@0.4.3" = f "tunnel-agent" "0.4.3" y "6373db76909fe570e08d73583365ed828a74eeeb" [];
          "tunnel-agent@0.6.0" = f "tunnel-agent" "0.6.0" y "27a5dea06b36b04a0a9966774b290868f0fc40fd" [
            s."safe-buffer@^5.0.1"
          ];
          "tunnel-agent@^0.6.0" = s."tunnel-agent@0.6.0";
          "tunnel-agent@~0.4.0" = s."tunnel-agent@0.4.3";
          "tunnel-agent@~0.4.1" = s."tunnel-agent@0.4.3";
          "tweetnacl@0.14.5" = f "tweetnacl" "0.14.5" y "5ae68177f192d4456269d108afa93ff8743f4f64" [];
          "tweetnacl@^0.14.3" = s."tweetnacl@0.14.5";
          "tweetnacl@~0.14.0" = s."tweetnacl@0.14.5";
          "type-check@0.3.2" = f "type-check" "0.3.2" y "5884cab512cf1d355e3fb784f30804b2b520db72" [
            s."prelude-ls@~1.1.2"
          ];
          "type-check@~0.3.2" = s."type-check@0.3.2";
          "type-detect@4.0.8" = f "type-detect" "4.0.8" y "7646fb5f18871cfbb7749e69bd39a6388eb7450c" [];
          "type-detect@^4.0.0" = s."type-detect@4.0.8";
          "type-is@1.6.14" = f "type-is" "1.6.14" y "e219639c17ded1ca0789092dd54a03826b817cb2" [
            s."media-typer@0.3.0"
            s."mime-types@~2.1.13"
          ];
          "type-is@1.6.15" = f "type-is" "1.6.15" y "cab10fb4909e441c82842eafe1ad646c81804410" [
            s."media-typer@0.3.0"
            s."mime-types@~2.1.15"
          ];
          "type-is@~1.6.13" = s."type-is@1.6.14";
          "type-is@~1.6.14" = s."type-is@1.6.15";
          "type-is@~1.6.15" = s."type-is@1.6.15";
          "typedarray-to-buffer@3.1.2" = f "typedarray-to-buffer" "3.1.2" y "1017b32d984ff556eba100f501589aba1ace2e04" [
            s."is-typedarray@^1.0.0"
          ];
          "typedarray-to-buffer@^3.1.2" = s."typedarray-to-buffer@3.1.2";
          "typedarray@0.0.6" = f "typedarray" "0.0.6" y "867ac74e3864187b1d3d47d996a78ec5c8830777" [];
          "typedarray@^0.0.6" = s."typedarray@0.0.6";
          "typedarray@~0.0.5" = s."typedarray@0.0.6";
          "ua-parser-js@0.7.12" = f "ua-parser-js" "0.7.12" y "04c81a99bdd5dc52263ea29d24c6bf8d4818a4bb" [];
          "ua-parser-js@^0.7.9" = s."ua-parser-js@0.7.12";
          "uglify-js@2.7.5" = f "uglify-js" "2.7.5" y "4612c0c7baaee2ba7c487de4904ae122079f2ca8" [
            s."async@~0.2.6"
            s."source-map@~0.5.1"
            s."uglify-to-browserify@~1.0.0"
            s."yargs@~3.10.0"
          ];
          "uglify-js@3.3.10" = f "uglify-js" "3.3.10" y "8e47821d4cf28e14c1826a0078ba0825ed094da8" [
            s."commander@~2.14.1"
            s."source-map@~0.6.1"
          ];
          "uglify-js@3.3.x" = s."uglify-js@3.3.10";
          "uglify-js@~2.7.3" = s."uglify-js@2.7.5";
          "uglify-to-browserify@1.0.2" = f "uglify-to-browserify" "1.0.2" y "6e0924d6bda6b5afe349e39a6d632850a0f882b7" [];
          "uglify-to-browserify@~1.0.0" = s."uglify-to-browserify@1.0.2";
          "uid-number@0.0.6" = f "uid-number" "0.0.6" y "0ea10e8035e8eb5b8e4449f06da1c730663baa81" [];
          "uid-number@~0.0.6" = s."uid-number@0.0.6";
          "uid@0.0.2" = f "uid" "0.0.2" y "5e4a5d4b78138b4f70f89fd3c76fc59aa9d2f103" [];
          "ultron@1.0.2" = f "ultron" "1.0.2" y "ace116ab557cd197386a4e88f4685378c8b2e4fa" [];
          "ultron@1.0.x" = s."ultron@1.0.2";
          "ultron@1.1.1" = f "ultron" "1.1.1" y "9fe1536a10a664a65266a1e3ccf85fd36302bc9c" [];
          "ultron@~1.1.0" = s."ultron@1.1.1";
          "unbzip2-stream@1.2.5" = f "unbzip2-stream" "1.2.5" y "73a033a567bbbde59654b193c44d48a7e4f43c47" [
            s."buffer@^3.0.1"
            s."through@^2.3.6"
          ];
          "unbzip2-stream@^1.0.9" = s."unbzip2-stream@1.2.5";
          "unc-path-regex@0.1.2" = f "unc-path-regex" "0.1.2" y "e73dd3d7b0d7c5ed86fbac6b0ae7d8c6a69d50fa" [];
          "unc-path-regex@^0.1.0" = s."unc-path-regex@0.1.2";
          "undefsafe@0.0.3" = f "undefsafe" "0.0.3" y "ecca3a03e56b9af17385baac812ac83b994a962f" [];
          "underscore@1.8.3" = f "underscore" "1.8.3" y "4f3fb53b106e6097fcf9cb4109f2a5e9bdfa5022" [];
          "uniq@1.0.1" = f "uniq" "1.0.1" y "b31c5ae8254844a3a8281541ce2b04b865a734ff" [];
          "uniq@^1.0.1" = s."uniq@1.0.1";
          "uniqid@4.1.1" = f "uniqid" "4.1.1" y "89220ddf6b751ae52b5f72484863528596bb84c1" [
            s."macaddress@^0.2.8"
          ];
          "uniqid@^4.0.0" = s."uniqid@4.1.1";
          "uniqs@2.0.0" = f "uniqs" "2.0.0" y "ffede4b36b25290696e6e165d4a59edb998e6b02" [];
          "uniqs@^2.0.0" = s."uniqs@2.0.0";
          "universalify@0.1.1" = f "universalify" "0.1.1" y "fa71badd4437af4c148841e3b3b165f9e9e590b7" [];
          "universalify@^0.1.0" = s."universalify@0.1.1";
          "unorm@1.4.1" = f "unorm" "1.4.1" y "364200d5f13646ca8bcd44490271335614792300" [];
          "unorm@^1.3.3" = s."unorm@1.4.1";
          "unpipe@1.0.0" = f "unpipe" "1.0.0" y "b2bf4ee8514aae6165b4817829d21b2ef49904ec" [];
          "unpipe@~1.0.0" = s."unpipe@1.0.0";
          "untildify@2.1.0" = f "untildify" "2.1.0" y "17eb2807987f76952e9c0485fc311d06a826a2e0" [
            s."os-homedir@^1.0.0"
          ];
          "untildify@^2.0.0" = s."untildify@2.1.0";
          "update-notifier@0.5.0" = f "update-notifier" "0.5.0" y "07b5dc2066b3627ab3b4f530130f7eddda07a4cc" [
            s."chalk@^1.0.0"
            s."configstore@^1.0.0"
            s."is-npm@^1.0.0"
            s."latest-version@^1.0.0"
            s."repeating@^1.1.2"
            s."semver-diff@^2.0.0"
            s."string-length@^1.0.0"
          ];
          "upper-case@1.1.3" = f "upper-case" "1.1.3" y "f6b4501c2ec4cdd26ba78be7222961de77621598" [];
          "upper-case@^1.0.3" = s."upper-case@1.1.3";
          "upper-case@^1.1.1" = s."upper-case@1.1.3";
          "urix@0.1.0" = f "urix" "0.1.0" y "da937f7a62e21fec1fd18d49b35c2935067a6c72" [];
          "urix@^0.1.0" = s."urix@0.1.0";
          "urix@~0.1.0" = s."urix@0.1.0";
          "url-loader@0.5.7" = f "url-loader" "0.5.7" y "67e8779759f8000da74994906680c943a9b0925d" [
            s."loader-utils@0.2.x"
            s."mime@1.2.x"
          ];
          "url-loader@0.5.8" = f "url-loader" "0.5.8" y "b9183b1801e0f847718673673040bc9dc1c715c5" [
            s."loader-utils@^1.0.2"
            s."mime@1.3.x"
          ];
          "url-loader@^0.5.7" = s."url-loader@0.5.7";
          "url-parse-lax@1.0.0" = f "url-parse-lax" "1.0.0" y "7af8f303645e9bd79a272e7a14ac68bc0609da73" [
            s."prepend-http@^1.0.1"
          ];
          "url-parse-lax@^1.0.0" = s."url-parse-lax@1.0.0";
          "url-set-query@1.0.0" = f "url-set-query" "1.0.0" y "016e8cfd7c20ee05cafe7795e892bd0702faa339" [];
          "url-set-query@^1.0.0" = s."url-set-query@1.0.0";
          "url-to-options@1.0.1" = f "url-to-options" "1.0.1" y "1505a03a289a48cbd7a434efbaeec5055f5633a9" [];
          "url-to-options@^1.0.1" = s."url-to-options@1.0.1";
          "url@0.11.0" = f "url" "0.11.0" y "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1" [
            s."punycode@1.3.2"
            s."querystring@0.2.0"
          ];
          "url@^0.11.0" = s."url@0.11.0";
          "url@~0.11.0" = s."url@0.11.0";
          "user-home@1.1.1" = f "user-home" "1.1.1" y "2b5be23a32b63a7c9deb8d0f28d485724a3df190" [];
          "user-home@2.0.0" = f "user-home" "2.0.0" y "9c70bfd8169bc1dcbf48604e0f04b8b49cde9e9f" [
            s."os-homedir@^1.0.0"
          ];
          "user-home@^1.1.1" = s."user-home@1.1.1";
          "user-home@^2.0.0" = s."user-home@2.0.0";
          "utf8-byte-length@1.0.4" = f "utf8-byte-length" "1.0.4" y "f45f150c4c66eee968186505ab93fcbb8ad6bf61" [];
          "utf8-byte-length@^1.0.1" = s."utf8-byte-length@1.0.4";
          "utf8@2.1.1" = f "utf8" "2.1.1" y "2e01db02f7d8d0944f77104f1609eb0c304cf768" [];
          "util-arity@1.1.0" = f "util-arity" "1.1.0" y "59d01af1fdb3fede0ac4e632b0ab5f6ce97c9330" [];
          "util-arity@^1.0.2" = s."util-arity@1.1.0";
          "util-deprecate@1.0.2" = f "util-deprecate" "1.0.2" y "450d4dc9fa70de732762fbd2d4a28981419a0ccf" [];
          "util-deprecate@~1.0.1" = s."util-deprecate@1.0.2";
          "util@0.10.3" = f "util" "0.10.3" y "7afb1afe50805246489e3db7fe0ed379336ac0f9" [
            s."inherits@2.0.1"
          ];
          "util@^0.10.3" = s."util@0.10.3";
          "utils-merge@1.0.0" = f "utils-merge" "1.0.0" y "0294fb922bb9375153541c4f7096231f287c8af8" [];
          "uuid@2.0.1" = f "uuid" "2.0.1" y "c2a30dedb3e535d72ccf82e343941a50ba8533ac" [];
          "uuid@2.0.3" = f "uuid" "2.0.3" y "67e2e863797215530dff318e5bf9dcebfd47b21a" [];
          "uuid@3.0.1" = f "uuid" "3.0.1" y "6544bba2dfda8c1cf17e629a3a305e2bb1fee6c1" [];
          "uuid@3.2.1" = f "uuid" "3.2.1" y "12c528bb9d58d0b9265d9a2f6f0fe8be17ff1f14" [];
          "uuid@^2.0.1" = s."uuid@2.0.3";
          "uuid@^2.0.3" = s."uuid@2.0.3";
          "uuid@^3.0.0" = s."uuid@3.0.1";
          "uuid@^3.1.0" = s."uuid@3.2.1";
          "v8-debug@0.7.7" = f "v8-debug" "0.7.7" y "c0a14e7d2957209da2508f63a251ce3ffeeb4935" [
            s."nan@^2.3.2"
            s."node-pre-gyp@^0.6.5"
          ];
          "v8-debug@^0.7.7" = s."v8-debug@0.7.7";
          "v8-debug@~0.7.1" = s."v8-debug@0.7.7";
          "v8-profiler@5.6.5" = g "v8-profiler.git" "5.6.5" "https://github.com/enlight/v8-profiler.git" "dc3a4e15f06dd6eaca705e69e235d21d5962eaf5" "0ab7zaa5wnv4wdmfhm90q67m3jzp2kxpfn8f3wix9x1dlr3l5a6s" [
            s."nan@^2.3.2"
            s."node-pre-gyp@^0.6.5"
          ];
          "v8-profiler@git+https://github.com/enlight/v8-profiler.git#v5.6.5-electron-v1.3" = s."v8-profiler@5.6.5";
          "v8-profiler@~5.6.0" = s."v8-profiler@5.6.5";
          "v8flags@2.0.11" = f "v8flags" "2.0.11" y "bca8f30f0d6d60612cc2c00641e6962d42ae6881" [
            s."user-home@^1.1.1"
          ];
          "v8flags@^2.0.10" = s."v8flags@2.0.11";
          "validate-npm-package-license@3.0.1" = f "validate-npm-package-license" "3.0.1" y "2804babe712ad3379459acfbe24746ab2c303fbc" [
            s."spdx-correct@~1.0.0"
            s."spdx-expression-parse@~1.0.0"
          ];
          "validate-npm-package-license@^3.0.1" = s."validate-npm-package-license@3.0.1";
          "validator@6.3.0" = f "validator" "6.3.0" y "47ce23ed8d4eaddfa9d4b8ef0071b6cf1078d7c8" [];
          "validator@9.1.2" = f "validator" "9.1.2" y "5711b6413f78bd9d56003130c81b47c39e86546c" [];
          "validator@~9.1.1" = s."validator@9.1.2";
          "vary@1.1.0" = f "vary" "1.1.0" y "e1e5affbbd16ae768dd2674394b9ad3022653140" [];
          "vary@1.1.2" = f "vary" "1.1.2" y "2299f02c6ded30d4a5961b0b9f74524a18f634fc" [];
          "vary@^1" = s."vary@1.1.2";
          "vary@~1.1.0" = s."vary@1.1.0";
          "vendors@1.0.1" = f "vendors" "1.0.1" y "37ad73c8ee417fb3d580e785312307d274847f22" [];
          "vendors@^1.0.0" = s."vendors@1.0.1";
          "verror@1.10.0" = f "verror" "1.10.0" y "3a105ca17053af55d6e270c1f8288682e18da400" [
            s."assert-plus@^1.0.0"
            s."core-util-is@1.0.2"
            s."extsprintf@^1.2.0"
          ];
          "verror@1.3.6" = f "verror" "1.3.6" y "cff5df12946d297d2baaefaa2689e25be01c005c" [
            s."extsprintf@1.0.2"
          ];
          "verror@^1.9.0" = s."verror@1.10.0";
          "vinyl@0.5.3" = f "vinyl" "0.5.3" y "b0455b38fc5e0cf30d4325132e461970c2091cde" [
            s."clone@^1.0.0"
            s."clone-stats@^0.0.1"
            s."replace-ext@0.0.1"
          ];
          "vinyl@^0.5.0" = s."vinyl@0.5.3";
          "vm-browserify@0.0.4" = f "vm-browserify" "0.0.4" y "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73" [
            s."indexof@0.0.1"
          ];
          "warning@3.0.0" = f "warning" "3.0.0" y "32e5377cb572de4ab04753bdf8821c01ed605b7c" [
            s."loose-envify@^1.0.0"
          ];
          "warning@^3.0.0" = s."warning@3.0.0";
          "watchpack@0.2.9" = f "watchpack" "0.2.9" y "62eaa4ab5e5ba35fdfc018275626e3c0f5e3fb0b" [
            s."async@^0.9.0"
            s."chokidar@^1.0.0"
            s."graceful-fs@^4.1.2"
          ];
          "watchpack@^0.2.1" = s."watchpack@0.2.9";
          "wdio-dot-reporter@0.0.9" = f "wdio-dot-reporter" "0.0.9" y "929b2adafd49d6b0534fda068e87319b47e38fe5" [];
          "wdio-dot-reporter@~0.0.8" = s."wdio-dot-reporter@0.0.9";
          "web3-bzz@1.0.0-beta.30" = f "web3-bzz" "1.0.0-beta.30" y "2434da183c239aaaa5c013f62307429ea91dd706" [
            s."got@7.1.0"
            s."swarm-js@0.1.37"
            s."underscore@1.8.3"
          ];
          "web3-core-helpers@1.0.0-beta.30" = f "web3-core-helpers" "1.0.0-beta.30" y "a000cee3f0a09eea13d74b5730335d4635fe1f2f" [
            s."underscore@1.8.3"
            s."web3-eth-iban@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-core-method@1.0.0-beta.30" = f "web3-core-method" "1.0.0-beta.30" y "8dd6ff789e8d1563b8786d13a78c7facefae471c" [
            s."underscore@1.8.3"
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-core-promievent@1.0.0-beta.30"
            s."web3-core-subscriptions@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-core-promievent@1.0.0-beta.30" = f "web3-core-promievent" "1.0.0-beta.30" y "6205192bfb097441132226a5939ec5aed3a8a291" [
            s."bluebird@3.3.1"
            s."eventemitter3@1.1.1"
          ];
          "web3-core-requestmanager@1.0.0-beta.30" = f "web3-core-requestmanager" "1.0.0-beta.30" y "6ee56fb8a6cb85fd01b3080854f50d64e52240c6" [
            s."underscore@1.8.3"
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-providers-http@1.0.0-beta.30"
            s."web3-providers-ipc@1.0.0-beta.30"
            s."web3-providers-ws@1.0.0-beta.30"
          ];
          "web3-core-subscriptions@1.0.0-beta.30" = f "web3-core-subscriptions" "1.0.0-beta.30" y "31652c75356c3f67e5a19cd14b8d314bad4e2127" [
            s."eventemitter3@1.1.1"
            s."underscore@1.8.3"
            s."web3-core-helpers@1.0.0-beta.30"
          ];
          "web3-core@1.0.0-beta.30" = f "web3-core" "1.0.0-beta.30" y "f75f4d3b85be74c7674637921c3e013bc5d27679" [
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-core-method@1.0.0-beta.30"
            s."web3-core-requestmanager@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-eth-abi@1.0.0-beta.30" = f "web3-eth-abi" "1.0.0-beta.30" y "6ea52c999a8505b47c2f88ba61d2a680a1066409" [
            s."bn.js@4.11.6"
            s."underscore@1.8.3"
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-eth-accounts@1.0.0-beta.30" = f "web3-eth-accounts" "1.0.0-beta.30" y "8f0a1b342c4283812372242a6e2df268887b3b70" [
            s."bluebird@3.3.1"
            s."crypto-browserify@^3.12.0"
            s."eth-lib@0.2.7"
            s."scrypt.js@0.2.0"
            s."underscore@1.8.3"
            s."uuid@2.0.1"
            s."web3-core@1.0.0-beta.30"
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-core-method@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-eth-contract@1.0.0-beta.30" = f "web3-eth-contract" "1.0.0-beta.30" y "d7eba2385084dff3c75aac48235af2c8d2d6a258" [
            s."underscore@1.8.3"
            s."web3-core@1.0.0-beta.30"
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-core-method@1.0.0-beta.30"
            s."web3-core-promievent@1.0.0-beta.30"
            s."web3-core-subscriptions@1.0.0-beta.30"
            s."web3-eth-abi@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-eth-iban@1.0.0-beta.30" = f "web3-eth-iban" "1.0.0-beta.30" y "3b080a5c4da1fa37477b17e4c900781b92150645" [
            s."bn.js@^4.11.6"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-eth-personal@1.0.0-beta.30" = f "web3-eth-personal" "1.0.0-beta.30" y "8bd4ef40b3b5f841dd3a8b97873d9dc791caf748" [
            s."web3-core@1.0.0-beta.30"
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-core-method@1.0.0-beta.30"
            s."web3-net@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-eth@1.0.0-beta.30" = f "web3-eth" "1.0.0-beta.30" y "029b15e14cb608b9cfe02603b504d651870f0501" [
            s."underscore@1.8.3"
            s."web3-core@1.0.0-beta.30"
            s."web3-core-helpers@1.0.0-beta.30"
            s."web3-core-method@1.0.0-beta.30"
            s."web3-core-subscriptions@1.0.0-beta.30"
            s."web3-eth-abi@1.0.0-beta.30"
            s."web3-eth-accounts@1.0.0-beta.30"
            s."web3-eth-contract@1.0.0-beta.30"
            s."web3-eth-iban@1.0.0-beta.30"
            s."web3-eth-personal@1.0.0-beta.30"
            s."web3-net@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-net@1.0.0-beta.30" = f "web3-net" "1.0.0-beta.30" y "0a352ede296e6d4b7f88b67aa474e49703de73bf" [
            s."web3-core@1.0.0-beta.30"
            s."web3-core-method@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "web3-providers-http@1.0.0-beta.30" = f "web3-providers-http" "1.0.0-beta.30" y "cda8d9133c6f31d1a812dc5a42af00cbea98cd86" [
            s."web3-core-helpers@1.0.0-beta.30"
            s."xhr2@0.1.4"
          ];
          "web3-providers-ipc@1.0.0-beta.30" = f "web3-providers-ipc" "1.0.0-beta.30" y "ee2d8d18a3f120b777044a56e67e0aee20854587" [
            s."oboe@2.1.3"
            s."underscore@1.8.3"
            s."web3-core-helpers@1.0.0-beta.30"
          ];
          "web3-providers-ws@1.0.0-beta.30" = f "web3-providers-ws" "1.0.0-beta.30" y "9ae69a9ead8a8761f86379fa347b6db5ae44b12d" [
            s."underscore@1.8.3"
            s."web3-core-helpers@1.0.0-beta.30"
            s."websocket@git://github.com/frozeman/WebSocket-Node.git#browserifyCompatible"
          ];
          "web3-shh@1.0.0-beta.30" = f "web3-shh" "1.0.0-beta.30" y "2bfe3220d958ff4ca592017790852bc57b7b0ca7" [
            s."web3-core@1.0.0-beta.30"
            s."web3-core-method@1.0.0-beta.30"
            s."web3-core-subscriptions@1.0.0-beta.30"
            s."web3-net@1.0.0-beta.30"
          ];
          "web3-utils@1.0.0-beta.30" = f "web3-utils" "1.0.0-beta.30" y "eae408cc8d6d6fecc8d5097cfead51773f231ff9" [
            s."bn.js@4.11.6"
            s."eth-lib@^0.1.27"
            s."ethjs-unit@0.1.6"
            s."number-to-bn@1.7.0"
            s."randomhex@0.1.5"
            s."underscore@1.8.3"
            s."utf8@2.1.1"
          ];
          "web3@1.0.0-beta.30" = f "web3" "1.0.0-beta.30" y "ad3e761845aeb2f40a7760cde75793773a431ecd" [
            s."web3-bzz@1.0.0-beta.30"
            s."web3-core@1.0.0-beta.30"
            s."web3-eth@1.0.0-beta.30"
            s."web3-eth-personal@1.0.0-beta.30"
            s."web3-net@1.0.0-beta.30"
            s."web3-shh@1.0.0-beta.30"
            s."web3-utils@1.0.0-beta.30"
          ];
          "webdriverio@4.10.2" = f "webdriverio" "4.10.2" y "0d28622802c966015afe34b3ac566dc339f22e43" [
            s."archiver@~2.1.0"
            s."babel-runtime@^6.26.0"
            s."css-parse@~2.0.0"
            s."css-value@~0.0.1"
            s."deepmerge@~2.0.1"
            s."ejs@~2.5.6"
            s."gaze@~1.1.2"
            s."glob@~7.1.1"
            s."inquirer@~3.3.0"
            s."json-stringify-safe@~5.0.1"
            s."mkdirp@~0.5.1"
            s."npm-install-package@~2.1.0"
            s."optimist@~0.6.1"
            s."q@~1.5.0"
            s."request@~2.83.0"
            s."rgb2hex@~0.1.0"
            s."safe-buffer@~5.1.1"
            s."supports-color@~5.0.0"
            s."url@~0.11.0"
            s."validator@~9.1.1"
            s."wdio-dot-reporter@~0.0.8"
            s."wgxpath@~1.0.0"
          ];
          "webdriverio@4.9.10" = f "webdriverio" "4.9.10" y "6e1116c70d021f0ca8baaa5c567b5ed337497cd3" [
            s."archiver@~2.1.0"
            s."babel-runtime@^6.26.0"
            s."css-parse@~2.0.0"
            s."css-value@~0.0.1"
            s."deepmerge@~2.0.1"
            s."ejs@~2.5.6"
            s."gaze@~1.1.2"
            s."glob@~7.1.1"
            s."inquirer@~3.3.0"
            s."json-stringify-safe@~5.0.1"
            s."mkdirp@~0.5.1"
            s."npm-install-package@~2.1.0"
            s."optimist@~0.6.1"
            s."q@~1.5.0"
            s."request@~2.83.0"
            s."rgb2hex@~0.1.0"
            s."safe-buffer@~5.1.1"
            s."supports-color@~5.0.0"
            s."url@~0.11.0"
            s."validator@~9.1.1"
            s."wdio-dot-reporter@~0.0.8"
            s."wgxpath@~1.0.0"
          ];
          "webdriverio@^4.8.0" = s."webdriverio@4.10.2";
          "webidl-conversions@3.0.1" = f "webidl-conversions" "3.0.1" y "24534275e2a7bc6be7bc86611cc16ae0a5654871" [];
          "webidl-conversions@^3.0.0" = s."webidl-conversions@3.0.1";
          "webidl-conversions@^3.0.1" = s."webidl-conversions@3.0.1";
          "webpack-core@0.6.9" = f "webpack-core" "0.6.9" y "fc571588c8558da77be9efb6debdc5a3b172bdc2" [
            s."source-list-map@~0.1.7"
            s."source-map@~0.4.1"
          ];
          "webpack-core@~0.6.9" = s."webpack-core@0.6.9";
          "webpack-dev-middleware@1.10.1" = f "webpack-dev-middleware" "1.10.1" y "c6b4cf428139cf1aefbe06a0c00fdb4f8da2f893" [
            s."memory-fs@~0.4.1"
            s."mime@^1.3.4"
            s."path-is-absolute@^1.0.0"
            s."range-parser@^1.0.3"
          ];
          "webpack-dev-middleware@1.9.0" = f "webpack-dev-middleware" "1.9.0" y "a1c67a3dfd8a5c5d62740aa0babe61758b4c84aa" [
            s."memory-fs@~0.4.1"
            s."mime@^1.3.4"
            s."path-is-absolute@^1.0.0"
            s."range-parser@^1.0.3"
          ];
          "webpack-dev-middleware@^1.6.0" = s."webpack-dev-middleware@1.9.0";
          "webpack-hot-middleware@2.15.0" = f "webpack-hot-middleware" "2.15.0" y "71995af7c0025f109df482f86f1e10379526d026" [
            s."ansi-html@0.0.6"
            s."html-entities@^1.2.0"
            s."querystring@^0.2.0"
            s."strip-ansi@^3.0.0"
          ];
          "webpack-hot-middleware@2.17.1" = f "webpack-hot-middleware" "2.17.1" y "0c8fbf6f93ff29c095d684b07ab6d6c0f2f951d7" [
            s."ansi-html@0.0.7"
            s."html-entities@^1.2.0"
            s."querystring@^0.2.0"
            s."strip-ansi@^3.0.0"
          ];
          "webpack-hot-middleware@^2.13.2" = s."webpack-hot-middleware@2.15.0";
          "webpack-merge@0.14.1" = f "webpack-merge" "0.14.1" y "d6bfe6d9360a024e1e7f8e6383ae735f1737cd23" [
            s."lodash.find@^3.2.1"
            s."lodash.isequal@^4.2.0"
            s."lodash.isplainobject@^3.2.0"
            s."lodash.merge@^3.3.2"
          ];
          "webpack-sources@0.1.3" = f "webpack-sources" "0.1.3" y "15ce2fb79d0a1da727444ba7c757bf164294f310" [
            s."source-list-map@~0.1.0"
            s."source-map@~0.5.3"
          ];
          "webpack-sources@^0.1.0" = s."webpack-sources@0.1.3";
          "webpack-validator@2.3.0" = f "webpack-validator" "2.3.0" y "235c6ea69aa930a90262bbbf9bd45ad8bd497310" [
            s."basename@0.1.2"
            s."chalk@1.1.3"
            s."commander@2.9.0"
            s."common-tags@0.1.1"
            s."cross-env@^3.1.1"
            s."find-node-modules@^1.0.1"
            s."joi@9.0.0-0"
            s."lodash@4.11.1"
            s."npmlog@2.0.3"
            s."shelljs@0.7.0"
            s."yargs@4.7.1"
          ];
          "webpack@1.14.0" = f "webpack" "1.14.0" y "54f1ffb92051a328a5b2057d6ae33c289462c823" [
            s."acorn@^3.0.0"
            s."async@^1.3.0"
            s."clone@^1.0.2"
            s."enhanced-resolve@~0.9.0"
            s."interpret@^0.6.4"
            s."loader-utils@^0.2.11"
            s."memory-fs@~0.3.0"
            s."mkdirp@~0.5.0"
            s."node-libs-browser@^0.7.0"
            s."optimist@~0.6.0"
            s."supports-color@^3.1.0"
            s."tapable@~0.1.8"
            s."uglify-js@~2.7.3"
            s."watchpack@^0.2.1"
            s."webpack-core@~0.6.9"
          ];
          "webpack@^1.13.1" = s."webpack@1.14.0";
          "websocket@1.0.24" = g "WebSocket-Node.git" "1.0.24" "git://github.com/frozeman/WebSocket-Node.git" "7004c39c42ac98875ab61126e5b4a925430f592c" "14dh6cwlzpzzi8mc28b1l88b7h7j5yak1q6g7mb7z5q33bx88zx9" [
            s."debug@^2.2.0"
            s."nan@^2.3.3"
            s."typedarray-to-buffer@^3.1.2"
            s."yaeti@^0.0.6"
          ];
          "websocket@git://github.com/frozeman/WebSocket-Node.git#browserifyCompatible" = s."websocket@1.0.24";
          "wgxpath@1.0.0" = f "wgxpath" "1.0.0" y "eef8a4b9d558cc495ad3a9a2b751597ecd9af690" [];
          "wgxpath@~1.0.0" = s."wgxpath@1.0.0";
          "whatwg-encoding@1.0.1" = f "whatwg-encoding" "1.0.1" y "3c6c451a198ee7aec55b1ec61d0920c67801a5f4" [
            s."iconv-lite@0.4.13"
          ];
          "whatwg-encoding@^1.0.1" = s."whatwg-encoding@1.0.1";
          "whatwg-fetch@2.0.1" = f "whatwg-fetch" "2.0.1" y "078b9461bbe91cea73cbce8bb122a05f9e92b772" [];
          "whatwg-fetch@>=0.10.0" = s."whatwg-fetch@2.0.1";
          "whatwg-url@4.2.0" = f "whatwg-url" "4.2.0" y "abf1a3f5ff4bc2005b3f0c2119382631789d8e44" [
            s."tr46@~0.0.3"
            s."webidl-conversions@^3.0.0"
          ];
          "whatwg-url@^4.1.0" = s."whatwg-url@4.2.0";
          "whet.extend@0.9.9" = f "whet.extend" "0.9.9" y "f877d5bf648c97e5aa542fadc16d6a259b9c11a1" [];
          "whet.extend@~0.9.9" = s."whet.extend@0.9.9";
          "which-module@1.0.0" = f "which-module" "1.0.0" y "bba63ca861948994ff307736089e3b96026c2a4f" [];
          "which-module@^1.0.0" = s."which-module@1.0.0";
          "which@1" = s."which@1.2.12";
          "which@1.2.12" = f "which" "1.2.12" y "de67b5e450269f194909ef23ece4ebe416fa1192" [
            s."isexe@^1.1.1"
          ];
          "which@^1.0.7" = s."which@1.2.12";
          "which@^1.1.1" = s."which@1.2.12";
          "which@^1.2.12" = s."which@1.2.12";
          "which@^1.2.9" = s."which@1.2.12";
          "wide-align@1.1.0" = f "wide-align" "1.1.0" y "40edde802a71fea1f070da3e62dcda2e7add96ad" [
            s."string-width@^1.0.1"
          ];
          "wide-align@^1.1.0" = s."wide-align@1.1.0";
          "win-detect-browsers@1.0.2" = f "win-detect-browsers" "1.0.2" y "f45f10d141086c5d94ae14c03b2098440a7e71b0" [
            s."after@^0.8.1"
            s."debug@^2.1.0"
            s."which@^1.0.7"
            s."xtend@^4.0.0"
            s."yargs@^1.3.3"
          ];
          "win-detect-browsers@^1.0.1" = s."win-detect-browsers@1.0.2";
          "window-size@0.1.0" = f "window-size" "0.1.0" y "5438cd2ea93b202efa3a19fe8887aee7c94f9c9d" [];
          "window-size@0.1.4" = f "window-size" "0.1.4" y "f8e1aa1ee5a53ec5bf151ffa09742a6ad7697876" [];
          "window-size@0.2.0" = f "window-size" "0.2.0" y "b4315bb4214a3d7058ebeee892e13fa24d98b075" [];
          "window-size@^0.1.4" = s."window-size@0.1.4";
          "window-size@^0.2.0" = s."window-size@0.2.0";
          "winston-papertrail@1.0.4" = f "winston-papertrail" "1.0.4" y "95b40e2f518cf12975207b272caab08c8ea448f9" [
            s."glossy@^0.1.7"
          ];
          "winston@2.3.1" = f "winston" "2.3.1" y "0b48420d978c01804cf0230b648861598225a119" [
            s."async@~1.0.0"
            s."colors@1.0.x"
            s."cycle@1.0.x"
            s."eyes@0.1.x"
            s."isstream@0.1.x"
            s."stack-trace@0.0.x"
          ];
          "wordwrap@0.0.2" = f "wordwrap" "0.0.2" y "b79669bb42ecb409f83d583cad52ca17eaa1643f" [];
          "wordwrap@0.0.3" = f "wordwrap" "0.0.3" y "a3d5da6cd5c0bc0008d37234bbaf1bed63059107" [];
          "wordwrap@1.0.0" = f "wordwrap" "1.0.0" y "27584810891456a4171c8d0226441ade90cbcaeb" [];
          "wordwrap@~0.0.2" = s."wordwrap@0.0.3";
          "wordwrap@~1.0.0" = s."wordwrap@1.0.0";
          "wrap-ansi@2.1.0" = f "wrap-ansi" "2.1.0" y "d8fc3d284dd05794fe84973caecdd1cf824fdd85" [
            s."string-width@^1.0.1"
            s."strip-ansi@^3.0.1"
          ];
          "wrap-ansi@^2.0.0" = s."wrap-ansi@2.1.0";
          "wrappy@1" = s."wrappy@1.0.2";
          "wrappy@1.0.2" = f "wrappy" "1.0.2" y "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f" [];
          "write-file-atomic@1.3.1" = f "write-file-atomic" "1.3.1" y "7d45ba32316328dd1ec7d90f60ebc0d845bb759a" [
            s."graceful-fs@^4.1.11"
            s."imurmurhash@^0.1.4"
            s."slide@^1.1.5"
          ];
          "write-file-atomic@2.3.0" = f "write-file-atomic" "2.3.0" y "1ff61575c2e2a4e8e510d6fa4e243cce183999ab" [
            s."graceful-fs@^4.1.11"
            s."imurmurhash@^0.1.4"
            s."signal-exit@^3.0.2"
          ];
          "write-file-atomic@^1.1.2" = s."write-file-atomic@1.3.1";
          "write-file-atomic@^2.3.0" = s."write-file-atomic@2.3.0";
          "write@0.2.1" = f "write" "0.2.1" y "5fc03828e264cea3fe91455476f7a3c566cb0757" [
            s."mkdirp@^0.5.1"
          ];
          "write@^0.2.1" = s."write@0.2.1";
          "ws@1.1.1" = f "ws" "1.1.1" y "082ddb6c641e85d4bb451f03d52f06eabdb1f018" [
            s."options@>=0.0.5"
            s."ultron@1.0.x"
          ];
          "ws@3.3.3" = f "ws" "3.3.3" y "f1cf84fe2d5e901ebce94efaece785f187a228f2" [
            s."async-limiter@~1.0.0"
            s."safe-buffer@~5.1.0"
            s."ultron@~1.1.0"
          ];
          "ws@^1.0.1" = s."ws@1.1.1";
          "ws@^3.0.0" = s."ws@3.3.3";
          "x-default-browser@0.3.1" = f "x-default-browser" "0.3.1" y "7f6194154fd1786cf261e68b5488c47127a04977" [
            s."default-browser-id@^1.0.4"
          ];
          "x-default-browser@~0.3.0" = s."x-default-browser@0.3.1";
          "xdg-basedir@2.0.0" = f "xdg-basedir" "2.0.0" y "edbc903cc385fc04523d966a335504b5504d1bd2" [
            s."os-homedir@^1.0.0"
          ];
          "xdg-basedir@^2.0.0" = s."xdg-basedir@2.0.0";
          "xhr-request-promise@0.1.2" = f "xhr-request-promise" "0.1.2" y "343c44d1ee7726b8648069682d0f840c83b4261d" [
            s."xhr-request@^1.0.1"
          ];
          "xhr-request-promise@^0.1.2" = s."xhr-request-promise@0.1.2";
          "xhr-request@1.1.0" = f "xhr-request" "1.1.0" y "f4a7c1868b9f198723444d82dcae317643f2e2ed" [
            s."buffer-to-arraybuffer@^0.0.5"
            s."object-assign@^4.1.1"
            s."query-string@^5.0.1"
            s."simple-get@^2.7.0"
            s."timed-out@^4.0.1"
            s."url-set-query@^1.0.0"
            s."xhr@^2.0.4"
          ];
          "xhr-request@^1.0.1" = s."xhr-request@1.1.0";
          "xhr2@0.1.4" = f "xhr2" "0.1.4" y "7f87658847716db5026323812f818cadab387a5f" [];
          "xhr@2.4.1" = f "xhr" "2.4.1" y "ba982cced205ae5eec387169ac9dc77ca4853d38" [
            s."global@~4.3.0"
            s."is-function@^1.0.1"
            s."parse-headers@^2.0.0"
            s."xtend@^4.0.0"
          ];
          "xhr@^2.0.4" = s."xhr@2.4.1";
          "xhr@^2.3.3" = s."xhr@2.4.1";
          "xml-char-classes@1.0.0" = f "xml-char-classes" "1.0.0" y "64657848a20ffc5df583a42ad8a277b4512bbc4d" [];
          "xml-char-classes@^1.0.0" = s."xml-char-classes@1.0.0";
          "xml-name-validator@2.0.1" = f "xml-name-validator" "2.0.1" y "4d8b8f1eccd3419aa362061becef515e1e559635" [];
          "xml-name-validator@>= 2.0.1 < 3.0.0" = s."xml-name-validator@2.0.1";
          "xmlbuilder@4.0.0" = f "xmlbuilder" "4.0.0" y "98b8f651ca30aa624036f127d11cc66dc7b907a3" [
            s."lodash@^3.5.0"
          ];
          "xmlbuilder@8.2.2" = f "xmlbuilder" "8.2.2" y "69248673410b4ba42e1a6136551d2922335aa773" [];
          "xmldom@0.1.27" = f "xmldom" "0.1.27" y "d501f97b3bdb403af8ef9ecc20573187aadac0e9" [];
          "xmldom@0.1.x" = s."xmldom@0.1.27";
          "xss-filters@1.2.7" = f "xss-filters" "1.2.7" y "59fa1de201f36f2f3470dcac5f58ccc2830b0a9a" [];
          "xss-filters@^1.2.6" = s."xss-filters@1.2.7";
          "xtend@2.1.2" = f "xtend" "2.1.2" y "6efecc2a4dad8e6962c4901b337ce7ba87b5d28b" [
            s."object-keys@~0.4.0"
          ];
          "xtend@4.0.1" = f "xtend" "4.0.1" y "a5c6d532be656e23db820efb943a1f04998d63af" [];
          "xtend@^4.0.0" = s."xtend@4.0.1";
          "xtend@~2.1.1" = s."xtend@2.1.2";
          "xtend@~4.0.1" = s."xtend@4.0.1";
          "y18n@3.2.1" = f "y18n" "3.2.1" y "6d15fba884c08679c0d77e88e7759e811e07fa41" [];
          "y18n@^3.2.0" = s."y18n@3.2.1";
          "y18n@^3.2.1" = s."y18n@3.2.1";
          "yaeti@0.0.6" = f "yaeti" "0.0.6" y "f26f484d72684cf42bedfb76970aa1608fbf9577" [];
          "yaeti@^0.0.6" = s."yaeti@0.0.6";
          "yallist@2.0.0" = f "yallist" "2.0.0" y "306c543835f09ee1a4cb23b7bce9ab341c91cdd4" [];
          "yallist@^2.0.0" = s."yallist@2.0.0";
          "yargs-parser@2.4.1" = f "yargs-parser" "2.4.1" y "85568de3cf150ff49fa51825f03a8c880ddcc5c4" [
            s."camelcase@^3.0.0"
            s."lodash.assign@^4.0.6"
          ];
          "yargs-parser@3.2.0" = f "yargs-parser" "3.2.0" y "5081355d19d9d0c8c5d81ada908cb4e6d186664f" [
            s."camelcase@^3.0.0"
            s."lodash.assign@^4.1.0"
          ];
          "yargs-parser@5.0.0" = f "yargs-parser" "5.0.0" y "275ecf0d7ffe05c77e64e7c86e4cd94bf0e1228a" [
            s."camelcase@^3.0.0"
          ];
          "yargs-parser@^2.4.0" = s."yargs-parser@2.4.1";
          "yargs-parser@^3.2.0" = s."yargs-parser@3.2.0";
          "yargs-parser@^5.0.0" = s."yargs-parser@5.0.0";
          "yargs@1.3.3" = f "yargs" "1.3.3" y "054de8b61f22eefdb7207059eaef9d6b83fb931a" [];
          "yargs@3.10.0" = f "yargs" "3.10.0" y "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1" [
            s."camelcase@^1.0.2"
            s."cliui@^2.1.0"
            s."decamelize@^1.0.0"
            s."window-size@0.1.0"
          ];
          "yargs@3.32.0" = f "yargs" "3.32.0" y "03088e9ebf9e756b69751611d2a5ef591482c995" [
            s."camelcase@^2.0.1"
            s."cliui@^3.0.3"
            s."decamelize@^1.1.1"
            s."os-locale@^1.4.0"
            s."string-width@^1.0.1"
            s."window-size@^0.1.4"
            s."y18n@^3.2.0"
          ];
          "yargs@4.7.1" = f "yargs" "4.7.1" y "e60432658a3387ff269c028eacde4a512e438dff" [
            s."camelcase@^3.0.0"
            s."cliui@^3.2.0"
            s."decamelize@^1.1.1"
            s."lodash.assign@^4.0.3"
            s."os-locale@^1.4.0"
            s."pkg-conf@^1.1.2"
            s."read-pkg-up@^1.0.1"
            s."require-main-filename@^1.0.1"
            s."set-blocking@^1.0.0"
            s."string-width@^1.0.1"
            s."window-size@^0.2.0"
            s."y18n@^3.2.1"
            s."yargs-parser@^2.4.0"
          ];
          "yargs@5.0.0" = f "yargs" "5.0.0" y "3355144977d05757dbb86d6e38ec056123b3a66e" [
            s."cliui@^3.2.0"
            s."decamelize@^1.1.1"
            s."get-caller-file@^1.0.1"
            s."lodash.assign@^4.2.0"
            s."os-locale@^1.4.0"
            s."read-pkg-up@^1.0.1"
            s."require-directory@^2.1.1"
            s."require-main-filename@^1.0.1"
            s."set-blocking@^2.0.0"
            s."string-width@^1.0.2"
            s."which-module@^1.0.0"
            s."window-size@^0.2.0"
            s."y18n@^3.2.1"
            s."yargs-parser@^3.2.0"
          ];
          "yargs@7.1.0" = f "yargs" "7.1.0" y "6ba318eb16961727f5d284f8ea003e8d6154d0c8" [
            s."camelcase@^3.0.0"
            s."cliui@^3.2.0"
            s."decamelize@^1.1.1"
            s."get-caller-file@^1.0.1"
            s."os-locale@^1.4.0"
            s."read-pkg-up@^1.0.1"
            s."require-directory@^2.1.1"
            s."require-main-filename@^1.0.1"
            s."set-blocking@^2.0.0"
            s."string-width@^1.0.2"
            s."which-module@^1.0.0"
            s."y18n@^3.2.1"
            s."yargs-parser@^5.0.0"
          ];
          "yargs@^1.3.3" = s."yargs@1.3.3";
          "yargs@^3.9.0" = s."yargs@3.32.0";
          "yargs@^4.7.1" = s."yargs@4.7.1";
          "yargs@^5.0.0" = s."yargs@5.0.0";
          "yargs@^7.0.2" = s."yargs@7.1.0";
          "yargs@~3.10.0" = s."yargs@3.10.0";
          "yauzl@2.4.1" = f "yauzl" "2.4.1" y "9528f442dab1b2284e58b4379bb194e22e0c4005" [
            s."fd-slicer@~1.0.1"
          ];
          "yauzl@2.9.1" = f "yauzl" "2.9.1" y "a81981ea70a57946133883f029c5821a89359a7f" [
            s."buffer-crc32@~0.2.3"
            s."fd-slicer@~1.0.1"
          ];
          "yauzl@^2.4.2" = s."yauzl@2.9.1";
          "zip-stream@1.2.0" = f "zip-stream" "1.2.0" y "a8bc45f4c1b49699c6b90198baacaacdbcd4ba04" [
            s."archiver-utils@^1.3.0"
            s."compress-commons@^1.2.0"
            s."lodash@^4.8.0"
            s."readable-stream@^2.0.0"
          ];
          "zip-stream@^1.2.0" = s."zip-stream@1.2.0";
        }

{
  pkgs,
  fetchurl ? pkgs.fetchurl,
  nodePackages ? pkgs.nodePackages,
}:
nodePackages."@angular/cli".override {
  version = "15.2.11";
  src = fetchurl {
    url = "https://registry.npmjs.org/@angular/cli/-/cli-15.2.11.tgz";
    sha512 = "sha512-fsIMvUWVCZM3qQSKZXR0yHTXxvoNrbs/PDUsGhRjWZrfUDHBCzMmKral5x8onMA/KPU9O3JiolKjiKVwzkudJA==";
  };

  dependencies = let
    sources = {
      "@angular-devkit/architect-0.1502.11" = {
        name = "_at_angular-devkit_slash_architect";
        packageName = "@angular-devkit/architect";
        version = "0.1502.11";
        src = fetchurl {
          url = "https://registry.npmjs.org/@angular-devkit/architect/-/architect-0.1502.11.tgz";
          sha512 = "+hkG5UjIaKMRdo6SFLNQs+Cv7yAVeN8ijfDwI2z/mp7/otowuSEy+H3Tii195jfJ8TQ+y1B7svnx2D6O7oOYbQ==";
        };
      };
      "@angular-devkit/core-15.2.11" = {
        name = "_at_angular-devkit_slash_core";
        packageName = "@angular-devkit/core";
        version = "15.2.11";
        src = fetchurl {
          url = "https://registry.npmjs.org/@angular-devkit/core/-/core-15.2.11.tgz";
          sha512 = "zd6QelJ8pOPvz6TsehR0JqixjDjzgEOkKywBJBuwNXY+Nw3MJGayJeWS0UgC+Gk+LoTkpI21RoyaYELkAmD/tw==";
        };
      };
      "@angular-devkit/schematics-15.2.11" = {
        name = "_at_angular-devkit_slash_schematics";
        packageName = "@angular-devkit/schematics";
        version = "15.2.11";
        src = fetchurl {
          url = "https://registry.npmjs.org/@angular-devkit/schematics/-/schematics-15.2.11.tgz";
          sha512 = "Wfj0FO8lcGqOkg7GTYOGUsAHqTS9GMfGXTAGsM/8g0SZI4kaPy/luZSPFtevpFE5PSR6dyWSIC0GgzfavjhJMg==";
        };
      };
      "@gar/promisify-1.1.3" = {
        name = "_at_gar_slash_promisify";
        packageName = "@gar/promisify";
        version = "1.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/@gar/promisify/-/promisify-1.1.3.tgz";
          sha512 = "k2Ty1JcVojjJFwrg/ThKi2ujJ7XNLYaFGNB/bWT9wGR+oSMJHMa5w+CUq6p/pVrKeNNgA7pCqEcjSnHVoqJQFw==";
        };
      };
      "@isaacs/cliui-8.0.2" = {
        name = "_at_isaacs_slash_cliui";
        packageName = "@isaacs/cliui";
        version = "8.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/@isaacs/cliui/-/cliui-8.0.2.tgz";
          sha512 = "O8jcjabXaleOG9DQ0+ARXWZBTfnP4WNAqzuiJK7ll44AmxGKv/J2M4TPjxjY3znBCfvBXFzucm1twdyFybFqEA==";
        };
      };
      "@jridgewell/sourcemap-codec-1.5.0" = {
        name = "_at_jridgewell_slash_sourcemap-codec";
        packageName = "@jridgewell/sourcemap-codec";
        version = "1.5.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.5.0.tgz";
          sha512 = "gv3ZRaISU3fjPAgNsriBRqGWQL6quFx04YMPW/zD8XMLsU32mhCCbfbO6KZFLjvYpCZ8zyDEgqsgf+PwPaM7GQ==";
        };
      };
      "@npmcli/fs-2.1.2" = {
        name = "_at_npmcli_slash_fs";
        packageName = "@npmcli/fs";
        version = "2.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/fs/-/fs-2.1.2.tgz";
          sha512 = "yOJKRvohFOaLqipNtwYB9WugyZKhC/DZC4VYPmpaCzDBrA8YpK3qHZ8/HGscMnE4GqbkLNuVcCnxkeQEdGt6LQ==";
        };
      };
      "@npmcli/fs-3.1.1" = {
        name = "_at_npmcli_slash_fs";
        packageName = "@npmcli/fs";
        version = "3.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/fs/-/fs-3.1.1.tgz";
          sha512 = "q9CRWjpHCMIh5sVyefoD1cA7PkvILqCZsnSOEUUivORLjxCO/Irmue2DprETiNgEqktDBZaM1Bi+jrarx1XdCg==";
        };
      };
      "@npmcli/git-4.1.0" = {
        name = "_at_npmcli_slash_git";
        packageName = "@npmcli/git";
        version = "4.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/git/-/git-4.1.0.tgz";
          sha512 = "9hwoB3gStVfa0N31ymBmrX+GuDGdVA/QWShZVqE0HK2Af+7QGGrCTbZia/SW0ImUTjTne7SP91qxDmtXvDHRPQ==";
        };
      };
      "@npmcli/installed-package-contents-2.1.0" = {
        name = "_at_npmcli_slash_installed-package-contents";
        packageName = "@npmcli/installed-package-contents";
        version = "2.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/installed-package-contents/-/installed-package-contents-2.1.0.tgz";
          sha512 = "c8UuGLeZpm69BryRykLuKRyKFZYJsZSCT4aVY5ds4omyZqJ172ApzgfKJ5eV/r3HgLdUYgFVe54KSFVjKoe27w==";
        };
      };
      "@npmcli/move-file-2.0.1" = {
        name = "_at_npmcli_slash_move-file";
        packageName = "@npmcli/move-file";
        version = "2.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/move-file/-/move-file-2.0.1.tgz";
          sha512 = "mJd2Z5TjYWq/ttPLLGqArdtnC74J6bOzg4rMDnN+p1xTacZ2yPRCk2y0oSWQtygLR9YVQXgOcONrwtnk3JupxQ==";
        };
      };
      "@npmcli/node-gyp-3.0.0" = {
        name = "_at_npmcli_slash_node-gyp";
        packageName = "@npmcli/node-gyp";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/node-gyp/-/node-gyp-3.0.0.tgz";
          sha512 = "gp8pRXC2oOxu0DUE1/M3bYtb1b3/DbJ5aM113+XJBgfXdussRAsX0YOrOhdd8WvnAR6auDBvJomGAkLKA5ydxA==";
        };
      };
      "@npmcli/promise-spawn-6.0.2" = {
        name = "_at_npmcli_slash_promise-spawn";
        packageName = "@npmcli/promise-spawn";
        version = "6.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/promise-spawn/-/promise-spawn-6.0.2.tgz";
          sha512 = "gGq0NJkIGSwdbUt4yhdF8ZrmkGKVz9vAdVzpOfnom+V8PLSmSOVhZwbNvZZS1EYcJN5hzzKBxmmVVAInM6HQLg==";
        };
      };
      "@npmcli/run-script-6.0.2" = {
        name = "_at_npmcli_slash_run-script";
        packageName = "@npmcli/run-script";
        version = "6.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/@npmcli/run-script/-/run-script-6.0.2.tgz";
          sha512 = "NCcr1uQo1k5U+SYlnIrbAh3cxy+OQT1VtqiAbxdymSlptbzBb62AjH2xXgjNCoP073hoa1CfCAcwoZ8k96C4nA==";
        };
      };
      "@schematics/angular-15.2.11" = {
        name = "_at_schematics_slash_angular";
        packageName = "@schematics/angular";
        version = "15.2.11";
        src = fetchurl {
          url = "https://registry.npmjs.org/@schematics/angular/-/angular-15.2.11.tgz";
          sha512 = "z38f9abwfzUGe9TEIggf3igpVf/ylmSlHy1jydAxXbeKv24ejg8m5dYBPH2/MvgUFP6tjHdxjKD56DnOdyKl3g==";
        };
      };
      "@sigstore/bundle-1.1.0" = {
        name = "_at_sigstore_slash_bundle";
        packageName = "@sigstore/bundle";
        version = "1.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@sigstore/bundle/-/bundle-1.1.0.tgz";
          sha512 = "PFutXEy0SmQxYI4texPw3dd2KewuNqv7OuK1ZFtY2fM754yhvG2KdgwIhRnoEE2uHdtdGNQ8s0lb94dW9sELog==";
        };
      };
      "@sigstore/protobuf-specs-0.2.1" = {
        name = "_at_sigstore_slash_protobuf-specs";
        packageName = "@sigstore/protobuf-specs";
        version = "0.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/@sigstore/protobuf-specs/-/protobuf-specs-0.2.1.tgz";
          sha512 = "XTWVxnWJu+c1oCshMLwnKvz8ZQJJDVOlciMfgpJBQbThVjKTCG8dwyhgLngBD2KN0ap9F/gOV8rFDEx8uh7R2A==";
        };
      };
      "@sigstore/sign-1.0.0" = {
        name = "_at_sigstore_slash_sign";
        packageName = "@sigstore/sign";
        version = "1.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@sigstore/sign/-/sign-1.0.0.tgz";
          sha512 = "INxFVNQteLtcfGmcoldzV6Je0sbbfh9I16DM4yJPw3j5+TFP8X6uIiA18mvpEa9yyeycAKgPmOA3X9hVdVTPUA==";
        };
      };
      "@sigstore/tuf-1.0.3" = {
        name = "_at_sigstore_slash_tuf";
        packageName = "@sigstore/tuf";
        version = "1.0.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/@sigstore/tuf/-/tuf-1.0.3.tgz";
          sha512 = "2bRovzs0nJZFlCN3rXirE4gwxCn97JNjMmwpecqlbgV9WcxX7WRuIrgzx/X7Ib7MYRbyUTpBYE0s2x6AmZXnlg==";
        };
      };
      "@tootallnate/once-2.0.0" = {
        name = "_at_tootallnate_slash_once";
        packageName = "@tootallnate/once";
        version = "2.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@tootallnate/once/-/once-2.0.0.tgz";
          sha512 = "XCuKFP5PS55gnMVu3dty8KPatLqUoy/ZYzDzAGCQ8JNFCkLXzmI7vNHCR+XpbZaMWQK/vQubr7PkYq8g470J/A==";
        };
      };
      "@tufjs/canonical-json-1.0.0" = {
        name = "_at_tufjs_slash_canonical-json";
        packageName = "@tufjs/canonical-json";
        version = "1.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@tufjs/canonical-json/-/canonical-json-1.0.0.tgz";
          sha512 = "QTnf++uxunWvG2z3UFNzAoQPHxnSXOwtaI3iJ+AohhV+5vONuArPjJE7aPXPVXfXJsqrVbZBu9b81AJoSd09IQ==";
        };
      };
      "@tufjs/models-1.0.4" = {
        name = "_at_tufjs_slash_models";
        packageName = "@tufjs/models";
        version = "1.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/@tufjs/models/-/models-1.0.4.tgz";
          sha512 = "qaGV9ltJP0EO25YfFUPhxRVK0evXFIAGicsVXuRim4Ed9cjPxYhNnNJ49SFmbeLgtxpslIkX317IgpfcHPVj/A==";
        };
      };
      "@yarnpkg/lockfile-1.1.0" = {
        name = "_at_yarnpkg_slash_lockfile";
        packageName = "@yarnpkg/lockfile";
        version = "1.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/@yarnpkg/lockfile/-/lockfile-1.1.0.tgz";
          sha512 = "GpSwvyXOcOOlV70vbnzjj4fW5xW/FdUF6nQEt1ENy7m4ZCczi1+/buVUPAqmGfqznsORNFzUMjctTIp8a9tuCQ==";
        };
      };
      "abbrev-1.1.1" = {
        name = "abbrev";
        packageName = "abbrev";
        version = "1.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/abbrev/-/abbrev-1.1.1.tgz";
          sha512 = "nne9/IiQ/hzIhY6pdDnbBtz7DjPTKrY00P/zvPSm5pOFkl6xuGrGnXn/VtTNNfNtAfZ9/1RtehkszU9qcTii0Q==";
        };
      };
      "agent-base-6.0.2" = {
        name = "agent-base";
        packageName = "agent-base";
        version = "6.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/agent-base/-/agent-base-6.0.2.tgz";
          sha512 = "RZNwNclF7+MS/8bDg70amg32dyeZGZxiDuQmZxKLAlQjr3jGyLx+4Kkk58UO7D2QdgFIQCovuSuZESne6RG6XQ==";
        };
      };
      "agentkeepalive-4.5.0" = {
        name = "agentkeepalive";
        packageName = "agentkeepalive";
        version = "4.5.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/agentkeepalive/-/agentkeepalive-4.5.0.tgz";
          sha512 = "5GG/5IbQQpC9FpkRGsSvZI5QYeSCzlJHdpBQntCsuTOxhKD8lqKhrleg2Yi7yvMIf82Ycmmqln9U8V9qwEiJew==";
        };
      };
      "aggregate-error-3.1.0" = {
        name = "aggregate-error";
        packageName = "aggregate-error";
        version = "3.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/aggregate-error/-/aggregate-error-3.1.0.tgz";
          sha512 = "4I7Td01quW/RpocfNayFdFVk1qSuoh0E7JrbRJ16nH01HhKFQ88INq9Sd+nd72zqRySlr9BmDA8xlEJ6vJMrYA==";
        };
      };
      "ajv-8.12.0" = {
        name = "ajv";
        packageName = "ajv";
        version = "8.12.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/ajv/-/ajv-8.12.0.tgz";
          sha512 = "sRu1kpcO9yLtYxBKvqfTeh9KzZEwO3STyX1HT+4CaDzC6HpTGYhIhPIzj9XuKU7KYDwnaeh5hcOwjy1QuJzBPA==";
        };
      };
      "ajv-formats-2.1.1" = {
        name = "ajv-formats";
        packageName = "ajv-formats";
        version = "2.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/ajv-formats/-/ajv-formats-2.1.1.tgz";
          sha512 = "Wx0Kx52hxE7C18hkMEggYlEifqWZtYaRgouJor+WMdPnQyEK13vgEWyVNup7SoeeoLMsr4kf5h6dOW11I15MUA==";
        };
      };
      "ansi-colors-4.1.3" = {
        name = "ansi-colors";
        packageName = "ansi-colors";
        version = "4.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/ansi-colors/-/ansi-colors-4.1.3.tgz";
          sha512 = "/6w/C21Pm1A7aZitlI5Ni/2J6FFQN8i1Cvz3kHABAAbw93v/NlvKdVOqz7CCWz/3iv/JplRSEEZ83XION15ovw==";
        };
      };
      "ansi-escapes-4.3.2" = {
        name = "ansi-escapes";
        packageName = "ansi-escapes";
        version = "4.3.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/ansi-escapes/-/ansi-escapes-4.3.2.tgz";
          sha512 = "gKXj5ALrKWQLsYG9jlTRmR/xKluxHV+Z9QEwNIgCfM1/uwPMCuzVVnh5mwTd+OuBZcwSIMbqssNWRm1lE51QaQ==";
        };
      };
      "ansi-regex-5.0.1" = {
        name = "ansi-regex";
        packageName = "ansi-regex";
        version = "5.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
          sha512 = "quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
        };
      };
      "ansi-regex-6.1.0" = {
        name = "ansi-regex";
        packageName = "ansi-regex";
        version = "6.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-6.1.0.tgz";
          sha512 = "7HSX4QQb4CspciLpVFwyRe79O3xsIZDDLER21kERQ71oaPodF8jL725AgJMFAYbooIqolJoRLuM81SpeUkpkvA==";
        };
      };
      "ansi-styles-4.3.0" = {
        name = "ansi-styles";
        packageName = "ansi-styles";
        version = "4.3.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz";
          sha512 = "zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==";
        };
      };
      "ansi-styles-6.2.1" = {
        name = "ansi-styles";
        packageName = "ansi-styles";
        version = "6.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-6.2.1.tgz";
          sha512 = "bN798gFfQX+viw3R7yrGWRqnrN2oRkEkUjjl4JNn4E8GxxbjtG3FbrEIIY3l8/hrwUwIeCZvi4QuOTP4MErVug==";
        };
      };
      "anymatch-3.1.3" = {
        name = "anymatch";
        packageName = "anymatch";
        version = "3.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/anymatch/-/anymatch-3.1.3.tgz";
          sha512 = "KMReFUr0B4t+D+OBkjR3KYqvocp2XaSzO55UcB6mgQMd3KbcE+mWTyvVV7D/zsdEbNnV6acZUutkiHQXvTr1Rw==";
        };
      };
      "aproba-2.0.0" = {
        name = "aproba";
        packageName = "aproba";
        version = "2.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/aproba/-/aproba-2.0.0.tgz";
          sha512 = "lYe4Gx7QT+MKGbDsA+Z+he/Wtef0BiwDOlK/XkBrdfsh9J/jPPXbX0tE9x9cl27Tmu5gg3QUbUrQYa/y+KOHPQ==";
        };
      };
      "are-we-there-yet-3.0.1" = {
        name = "are-we-there-yet";
        packageName = "are-we-there-yet";
        version = "3.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-3.0.1.tgz";
          sha512 = "QZW4EDmGwlYur0Yyf/b2uGucHQMa8aFUP7eu9ddR73vvhFyt4V0Vl3QHPcTNJ8l6qYOBdxgXdnBXQrHilfRQBg==";
        };
      };
      "balanced-match-1.0.2" = {
        name = "balanced-match";
        packageName = "balanced-match";
        version = "1.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz";
          sha512 = "3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==";
        };
      };
      "base64-js-1.5.1" = {
        name = "base64-js";
        packageName = "base64-js";
        version = "1.5.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/base64-js/-/base64-js-1.5.1.tgz";
          sha512 = "AKpaYlHn8t4SVbOHCy+b5+KKgvR4vrsD8vbvrbiQJps7fKDTkjkDry6ji0rUJjC0kzbNePLwzxq8iypo41qeWA==";
        };
      };
      "binary-extensions-2.3.0" = {
        name = "binary-extensions";
        packageName = "binary-extensions";
        version = "2.3.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/binary-extensions/-/binary-extensions-2.3.0.tgz";
          sha512 = "Ceh+7ox5qe7LJuLHoY0feh3pHuUDHAcRUeyL2VYghZwfpkNIy/+8Ocg0a3UuSoYzavmylwuLWQOf3hl0jjMMIw==";
        };
      };
      "bl-4.1.0" = {
        name = "bl";
        packageName = "bl";
        version = "4.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/bl/-/bl-4.1.0.tgz";
          sha512 = "1W07cM9gS6DcLperZfFSj+bWLtaPGSOHWhPiGzXmvVJbRLdG82sH/Kn8EtW1VqWVA54AKf2h5k5BbnIbwF3h6w==";
        };
      };
      "brace-expansion-1.1.11" = {
        name = "brace-expansion";
        packageName = "brace-expansion";
        version = "1.1.11";
        src = fetchurl {
          url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz";
          sha512 = "iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==";
        };
      };
      "brace-expansion-2.0.1" = {
        name = "brace-expansion";
        packageName = "brace-expansion";
        version = "2.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-2.0.1.tgz";
          sha512 = "XnAIvQ8eM+kC6aULx6wuQiwVsnzsi9d3WxzV3FpWTGA19F621kwdbsAcFKXgKUHZWsy+mY6iL1sHTxWEFCytDA==";
        };
      };
      "braces-3.0.3" = {
        name = "braces";
        packageName = "braces";
        version = "3.0.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/braces/-/braces-3.0.3.tgz";
          sha512 = "yQbXgO/OSZVD2IsiLlro+7Hf6Q18EJrKSEsdoMzKePKXct3gvD8oLcOQdIzGupr5Fj+EDe8gO/lxc1BzfMpxvA==";
        };
      };
      "buffer-5.7.1" = {
        name = "buffer";
        packageName = "buffer";
        version = "5.7.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/buffer/-/buffer-5.7.1.tgz";
          sha512 = "EHcyIPBQ4BSGlvjB16k5KgAJ27CIsHY/2JBmCRReo48y9rQ3MaUzWX3KVlBa4U7MyX02HdVj0K7C3WaB3ju7FQ==";
        };
      };
      "cacache-16.1.3" = {
        name = "cacache";
        packageName = "cacache";
        version = "16.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/cacache/-/cacache-16.1.3.tgz";
          sha512 = "/+Emcj9DAXxX4cwlLmRI9c166RuL3w30zp4R7Joiv2cQTtTtA+jeuCAjH3ZlGnYS3tKENSrKhAzVVP9GVyzeYQ==";
        };
      };
      "cacache-17.1.4" = {
        name = "cacache";
        packageName = "cacache";
        version = "17.1.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/cacache/-/cacache-17.1.4.tgz";
          sha512 = "/aJwG2l3ZMJ1xNAnqbMpA40of9dj/pIH3QfiuQSqjfPJF747VR0J/bHn+/KdNnHKc6XQcWt/AfRSBft82W1d2A==";
        };
      };
      "chalk-4.1.2" = {
        name = "chalk";
        packageName = "chalk";
        version = "4.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/chalk/-/chalk-4.1.2.tgz";
          sha512 = "oKnbhFyRIXpUuez8iBMmyEa4nbj4IOQyuhc/wy9kY7/WVPcwIO9VA668Pu8RkO7+0G76SLROeyw9CpQ061i4mA==";
        };
      };
      "chardet-0.7.0" = {
        name = "chardet";
        packageName = "chardet";
        version = "0.7.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/chardet/-/chardet-0.7.0.tgz";
          sha512 = "mT8iDcrh03qDGRRmoA2hmBJnxpllMR+0/0qlzjqZES6NdiWDcZkCNAk4rPFZ9Q85r27unkiNNg8ZOiwZXBHwcA==";
        };
      };
      "chokidar-3.6.0" = {
        name = "chokidar";
        packageName = "chokidar";
        version = "3.6.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/chokidar/-/chokidar-3.6.0.tgz";
          sha512 = "7VT13fmjotKpGipCW9JEQAusEPE+Ei8nl6/g4FBAmIm0GOOLMua9NDDo/DWp0ZAxCr3cPq5ZpBqmPAQgDda2Pw==";
        };
      };
      "chownr-2.0.0" = {
        name = "chownr";
        packageName = "chownr";
        version = "2.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/chownr/-/chownr-2.0.0.tgz";
          sha512 = "bIomtDF5KGpdogkLd9VspvFzk9KfpyyGlS8YFVZl7TGPBHL5snIOnxeshwVgPteQ9b4Eydl+pVbIyE1DcvCWgQ==";
        };
      };
      "clean-stack-2.2.0" = {
        name = "clean-stack";
        packageName = "clean-stack";
        version = "2.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/clean-stack/-/clean-stack-2.2.0.tgz";
          sha512 = "4diC9HaTE+KRAMWhDhrGOECgWZxoevMc5TlkObMqNSsVU62PYzXZ/SMTjzyGAFF1YusgxGcSWTEXBhp0CPwQ1A==";
        };
      };
      "cli-cursor-3.1.0" = {
        name = "cli-cursor";
        packageName = "cli-cursor";
        version = "3.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/cli-cursor/-/cli-cursor-3.1.0.tgz";
          sha512 = "I/zHAwsKf9FqGoXM4WWRACob9+SNukZTd94DWF57E4toouRulbCxcUh6RKUEOQlYTHJnzkPMySvPNaaSLNfLZw==";
        };
      };
      "cli-spinners-2.9.2" = {
        name = "cli-spinners";
        packageName = "cli-spinners";
        version = "2.9.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/cli-spinners/-/cli-spinners-2.9.2.tgz";
          sha512 = "ywqV+5MmyL4E7ybXgKys4DugZbX0FC6LnwrhjuykIjnK9k8OQacQ7axGKnjDXWNhns0xot3bZI5h55H8yo9cJg==";
        };
      };
      "cli-width-3.0.0" = {
        name = "cli-width";
        packageName = "cli-width";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/cli-width/-/cli-width-3.0.0.tgz";
          sha512 = "FxqpkPPwu1HjuN93Omfm4h8uIanXofW0RxVEW3k5RKx+mJJYSthzNhp32Kzxxy3YAEZ/Dc/EWN1vZRY0+kOhbw==";
        };
      };
      "cliui-8.0.1" = {
        name = "cliui";
        packageName = "cliui";
        version = "8.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/cliui/-/cliui-8.0.1.tgz";
          sha512 = "BSeNnyus75C4//NQ9gQt1/csTXyo/8Sb+afLAkzAptFuMsod9HFokGNudZpi/oQV73hnVK+sR+5PVRMd+Dr7YQ==";
        };
      };
      "clone-1.0.4" = {
        name = "clone";
        packageName = "clone";
        version = "1.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/clone/-/clone-1.0.4.tgz";
          sha512 = "JQHZ2QMW6l3aH/j6xCqQThY/9OH4D/9ls34cgkUBiEeocRTU04tHfKPBsUK1PqZCUQM7GiA0IIXJSuXHI64Kbg==";
        };
      };
      "color-convert-2.0.1" = {
        name = "color-convert";
        packageName = "color-convert";
        version = "2.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz";
          sha512 = "RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==";
        };
      };
      "color-name-1.1.4" = {
        name = "color-name";
        packageName = "color-name";
        version = "1.1.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz";
          sha512 = "dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==";
        };
      };
      "color-support-1.1.3" = {
        name = "color-support";
        packageName = "color-support";
        version = "1.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/color-support/-/color-support-1.1.3.tgz";
          sha512 = "qiBjkpbMLO/HL68y+lh4q0/O1MZFj2RX6X/KmMa3+gJD3z+WwI1ZzDHysvqHGS3mP6mznPckpXmw1nI9cJjyRg==";
        };
      };
      "concat-map-0.0.1" = {
        name = "concat-map";
        packageName = "concat-map";
        version = "0.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
          sha512 = "/Srv4dswyQNBfohGpz9o6Yb3Gz3SrUDqBH5rTuhGR7ahtlbYKnVxw2bCFMRljaA7EXHaXZ8wsHdodFvbkhKmqg==";
        };
      };
      "console-control-strings-1.1.0" = {
        name = "console-control-strings";
        packageName = "console-control-strings";
        version = "1.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz";
          sha512 = "ty/fTekppD2fIwRvnZAVdeOiGd1c7YXEixbgJTNzqcxJWKQnjJ/V1bNEEE6hygpM3WjwHFUVK6HTjWSzV4a8sQ==";
        };
      };
      "cross-spawn-7.0.6" = {
        name = "cross-spawn";
        packageName = "cross-spawn";
        version = "7.0.6";
        src = fetchurl {
          url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-7.0.6.tgz";
          sha512 = "uV2QOWP2nWzsy2aMp8aRibhi9dlzF5Hgh5SHaB9OiTGEyDTiJJyx0uy51QXdyWbtAHNua4XJzUKca3OzKUd3vA==";
        };
      };
      "debug-4.3.7" = {
        name = "debug";
        packageName = "debug";
        version = "4.3.7";
        src = fetchurl {
          url = "https://registry.npmjs.org/debug/-/debug-4.3.7.tgz";
          sha512 = "Er2nc/H7RrMXZBFCEim6TCmMk02Z8vLC2Rbi1KEBggpo0fS6l0S1nnapwmIi3yW/+GOJap1Krg4w0Hg80oCqgQ==";
        };
      };
      "defaults-1.0.4" = {
        name = "defaults";
        packageName = "defaults";
        version = "1.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/defaults/-/defaults-1.0.4.tgz";
          sha512 = "eFuaLoy/Rxalv2kr+lqMlUnrDWV+3j4pljOIJgLIhI058IQfWJ7vXhyEIHu+HtC738klGALYxOKDO0bQP3tg8A==";
        };
      };
      "define-lazy-prop-2.0.0" = {
        name = "define-lazy-prop";
        packageName = "define-lazy-prop";
        version = "2.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/define-lazy-prop/-/define-lazy-prop-2.0.0.tgz";
          sha512 = "Ds09qNh8yw3khSjiJjiUInaGX9xlqZDY7JVryGxdxV7NPeuqQfplOpQ66yJFZut3jLa5zOwkXw1g9EI2uKh4Og==";
        };
      };
      "delegates-1.0.0" = {
        name = "delegates";
        packageName = "delegates";
        version = "1.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz";
          sha512 = "bd2L678uiWATM6m5Z1VzNCErI3jiGzt6HGY8OVICs40JQq/HALfbyNJmp0UDakEY4pMMaN0Ly5om/B1VI/+xfQ==";
        };
      };
      "eastasianwidth-0.2.0" = {
        name = "eastasianwidth";
        packageName = "eastasianwidth";
        version = "0.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/eastasianwidth/-/eastasianwidth-0.2.0.tgz";
          sha512 = "I88TYZWc9XiYHRQ4/3c5rjjfgkjhLyW2luGIheGERbNQ6OY7yTybanSpDXZa8y7VUP9YmDcYa+eyq4ca7iLqWA==";
        };
      };
      "emoji-regex-8.0.0" = {
        name = "emoji-regex";
        packageName = "emoji-regex";
        version = "8.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-8.0.0.tgz";
          sha512 = "MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A==";
        };
      };
      "emoji-regex-9.2.2" = {
        name = "emoji-regex";
        packageName = "emoji-regex";
        version = "9.2.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-9.2.2.tgz";
          sha512 = "L18DaJsXSUk2+42pv8mLs5jJT2hqFkFE4j21wOmgbUqsZ2hL72NsUU785g9RXgo3s0ZNgVl42TiHp3ZtOv/Vyg==";
        };
      };
      "encoding-0.1.13" = {
        name = "encoding";
        packageName = "encoding";
        version = "0.1.13";
        src = fetchurl {
          url = "https://registry.npmjs.org/encoding/-/encoding-0.1.13.tgz";
          sha512 = "ETBauow1T35Y/WZMkio9jiM0Z5xjHHmJ4XmjZOq1l/dXz3lr2sRn87nJy20RupqSh1F2m3HHPSp8ShIPQJrJ3A==";
        };
      };
      "env-paths-2.2.1" = {
        name = "env-paths";
        packageName = "env-paths";
        version = "2.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/env-paths/-/env-paths-2.2.1.tgz";
          sha512 = "+h1lkLKhZMTYjog1VEpJNG7NZJWcuc2DDk/qsqSTRRCOXiLjeQ1d1/udrUGhqMxUgAlwKNZ0cf2uqan5GLuS2A==";
        };
      };
      "err-code-2.0.3" = {
        name = "err-code";
        packageName = "err-code";
        version = "2.0.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/err-code/-/err-code-2.0.3.tgz";
          sha512 = "2bmlRpNKBxT/CRmPOlyISQpNj+qSeYvcym/uT0Jx2bMOlKLtSy1ZmLuVxSEKKyor/N5yhvp/ZiG1oE3DEYMSFA==";
        };
      };
      "escalade-3.2.0" = {
        name = "escalade";
        packageName = "escalade";
        version = "3.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/escalade/-/escalade-3.2.0.tgz";
          sha512 = "WUj2qlxaQtO4g6Pq5c29GTcWGDyd8itL8zTlipgECz3JesAiiOKotd8JU6otB3PACgG6xkJUyVhboMS+bje/jA==";
        };
      };
      "escape-string-regexp-1.0.5" = {
        name = "escape-string-regexp";
        packageName = "escape-string-regexp";
        version = "1.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
          sha512 = "vbRorB5FUQWvla16U8R/qgaFIya2qGzwDrNmCZuYKrbdSUMG6I1ZCGQRefkRVhuOkIGVne7BQ35DSfo1qvJqFg==";
        };
      };
      "exponential-backoff-3.1.1" = {
        name = "exponential-backoff";
        packageName = "exponential-backoff";
        version = "3.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/exponential-backoff/-/exponential-backoff-3.1.1.tgz";
          sha512 = "dX7e/LHVJ6W3DE1MHWi9S1EYzDESENfLrYohG2G++ovZrYOkm4Knwa0mc1cn84xJOR4KEU0WSchhLbd0UklbHw==";
        };
      };
      "external-editor-3.1.0" = {
        name = "external-editor";
        packageName = "external-editor";
        version = "3.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/external-editor/-/external-editor-3.1.0.tgz";
          sha512 = "hMQ4CX1p1izmuLYyZqLMO/qGNw10wSv9QDCPfzXfyFrOaCSSoRfqE1Kf1s5an66J5JZC62NewG+mK49jOCtQew==";
        };
      };
      "fast-deep-equal-3.1.3" = {
        name = "fast-deep-equal";
        packageName = "fast-deep-equal";
        version = "3.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz";
          sha512 = "f3qQ9oQy9j2AhBe/H9VC91wLmKBCCU/gDOnKNAYG5hswO7BLKj09Hc5HYNz9cGI++xlpDCIgDaitVs03ATR84Q==";
        };
      };
      "figures-3.2.0" = {
        name = "figures";
        packageName = "figures";
        version = "3.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/figures/-/figures-3.2.0.tgz";
          sha512 = "yaduQFRKLXYOGgEn6AZau90j3ggSOyiqXU0F9JZfeXYhNa+Jk4X+s45A2zg5jns87GAFa34BBm2kXw4XpNcbdg==";
        };
      };
      "fill-range-7.1.1" = {
        name = "fill-range";
        packageName = "fill-range";
        version = "7.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/fill-range/-/fill-range-7.1.1.tgz";
          sha512 = "YsGpe3WHLK8ZYi4tWDg2Jy3ebRz2rXowDxnld4bkQB00cc/1Zw9AWnC0i9ztDJitivtQvaI9KaLyKrc+hBW0yg==";
        };
      };
      "foreground-child-3.3.0" = {
        name = "foreground-child";
        packageName = "foreground-child";
        version = "3.3.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/foreground-child/-/foreground-child-3.3.0.tgz";
          sha512 = "Ld2g8rrAyMYFXBhEqMz8ZAHBi4J4uS1i/CxGMDnjyFWddMXLVcDp051DZfu+t7+ab7Wv6SMqpWmyFIj5UbfFvg==";
        };
      };
      "fs-minipass-2.1.0" = {
        name = "fs-minipass";
        packageName = "fs-minipass";
        version = "2.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/fs-minipass/-/fs-minipass-2.1.0.tgz";
          sha512 = "V/JgOLFCS+R6Vcq0slCuaeWEdNC3ouDlJMNIsacH2VtALiu9mV4LPrHc5cDl8k5aw6J8jwgWWpiTo5RYhmIzvg==";
        };
      };
      "fs-minipass-3.0.3" = {
        name = "fs-minipass";
        packageName = "fs-minipass";
        version = "3.0.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/fs-minipass/-/fs-minipass-3.0.3.tgz";
          sha512 = "XUBA9XClHbnJWSfBzjkm6RvPsyg3sryZt06BEQoXcF7EK/xpGaQYJgQKDJSUH5SGZ76Y7pFx1QBnXz09rU5Fbw==";
        };
      };
      "fs.realpath-1.0.0" = {
        name = "fs.realpath";
        packageName = "fs.realpath";
        version = "1.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
          sha512 = "OO0pH2lK6a0hZnAdau5ItzHPI6pUlvI7jMVnxUQRtw4owF2wk8lOSabtGDCTP4Ggrg2MbGnWO9X8K1t4+fGMDw==";
        };
      };
      "function-bind-1.1.2" = {
        name = "function-bind";
        packageName = "function-bind";
        version = "1.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.2.tgz";
          sha512 = "7XHNxH7qX9xG5mIwxkhumTox/MIRNcOgDrxWsMt2pAr23WHp6MrRlN7FBSFpCpr+oVO0F744iUgR82nJMfG2SA==";
        };
      };
      "gauge-4.0.4" = {
        name = "gauge";
        packageName = "gauge";
        version = "4.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/gauge/-/gauge-4.0.4.tgz";
          sha512 = "f9m+BEN5jkg6a0fZjleidjN51VE1X+mPFQ2DJ0uv1V39oCLCbsGe6yjbBnp7eK7z/+GAon99a3nHuqbuuthyPg==";
        };
      };
      "get-caller-file-2.0.5" = {
        name = "get-caller-file";
        packageName = "get-caller-file";
        version = "2.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/get-caller-file/-/get-caller-file-2.0.5.tgz";
          sha512 = "DyFP3BM/3YHTQOCUL/w0OZHR0lpKeGrxotcHWcqNEdnltqFwXVfhEBQ94eIo34AfQpo0rGki4cyIiftY06h2Fg==";
        };
      };
      "glob-10.4.5" = {
        name = "glob";
        packageName = "glob";
        version = "10.4.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/glob/-/glob-10.4.5.tgz";
          sha512 = "7Bv8RF0k6xjo7d4A/PxYLbUCfb6c+Vpd2/mB2yRDlew7Jb5hEXiCD9ibfO7wpk8i4sevK6DFny9h7EYbM3/sHg==";
        };
      };
      "glob-7.2.3" = {
        name = "glob";
        packageName = "glob";
        version = "7.2.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/glob/-/glob-7.2.3.tgz";
          sha512 = "nFR0zLpU2YCaRxwoCJvL6UvCH2JFyFVIvwTLsIf21AuHlMskA1hhTdk+LlYJtOlYt9v6dvszD2BGRqBL+iQK9Q==";
        };
      };
      "glob-8.1.0" = {
        name = "glob";
        packageName = "glob";
        version = "8.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/glob/-/glob-8.1.0.tgz";
          sha512 = "r8hpEjiQEYlF2QU0df3dS+nxxSIreXQS1qRhMJM0Q5NDdR386C7jb7Hwwod8Fgiuex+k0GFjgft18yvxm5XoCQ==";
        };
      };
      "glob-parent-5.1.2" = {
        name = "glob-parent";
        packageName = "glob-parent";
        version = "5.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/glob-parent/-/glob-parent-5.1.2.tgz";
          sha512 = "AOIgSQCepiJYwP3ARnGx+5VnTu2HBYdzbGP45eLw1vr3zB3vZLeyed1sC9hnbcOc9/SrMyM5RPQrkGz4aS9Zow==";
        };
      };
      "graceful-fs-4.2.11" = {
        name = "graceful-fs";
        packageName = "graceful-fs";
        version = "4.2.11";
        src = fetchurl {
          url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.11.tgz";
          sha512 = "RbJ5/jmFcNNCcDV5o9eTnBLJ/HszWV0P73bc+Ff4nS/rJj+YaS6IGyiOL0VoBYX+l1Wrl3k63h/KrH+nhJ0XvQ==";
        };
      };
      "has-flag-4.0.0" = {
        name = "has-flag";
        packageName = "has-flag";
        version = "4.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz";
          sha512 = "EykJT/Q1KjTWctppgIAgfSO0tKVuZUjhgMr17kqTumMl6Afv3EISleU7qZUzoXDFTAHTDC4NOoG/ZxU3EvlMPQ==";
        };
      };
      "has-unicode-2.0.1" = {
        name = "has-unicode";
        packageName = "has-unicode";
        version = "2.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz";
          sha512 = "8Rf9Y83NBReMnx0gFzA8JImQACstCYWUplepDa9xprwwtmgEZUF0h/i5xSA625zB/I37EtrswSST6OXxwaaIJQ==";
        };
      };
      "hasown-2.0.2" = {
        name = "hasown";
        packageName = "hasown";
        version = "2.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/hasown/-/hasown-2.0.2.tgz";
          sha512 = "0hJU9SCPvmMzIBdZFqNPXWa6dqh7WdH0cII9y+CyS8rG3nL48Bclra9HmKhVVUHyPWNH5Y7xDwAB7bfgSjkUMQ==";
        };
      };
      "hosted-git-info-6.1.3" = {
        name = "hosted-git-info";
        packageName = "hosted-git-info";
        version = "6.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/hosted-git-info/-/hosted-git-info-6.1.3.tgz";
          sha512 = "HVJyzUrLIL1c0QmviVh5E8VGyUS7xCFPS6yydaVd1UegW+ibV/CohqTH9MkOLDp5o+rb82DMo77PTuc9F/8GKw==";
        };
      };
      "http-cache-semantics-4.1.1" = {
        name = "http-cache-semantics";
        packageName = "http-cache-semantics";
        version = "4.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/http-cache-semantics/-/http-cache-semantics-4.1.1.tgz";
          sha512 = "er295DKPVsV82j5kw1Gjt+ADA/XYHsajl82cGNQG2eyoPkvgUhX+nDIyelzhIWbbsXP39EHcI6l5tYs2FYqYXQ==";
        };
      };
      "http-proxy-agent-5.0.0" = {
        name = "http-proxy-agent";
        packageName = "http-proxy-agent";
        version = "5.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/http-proxy-agent/-/http-proxy-agent-5.0.0.tgz";
          sha512 = "n2hY8YdoRE1i7r6M0w9DIw5GgZN0G25P8zLCRQ8rjXtTU3vsNFBI/vWK/UIeE6g5MUUz6avwAPXmL6Fy9D/90w==";
        };
      };
      "https-proxy-agent-5.0.1" = {
        name = "https-proxy-agent";
        packageName = "https-proxy-agent";
        version = "5.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/https-proxy-agent/-/https-proxy-agent-5.0.1.tgz";
          sha512 = "dFcAjpTQFgoLMzC2VwU+C/CbS7uRL0lWmxDITmqm7C+7F0Odmj6s9l6alZc6AELXhrnggM2CeWSXHGOdX2YtwA==";
        };
      };
      "humanize-ms-1.2.1" = {
        name = "humanize-ms";
        packageName = "humanize-ms";
        version = "1.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/humanize-ms/-/humanize-ms-1.2.1.tgz";
          sha512 = "Fl70vYtsAFb/C06PTS9dZBo7ihau+Tu/DNCk/OyHhea07S+aeMWpFFkUaXRa8fI+ScZbEI8dfSxwY7gxZ9SAVQ==";
        };
      };
      "iconv-lite-0.4.24" = {
        name = "iconv-lite";
        packageName = "iconv-lite";
        version = "0.4.24";
        src = fetchurl {
          url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.24.tgz";
          sha512 = "v3MXnZAcvnywkTUEZomIActle7RXXeedOR31wwl7VlyoXO4Qi9arvSenNQWne1TcRwhCL1HwLI21bEqdpj8/rA==";
        };
      };
      "iconv-lite-0.6.3" = {
        name = "iconv-lite";
        packageName = "iconv-lite";
        version = "0.6.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.6.3.tgz";
          sha512 = "4fCk79wshMdzMp2rH06qWrJE4iolqLhCUH+OiuIgU++RB0+94NlDL81atO7GX55uUKueo0txHNtvEyI6D7WdMw==";
        };
      };
      "ieee754-1.2.1" = {
        name = "ieee754";
        packageName = "ieee754";
        version = "1.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/ieee754/-/ieee754-1.2.1.tgz";
          sha512 = "dcyqhDvX1C46lXZcVqCpK+FtMRQVdIMN6/Df5js2zouUsqG7I6sFxitIC+7KYK29KdXOLHdu9zL4sFnoVQnqaA==";
        };
      };
      "ignore-walk-6.0.5" = {
        name = "ignore-walk";
        packageName = "ignore-walk";
        version = "6.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/ignore-walk/-/ignore-walk-6.0.5.tgz";
          sha512 = "VuuG0wCnjhnylG1ABXT3dAuIpTNDs/G8jlpmwXY03fXoXy/8ZK8/T+hMzt8L4WnrLCJgdybqgPagnF/f97cg3A==";
        };
      };
      "imurmurhash-0.1.4" = {
        name = "imurmurhash";
        packageName = "imurmurhash";
        version = "0.1.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/imurmurhash/-/imurmurhash-0.1.4.tgz";
          sha512 = "JmXMZ6wuvDmLiHEml9ykzqO6lwFbof0GG4IkcGaENdCRDDmMVnny7s5HsIgHCbaq0w2MyPhDqkhTUgS2LU2PHA==";
        };
      };
      "indent-string-4.0.0" = {
        name = "indent-string";
        packageName = "indent-string";
        version = "4.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/indent-string/-/indent-string-4.0.0.tgz";
          sha512 = "EdDDZu4A2OyIK7Lr/2zG+w5jmbuk1DVBnEwREQvBzspBJkCEbRa8GxU1lghYcaGJCnRWibjDXlq779X1/y5xwg==";
        };
      };
      "infer-owner-1.0.4" = {
        name = "infer-owner";
        packageName = "infer-owner";
        version = "1.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/infer-owner/-/infer-owner-1.0.4.tgz";
          sha512 = "IClj+Xz94+d7irH5qRyfJonOdfTzuDaifE6ZPWfx0N0+/ATZCbuTPq2prFl526urkQd90WyUKIh1DfBQ2hMz9A==";
        };
      };
      "inflight-1.0.6" = {
        name = "inflight";
        packageName = "inflight";
        version = "1.0.6";
        src = fetchurl {
          url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
          sha512 = "k92I/b08q4wvFscXCLvqfsHCrjrF7yiXsQuIVvVE7N82W3+aqpzuUdBbfhWcy/FZR3/4IgflMgKLOsvPDrGCJA==";
        };
      };
      "inherits-2.0.4" = {
        name = "inherits";
        packageName = "inherits";
        version = "2.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
          sha512 = "k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
        };
      };
      "ini-3.0.1" = {
        name = "ini";
        packageName = "ini";
        version = "3.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/ini/-/ini-3.0.1.tgz";
          sha512 = "it4HyVAUTKBc6m8e1iXWvXSTdndF7HbdN713+kvLrymxTaU4AUBWrJ4vEooP+V7fexnVD3LKcBshjGGPefSMUQ==";
        };
      };
      "inquirer-8.2.4" = {
        name = "inquirer";
        packageName = "inquirer";
        version = "8.2.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/inquirer/-/inquirer-8.2.4.tgz";
          sha512 = "nn4F01dxU8VeKfq192IjLsxu0/OmMZ4Lg3xKAns148rCaXP6ntAoEkVYZThWjwON8AlzdZZi6oqnhNbxUG9hVg==";
        };
      };
      "ip-address-9.0.5" = {
        name = "ip-address";
        packageName = "ip-address";
        version = "9.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/ip-address/-/ip-address-9.0.5.tgz";
          sha512 = "zHtQzGojZXTwZTHQqra+ETKd4Sn3vgi7uBmlPoXVWZqYvuKmtI0l/VZTjqGmJY9x88GGOaZ9+G9ES8hC4T4X8g==";
        };
      };
      "is-binary-path-2.1.0" = {
        name = "is-binary-path";
        packageName = "is-binary-path";
        version = "2.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-binary-path/-/is-binary-path-2.1.0.tgz";
          sha512 = "ZMERYes6pDydyuGidse7OsHxtbI7WVeUEozgR/g7rd0xUimYNlvZRE/K2MgZTjWy725IfelLeVcEM97mmtRGXw==";
        };
      };
      "is-core-module-2.15.1" = {
        name = "is-core-module";
        packageName = "is-core-module";
        version = "2.15.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-core-module/-/is-core-module-2.15.1.tgz";
          sha512 = "z0vtXSwucUJtANQWldhbtbt7BnL0vxiFjIdDLAatwhDYty2bad6s+rijD6Ri4YuYJubLzIJLUidCh09e1djEVQ==";
        };
      };
      "is-docker-2.2.1" = {
        name = "is-docker";
        packageName = "is-docker";
        version = "2.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-docker/-/is-docker-2.2.1.tgz";
          sha512 = "F+i2BKsFrH66iaUFc0woD8sLy8getkwTwtOBjvs56Cx4CgJDeKQeqfz8wAYiSb8JOprWhHH5p77PbmYCvvUuXQ==";
        };
      };
      "is-extglob-2.1.1" = {
        name = "is-extglob";
        packageName = "is-extglob";
        version = "2.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-extglob/-/is-extglob-2.1.1.tgz";
          sha512 = "SbKbANkN603Vi4jEZv49LeVJMn4yGwsbzZworEoyEiutsN3nJYdbO36zfhGJ6QEDpOZIFkDtnq5JRxmvl3jsoQ==";
        };
      };
      "is-fullwidth-code-point-3.0.0" = {
        name = "is-fullwidth-code-point";
        packageName = "is-fullwidth-code-point";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz";
          sha512 = "zymm5+u+sCsSWyD9qNaejV3DFvhCKclKdizYaJUuHA83RLjb7nSuGnddCHGv0hk+KY7BMAlsWeK4Ueg6EV6XQg==";
        };
      };
      "is-glob-4.0.3" = {
        name = "is-glob";
        packageName = "is-glob";
        version = "4.0.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-glob/-/is-glob-4.0.3.tgz";
          sha512 = "xelSayHH36ZgE7ZWhli7pW34hNbNl8Ojv5KVmkJD4hBdD3th8Tfk9vYasLM+mXWOZhFkgZfxhLSnrwRr4elSSg==";
        };
      };
      "is-interactive-1.0.0" = {
        name = "is-interactive";
        packageName = "is-interactive";
        version = "1.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-interactive/-/is-interactive-1.0.0.tgz";
          sha512 = "2HvIEKRoqS62guEC+qBjpvRubdX910WCMuJTZ+I9yvqKU2/12eSL549HMwtabb4oupdj2sMP50k+XJfB/8JE6w==";
        };
      };
      "is-lambda-1.0.1" = {
        name = "is-lambda";
        packageName = "is-lambda";
        version = "1.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-lambda/-/is-lambda-1.0.1.tgz";
          sha512 = "z7CMFGNrENq5iFB9Bqo64Xk6Y9sg+epq1myIcdHaGnbMTYOxvzsEtdYqQUylB7LxfkvgrrjP32T6Ywciio9UIQ==";
        };
      };
      "is-number-7.0.0" = {
        name = "is-number";
        packageName = "is-number";
        version = "7.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-number/-/is-number-7.0.0.tgz";
          sha512 = "41Cifkg6e8TylSpdtTpeLVMqvSBEVzTttHvERD741+pnZ8ANv0004MRL43QKPDlK9cGvNp6NZWZUBlbGXYxxng==";
        };
      };
      "is-unicode-supported-0.1.0" = {
        name = "is-unicode-supported";
        packageName = "is-unicode-supported";
        version = "0.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-unicode-supported/-/is-unicode-supported-0.1.0.tgz";
          sha512 = "knxG2q4UC3u8stRGyAVJCOdxFmv5DZiRcdlIaAQXAbSfJya+OhopNotLQrstBhququ4ZpuKbDc/8S6mgXgPFPw==";
        };
      };
      "is-wsl-2.2.0" = {
        name = "is-wsl";
        packageName = "is-wsl";
        version = "2.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/is-wsl/-/is-wsl-2.2.0.tgz";
          sha512 = "fKzAra0rGJUUBwGBgNkHZuToZcn+TtXHpeCgmkMJMMYx1sQDYaCSyjJBSCa2nH1DGm7s3n1oBnohoVTBaN7Lww==";
        };
      };
      "isexe-2.0.0" = {
        name = "isexe";
        packageName = "isexe";
        version = "2.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
          sha512 = "RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
        };
      };
      "jackspeak-3.4.3" = {
        name = "jackspeak";
        packageName = "jackspeak";
        version = "3.4.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/jackspeak/-/jackspeak-3.4.3.tgz";
          sha512 = "OGlZQpz2yfahA/Rd1Y8Cd9SIEsqvXkLVoSw/cgwhnhFMDbsQFeZYoJJ7bIZBS9BcamUW96asq/npPWugM+RQBw==";
        };
      };
      "jsbn-1.1.0" = {
        name = "jsbn";
        packageName = "jsbn";
        version = "1.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/jsbn/-/jsbn-1.1.0.tgz";
          sha512 = "4bYVV3aAMtDTTu4+xsDYa6sy9GyJ69/amsu9sYF2zqjiEoZA5xJi3BrfX3uY+/IekIu7MwdObdbDWpoZdBv3/A==";
        };
      };
      "json-parse-even-better-errors-3.0.2" = {
        name = "json-parse-even-better-errors";
        packageName = "json-parse-even-better-errors";
        version = "3.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/json-parse-even-better-errors/-/json-parse-even-better-errors-3.0.2.tgz";
          sha512 = "fi0NG4bPjCHunUJffmLd0gxssIgkNmArMvis4iNah6Owg1MCJjWhEcDLmsK6iGkJq3tHwbDkTlce70/tmXN4cQ==";
        };
      };
      "json-schema-traverse-1.0.0" = {
        name = "json-schema-traverse";
        packageName = "json-schema-traverse";
        version = "1.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-1.0.0.tgz";
          sha512 = "NM8/P9n3XjXhIZn1lLhkFaACTOURQXjWhV4BA/RnOv8xvgqtqpAX9IO4mRQxSx1Rlo4tqzeqb0sOlruaOy3dug==";
        };
      };
      "jsonc-parser-3.2.0" = {
        name = "jsonc-parser";
        packageName = "jsonc-parser";
        version = "3.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/jsonc-parser/-/jsonc-parser-3.2.0.tgz";
          sha512 = "gfFQZrcTc8CnKXp6Y4/CBT3fTc0OVuDofpre4aEeEpSBPV5X5v4+Vmx+8snU7RLPrNHPKSgLxGo9YuQzz20o+w==";
        };
      };
      "jsonparse-1.3.1" = {
        name = "jsonparse";
        packageName = "jsonparse";
        version = "1.3.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/jsonparse/-/jsonparse-1.3.1.tgz";
          sha512 = "POQXvpdL69+CluYsillJ7SUhKvytYjW9vG/GKpnf+xP8UWgYEM/RaMzHHofbALDiKbbP1W8UEYmgGl39WkPZsg==";
        };
      };
      "lodash-4.17.21" = {
        name = "lodash";
        packageName = "lodash";
        version = "4.17.21";
        src = fetchurl {
          url = "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz";
          sha512 = "v2kDEe57lecTulaDIuNTPy3Ry4gLGJ6Z1O3vE1krgXZNrsQ+LFTGHVxVjcXPs17LhbZVGedAJv8XZ1tvj5FvSg==";
        };
      };
      "log-symbols-4.1.0" = {
        name = "log-symbols";
        packageName = "log-symbols";
        version = "4.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/log-symbols/-/log-symbols-4.1.0.tgz";
          sha512 = "8XPvpAA8uyhfteu8pIvQxpJZ7SYYdpUivZpGy6sFsBuKRY/7rQGavedeB8aK+Zkyq6upMFVL/9AW6vOYzfRyLg==";
        };
      };
      "lru-cache-10.4.3" = {
        name = "lru-cache";
        packageName = "lru-cache";
        version = "10.4.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/lru-cache/-/lru-cache-10.4.3.tgz";
          sha512 = "JNAzZcXrCt42VGLuYz0zfAzDfAvJWW6AfYlDBQyDV5DClI2m5sAmK+OIO7s59XfsRsWHp02jAJrRadPRGTt6SQ==";
        };
      };
      "lru-cache-6.0.0" = {
        name = "lru-cache";
        packageName = "lru-cache";
        version = "6.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/lru-cache/-/lru-cache-6.0.0.tgz";
          sha512 = "Jo6dJ04CmSjuznwJSS3pUeWmd/H0ffTlkXXgwZi+eq1UCmqQwCh+eLsYOYCwY991i2Fah4h1BEMCx4qThGbsiA==";
        };
      };
      "lru-cache-7.18.3" = {
        name = "lru-cache";
        packageName = "lru-cache";
        version = "7.18.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/lru-cache/-/lru-cache-7.18.3.tgz";
          sha512 = "jumlc0BIUrS3qJGgIkWZsyfAM7NCWiBcCDhnd+3NNM5KbBmLTgHVfWBcg6W+rLUsIpzpERPsvwUP7CckAQSOoA==";
        };
      };
      "magic-string-0.29.0" = {
        name = "magic-string";
        packageName = "magic-string";
        version = "0.29.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/magic-string/-/magic-string-0.29.0.tgz";
          sha512 = "WcfidHrDjMY+eLjlU+8OvwREqHwpgCeKVBUpQ3OhYYuvfaYCUgcbuBzappNzZvg/v8onU3oQj+BYpkOJe9Iw4Q==";
        };
      };
      "make-fetch-happen-10.2.1" = {
        name = "make-fetch-happen";
        packageName = "make-fetch-happen";
        version = "10.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/make-fetch-happen/-/make-fetch-happen-10.2.1.tgz";
          sha512 = "NgOPbRiaQM10DYXvN3/hhGVI2M5MtITFryzBGxHM5p4wnFxsVCbxkrBrDsk+EZ5OB4jEOT7AjDxtdF+KVEFT7w==";
        };
      };
      "make-fetch-happen-11.1.1" = {
        name = "make-fetch-happen";
        packageName = "make-fetch-happen";
        version = "11.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/make-fetch-happen/-/make-fetch-happen-11.1.1.tgz";
          sha512 = "rLWS7GCSTcEujjVBs2YqG7Y4643u8ucvCJeSRqiLYhesrDuzeuFIk37xREzAsfQaqzl8b9rNCE4m6J8tvX4Q8w==";
        };
      };
      "mimic-fn-2.1.0" = {
        name = "mimic-fn";
        packageName = "mimic-fn";
        version = "2.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/mimic-fn/-/mimic-fn-2.1.0.tgz";
          sha512 = "OqbOk5oEQeAZ8WXWydlu9HJjz9WVdEIvamMCcXmuqUYjTknH/sqsWvhQ3vgwKFRR1HpjvNBKQ37nbJgYzGqGcg==";
        };
      };
      "minimatch-3.1.2" = {
        name = "minimatch";
        packageName = "minimatch";
        version = "3.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/minimatch/-/minimatch-3.1.2.tgz";
          sha512 = "J7p63hRiAjw1NDEww1W7i37+ByIrOWO5XQQAzZ3VOcL0PNybwpfmV/N05zFAzwQ9USyEcX6t3UO+K5aqBQOIHw==";
        };
      };
      "minimatch-5.1.6" = {
        name = "minimatch";
        packageName = "minimatch";
        version = "5.1.6";
        src = fetchurl {
          url = "https://registry.npmjs.org/minimatch/-/minimatch-5.1.6.tgz";
          sha512 = "lKwV/1brpG6mBUFHtb7NUmtABCb2WZZmm2wNiOA5hAb8VdCS4B3dtMWyvcoViccwAW/COERjXLt0zP1zXUN26g==";
        };
      };
      "minimatch-9.0.5" = {
        name = "minimatch";
        packageName = "minimatch";
        version = "9.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/minimatch/-/minimatch-9.0.5.tgz";
          sha512 = "G6T0ZX48xgozx7587koeX9Ys2NYy6Gmv//P89sEte9V9whIapMNF4idKxnW2QtCcLiTWlb/wfCabAtAFWhhBow==";
        };
      };
      "minipass-3.3.6" = {
        name = "minipass";
        packageName = "minipass";
        version = "3.3.6";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass/-/minipass-3.3.6.tgz";
          sha512 = "DxiNidxSEK+tHG6zOIklvNOwm3hvCrbUrdtzY74U6HKTJxvIDfOUL5W5P2Ghd3DTkhhKPYGqeNUIh5qcM4YBfw==";
        };
      };
      "minipass-4.2.8" = {
        name = "minipass";
        packageName = "minipass";
        version = "4.2.8";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass/-/minipass-4.2.8.tgz";
          sha512 = "fNzuVyifolSLFL4NzpF+wEF4qrgqaaKX0haXPQEdQ7NKAN+WecoKMHV09YcuL/DHxrUsYQOK3MiuDf7Ip2OXfQ==";
        };
      };
      "minipass-5.0.0" = {
        name = "minipass";
        packageName = "minipass";
        version = "5.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass/-/minipass-5.0.0.tgz";
          sha512 = "3FnjYuehv9k6ovOEbyOswadCDPX1piCfhV8ncmYtHOjuPwylVWsghTLo7rabjC3Rx5xD4HDx8Wm1xnMF7S5qFQ==";
        };
      };
      "minipass-7.1.2" = {
        name = "minipass";
        packageName = "minipass";
        version = "7.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass/-/minipass-7.1.2.tgz";
          sha512 = "qOOzS1cBTWYF4BH8fVePDBOO9iptMnGUEZwNc/cMWnTV2nVLZ7VoNWEPHkYczZA0pdoA7dl6e7FL659nX9S2aw==";
        };
      };
      "minipass-collect-1.0.2" = {
        name = "minipass-collect";
        packageName = "minipass-collect";
        version = "1.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass-collect/-/minipass-collect-1.0.2.tgz";
          sha512 = "6T6lH0H8OG9kITm/Jm6tdooIbogG9e0tLgpY6mphXSm/A9u8Nq1ryBG+Qspiub9LjWlBPsPS3tWQ/Botq4FdxA==";
        };
      };
      "minipass-fetch-2.1.2" = {
        name = "minipass-fetch";
        packageName = "minipass-fetch";
        version = "2.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass-fetch/-/minipass-fetch-2.1.2.tgz";
          sha512 = "LT49Zi2/WMROHYoqGgdlQIZh8mLPZmOrN2NdJjMXxYe4nkN6FUyuPuOAOedNJDrx0IRGg9+4guZewtp8hE6TxA==";
        };
      };
      "minipass-fetch-3.0.5" = {
        name = "minipass-fetch";
        packageName = "minipass-fetch";
        version = "3.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass-fetch/-/minipass-fetch-3.0.5.tgz";
          sha512 = "2N8elDQAtSnFV0Dk7gt15KHsS0Fyz6CbYZ360h0WTYV1Ty46li3rAXVOQj1THMNLdmrD9Vt5pBPtWtVkpwGBqg==";
        };
      };
      "minipass-flush-1.0.5" = {
        name = "minipass-flush";
        packageName = "minipass-flush";
        version = "1.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass-flush/-/minipass-flush-1.0.5.tgz";
          sha512 = "JmQSYYpPUqX5Jyn1mXaRwOda1uQ8HP5KAT/oDSLCzt1BYRhQU0/hDtsB1ufZfEEzMZ9aAVmsBw8+FWsIXlClWw==";
        };
      };
      "minipass-json-stream-1.0.2" = {
        name = "minipass-json-stream";
        packageName = "minipass-json-stream";
        version = "1.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass-json-stream/-/minipass-json-stream-1.0.2.tgz";
          sha512 = "myxeeTm57lYs8pH2nxPzmEEg8DGIgW+9mv6D4JZD2pa81I/OBjeU7PtICXV6c9eRGTA5JMDsuIPUZRCyBMYNhg==";
        };
      };
      "minipass-pipeline-1.2.4" = {
        name = "minipass-pipeline";
        packageName = "minipass-pipeline";
        version = "1.2.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass-pipeline/-/minipass-pipeline-1.2.4.tgz";
          sha512 = "xuIq7cIOt09RPRJ19gdi4b+RiNvDFYe5JH+ggNvBqGqpQXcru3PcRmOZuHBKWK1Txf9+cQ+HMVN4d6z46LZP7A==";
        };
      };
      "minipass-sized-1.0.3" = {
        name = "minipass-sized";
        packageName = "minipass-sized";
        version = "1.0.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/minipass-sized/-/minipass-sized-1.0.3.tgz";
          sha512 = "MbkQQ2CTiBMlA2Dm/5cY+9SWFEN8pzzOXi6rlM5Xxq0Yqbda5ZQy9sU75a673FE9ZK0Zsbr6Y5iP6u9nktfg2g==";
        };
      };
      "minizlib-2.1.2" = {
        name = "minizlib";
        packageName = "minizlib";
        version = "2.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/minizlib/-/minizlib-2.1.2.tgz";
          sha512 = "bAxsR8BVfj60DWXHE3u30oHzfl4G7khkSuPW+qvpd7jFRHm7dLxOjUk1EHACJ/hxLY8phGJ0YhYHZo7jil7Qdg==";
        };
      };
      "mkdirp-1.0.4" = {
        name = "mkdirp";
        packageName = "mkdirp";
        version = "1.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/mkdirp/-/mkdirp-1.0.4.tgz";
          sha512 = "vVqVZQyf3WLx2Shd0qJ9xuvqgAyKPLAiqITEtqW0oIUjzo3PePDd6fW9iFz30ef7Ysp/oiWqbhszeGWW2T6Gzw==";
        };
      };
      "ms-2.1.3" = {
        name = "ms";
        packageName = "ms";
        version = "2.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/ms/-/ms-2.1.3.tgz";
          sha512 = "6FlzubTLZG3J2a/NVCAleEhjzq5oxgHyaCU9yYXvcLsvoVaHJq/s5xXI6/XXP6tz7R9xAOtHnSO/tXtF3WRTlA==";
        };
      };
      "mute-stream-0.0.8" = {
        name = "mute-stream";
        packageName = "mute-stream";
        version = "0.0.8";
        src = fetchurl {
          url = "https://registry.npmjs.org/mute-stream/-/mute-stream-0.0.8.tgz";
          sha512 = "nnbWWOkoWyUsTjKrhgD0dcz22mdkSnpYqbEjIm2nhwhuxlSkpywJmBo8h0ZqJdkp73mb90SssHkN4rsRaBAfAA==";
        };
      };
      "negotiator-0.6.4" = {
        name = "negotiator";
        packageName = "negotiator";
        version = "0.6.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/negotiator/-/negotiator-0.6.4.tgz";
          sha512 = "myRT3DiWPHqho5PrJaIRyaMv2kgYf0mUVgBNOYMuCH5Ki1yEiQaf/ZJuQ62nvpc44wL5WDbTX7yGJi1Neevw8w==";
        };
      };
      "node-gyp-9.4.1" = {
        name = "node-gyp";
        packageName = "node-gyp";
        version = "9.4.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/node-gyp/-/node-gyp-9.4.1.tgz";
          sha512 = "OQkWKbjQKbGkMf/xqI1jjy3oCTgMKJac58G2+bjZb3fza6gW2YrCSdMQYaoTb70crvE//Gngr4f0AgVHmqHvBQ==";
        };
      };
      "nopt-6.0.0" = {
        name = "nopt";
        packageName = "nopt";
        version = "6.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/nopt/-/nopt-6.0.0.tgz";
          sha512 = "ZwLpbTgdhuZUnZzjd7nb1ZV+4DoiC6/sfiVKok72ym/4Tlf+DFdlHYmT2JPmcNNWV6Pi3SDf1kT+A4r9RTuT9g==";
        };
      };
      "normalize-package-data-5.0.0" = {
        name = "normalize-package-data";
        packageName = "normalize-package-data";
        version = "5.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-5.0.0.tgz";
          sha512 = "h9iPVIfrVZ9wVYQnxFgtw1ugSvGEMOlyPWWtm8BMJhnwyEL/FLbYbTY3V3PpjI/BUK67n9PEWDu6eHzu1fB15Q==";
        };
      };
      "normalize-path-3.0.0" = {
        name = "normalize-path";
        packageName = "normalize-path";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/normalize-path/-/normalize-path-3.0.0.tgz";
          sha512 = "6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==";
        };
      };
      "npm-bundled-3.0.1" = {
        name = "npm-bundled";
        packageName = "npm-bundled";
        version = "3.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/npm-bundled/-/npm-bundled-3.0.1.tgz";
          sha512 = "+AvaheE/ww1JEwRHOrn4WHNzOxGtVp+adrg2AeZS/7KuxGUYFuBta98wYpfHBbJp6Tg6j1NKSEVHNcfZzJHQwQ==";
        };
      };
      "npm-install-checks-6.3.0" = {
        name = "npm-install-checks";
        packageName = "npm-install-checks";
        version = "6.3.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/npm-install-checks/-/npm-install-checks-6.3.0.tgz";
          sha512 = "W29RiK/xtpCGqn6f3ixfRYGk+zRyr+Ew9F2E20BfXxT5/euLdA/Nm7fO7OeTGuAmTs30cpgInyJ0cYe708YTZw==";
        };
      };
      "npm-normalize-package-bin-3.0.1" = {
        name = "npm-normalize-package-bin";
        packageName = "npm-normalize-package-bin";
        version = "3.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/npm-normalize-package-bin/-/npm-normalize-package-bin-3.0.1.tgz";
          sha512 = "dMxCf+zZ+3zeQZXKxmyuCKlIDPGuv8EF940xbkC4kQVDTtqoh6rJFO+JTKSA6/Rwi0getWmtuy4Itup0AMcaDQ==";
        };
      };
      "npm-package-arg-10.1.0" = {
        name = "npm-package-arg";
        packageName = "npm-package-arg";
        version = "10.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/npm-package-arg/-/npm-package-arg-10.1.0.tgz";
          sha512 = "uFyyCEmgBfZTtrKk/5xDfHp6+MdrqGotX/VoOyEEl3mBwiEE5FlBaePanazJSVMPT7vKepcjYBY2ztg9A3yPIA==";
        };
      };
      "npm-packlist-7.0.4" = {
        name = "npm-packlist";
        packageName = "npm-packlist";
        version = "7.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/npm-packlist/-/npm-packlist-7.0.4.tgz";
          sha512 = "d6RGEuRrNS5/N84iglPivjaJPxhDbZmlbTwTDX2IbcRHG5bZCdtysYMhwiPvcF4GisXHGn7xsxv+GQ7T/02M5Q==";
        };
      };
      "npm-pick-manifest-8.0.1" = {
        name = "npm-pick-manifest";
        packageName = "npm-pick-manifest";
        version = "8.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/npm-pick-manifest/-/npm-pick-manifest-8.0.1.tgz";
          sha512 = "mRtvlBjTsJvfCCdmPtiu2bdlx8d/KXtF7yNXNWe7G0Z36qWA9Ny5zXsI2PfBZEv7SXgoxTmNaTzGSbbzDZChoA==";
        };
      };
      "npm-registry-fetch-14.0.5" = {
        name = "npm-registry-fetch";
        packageName = "npm-registry-fetch";
        version = "14.0.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/npm-registry-fetch/-/npm-registry-fetch-14.0.5.tgz";
          sha512 = "kIDMIo4aBm6xg7jOttupWZamsZRkAqMqwqqbVXnUqstY5+tapvv6bkH/qMR76jdgV+YljEUCyWx3hRYMrJiAgA==";
        };
      };
      "npmlog-6.0.2" = {
        name = "npmlog";
        packageName = "npmlog";
        version = "6.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/npmlog/-/npmlog-6.0.2.tgz";
          sha512 = "/vBvz5Jfr9dT/aFWd0FIRf+T/Q2WBsLENygUaFUqstqsycmZAP/t5BvFJTK0viFmSUxiUKTUplWy5vt+rvKIxg==";
        };
      };
      "once-1.4.0" = {
        name = "once";
        packageName = "once";
        version = "1.4.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
          sha512 = "lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==";
        };
      };
      "onetime-5.1.2" = {
        name = "onetime";
        packageName = "onetime";
        version = "5.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/onetime/-/onetime-5.1.2.tgz";
          sha512 = "kbpaSSGJTWdAY5KPVeMOKXSrPtr8C8C7wodJbcsd51jRnmD+GZu8Y0VoU6Dm5Z4vWr0Ig/1NKuWRKf7j5aaYSg==";
        };
      };
      "open-8.4.1" = {
        name = "open";
        packageName = "open";
        version = "8.4.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/open/-/open-8.4.1.tgz";
          sha512 = "/4b7qZNhv6Uhd7jjnREh1NjnPxlTq+XNWPG88Ydkj5AILcA5m3ajvcg57pB24EQjKv0dK62XnDqk9c/hkIG5Kg==";
        };
      };
      "ora-5.4.1" = {
        name = "ora";
        packageName = "ora";
        version = "5.4.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/ora/-/ora-5.4.1.tgz";
          sha512 = "5b6Y85tPxZZ7QytO+BQzysW31HJku27cRIlkbAXaNx+BdcVi+LlRFmVXzeF6a7JCwJpyw5c4b+YSVImQIrBpuQ==";
        };
      };
      "os-tmpdir-1.0.2" = {
        name = "os-tmpdir";
        packageName = "os-tmpdir";
        version = "1.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
          sha512 = "D2FR03Vir7FIu45XBY20mTb+/ZSWB00sjU9jdQXt83gDrI4Ztz5Fs7/yy74g2N5SVQY4xY1qDr4rNddwYRVX0g==";
        };
      };
      "p-map-4.0.0" = {
        name = "p-map";
        packageName = "p-map";
        version = "4.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/p-map/-/p-map-4.0.0.tgz";
          sha512 = "/bjOqmgETBYB5BoEeGVea8dmvHb2m9GLy1E9W43yeyfP6QQCZGFNa+XRceJEuDB6zqr+gKpIAmlLebMpykw/MQ==";
        };
      };
      "package-json-from-dist-1.0.1" = {
        name = "package-json-from-dist";
        packageName = "package-json-from-dist";
        version = "1.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/package-json-from-dist/-/package-json-from-dist-1.0.1.tgz";
          sha512 = "UEZIS3/by4OC8vL3P2dTXRETpebLI2NiI5vIrjaD/5UtrkFX/tNbwjTSRAGC/+7CAo2pIcBaRgWmcBBHcsaCIw==";
        };
      };
      "pacote-15.1.0" = {
        name = "pacote";
        packageName = "pacote";
        version = "15.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/pacote/-/pacote-15.1.0.tgz";
          sha512 = "FFcjtIl+BQNfeliSm7MZz5cpdohvUV1yjGnqgVM4UnVF7JslRY0ImXAygdaCDV0jjUADEWu4y5xsDV8brtrTLg==";
        };
      };
      "path-is-absolute-1.0.1" = {
        name = "path-is-absolute";
        packageName = "path-is-absolute";
        version = "1.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
          sha512 = "AVbw3UJ2e9bq64vSaS9Am0fje1Pa8pbGqTTsmXfaIiMpnr5DlDhfJOuLj9Sf95ZPVDAUerDfEk88MPmPe7UCQg==";
        };
      };
      "path-key-3.1.1" = {
        name = "path-key";
        packageName = "path-key";
        version = "3.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/path-key/-/path-key-3.1.1.tgz";
          sha512 = "ojmeN0qd+y0jszEtoY48r0Peq5dwMEkIlCOu6Q5f41lfkswXuKtYrhgoTpLnyIcHm24Uhqx+5Tqm2InSwLhE6Q==";
        };
      };
      "path-parse-1.0.7" = {
        name = "path-parse";
        packageName = "path-parse";
        version = "1.0.7";
        src = fetchurl {
          url = "https://registry.npmjs.org/path-parse/-/path-parse-1.0.7.tgz";
          sha512 = "LDJzPVEEEPR+y48z93A0Ed0yXb8pAByGWo/k5YYdYgpY2/2EsOsksJrq7lOHxryrVOn1ejG6oAp8ahvOIQD8sw==";
        };
      };
      "path-scurry-1.11.1" = {
        name = "path-scurry";
        packageName = "path-scurry";
        version = "1.11.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/path-scurry/-/path-scurry-1.11.1.tgz";
          sha512 = "Xa4Nw17FS9ApQFJ9umLiJS4orGjm7ZzwUrwamcGQuHSzDyth9boKDaycYdDcZDuqYATXw4HFXgaqWTctW/v1HA==";
        };
      };
      "picomatch-2.3.1" = {
        name = "picomatch";
        packageName = "picomatch";
        version = "2.3.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/picomatch/-/picomatch-2.3.1.tgz";
          sha512 = "JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==";
        };
      };
      "proc-log-3.0.0" = {
        name = "proc-log";
        packageName = "proc-log";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/proc-log/-/proc-log-3.0.0.tgz";
          sha512 = "++Vn7NS4Xf9NacaU9Xq3URUuqZETPsf8L4j5/ckhaRYsfPeRyzGw+iDjFhV/Jr3uNmTvvddEJFWh5R1gRgUH8A==";
        };
      };
      "promise-inflight-1.0.1" = {
        name = "promise-inflight";
        packageName = "promise-inflight";
        version = "1.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/promise-inflight/-/promise-inflight-1.0.1.tgz";
          sha512 = "6zWPyEOFaQBJYcGMHBKTKJ3u6TBsnMFOIZSa6ce1e/ZrrsOlnHRHbabMjLiBYKp+n44X9eUI6VUPaukCXHuG4g==";
        };
      };
      "promise-retry-2.0.1" = {
        name = "promise-retry";
        packageName = "promise-retry";
        version = "2.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/promise-retry/-/promise-retry-2.0.1.tgz";
          sha512 = "y+WKFlBR8BGXnsNlIHFGPZmyDf3DFMoLhaflAnyZgV6rG6xu+JwesTo2Q9R6XwYmtmwAFCkAk3e35jEdoeh/3g==";
        };
      };
      "punycode-2.3.1" = {
        name = "punycode";
        packageName = "punycode";
        version = "2.3.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/punycode/-/punycode-2.3.1.tgz";
          sha512 = "vYt7UD1U9Wg6138shLtLOvdAu+8DsC/ilFtEVHcH+wydcSpNE20AfSOduf6MkRFahL5FY7X1oU7nKVZFtfq8Fg==";
        };
      };
      "read-package-json-6.0.4" = {
        name = "read-package-json";
        packageName = "read-package-json";
        version = "6.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/read-package-json/-/read-package-json-6.0.4.tgz";
          sha512 = "AEtWXYfopBj2z5N5PbkAOeNHRPUg5q+Nen7QLxV8M2zJq1ym6/lCz3fYNTCXe19puu2d06jfHhrP7v/S2PtMMw==";
        };
      };
      "read-package-json-fast-3.0.2" = {
        name = "read-package-json-fast";
        packageName = "read-package-json-fast";
        version = "3.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/read-package-json-fast/-/read-package-json-fast-3.0.2.tgz";
          sha512 = "0J+Msgym3vrLOUB3hzQCuZHII0xkNGCtz/HJH9xZshwv9DbDwkw1KaE3gx/e2J5rpEY5rtOy6cyhKOPrkP7FZw==";
        };
      };
      "readable-stream-3.6.2" = {
        name = "readable-stream";
        packageName = "readable-stream";
        version = "3.6.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/readable-stream/-/readable-stream-3.6.2.tgz";
          sha512 = "9u/sniCrY3D5WdsERHzHE4G2YCXqoG5FTHUiCC4SIbr6XcLZBY05ya9EKjYek9O5xOAwjGq+1JdGBAS7Q9ScoA==";
        };
      };
      "readdirp-3.6.0" = {
        name = "readdirp";
        packageName = "readdirp";
        version = "3.6.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/readdirp/-/readdirp-3.6.0.tgz";
          sha512 = "hOS089on8RduqdbhvQ5Z37A0ESjsqz6qnRcffsMU3495FuTdqSm+7bhJ29JvIOsBDEEnan5DPu9t3To9VRlMzA==";
        };
      };
      "require-directory-2.1.1" = {
        name = "require-directory";
        packageName = "require-directory";
        version = "2.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/require-directory/-/require-directory-2.1.1.tgz";
          sha512 = "fGxEI7+wsG9xrvdjsrlmL22OMTTiHRwAMroiEeMgq8gzoLC/PQr7RsRDSTLUg/bZAZtF+TVIkHc6/4RIKrui+Q==";
        };
      };
      "require-from-string-2.0.2" = {
        name = "require-from-string";
        packageName = "require-from-string";
        version = "2.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/require-from-string/-/require-from-string-2.0.2.tgz";
          sha512 = "Xf0nWe6RseziFMu+Ap9biiUbmplq6S9/p+7w7YXP/JBHhrUDDUhwa+vANyubuqfZWTveU//DYVGsDG7RKL/vEw==";
        };
      };
      "resolve-1.22.1" = {
        name = "resolve";
        packageName = "resolve";
        version = "1.22.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/resolve/-/resolve-1.22.1.tgz";
          sha512 = "nBpuuYuY5jFsli/JIs1oldw6fOQCBioohqWZg/2hiaOybXOft4lonv85uDOKXdf8rhyK159cxU5cDcK/NKk8zw==";
        };
      };
      "restore-cursor-3.1.0" = {
        name = "restore-cursor";
        packageName = "restore-cursor";
        version = "3.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/restore-cursor/-/restore-cursor-3.1.0.tgz";
          sha512 = "l+sSefzHpj5qimhFSE5a8nufZYAM3sBSVMAPtYkmC+4EH2anSGaEMXSD0izRQbu9nfyQ9y5JrVmp7E8oZrUjvA==";
        };
      };
      "retry-0.12.0" = {
        name = "retry";
        packageName = "retry";
        version = "0.12.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/retry/-/retry-0.12.0.tgz";
          sha512 = "9LkiTwjUh6rT555DtE9rTX+BKByPfrMzEAtnlEtdEwr3Nkffwiihqe2bWADg+OQRjt9gl6ICdmB/ZFDCGAtSow==";
        };
      };
      "rimraf-3.0.2" = {
        name = "rimraf";
        packageName = "rimraf";
        version = "3.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/rimraf/-/rimraf-3.0.2.tgz";
          sha512 = "JZkJMZkAGFFPP2YqXZXPbMlMBgsxzE8ILs4lMIX/2o0L9UBw9O/Y3o6wFw/i9YLapcUJWwqbi3kdxIPdC62TIA==";
        };
      };
      "run-async-2.4.1" = {
        name = "run-async";
        packageName = "run-async";
        version = "2.4.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/run-async/-/run-async-2.4.1.tgz";
          sha512 = "tvVnVv01b8c1RrA6Ep7JkStj85Guv/YrMcwqYQnwjsAS2cTmmPGBBjAjpCW7RrSodNSoE2/qg9O4bceNvUuDgQ==";
        };
      };
      "rxjs-6.6.7" = {
        name = "rxjs";
        packageName = "rxjs";
        version = "6.6.7";
        src = fetchurl {
          url = "https://registry.npmjs.org/rxjs/-/rxjs-6.6.7.tgz";
          sha512 = "hTdwr+7yYNIT5n4AMYp85KA6yw2Va0FLa3Rguvbpa4W3I5xynaBZo41cM3XM+4Q6fRMj3sBYIR1VAmZMXYJvRQ==";
        };
      };
      "rxjs-7.8.1" = {
        name = "rxjs";
        packageName = "rxjs";
        version = "7.8.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/rxjs/-/rxjs-7.8.1.tgz";
          sha512 = "AA3TVj+0A2iuIoQkWEK/tqFjBq2j+6PO6Y0zJcvzLAFhEFIO3HL0vls9hWLncZbAAbK0mar7oZ4V079I/qPMxg==";
        };
      };
      "safe-buffer-5.2.1" = {
        name = "safe-buffer";
        packageName = "safe-buffer";
        version = "5.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz";
          sha512 = "rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ==";
        };
      };
      "safer-buffer-2.1.2" = {
        name = "safer-buffer";
        packageName = "safer-buffer";
        version = "2.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
          sha512 = "YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
        };
      };
      "semver-7.5.3" = {
        name = "semver";
        packageName = "semver";
        version = "7.5.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/semver/-/semver-7.5.3.tgz";
          sha512 = "QBlUtyVk/5EeHbi7X0fw6liDZc7BBmEaSYn01fMU1OUYbf6GPsbTtd8WmnqbI20SeycoHSeiybkE/q1Q+qlThQ==";
        };
      };
      "set-blocking-2.0.0" = {
        name = "set-blocking";
        packageName = "set-blocking";
        version = "2.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz";
          sha512 = "KiKBS8AnWGEyLzofFfmvKwpdPzqiy16LvQfK3yv/fVH7Bj13/wl3JSR1J+rfgRE9q7xUJK4qvgS8raSOeLUehw==";
        };
      };
      "shebang-command-2.0.0" = {
        name = "shebang-command";
        packageName = "shebang-command";
        version = "2.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/shebang-command/-/shebang-command-2.0.0.tgz";
          sha512 = "kHxr2zZpYtdmrN1qDjrrX/Z1rR1kG8Dx+gkpK1G4eXmvXswmcE1hTWBWYUzlraYw1/yZp6YuDY77YtvbN0dmDA==";
        };
      };
      "shebang-regex-3.0.0" = {
        name = "shebang-regex";
        packageName = "shebang-regex";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-3.0.0.tgz";
          sha512 = "7++dFhtcx3353uBaq8DDR4NuxBetBzC7ZQOhmTQInHEd6bSrXdiEyzCvG07Z44UYdLShWUyXt5M/yhz8ekcb1A==";
        };
      };
      "signal-exit-3.0.7" = {
        name = "signal-exit";
        packageName = "signal-exit";
        version = "3.0.7";
        src = fetchurl {
          url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.7.tgz";
          sha512 = "wnD2ZE+l+SPC/uoS0vXeE9L1+0wuaMqKlfz9AMUo38JsyLSBWSFcHR1Rri62LZc12vLr1gb3jl7iwQhgwpAbGQ==";
        };
      };
      "signal-exit-4.1.0" = {
        name = "signal-exit";
        packageName = "signal-exit";
        version = "4.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/signal-exit/-/signal-exit-4.1.0.tgz";
          sha512 = "bzyZ1e88w9O1iNJbKnOlvYTrWPDl46O1bG0D3XInv+9tkPrxrN8jUUTiFlDkkmKWgn1M6CfIA13SuGqOa9Korw==";
        };
      };
      "sigstore-1.9.0" = {
        name = "sigstore";
        packageName = "sigstore";
        version = "1.9.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/sigstore/-/sigstore-1.9.0.tgz";
          sha512 = "0Zjz0oe37d08VeOtBIuB6cRriqXse2e8w+7yIy2XSXjshRKxbc2KkhXjL229jXSxEm7UbcjS76wcJDGQddVI9A==";
        };
      };
      "smart-buffer-4.2.0" = {
        name = "smart-buffer";
        packageName = "smart-buffer";
        version = "4.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/smart-buffer/-/smart-buffer-4.2.0.tgz";
          sha512 = "94hK0Hh8rPqQl2xXc3HsaBoOXKV20MToPkcXvwbISWLEs+64sBq5kFgn2kJDHb1Pry9yrP0dxrCI9RRci7RXKg==";
        };
      };
      "socks-2.8.3" = {
        name = "socks";
        packageName = "socks";
        version = "2.8.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/socks/-/socks-2.8.3.tgz";
          sha512 = "l5x7VUUWbjVFbafGLxPWkYsHIhEvmF85tbIeFZWc8ZPtoMyybuEhL7Jye/ooC4/d48FgOjSJXgsF/AJPYCW8Zw==";
        };
      };
      "socks-proxy-agent-7.0.0" = {
        name = "socks-proxy-agent";
        packageName = "socks-proxy-agent";
        version = "7.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/socks-proxy-agent/-/socks-proxy-agent-7.0.0.tgz";
          sha512 = "Fgl0YPZ902wEsAyiQ+idGd1A7rSFx/ayC1CQVMw5P+EQx2V0SgpGtf6OKFhVjPflPUl9YMmEOnmfjCdMUsygww==";
        };
      };
      "source-map-0.7.4" = {
        name = "source-map";
        packageName = "source-map";
        version = "0.7.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/source-map/-/source-map-0.7.4.tgz";
          sha512 = "l3BikUxvPOcn5E74dZiq5BGsTb5yEwhaTSzccU6t4sDOH8NWJCstKO5QT2CvtFoK6F0saL7p9xHAqHOlCPJygA==";
        };
      };
      "spdx-correct-3.2.0" = {
        name = "spdx-correct";
        packageName = "spdx-correct";
        version = "3.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/spdx-correct/-/spdx-correct-3.2.0.tgz";
          sha512 = "kN9dJbvnySHULIluDHy32WHRUu3Og7B9sbY7tsFLctQkIqnMh3hErYgdMjTYuqmcXX+lK5T1lnUt3G7zNswmZA==";
        };
      };
      "spdx-exceptions-2.5.0" = {
        name = "spdx-exceptions";
        packageName = "spdx-exceptions";
        version = "2.5.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-2.5.0.tgz";
          sha512 = "PiU42r+xO4UbUS1buo3LPJkjlO7430Xn5SVAhdpzzsPHsjbYVflnnFdATgabnLude+Cqu25p6N+g2lw/PFsa4w==";
        };
      };
      "spdx-expression-parse-3.0.1" = {
        name = "spdx-expression-parse";
        packageName = "spdx-expression-parse";
        version = "3.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-3.0.1.tgz";
          sha512 = "cbqHunsQWnJNE6KhVSMsMeH5H/L9EpymbzqTQ3uLwNCLZ1Q481oWaofqH7nO6V07xlXwY6PhQdQ2IedWx/ZK4Q==";
        };
      };
      "spdx-license-ids-3.0.20" = {
        name = "spdx-license-ids";
        packageName = "spdx-license-ids";
        version = "3.0.20";
        src = fetchurl {
          url = "https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-3.0.20.tgz";
          sha512 = "jg25NiDV/1fLtSgEgyvVyDunvaNHbuwF9lfNV17gSmPFAlYzdfNBlLtLzXTevwkPj7DhGbmN9VnmJIgLnhvaBw==";
        };
      };
      "sprintf-js-1.1.3" = {
        name = "sprintf-js";
        packageName = "sprintf-js";
        version = "1.1.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.1.3.tgz";
          sha512 = "Oo+0REFV59/rz3gfJNKQiBlwfHaSESl1pcGyABQsnnIfWOFt6JNj5gCog2U6MLZ//IGYD+nA8nI+mTShREReaA==";
        };
      };
      "ssri-10.0.6" = {
        name = "ssri";
        packageName = "ssri";
        version = "10.0.6";
        src = fetchurl {
          url = "https://registry.npmjs.org/ssri/-/ssri-10.0.6.tgz";
          sha512 = "MGrFH9Z4NP9Iyhqn16sDtBpRRNJ0Y2hNa6D65h736fVSaPCHr4DM4sWUNvVaSuC+0OBGhwsrydQwmgfg5LncqQ==";
        };
      };
      "ssri-9.0.1" = {
        name = "ssri";
        packageName = "ssri";
        version = "9.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/ssri/-/ssri-9.0.1.tgz";
          sha512 = "o57Wcn66jMQvfHG1FlYbWeZWW/dHZhJXjpIcTfXldXEk5nz5lStPo3mK0OJQfGR3RbZUlbISexbljkJzuEj/8Q==";
        };
      };
      "string-width-4.2.3" = {
        name = "string-width";
        packageName = "string-width";
        version = "4.2.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/string-width/-/string-width-4.2.3.tgz";
          sha512 = "wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==";
        };
      };
      "string-width-5.1.2" = {
        name = "string-width";
        packageName = "string-width";
        version = "5.1.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/string-width/-/string-width-5.1.2.tgz";
          sha512 = "HnLOCR3vjcY8beoNLtcjZ5/nxn2afmME6lhrDrebokqMap+XbeW8n9TXpPDOqdGK5qcI3oT0GKTW6wC7EMiVqA==";
        };
      };
      "string-width-cjs-4.2.3" = {
        name = "string-width-cjs";
        packageName = "string-width-cjs";
        version = "4.2.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/string-width/-/string-width-4.2.3.tgz";
          sha512 = "wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==";
        };
      };
      "string_decoder-1.3.0" = {
        name = "string_decoder";
        packageName = "string_decoder";
        version = "1.3.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.3.0.tgz";
          sha512 = "hkRX8U1WjJFd8LsDJ2yQ/wWWxaopEsABU1XfkM8A+j0+85JAGppt16cr1Whg6KIbb4okU6Mql6BOj+uup/wKeA==";
        };
      };
      "strip-ansi-6.0.1" = {
        name = "strip-ansi";
        packageName = "strip-ansi";
        version = "6.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
          sha512 = "Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
        };
      };
      "strip-ansi-7.1.0" = {
        name = "strip-ansi";
        packageName = "strip-ansi";
        version = "7.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-7.1.0.tgz";
          sha512 = "iq6eVVI64nQQTRYq2KtEg2d2uU7LElhTJwsH4YzIHZshxlgZms/wIc4VoDQTlG/IvVIrBKG06CrZnp0qv7hkcQ==";
        };
      };
      "strip-ansi-cjs-6.0.1" = {
        name = "strip-ansi-cjs";
        packageName = "strip-ansi-cjs";
        version = "6.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
          sha512 = "Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
        };
      };
      "supports-color-7.2.0" = {
        name = "supports-color";
        packageName = "supports-color";
        version = "7.2.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/supports-color/-/supports-color-7.2.0.tgz";
          sha512 = "qpCAvRl9stuOHveKsn7HncJRvv501qIacKzQlO/+Lwxc9+0q2wLyv4Dfvt80/DPn2pqOBsJdDiogXGR9+OvwRw==";
        };
      };
      "supports-preserve-symlinks-flag-1.0.0" = {
        name = "supports-preserve-symlinks-flag";
        packageName = "supports-preserve-symlinks-flag";
        version = "1.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz";
          sha512 = "ot0WnXS9fgdkgIcePe6RHNk1WA8+muPa6cSjeR3V8K27q9BB1rTE3R1p7Hv0z1ZyAc8s6Vvv8DIyWf681MAt0w==";
        };
      };
      "symbol-observable-4.0.0" = {
        name = "symbol-observable";
        packageName = "symbol-observable";
        version = "4.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/symbol-observable/-/symbol-observable-4.0.0.tgz";
          sha512 = "b19dMThMV4HVFynSAM1++gBHAbk2Tc/osgLIBZMKsyqh34jb2e8Os7T6ZW/Bt3pJFdBTd2JwAnAAEQV7rSNvcQ==";
        };
      };
      "tar-6.2.1" = {
        name = "tar";
        packageName = "tar";
        version = "6.2.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/tar/-/tar-6.2.1.tgz";
          sha512 = "DZ4yORTwrbTj/7MZYq2w+/ZFdI6OZ/f9SFHR+71gIVUZhOQPHzVCLpvRnPgyaMpfWxxk/4ONva3GQSyNIKRv6A==";
        };
      };
      "through-2.3.8" = {
        name = "through";
        packageName = "through";
        version = "2.3.8";
        src = fetchurl {
          url = "https://registry.npmjs.org/through/-/through-2.3.8.tgz";
          sha512 = "w89qg7PI8wAdvX60bMDP+bFoD5Dvhm9oLheFp5O4a2QF0cSBGsBX4qZmadPMvVqlLJBBci+WqGGOAPvcDeNSVg==";
        };
      };
      "tmp-0.0.33" = {
        name = "tmp";
        packageName = "tmp";
        version = "0.0.33";
        src = fetchurl {
          url = "https://registry.npmjs.org/tmp/-/tmp-0.0.33.tgz";
          sha512 = "jRCJlojKnZ3addtTOjdIqoRuPEKBvNXcGYqzO6zWZX8KfKEpnGY5jfggJQ3EjKuu8D4bJRr0y+cYJFmYbImXGw==";
        };
      };
      "to-regex-range-5.0.1" = {
        name = "to-regex-range";
        packageName = "to-regex-range";
        version = "5.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/to-regex-range/-/to-regex-range-5.0.1.tgz";
          sha512 = "65P7iz6X5yEr1cwcgvQxbbIw7Uk3gOy5dIdtZ4rDveLqhrdJP+Li/Hx6tyK0NEb+2GCyneCMJiGqrADCSNk8sQ==";
        };
      };
      "tslib-1.14.1" = {
        name = "tslib";
        packageName = "tslib";
        version = "1.14.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/tslib/-/tslib-1.14.1.tgz";
          sha512 = "Xni35NKzjgMrwevysHTCArtLDpPvye8zV/0E4EyYn43P7/7qvQwPh9BGkHewbMulVntbigmcT7rdX3BNo9wRJg==";
        };
      };
      "tslib-2.8.1" = {
        name = "tslib";
        packageName = "tslib";
        version = "2.8.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/tslib/-/tslib-2.8.1.tgz";
          sha512 = "oJFu94HQb+KVduSUQL7wnpmqnfmLsOA/nAh6b6EH0wCEoK0/mPeXU6c3wKDV83MkOuHPRHtSXKKU99IBazS/2w==";
        };
      };
      "tuf-js-1.1.7" = {
        name = "tuf-js";
        packageName = "tuf-js";
        version = "1.1.7";
        src = fetchurl {
          url = "https://registry.npmjs.org/tuf-js/-/tuf-js-1.1.7.tgz";
          sha512 = "i3P9Kgw3ytjELUfpuKVDNBJvk4u5bXL6gskv572mcevPbSKCV3zt3djhmlEQ65yERjIbOSncy7U4cQJaB1CBCg==";
        };
      };
      "type-fest-0.21.3" = {
        name = "type-fest";
        packageName = "type-fest";
        version = "0.21.3";
        src = fetchurl {
          url = "https://registry.npmjs.org/type-fest/-/type-fest-0.21.3.tgz";
          sha512 = "t0rzBq87m3fVcduHDUFhKmyyX+9eo6WQjZvf51Ea/M0Q7+T374Jp1aUiyUl0GKxp8M/OETVHSDvmkyPgvX+X2w==";
        };
      };
      "unique-filename-2.0.1" = {
        name = "unique-filename";
        packageName = "unique-filename";
        version = "2.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/unique-filename/-/unique-filename-2.0.1.tgz";
          sha512 = "ODWHtkkdx3IAR+veKxFV+VBkUMcN+FaqzUUd7IZzt+0zhDZFPFxhlqwPF3YQvMHx1TD0tdgYl+kuPnJ8E6ql7A==";
        };
      };
      "unique-filename-3.0.0" = {
        name = "unique-filename";
        packageName = "unique-filename";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/unique-filename/-/unique-filename-3.0.0.tgz";
          sha512 = "afXhuC55wkAmZ0P18QsVE6kp8JaxrEokN2HGIoIVv2ijHQd419H0+6EigAFcIzXeMIkcIkNBpB3L/DXB3cTS/g==";
        };
      };
      "unique-slug-3.0.0" = {
        name = "unique-slug";
        packageName = "unique-slug";
        version = "3.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/unique-slug/-/unique-slug-3.0.0.tgz";
          sha512 = "8EyMynh679x/0gqE9fT9oilG+qEt+ibFyqjuVTsZn1+CMxH+XLlpvr2UZx4nVcCwTpx81nICr2JQFkM+HPLq4w==";
        };
      };
      "unique-slug-4.0.0" = {
        name = "unique-slug";
        packageName = "unique-slug";
        version = "4.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/unique-slug/-/unique-slug-4.0.0.tgz";
          sha512 = "WrcA6AyEfqDX5bWige/4NQfPZMtASNVxdmWR76WESYQVAACSgWcR6e9i0mofqqBxYFtL4oAxPIptY73/0YE1DQ==";
        };
      };
      "uri-js-4.4.1" = {
        name = "uri-js";
        packageName = "uri-js";
        version = "4.4.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/uri-js/-/uri-js-4.4.1.tgz";
          sha512 = "7rKUyy33Q1yc98pQ1DAmLtwX109F7TIfWlW1Ydo8Wl1ii1SeHieeh0HHfPeL2fMXK6z0s8ecKs9frCuLJvndBg==";
        };
      };
      "util-deprecate-1.0.2" = {
        name = "util-deprecate";
        packageName = "util-deprecate";
        version = "1.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
          sha512 = "EPD5q1uXyFxJpCrLnCc1nHnq3gOa6DZBocAIiI2TaSCA7VCJ1UJDMagCzIkXNsUYfD1daK//LTEQ8xiIbrHtcw==";
        };
      };
      "validate-npm-package-license-3.0.4" = {
        name = "validate-npm-package-license";
        packageName = "validate-npm-package-license";
        version = "3.0.4";
        src = fetchurl {
          url = "https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.4.tgz";
          sha512 = "DpKm2Ui/xN7/HQKCtpZxoRWBhZ9Z0kqtygG8XCgNQ8ZlDnxuQmWhj566j8fN4Cu3/JmbhsDo7fcAJq4s9h27Ew==";
        };
      };
      "validate-npm-package-name-5.0.1" = {
        name = "validate-npm-package-name";
        packageName = "validate-npm-package-name";
        version = "5.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/validate-npm-package-name/-/validate-npm-package-name-5.0.1.tgz";
          sha512 = "OljLrQ9SQdOUqTaQxqL5dEfZWrXExyyWsozYlAWFawPVNuD83igl7uJD2RTkNMbniIYgt8l81eCJGIdQF7avLQ==";
        };
      };
      "wcwidth-1.0.1" = {
        name = "wcwidth";
        packageName = "wcwidth";
        version = "1.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/wcwidth/-/wcwidth-1.0.1.tgz";
          sha512 = "XHPEwS0q6TaxcvG85+8EYkbiCux2XtWG2mkc47Ng2A77BQu9+DqIOJldST4HgPkuea7dvKSj5VgX3P1d4rW8Tg==";
        };
      };
      "which-2.0.2" = {
        name = "which";
        packageName = "which";
        version = "2.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
          sha512 = "BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
        };
      };
      "which-3.0.1" = {
        name = "which";
        packageName = "which";
        version = "3.0.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/which/-/which-3.0.1.tgz";
          sha512 = "XA1b62dzQzLfaEOSQFTCOd5KFf/1VSzZo7/7TUjnya6u0vGGKzU96UQBZTAThCb2j4/xjBAyii1OhRLJEivHvg==";
        };
      };
      "wide-align-1.1.5" = {
        name = "wide-align";
        packageName = "wide-align";
        version = "1.1.5";
        src = fetchurl {
          url = "https://registry.npmjs.org/wide-align/-/wide-align-1.1.5.tgz";
          sha512 = "eDMORYaPNZ4sQIuuYPDHdQvf4gyCF9rEEV/yPxGfwPkRodwEgiMUUXTx/dex+Me0wxx53S+NgUHaP7y3MGlDmg==";
        };
      };
      "wrap-ansi-7.0.0" = {
        name = "wrap-ansi";
        packageName = "wrap-ansi";
        version = "7.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-7.0.0.tgz";
          sha512 = "YVGIj2kamLSTxw6NsZjoBxfSwsn0ycdesmc4p+Q21c5zPuZ1pl+NfxVdxPtdHvmNVOQ6XSYG4AUtyt/Fi7D16Q==";
        };
      };
      "wrap-ansi-8.1.0" = {
        name = "wrap-ansi";
        packageName = "wrap-ansi";
        version = "8.1.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-8.1.0.tgz";
          sha512 = "si7QWI6zUMq56bESFvagtmzMdGOtoxfR+Sez11Mobfc7tm+VkUckk9bW2UeffTGVUbOksxmSw0AA2gs8g71NCQ==";
        };
      };
      "wrap-ansi-cjs-7.0.0" = {
        name = "wrap-ansi-cjs";
        packageName = "wrap-ansi-cjs";
        version = "7.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-7.0.0.tgz";
          sha512 = "YVGIj2kamLSTxw6NsZjoBxfSwsn0ycdesmc4p+Q21c5zPuZ1pl+NfxVdxPtdHvmNVOQ6XSYG4AUtyt/Fi7D16Q==";
        };
      };
      "wrappy-1.0.2" = {
        name = "wrappy";
        packageName = "wrappy";
        version = "1.0.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
          sha512 = "l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
        };
      };
      "y18n-5.0.8" = {
        name = "y18n";
        packageName = "y18n";
        version = "5.0.8";
        src = fetchurl {
          url = "https://registry.npmjs.org/y18n/-/y18n-5.0.8.tgz";
          sha512 = "0pfFzegeDWJHJIAmTLRP2DwHjdF5s7jo9tuztdQxAhINCdvS+3nGINqPd00AphqJR/0LhANUS6/+7SCb98YOfA==";
        };
      };
      "yallist-4.0.0" = {
        name = "yallist";
        packageName = "yallist";
        version = "4.0.0";
        src = fetchurl {
          url = "https://registry.npmjs.org/yallist/-/yallist-4.0.0.tgz";
          sha512 = "3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A==";
        };
      };
      "yargs-17.6.2" = {
        name = "yargs";
        packageName = "yargs";
        version = "17.6.2";
        src = fetchurl {
          url = "https://registry.npmjs.org/yargs/-/yargs-17.6.2.tgz";
          sha512 = "1/9UrdHjDZc0eOU0HxOHoS78C69UD3JRMvzlJ7S79S2nTaWRA/whGCTV8o9e/N/1Va9YIV7Q4sOxD8VV4pCWOw==";
        };
      };
      "yargs-parser-21.1.1" = {
        name = "yargs-parser";
        packageName = "yargs-parser";
        version = "21.1.1";
        src = fetchurl {
          url = "https://registry.npmjs.org/yargs-parser/-/yargs-parser-21.1.1.tgz";
          sha512 = "tVpsJW7DdjecAiFpbIB1e3qxIQsE6NoPc5/eTdrbbIC4h0LVsWhnoa3g+m2HclBIujHzsxZ4VJVA+GUuc2/LBw==";
        };
      };
    };
  in [
    (sources."@angular-devkit/architect-0.1502.11"
      // {
        dependencies = [
          sources."rxjs-6.6.7"
          sources."tslib-1.14.1"
        ];
      })
    (sources."@angular-devkit/core-15.2.11"
      // {
        dependencies = [
          sources."rxjs-6.6.7"
          sources."tslib-1.14.1"
        ];
      })
    (sources."@angular-devkit/schematics-15.2.11"
      // {
        dependencies = [
          sources."rxjs-6.6.7"
          sources."tslib-1.14.1"
        ];
      })
    sources."@gar/promisify-1.1.3"
    (sources."@isaacs/cliui-8.0.2"
      // {
        dependencies = [
          sources."ansi-regex-6.1.0"
          sources."ansi-styles-6.2.1"
          sources."emoji-regex-9.2.2"
          sources."string-width-5.1.2"
          sources."strip-ansi-7.1.0"
          sources."wrap-ansi-8.1.0"
        ];
      })
    sources."@jridgewell/sourcemap-codec-1.5.0"
    sources."@npmcli/fs-3.1.1"
    (sources."@npmcli/git-4.1.0"
      // {
        dependencies = [
          sources."which-3.0.1"
        ];
      })
    sources."@npmcli/installed-package-contents-2.1.0"
    sources."@npmcli/move-file-2.0.1"
    sources."@npmcli/node-gyp-3.0.0"
    (sources."@npmcli/promise-spawn-6.0.2"
      // {
        dependencies = [
          sources."which-3.0.1"
        ];
      })
    (sources."@npmcli/run-script-6.0.2"
      // {
        dependencies = [
          sources."which-3.0.1"
        ];
      })
    sources."@schematics/angular-15.2.11"
    sources."@sigstore/bundle-1.1.0"
    sources."@sigstore/protobuf-specs-0.2.1"
    sources."@sigstore/sign-1.0.0"
    sources."@sigstore/tuf-1.0.3"
    sources."@tootallnate/once-2.0.0"
    sources."@tufjs/canonical-json-1.0.0"
    sources."@tufjs/models-1.0.4"
    sources."@yarnpkg/lockfile-1.1.0"
    sources."abbrev-1.1.1"
    sources."agent-base-6.0.2"
    sources."agentkeepalive-4.5.0"
    sources."aggregate-error-3.1.0"
    sources."ajv-8.12.0"
    sources."ajv-formats-2.1.1"
    sources."ansi-colors-4.1.3"
    sources."ansi-escapes-4.3.2"
    sources."ansi-regex-5.0.1"
    sources."ansi-styles-4.3.0"
    sources."anymatch-3.1.3"
    sources."aproba-2.0.0"
    sources."are-we-there-yet-3.0.1"
    sources."balanced-match-1.0.2"
    sources."base64-js-1.5.1"
    sources."binary-extensions-2.3.0"
    sources."bl-4.1.0"
    sources."brace-expansion-2.0.1"
    sources."braces-3.0.3"
    sources."buffer-5.7.1"
    (sources."cacache-17.1.4"
      // {
        dependencies = [
          sources."minipass-7.1.2"
        ];
      })
    sources."chalk-4.1.2"
    sources."chardet-0.7.0"
    sources."chokidar-3.6.0"
    sources."chownr-2.0.0"
    sources."clean-stack-2.2.0"
    sources."cli-cursor-3.1.0"
    sources."cli-spinners-2.9.2"
    sources."cli-width-3.0.0"
    sources."cliui-8.0.1"
    sources."clone-1.0.4"
    sources."color-convert-2.0.1"
    sources."color-name-1.1.4"
    sources."color-support-1.1.3"
    sources."concat-map-0.0.1"
    sources."console-control-strings-1.1.0"
    sources."cross-spawn-7.0.6"
    sources."debug-4.3.7"
    sources."defaults-1.0.4"
    sources."define-lazy-prop-2.0.0"
    sources."delegates-1.0.0"
    sources."eastasianwidth-0.2.0"
    sources."emoji-regex-8.0.0"
    sources."encoding-0.1.13"
    sources."env-paths-2.2.1"
    sources."err-code-2.0.3"
    sources."escalade-3.2.0"
    sources."escape-string-regexp-1.0.5"
    sources."exponential-backoff-3.1.1"
    (sources."external-editor-3.1.0"
      // {
        dependencies = [
          sources."iconv-lite-0.4.24"
        ];
      })
    sources."fast-deep-equal-3.1.3"
    sources."figures-3.2.0"
    sources."fill-range-7.1.1"
    (sources."foreground-child-3.3.0"
      // {
        dependencies = [
          sources."signal-exit-4.1.0"
        ];
      })
    (sources."fs-minipass-3.0.3"
      // {
        dependencies = [
          sources."minipass-7.1.2"
        ];
      })
    sources."fs.realpath-1.0.0"
    sources."function-bind-1.1.2"
    sources."gauge-4.0.4"
    sources."get-caller-file-2.0.5"
    (sources."glob-10.4.5"
      // {
        dependencies = [
          sources."minipass-7.1.2"
        ];
      })
    sources."glob-parent-5.1.2"
    sources."graceful-fs-4.2.11"
    sources."has-flag-4.0.0"
    sources."has-unicode-2.0.1"
    sources."hasown-2.0.2"
    sources."hosted-git-info-6.1.3"
    sources."http-cache-semantics-4.1.1"
    sources."http-proxy-agent-5.0.0"
    sources."https-proxy-agent-5.0.1"
    sources."humanize-ms-1.2.1"
    sources."iconv-lite-0.6.3"
    sources."ieee754-1.2.1"
    sources."ignore-walk-6.0.5"
    sources."imurmurhash-0.1.4"
    sources."indent-string-4.0.0"
    sources."infer-owner-1.0.4"
    sources."inflight-1.0.6"
    sources."inherits-2.0.4"
    sources."ini-3.0.1"
    sources."inquirer-8.2.4"
    sources."ip-address-9.0.5"
    sources."is-binary-path-2.1.0"
    sources."is-core-module-2.15.1"
    sources."is-docker-2.2.1"
    sources."is-extglob-2.1.1"
    sources."is-fullwidth-code-point-3.0.0"
    sources."is-glob-4.0.3"
    sources."is-interactive-1.0.0"
    sources."is-lambda-1.0.1"
    sources."is-number-7.0.0"
    sources."is-unicode-supported-0.1.0"
    sources."is-wsl-2.2.0"
    sources."isexe-2.0.0"
    sources."jackspeak-3.4.3"
    sources."jsbn-1.1.0"
    sources."json-parse-even-better-errors-3.0.2"
    sources."json-schema-traverse-1.0.0"
    sources."jsonc-parser-3.2.0"
    sources."jsonparse-1.3.1"
    sources."lodash-4.17.21"
    sources."log-symbols-4.1.0"
    sources."lru-cache-7.18.3"
    sources."magic-string-0.29.0"
    (sources."make-fetch-happen-11.1.1"
      // {
        dependencies = [
          sources."minipass-5.0.0"
        ];
      })
    sources."mimic-fn-2.1.0"
    sources."minimatch-9.0.5"
    sources."minipass-4.2.8"
    (sources."minipass-collect-1.0.2"
      // {
        dependencies = [
          sources."minipass-3.3.6"
        ];
      })
    (sources."minipass-fetch-3.0.5"
      // {
        dependencies = [
          sources."minipass-7.1.2"
        ];
      })
    (sources."minipass-flush-1.0.5"
      // {
        dependencies = [
          sources."minipass-3.3.6"
        ];
      })
    (sources."minipass-json-stream-1.0.2"
      // {
        dependencies = [
          sources."minipass-3.3.6"
        ];
      })
    (sources."minipass-pipeline-1.2.4"
      // {
        dependencies = [
          sources."minipass-3.3.6"
        ];
      })
    (sources."minipass-sized-1.0.3"
      // {
        dependencies = [
          sources."minipass-3.3.6"
        ];
      })
    (sources."minizlib-2.1.2"
      // {
        dependencies = [
          sources."minipass-3.3.6"
        ];
      })
    sources."mkdirp-1.0.4"
    sources."ms-2.1.3"
    sources."mute-stream-0.0.8"
    sources."negotiator-0.6.4"
    (sources."node-gyp-9.4.1"
      // {
        dependencies = [
          sources."@npmcli/fs-2.1.2"
          sources."brace-expansion-1.1.11"
          (sources."cacache-16.1.3"
            // {
              dependencies = [
                sources."brace-expansion-2.0.1"
                sources."glob-8.1.0"
                sources."minimatch-5.1.6"
              ];
            })
          sources."fs-minipass-2.1.0"
          sources."glob-7.2.3"
          sources."make-fetch-happen-10.2.1"
          sources."minimatch-3.1.2"
          sources."minipass-3.3.6"
          sources."minipass-fetch-2.1.2"
          sources."ssri-9.0.1"
          sources."unique-filename-2.0.1"
          sources."unique-slug-3.0.0"
        ];
      })
    sources."nopt-6.0.0"
    sources."normalize-package-data-5.0.0"
    sources."normalize-path-3.0.0"
    sources."npm-bundled-3.0.1"
    sources."npm-install-checks-6.3.0"
    sources."npm-normalize-package-bin-3.0.1"
    sources."npm-package-arg-10.1.0"
    sources."npm-packlist-7.0.4"
    sources."npm-pick-manifest-8.0.1"
    (sources."npm-registry-fetch-14.0.5"
      // {
        dependencies = [
          sources."minipass-5.0.0"
        ];
      })
    sources."npmlog-6.0.2"
    sources."once-1.4.0"
    sources."onetime-5.1.2"
    sources."open-8.4.1"
    sources."ora-5.4.1"
    sources."os-tmpdir-1.0.2"
    sources."p-map-4.0.0"
    sources."package-json-from-dist-1.0.1"
    sources."pacote-15.1.0"
    sources."path-is-absolute-1.0.1"
    sources."path-key-3.1.1"
    sources."path-parse-1.0.7"
    (sources."path-scurry-1.11.1"
      // {
        dependencies = [
          sources."lru-cache-10.4.3"
          sources."minipass-7.1.2"
        ];
      })
    sources."picomatch-2.3.1"
    sources."proc-log-3.0.0"
    sources."promise-inflight-1.0.1"
    sources."promise-retry-2.0.1"
    sources."punycode-2.3.1"
    sources."read-package-json-6.0.4"
    sources."read-package-json-fast-3.0.2"
    sources."readable-stream-3.6.2"
    sources."readdirp-3.6.0"
    sources."require-directory-2.1.1"
    sources."require-from-string-2.0.2"
    sources."resolve-1.22.1"
    sources."restore-cursor-3.1.0"
    sources."retry-0.12.0"
    (sources."rimraf-3.0.2"
      // {
        dependencies = [
          sources."brace-expansion-1.1.11"
          sources."glob-7.2.3"
          sources."minimatch-3.1.2"
        ];
      })
    sources."run-async-2.4.1"
    sources."rxjs-7.8.1"
    sources."safe-buffer-5.2.1"
    sources."safer-buffer-2.1.2"
    (sources."semver-7.5.3"
      // {
        dependencies = [
          sources."lru-cache-6.0.0"
        ];
      })
    sources."set-blocking-2.0.0"
    sources."shebang-command-2.0.0"
    sources."shebang-regex-3.0.0"
    sources."signal-exit-3.0.7"
    sources."sigstore-1.9.0"
    sources."smart-buffer-4.2.0"
    sources."socks-2.8.3"
    sources."socks-proxy-agent-7.0.0"
    sources."source-map-0.7.4"
    sources."spdx-correct-3.2.0"
    sources."spdx-exceptions-2.5.0"
    sources."spdx-expression-parse-3.0.1"
    sources."spdx-license-ids-3.0.20"
    sources."sprintf-js-1.1.3"
    (sources."ssri-10.0.6"
      // {
        dependencies = [
          sources."minipass-7.1.2"
        ];
      })
    sources."string-width-4.2.3"
    sources."string-width-cjs-4.2.3"
    sources."string_decoder-1.3.0"
    sources."strip-ansi-6.0.1"
    sources."strip-ansi-cjs-6.0.1"
    sources."supports-color-7.2.0"
    sources."supports-preserve-symlinks-flag-1.0.0"
    sources."symbol-observable-4.0.0"
    (sources."tar-6.2.1"
      // {
        dependencies = [
          (sources."fs-minipass-2.1.0"
            // {
              dependencies = [
                sources."minipass-3.3.6"
              ];
            })
          sources."minipass-5.0.0"
        ];
      })
    sources."through-2.3.8"
    sources."tmp-0.0.33"
    sources."to-regex-range-5.0.1"
    sources."tslib-2.8.1"
    sources."tuf-js-1.1.7"
    sources."type-fest-0.21.3"
    sources."unique-filename-3.0.0"
    sources."unique-slug-4.0.0"
    sources."uri-js-4.4.1"
    sources."util-deprecate-1.0.2"
    sources."validate-npm-package-license-3.0.4"
    sources."validate-npm-package-name-5.0.1"
    sources."wcwidth-1.0.1"
    sources."which-2.0.2"
    sources."wide-align-1.1.5"
    sources."wrap-ansi-7.0.0"
    sources."wrap-ansi-cjs-7.0.0"
    sources."wrappy-1.0.2"
    sources."y18n-5.0.8"
    sources."yallist-4.0.0"
    sources."yargs-17.6.2"
    sources."yargs-parser-21.1.1"
  ];
}

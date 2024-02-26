# Test Cases for mylatestformat/pdflatex issue

## Background
[My Latex Format](https://ctan.org/pkg/mylatexformat?lang=en) is used to speed up Latex Compilation by putting various libraries into a preamble, that is compiled into a fmt file, that can then be quickly included in the main compilation.

Currently, there is an issue where this workflow does not work when a non-ascii character is included in either the preamble or the main file.

At least for the preamble, the bug is caused by the line 
\expandafter\input\endinput%

This line comes at the end of mylatexformat.ltx, it instructs Tex to expand the token in \input (ie, load the contents of that file) and continue. This works with an ordinary ascii filename but fails with non-ascii characters or spaces.


## Test Cases

1. **Case 1:** Shows everything working as it should with only ascii characters.
2. **Case 2:** Show the bug where running pdflatex on a non-ascii tex file including the preamble fails.
3. **Case 3:** Removing the preamble and putting everything in the main tex file succeeds, even with non-ascii characters. This demonstrates it's an issue with non-ascii characters in the mylatexformat workflow.
4. **Case 4:** Demonstrates that including mylatexformat.ltx in the pdftex command means it will fail if the main tex file has non-ascii characters.
5. **Case 5:** Using a wrapper file to include the non-ascii files provides a workaround.
6. **Case 6:** Using a 1-line file, reproduction.ltx. The line in shown working successfully with compile.sh but failing with compile-nonascii.sh and compile-spaces.sh.
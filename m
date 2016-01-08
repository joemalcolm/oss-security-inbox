X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1686" "Friday" "8" "January" "2016" "10:38:37" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160108153837.733EF6C00E2@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request: WordPress: cross-site scripting vulnerability fixed in new 4.4.1 release" nil nil nil "1" "2016010815:38:37" "[oss-security] Re: CVE Request: WordPress: cross-site scripting vulnerability fixed in new 4.4.1 release" (number mark "U       cve-assign@m Jan  8   41/1686  " thread-indent "\"[oss-security] Re: CVE Request: WordPress: cross-site scripting vulnerability fixed in new 4.4.1 release\"\n") "<20160108140715.GA25718@eldamar.local>" ("<20160108140715.GA25718@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22500 invoked by uid 550); 8 Jan 2016 15:38:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22479 invoked from network); 8 Jan 2016 15:38:49 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160108140715.GA25718@eldamar.local>
Message-Id: <20160108153837.733EF6C00E2@smtpvmsrv1.mitre.org>
Date: Fri,  8 Jan 2016 10:38:37 -0500 (EST)
Subject: [oss-security] Re: CVE Request: WordPress: cross-site scripting vulnerability fixed in new 4.4.1 release

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://wordpress.org/news/2016/01/wordpress-4-4-1-security-and-maintenance-release/
> 
>> WordPress versions 4.4 and earlier are affected by a cross-site
>> scripting vulnerability that could allow a site to be compromised.
>> This was reported by Crtc4L.
> 
> There is no reference to the fix, but the change seems to be
> 
> https://core.trac.wordpress.org/changeset/36185
> 
> Cf. as well https://twitter.com/brutelogic/status/685105483397619713

Use CVE-2016-1564. This ID applies to the entirety of changeset/36185
(for example, we do not know whether the change involving
$this->stylesheet corresponds to a separate discovery).

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWj9b9AAoJEL54rhJi8gl5xCoQAIjZVJGRAEUNc3NK8wGYyKi6
jngwkTCRRaStqGwP5sGuiyAGGHB1kvSnzIn12Ptr2/aXuQszGLXYjNUjO9wp0DUV
zHyDHNje+pzaQ+fTmplH+jdqmLWhxfNXI1S691NZ1HzrtqJ3LolrzMgH+XkQKWII
iICBqr2xRLhSi7bAoFSKAV0ng4jE2f9IDpi+Eab0DKQHo5JKR5bFobvU6vq0dLhX
uQyO/k20thjj4OCw7VXZLfGky1PSy5314ruPaTZwghWTWylX6Vr9pXU8RhobKOYT
cGdfC1HHwydcYJOTx5vAAh2QQlobCRY1h35Qdcd1FQjPdSTuuki80+zaPVdpBtOM
Oyq1idcHDk+ApWtj15BwSb6ujWlbBcNvWGjQx49WBE0a3o1XIaZmD/LG5QuMFuJi
4FQhSvA2095UTJaa28Vo+DlV4zcZWnxQBgTOQAQ6fZnCKmLePGPTugKaHWWDhlVP
LWC4Q5T27x/hTTFaph615V/ttJ09y+ULxwwx4ghbOrn9R6HZ5jFhJ+oNGjN9K72I
tVqieqwwPctQKujb7rtIZBakJQRhMQrHB5mlgwN7uwoAfcLu5VbA2IsKWGQtPBwU
PoL/wb60/S7sj3Z/KbKj4e28hKn66y/Fh5yL+5hPhpugoVtJqNhObCr5CSGJ5Sdk
7lNVEZxFLFZbtqmfkjrD
=MSDs
-----END PGP SIGNATURE-----

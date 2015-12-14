X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2551" "Monday" "14" "December" "2015" "16:34:22" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151214213422.6D87D42E41C@smtpvbsrv1.mitre.org>" "61" "[oss-security] Re: Chef: knife bootstrap leaks validator privkey into system logs" nil nil nil "12" "2015121421:34:22" "[oss-security] Re: Chef: knife bootstrap leaks validator privkey into system logs" (number mark "U       cve-assign@m Dec 14   61/2551  " thread-indent "\"[oss-security] Re: Chef: knife bootstrap leaks validator privkey into system logs\"\n") "<20151214190402.GZ18118@netmeister.org>" ("<20151214190402.GZ18118@netmeister.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9859 invoked by uid 550); 14 Dec 2015 21:34:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9773 invoked from network); 14 Dec 2015 21:34:34 -0000
From: cve-assign@mitre.org
To: jschauma@netmeister.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20151214190402.GZ18118@netmeister.org>
Message-Id: <20151214213422.6D87D42E41C@smtpvbsrv1.mitre.org>
Date: Mon, 14 Dec 2015 16:34:22 -0500 (EST)
Subject: [oss-security] Re: Chef: knife bootstrap leaks validator privkey into system logs

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/chef/chef/issues/3871

Use CVE-2015-8559 for the originally described issue in 3871. The
"sudo command logging on most reasonable systems, in the system logs.
The logs may also be forwarded to other places (possibly in clear
text)" scenario, at least, seems relevant.

In general, an issue with unlogged private data on a command line
sometimes does not have a CVE ID, if the command line only occurs
during initial installation of a machine, before any unprivileged user
accounts would have access. (We don't know enough about the use cases
to determine whether that sometimes applies to chef.)


> I can't recall but I suspect this is also a problem with the
> validatorless bootstrapping as well, which copies client.pem up to the
> node instead validation.pem.

We aren't assigning a CVE ID for a "can't recall but I suspect this is
also a problem" report. If there is a second vulnerability disclosed by
lamont-granquist, then there should be a second CVE ID.


> https://github.com/chef/chef/issues/3872
> 
> creates private files via here-doc cat(1)ing followed by running
> chmod(1) and setting the permissions.
> 
> This is a race condition if the default umask creates files world- or
> group-readable (as is almost universally the case).

3872 was linked from 3871. If there is a race-condition vulnerability
disclosed in 3872, we may be able to assign a CVE ID. (We would not
want a CVE if the issue can occur only before unprivileged user
accounts would have access.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWbzQ9AAoJEL54rhJi8gl5VEcQAM7Zy7BGg+vE7gVr4FRDNraQ
3M7y6DxJJhzh62RZ4Lr5ji6HfEIL2/txr3PkhbqJW9wPIb1/IGQVEgps/eNGxbSl
sYnUa5qfP8zEBBRE5fJSrS2FbZaOd7AXu9W104SjVFyqTRayaYfdIAqwGOpAsMrJ
dUfndrTc7bKA4zLvfGa8p7Evq7mvop23bb+pYHFnD9WqYehlgo6ZVLV9v6jS03uI
DuSDvSoxKDKkq5ApkozomOiXg2VK2kGFlummVCiPZoY3H5WWKZg420mSgJqKFUR+
f+1jHsgyhD3KngSDowvTAY/j8PX2JkDCJ29BImKagKChFZgHjNcKZBQyNtmSE55e
aun489CNsLWpRs3hlY2ZQ0IObF4Qs94lFSNEJRNbrIS/7soOJF16BoL+PZxkAAyF
COJ9FoZIfVSbSwdwqf1HfGpzooPsspWOMuSoNyjFXCMdvDksQOogte0CDzp/L1r+
iV7gDEiO6teaTtnL4wp5uN4w+fWwU4BtNfDhzPUQRmo2CQrMQrShZ9+ko29/itiM
sGwRgnSHS4Z/Hd//Kgw7VFGbUFQ4NN8qY9q4NlFUVdZO6bDmaR7G/d59GqWh608C
lBB61MXqkcYN1LMJE/erzY9yZFocJMsy4/zxDQmwcoAF285/Hzfh2sDLuzxO2WL1
UJGdkZaz2pwZh4JG22m8
=yZOJ
-----END PGP SIGNATURE-----

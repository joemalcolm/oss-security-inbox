X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1503" "Tuesday" "12" "January" "2016" "11:57:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160112165730.931A4332228@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: click" nil nil nil "1" "2016011216:57:30" "[oss-security] Re: CVE Request: click" (number mark "U       cve-assign@m Jan 12   38/1503  " thread-indent "\"[oss-security] Re: CVE Request: click\"\n") "<5693E986.2010705@canonical.com>" ("<5693E986.2010705@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17782 invoked by uid 550); 12 Jan 2016 16:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17761 invoked from network); 12 Jan 2016 16:58:19 -0000
From: cve-assign@mitre.org
To: jamie@canonical.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ubuntu.com
In-Reply-To: <5693E986.2010705@canonical.com>
Message-Id: <20160112165730.931A4332228@smtpvbsrv1.mitre.org>
Date: Tue, 12 Jan 2016 11:57:30 -0500 (EST)
Subject: [oss-security] Re: CVE Request: click

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://launchpad.net/bugs/1506467
> http://www.ubuntu.com/usn/usn-2771-1/
> https://code.launchpad.net/~cjwatson/click/audit-missing-dot-slash/+merge/274554
> 
> assumed leading paths were always
> prefixed with './' which, for example, allows a crafted click to ship a '.click'
> directory to manipulate the click install process.
 
>> if data_name != "." and not data_name.startswith("./"):
>>     raise ClickInstallerAuditError

Use CVE-2015-8768.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWlS/iAAoJEL54rhJi8gl5tHIQAMyB+enXDpb+lK2WC84HhPLL
XdlCCbjTSnl9PofiLnvizcJgzy5V7C71mLpFjNT8QMiIr05YjjVW5Wp9uYpcgQPQ
/+LJ5r88cIt1aTwkrUTZ8wohLw6i6PmGZwSGS/QyZW54TbRKQP4KG4vefvOr2BT5
9d6upF0reFD+72MJN+oWebNoQg0aIzYraGjf5f/QoBEjVKlCxxZsfOape23jvY5t
lFpP8uC58PCCVr9r0bUZ+ukiQkTxZM8ccVZjkQhej1lLne1OCXbh7kWabcWGPSUu
1m+RGADGd3GNEkB6yPzYZP4fxi6TOhdyZM2MzP6q/AAQ9VK3b508EtYY0qgwnIXU
BoHUNT6o8ZVTaIkjO6VVYipfoY1xR+9aOPHxioKRqfSg76LAfAzVxHwUa9BnMzC8
h+DuA/LtxWpHzUSgGNy5azTpHX2XDOJ7nFUx90e64GnK6WrSNXbjIqVvmsk8By6b
UyXu7VnGtQxOgvZyisFYJoSLWCBqtoaxDhXwxi5TItbgxxUbpO2MJHX8JT7E/13J
LqDFO1P5trolISjUTdLAEaZhdlLOHSpGw0Fifu7BOsiwHbU5XI1o8uz52BfFWJiI
lvkqu4jBcTbP99HQ2mAjM0IlcJJ+4S5ebEA6VKlECrZKCfIv3hdJAs9G8l+xn+4N
UQysNOQCezuf9L1x/sjo
=NCgJ
-----END PGP SIGNATURE-----

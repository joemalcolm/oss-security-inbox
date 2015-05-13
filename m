X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1116" "Wednesday" "13" "May" "2015" "13:21:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150513172159.E7D0D6C001E@smtpvmsrv1.mitre.org>" "31" "[oss-security] Re: CVE request for proxychains-ng : current path as the first directory for the library search path" nil nil nil "5" "2015051317:21:59" "[oss-security] Re: CVE request for proxychains-ng : current path as the first directory for the library search path" (number mark "        cve-assign@m May 13   31/1116  " thread-indent "\"[oss-security] Re: CVE request for proxychains-ng : current path as the first directory for the library search path\"\n") "<0.161190001431413517.A2GfElQg.mtasaka@fedoraproject.org>" ("<0.161190001431413517.A2GfElQg.mtasaka@fedoraproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9482 invoked by uid 550); 13 May 2015 17:22:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9460 invoked from network); 13 May 2015 17:22:11 -0000
In-Reply-To: <0.161190001431413517.A2GfElQg.mtasaka@fedoraproject.org>
Message-Id: <20150513172159.E7D0D6C001E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 13 May 2015 13:21:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for proxychains-ng : current path as the first directory for the library search path
To: mtasaka@fedoraproject.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> ... proxychains4,
> which firstly sets LD_PRELOAD to dlopen libproxychains4.so
> (contained in the same binary rpm) and execvp() the arbitrary
> command user has specified.
>
> Looking at the code, this program (proxychains4) sets the current
> directory as the first path to search libproxychains4.so. ref:
>
> https://github.com/rofl0r/proxychains-ng/blob/master/src/main.c#L35

Use CVE-2015-3887.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVU4eXAAoJEKllVAevmvmsiocIAKgERxYqdSjl71wTIZfXc2CH
sVBdKfbzkFVV74rNQtVkrACnhmtWoUdCmhmSAJ/ae4AgioRF4sn2RFQTDqLeEbBw
O4W0tLVFYr4mTJrqyBvF0DZDFDdi3nwmF/f35/j2FDaxvpafqLtJ7CZks0IcUEYd
ZtT/Qr/nl8OAQ296nNLILiXzrIFsHviLZq8JE3eMlzt42a12hyVb7LuYkIxq7Jmf
bq42w8e7tiJblMNHJTduXzDKCP636C9Cx7jioTs5YwMsLhc0g6P2u0NNuT/Hddle
vhCiDJ548OT1494+s3Ll0dufRTmPwgMYEKO++BJnbAtJguE7t2bEYNVDdyAsOZM=
=Ikp6
-----END PGP SIGNATURE-----

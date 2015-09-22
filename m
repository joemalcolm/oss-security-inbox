X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1554" "Tuesday" "22" "September" "2015" "16:57:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150922205720.29C448BC042@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: Plone XSS" nil nil nil "9" "2015092220:57:20" "[oss-security] Re: CVE Request: Plone XSS" (number mark "        cve-assign@m Sep 22   38/1554  " thread-indent "\"[oss-security] Re: CVE Request: Plone XSS\"\n") "<CAL8hw9GkuYtt2hn4QfHTzXYEoN9bMYCq=Hgptpf4Cqv6Mcsfpw@mail.gmail.com>" ("<CAL8hw9GkuYtt2hn4QfHTzXYEoN9bMYCq=Hgptpf4Cqv6Mcsfpw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9411 invoked by uid 550); 22 Sep 2015 20:57:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9385 invoked from network); 22 Sep 2015 20:57:33 -0000
In-Reply-To: <CAL8hw9GkuYtt2hn4QfHTzXYEoN9bMYCq=Hgptpf4Cqv6Mcsfpw@mail.gmail.com>
Message-Id: <20150922205720.29C448BC042@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 22 Sep 2015 16:57:20 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Plone XSS
To: nathan.van.gheem@plone.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://plone.org/security/20150910/non-persistent-xss-in-plone
> https://github.com/plone/Products.CMFPlone/commit/3da710a2cd68587f0bf34f2e7ea1167d6eeee087

> +  if ('<script' in url or '%3Cscript' in url or 'javascript:' in url or
> +  'javascript%3A' in url):

Use CVE-2015-7316.

If more restrictions on url substrings are added later to address
other XSS attack vectors, those would not be within the scope of
CVE-2015-7316. The MITRE CVE team has not looked at whether any other
change is needed.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWAb2lAAoJEL54rhJi8gl5QmAQAIIj0j9BaJ9HfGiT5wsJ9QWd
OVkPn6pb/dKcvLV+ZCL5ZmEkGAex7X7Jy8r8mZyePCEvdRkY7NLyv4VPbmaCmQX5
LOYppbBG+ZlA9gQxkUjY+YV9COrxWNG4vvTul05sPvM9CODhJz8tY4J9VIj5ESgn
CQgxzeRlNHcewhvE4AvuQpZzBZXW/LFbKk4u1CWfJJxTosW8U4GWLmxZ3hRpAoOU
RClHw+W4oqudBet/1rd4O/S6dVJz+7SJCDirKbeRyK2qaI0iZiIDw023Vg5tO2hS
1jll34TriDCKz/vspB6L7oSQTeUTkKpnpJ+cmMsimyEGRYvRrvfXLVOV3bMI+/tJ
hGBbmm7YNAd3PX5IN1xrKt8CljACJvD0SAV13Ldbyk7FkhrvpsC0mqQzkmp8dW6D
bKXjJdwmaMp+IJIzLdoSyqsgmDQM1FhIbc4QyGQ/LiO1RnUKIDgt2M8oSeraYiU8
vvXbMPtSj1RwPKyG1sU51tx2z27ktj0tY67wedoMwz7t6wvDw8lXa+Yj960QPKsg
Ty+BsCipjADEDdPwgVBHR/ql0VEwPuohtnaJCjQBUcLsT69et2TC5duk0U9frNr/
EL+5yqumJ5KKQSf+L4xE8CS+83GyUoMGw1GpcddW0SKS/ChCNjN43rGlfe8yKSSb
Y2CGXnGXmPqDmFB+xcU6
=oYlR
-----END PGP SIGNATURE-----

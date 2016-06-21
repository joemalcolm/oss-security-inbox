X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2143" "Tuesday" "21" "June" "2016" "13:00:58" "-0500" "Gregory Haynes" "greg@greghaynes.net" "<1466532058.213043.644361457.02F3FA4A@webmail.messagingengine.com>" "55" "[oss-security] CVE Request Openstack-infra puppet-gerrit module xss vulnerability" nil nil nil "6" "2016062118:00:58" "[oss-security] CVE Request Openstack-infra puppet-gerrit module xss vulnerability" (number mark "U       greg@greghay Jun 21   55/2143  " thread-indent "\"[oss-security] CVE Request Openstack-infra puppet-gerrit module xss vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13379 invoked by uid 550); 21 Jun 2016 18:18:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31836 invoked from network); 21 Jun 2016 18:01:10 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=WhyHW7MEO4hSuMhtOPPHRcrpRKs=; b=i0Aur
	R3Ztzpmycl6cmD2YW/gl17wnMTtLwZHQSH9suWBJP4oSrCUAS9yYPMR6t4HfRubb
	6MUHTB+e4OrtgUAafL6PfdpTHSB8F51vM3UMSVSms/KnqmFzIv7r99NX8GQzC4eR
	d4vYdVGzO84pqCXxWCicyoRDfMJyoP1Cx3IWT4=
Message-Id: <1466532058.213043.644361457.02F3FA4A@webmail.messagingengine.com>
X-Sasl-Enc: M0tmU0McZp86F5bPt9eXNGlVg2+lKbuLc1GzUvDoP3m9 1466532058
From: Gregory Haynes <greg@greghaynes.net>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-eb8588c4
Date: Tue, 21 Jun 2016 13:00:58 -0500
Subject: [oss-security] CVE Request Openstack-infra puppet-gerrit module xss vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello Everyone,

A vulnerability was discovered in the OpenStack-Infra Puppet module
for Gerrit (see below). In order to ensure full traceability, we need
a CVE number assigned. This issue is already public.

It was recently discovered that our puppet-gerrit module configures
Gerrit in a way which makes it vulnerable to a XSS attack. This stems
from our configuration marking text/html as a 'safe' mimetype[1].
This configuration change was first made in May 2014[2] but we believe
it did not begin working until Feb 2015[3]. Using this, a user could
potentially craft a review which when visited at the proper url would
have access to the account information of any user visiting that url.

It is highly recommended that all downstream users of this module
apply this commit[4] to protect themselves against this attack.

Thanks,
Greg

1:
https://review.openstack.org/#/c/332219/

2:
http://git.openstack.org/cgit/openstack-infra/puppet-gerrit/commit/?id=346618da6d0527335b67d17dea78f7d6c55fb129

3:
http://git.openstack.org/cgit/openstack-infra/puppet-gerrit/commit/?id=c53838ae2246f74fd5206a1bdb7b8cac656529d9

4:
http://git.openstack.org/cgit/openstack-infra/puppet-gerrit/commit/?id=8573c2ee172f66c1667de49685c88fdc8883ca8b

  -- 
  Gregory Haynes
  greg@greghaynes.net
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXaX7NAAoJELwhhWqbFNDRFp4P/i8eqQYWzV6mbrPZKvYfF2HN
KWleeHMIIeMVcDpC2F/3rYIla0A+SMQqrKzPkbYJh10hEbdiEG/mDuYuYkISD/pf
Hud9a216bfZdj/naQzyc+0m4bae5Q7viudseX1oFDyHbSTGzEoWcPtakdp+BmYQ7
TsPJm9XsT0F29U0+hQBGOBzzkg5uP+56seou7wZ7WcmuWzLrbWGF8wPJ/XFitqjz
N7VN+Ckpd2jsRvlSNCEutS10pBXeH53NB4OWOMcfhOY3Xp2w6sqP3sOopvZZvoBz
u468Q2gd7bOmwfKnLKeeuO/JLrN8AJ2wH1vEXPwrVUgXj15Sf34j36XIpcLfTAVK
UH3FQ/xq57sdh79Ixa3E6uhlYOtLV9jF6+1Vt9eMApue6ERuv6phmXI6Ni1BM+hW
5pFXJJN/r/rAyTaY8cZLNV56OSPIRE95sJ2bWJ535W/4Unqt+pbTK4FRPBdBJNf3
IKPeh+Uxt7f3HbUwSWA72/1qOWH5yWQs6tanovg2CGwmoTzpRwz5ho+ARjjUljHq
tFfiVrsytW9bF16ffXVpUUnAAIqCWm/ZnTXlS96Xuqdj9pW0jTuW9EA8fzsYMQcL
nCf8gxHTPGW87P0v9Sf3IxmKp95X3QEdy+WdoH/F/UWTEp4uqICuiMVxwawv3AFL
G+xXItIFLYST0JUA0EiQ
=mBX/
-----END PGP SIGNATURE-----

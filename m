X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2019" "Sunday" "29" "May" "2016" "22:02:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160530020253.8412F6C0B16@smtpvmsrv1.mitre.org>" "53" "[oss-security] Re: CVE Request: GraphicsMagick and ImageMagick popen() shell vulnerability via filename" "^Cc:" nil nil "5" "2016053002:02:53" "[oss-security] Re: CVE Request: GraphicsMagick and ImageMagick popen() shell vulnerability via filename" (number mark "        cve-assign@m May 29   53/2019  " thread-indent "\"[oss-security] Re: CVE Request: GraphicsMagick and ImageMagick popen() shell vulnerability via filename\"\n") "<alpine.GSO.2.20.1605291453540.4552@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1605291453540.4552@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20263 invoked by uid 550); 30 May 2016 02:03:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20242 invoked from network); 30 May 2016 02:03:05 -0000
In-Reply-To: <alpine.GSO.2.20.1605291453540.4552@freddy.simplesystems.org>
Message-Id: <20160530020253.8412F6C0B16@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 29 May 2016 22:02:53 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: GraphicsMagick and ImageMagick popen() shell vulnerability via filename
To: bfriesen@simple.dallas.tx.us

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> if the first character of the file specification is
> a '|', then the remainder of the filename is passed to the shell for
> execution using the POSIX popen(3C) function
> 
> The simple solution to the problem is to disable the popen support
> (HAVE_POPEN) in GraphicsMagick's magick/blob.c as is done by the
> attached patch.

Use CVE-2016-5118.


> Previously supplied recommended patches for GraphicsMagick do
> successfully block this attack vector in SVG and MVG.

If there was a previous announcement of a vulnerability fix for a
subset of the exploitation methodologies, then a separate CVE ID is
also needed. The scope of CVE-2016-5118 is only the new "initial |
character" information announced in the
http://www.openwall.com/lists/oss-security/2016/05/29/7 post.

(For example, if there had previously been any type of announcement
that the

  xlink:href="|

substring was being blocked in the native SVG readers, then that can
have its own unique CVE ID.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXS57cAAoJEHb/MwWLVhi2MksP/j43+PGhpwdmLcAn0snPrMNM
1uVyeMvOasjPoIWqshe45UUIXUrBN9PdtlueJhsxEl6WtO/QUSRnVk+mVQShnOMq
K4KRqEk/7k0D7txEkulMwLK8phA2bMUGNX/YbliMBJD0z7YOB2dR7H97TszpJ0p1
rAudJXHiW4IUyNgZm/jjohhyA70jUl5XhwuAGVLoudrJeGnsJZ5e5Vbp130sGkgD
R8KUpmy4Bl2c04aWaevkSc4jKfL8qBUwxSZC6cHxo3au+7NnXCZ/fJhejV/p0phA
vq99kKlT/IqXQ+ON4T6AdzGpn4a+EVhp9pn6pknNg9vHtBpvEQuX8jeJx9jMdtIc
er9soxqmckeMEwoiJ9Hdm3SHYlH/orb9n3C+Woe18BLR3VjRMZA6PL9SBfVbkET0
Evtnui7BBUiYtVX62K2OTp+uTc2wfRKj7+paSAT5bGBfspD0p1heOfHeWJzJd28B
UNbhfS5mhpDKHLDKDeaQQjCE/icPyfsZsvlcsnGeSg1Pta1AtBiZYauiae7jCscX
BQTBoV7TTSbVfx1VP6jy9jGD30RW0Uj4c85wyDuRYmlOqzCE7/H/SGASjxGqQvLX
GjDHzDF0xvEbTqMyw+8yn/3eCW8eZy/y50DMc2TLdYpWIHQfMsWMY8K3LOS/tcaF
iOspq5Qmc+dxTuYQguTz
=7jWy
-----END PGP SIGNATURE-----

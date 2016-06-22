X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1650" "Wednesday" "22" "June" "2016" "07:02:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160622110200.7BE556C0B46@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request Openstack-infra puppet-gerrit module xss vulnerability" nil nil nil "6" "2016062211:02:00" "[oss-security] Re: CVE Request Openstack-infra puppet-gerrit module xss vulnerability" (number mark "U       cve-assign@m Jun 22   41/1650  " thread-indent "\"[oss-security] Re: CVE Request Openstack-infra puppet-gerrit module xss vulnerability\"\n") "<1466532058.213043.644361457.02F3FA4A@webmail.messagingengine.com>" ("<1466532058.213043.644361457.02F3FA4A@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27948 invoked by uid 550); 22 Jun 2016 11:02:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27928 invoked from network); 22 Jun 2016 11:02:12 -0000
From: cve-assign@mitre.org
To: greg@greghaynes.net
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1466532058.213043.644361457.02F3FA4A@webmail.messagingengine.com>
Message-Id: <20160622110200.7BE556C0B46@smtpvmsrv1.mitre.org>
Date: Wed, 22 Jun 2016 07:02:00 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Openstack-infra puppet-gerrit module xss vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> It was recently discovered that our puppet-gerrit module configures
> Gerrit in a way which makes it vulnerable to a XSS attack. This stems
> from our configuration marking text/html as a 'safe' mimetype
> 
> a user could
> potentially craft a review which when visited at the proper url would
> have access to the account information of any user visiting that url.
> 
> https://review.openstack.org/#/c/332219/
> http://git.openstack.org/cgit/openstack-infra/puppet-gerrit/commit/?id=8573c2ee172f66c1667de49685c88fdc8883ca8b

>> -[mimetype "text/html"]
>> -        safe = true

Use CVE-2016-5737.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXam9xAAoJEHb/MwWLVhi2BAIP/A/nVfFm9lCU2/r5Hn7/CHJ3
eZkfmbMZU6+GDNx6xp+5ZIu2OOWbEwmCh1daXxCu1z3YSVv/tq06nw5TZ57pufd/
K1vSdwwm54U1hdT8O/+TGV7tREVfyJMLncVIxwtctHOsnsODOQFCln89fpLYzObH
HOBOqii6TCqeyCyatjBsKRzIZz4Gy0FN+j3htWR6Ws+TDEujK/yjm/KeLak4QKp8
ZpVjxq3Cc9HmdQjnTR14uMNr1gcEhvKW9yBjzERarJ7/vzoNQLfLzmVLAnqP7xQK
vixrgxrD8UNU15frbFfxJ2EQk9wP3j8tXYag8XlAWkjbr++2Fy5EuN68lSqxqfnC
cgVFvTjyO7ValKzkuCPUBiBEo0e2lvspxZaEIxrqC7VvXWdtuuqftDjOiZ6KI2xN
R0LpyPylYho5n1lMLI6iZv5XUNpdTkLHLhjAMAZ5oLqqVcoGEeg8orvoC25GZIZg
+BAmu4k8mhs9oDlFVzXyk4Xpt/E8PBqYcUpfIFGzPYI6N5UUGN1tJ1doj5UXzJ04
opmmz2X859F8JjXLPutxWxJzVIwo1gS+HTNMEzyvOBgaSTB/6dD4+tGy538AH4Zt
jtkhEMH8WiYp8hOJ4ShiVBYBkldfOv9ScQoD70UtndKbjJnY4tEutPajqrb09dvX
tPrQg6mNSnadZYUBFGHA
=OuaR
-----END PGP SIGNATURE-----

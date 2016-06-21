X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2810" "Tuesday" "21" "June" "2016" "18:25:17" "-0400" "Jim Rollenhagen" "jim@jimrollenhagen.com" "<20160621222517.GE21113@jimrollenhagen.com>" "87" "[oss-security] Ironic node information including credentials exposed to unathenticated users" nil nil nil "6" "2016062122:25:17" "[oss-security] Ironic node information including credentials exposed to unathenticated users" (number mark "U       jim@jimrolle Jun 21   87/2810  " thread-indent "\"[oss-security] Ironic node information including credentials exposed to unathenticated users\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23816 invoked by uid 550); 21 Jun 2016 22:50:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3803 invoked from network); 21 Jun 2016 22:25:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jimrollenhagen.com;
	s=default; t=1466547919;
	bh=ZCFyf9qV5AUox8AfRKyRbgcDBIMxvY1VhDA2KuxRang=;
	h=Date:From:To:Subject;
	b=dUIQXKV2/m8nBou9Lu7+YPSouwATfwQ1j5OIa5xxCOYvfmeGjYcVzF35aUdQ19KJh
	 rxyDIeP5ffTbfLqMhthwIwY7ppIZIxSO/sJbyU80y/HpQx3EcEPv+mACMJs69BNSrC
	 0H8dGCPcmBF3lADMXaij7Cx3cG0x2Jb49h7siN5s=
Date: Tue, 21 Jun 2016 18:25:17 -0400
From: Jim Rollenhagen <jim@jimrollenhagen.com>
To: oss-security@lists.openwall.com
Message-ID: <20160621222517.GE21113@jimrollenhagen.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zbGR4y+acU1DwHSi"
Content-Disposition: inline
Subject: [oss-security] Ironic node information including credentials exposed to
 unathenticated users

--zbGR4y+acU1DwHSi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

=============================================================================
Ironic node information including credentials exposed to unathenticated users
=============================================================================

:Date: June 21, 2016
:CVE: CVE-2016-4985


Affects
~~~~~~~
- Ironic: >=2014.2, >=4.0.0 <=4.2.4, >=4.3.0 <=5.1.1


Description
~~~~~~~~~~~
Devananda van der Veen (IBM) reported the following vulnerability in Ironic.

A client with network access to the ironic-api service can bypass Keystone
authentication and retrieve all information about any Node registered with
Ironic, if they know (or are able to guess) the MAC address of a network card
belonging to that Node, by sending a crafted POST request to the
/v1/drivers/$DRIVER_NAME/vendor_passthru resource.

The response will include the full Node details, including management
passwords, even when /etc/ironic/policy.json is configured to hide passwords in
API responses.

This vulnerability has been verified in all currently supported branches
(liberty, mitaka, master) and traced back to code introduced in commit
3e568fbbbcc5748035c1448a0bdb26306470797c during the Juno development cycle.
Therefore, it is likely that both juno and kilo braches (and their releases)
are also affected.


Patches
~~~~~~~
https://review.openstack.org/332195 (Newton)
https://review.openstack.org/332196 (Mitaka)
https://review.openstack.org/332197 (Liberty)


Credits
~~~~~~~
- Devananda van der Veen from IBM (CVE-2016-4985)

References
~~~~~~~~~~
- https://bugs.launchpad.net/ironic/+bug/1572796
- http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2016-4985

Notes
~~~~~
- This fix is included in the upcoming 4.2.5 (Liberty), 5.1.2 (Mitaka), and
  6.0.0 (Newton) releases of Ironic.


--
Jim Rollenhagen
OpenStack Ironic Project Team Lead


--zbGR4y+acU1DwHSi
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXab7NAAoJELZqL5FCxsCcjtEP/RTM4as/TNxtCpoNyMwzopXk
1kC4se/yX5styvefWw0WEGTqX1W2ploT2bBvYSCMcvrUH63yVyMcZpUK1yz6QENB
MaB1VBx4n2SGYeQ351qBDFMCfD0e4+0RWQIYWrs/fXHa7fSkxeH8LBMtPvEYxhNv
4/ytu6eYZ0UUlKQwt8cNt6rxPGCOiPdB+l3lsANiK2VoeLThlgtNp7LMnvuHmNR4
dmAHiPYQuEvsppqC+NDf0n+wGegyMAnmXSk+2GtwCItPiV3JZK9ic43KwjrhuBOH
mp6/1kGJpkAxVPyG1AnMeDCMFEEzK7wGqezdSFqCOwrxCYB+FPiam3T3tAh5gbRx
xwnkoYcNngtK8qf+78ns8RscGL6n9GsnlC7pOBFbOMffTvUHh3H7KZLqgi2E/YR7
Jd8uoI4cwtAr2uJWmHPedgWoorTtO7jobQ4kFuwp+GUzSFwms+fpHP4d0BpWuGhD
47RLLnL5pljHGWlxxDrxHe8qk+LMng8MYwys1xJb5bdWMRbtkDCXckh5aY4cAwGz
Z/1g70/Yz+Au4oNWukRw/dKF4G6I3EupWWpmfTHCh/n1pp1ZeAfHViIN23xOIJQS
hbvxGcJ6qImsuQ2STjFOnZy1qdio4lAmXGZ8qUfOB0N/Layen31MMg7YBi6dYZ1B
N9IRPmyUq6mb0nG1ci7R
=XZCW
-----END PGP SIGNATURE-----

--zbGR4y+acU1DwHSi--

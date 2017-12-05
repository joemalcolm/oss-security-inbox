X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2746" "Tuesday" "5" "December" "2017" "14:53:30" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<1512485234.nayti5pl04.tristanC@fedora>" "87" "[oss-security] [OSSA 2017-005.1] Nova Filter Scheduler bypass through rebuild action (CVE-2017-16239) ERRATA" nil nil nil "12" "2017120514:53:30" "[oss-security] [OSSA 2017-005.1] Nova Filter Scheduler bypass through rebuild action (CVE-2017-16239) ERRATA" (number mark "U       tdecacqu@red Dec  5   87/2746  " thread-indent "\"[oss-security] [OSSA 2017-005.1] Nova Filter Scheduler bypass through rebuild action (CVE-2017-16239) ERRATA\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22142 invoked by uid 550); 5 Dec 2017 14:53:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22121 invoked from network); 5 Dec 2017 14:53:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:message-id:mime-version;
        bh=cuY2RupZ2HBT9SAFqCML/80tnl+uREQVEQazIFtdN9c=;
        b=rMs5CjCO860q9GgSenavqc+HHD1Zj/VRARlXWbTmcnzLo+mgJmS2OsO/yTBFn5/Ng3
         G8bY1dVTda/+nEjAQPJkOLF/r3l9ZpL12yk8LOqS+Zpdn+piuvgiGgUAK/I3swTRmIow
         N2sl/A5sJb7OPZ93zh6xirOB76Ot0curOfqdcKCLtXk1Nmak2fIReBo63GhidCLlVt5X
         2KWOKeuOllqWoeTNiivQfsi5/HajILWJYRZ0+16W6ztEjaI5WLt0o1zihsmcm8YMjHc6
         BsMDko811kWueTBh5pPHG1szjr/M/VkAxNXKlqptdTSoBQ8ZSty7ixVIvQMgXWTR+ayt
         ty2A==
X-Gm-Message-State: AKGB3mKYMNv8p/RaBB+jaH10YDsadh8RbPbuhbK1jUPDnvY00cwQjAZT
	ZRGBsXDXZClEankxXqt9PaA4bpe3ll8=
X-Google-Smtp-Source: AGs4zMa/sg6W3iCJbTumQJCHzsuCGHRW5d6tslFAYAwH9E0yXM+dlQT59SrZVM8FetP74PMABhQovQ==
X-Received: by 10.84.131.41 with SMTP id 38mr4221331pld.149.1512485591682;
        Tue, 05 Dec 2017 06:53:11 -0800 (PST)
Date: Tue, 05 Dec 2017 14:53:30 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-Id: <1512485234.nayti5pl04.tristanC@fedora>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
	micalg=pgp-sha256; boundary="=-SZ3KmPG8+TPD+lIp3Xhw"
Subject: [oss-security] [OSSA 2017-005.1] Nova Filter Scheduler bypass through rebuild action
 (CVE-2017-16239) ERRATA

--=-SZ3KmPG8+TPD+lIp3Xhw
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2017-005.1: Nova Filter Scheduler bypass through rebuild action
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: November 14, 2017
:CVE: CVE-2017-16239


Affects
~~~~~~~
- Nova: <=3D14.0.10, >=3D15.0.0 <=3D15.0.8, >=3D16.0.0 <=3D16.0.3


Description
~~~~~~~~~~~
George Shuklin from servers.com reported a vulnerability in Nova. By
rebuilding an instance, an authenticated user may be able to
circumvent the Filter Scheduler bypassing imposed filters (for
example, the ImagePropertiesFilter or the IsolatedHostsFilter). All
setups using Nova Filter Scheduler are affected.


Errata
~~~~~~
The former fix introduced regressions in the rebuild functionality.
Rebuild may fail depending on configured scheduler filters and
environment, for example, when the compute host is running at capacity
or when the host is disabled. This update provides an additional set
of fixes for these regressions.


Patches
~~~~~~~
- https://review.openstack.org/519684 (Newton)
- https://review.openstack.org/523434 (errata) (Newton)
- https://review.openstack.org/519681 (Ocata)
- https://review.openstack.org/523427 (errata) (Ocata)
- https://review.openstack.org/519672 (Pike)
- https://review.openstack.org/523212 (errata) (Pike)
- https://review.openstack.org/519662 (Queens)
- https://review.openstack.org/521186 (errata) (Queens)


Credits
~~~~~~~
- George Shuklin from Servers.com (CVE-2017-16239)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1664931
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-16239


OSSA History
~~~~~~~~~~~~
- 2017-12-05 - Errata 1
- 2017-11-14 - Original Version

--
Tristan Cacqueray
OpenStack Vulnerability Management Team

--=-SZ3KmPG8+TPD+lIp3Xhw
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE6xA96LXmnmMcb/F5IrmgXJJcxdgFAlomsuoACgkQIrmgXJJc
xdjdngf+NfI2lTWGVcm8bD9VATbueZ5zl9FGvzepPT3hqU19d5pwQa0GVu600vTG
/bayvLzizlYvLVYHsb+rZ2mucWS28nZ/uZru07oUAXt+3hzk1QYF0iV0b9zpSQRJ
cGOscvAXtOT7WPaGvZsvN8CmLryqG2UKmVCXL4kFGqQI4q39WZ02UcF7MCGLDX5n
KWA1etYJRSscMJkShjs/y5auFnzo49KWjzuyC6NRuKq2LvmNXLxAP+YIV5Wkf4PW
ZQPeQmQpvn6AU44uFCYmccZ9q9nWGizbb88lI5yIy06apd5Nr9lMjrPvyuFz+5jt
IGjjHSZQ2BF6Pjhw+YhVGblVOCFhcA==
=okGD
-----END PGP SIGNATURE-----

--=-SZ3KmPG8+TPD+lIp3Xhw--

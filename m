X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2108" "Tuesday" "14" "November" "2017" "16:28:50" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<1510676630.u75ilcjvpm.tristanC@fedora>" "69" "[oss-security] [OSSA-2017-005] Nova Filter Scheduler bypass through rebuild action (CVE-2017-16239)" nil nil nil "11" "2017111416:28:50" "[oss-security] [OSSA-2017-005] Nova Filter Scheduler bypass through rebuild action (CVE-2017-16239)" (number mark "U       tdecacqu@red Nov 14   69/2108  " thread-indent "\"[oss-security] [OSSA-2017-005] Nova Filter Scheduler bypass through rebuild action (CVE-2017-16239)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9451 invoked by uid 550); 14 Nov 2017 16:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9433 invoked from network); 14 Nov 2017 16:28:38 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:message-id:mime-version;
        bh=BDBn/oxkb2mj9xBeDAhwD5tW2bnuSPBnYb4rP/DGf4M=;
        b=nrU/YmnBGYOXfHyUXBpoHk1L4VVk9uH0nOaHb6kcAR8bRWOj5Q0RDy3XKFiEQnafIX
         F8XSRo5NFpcxdUs0Y2LaV8KZa0CkNo/p0XUFgiQOmi2DgWbcal3fpqZm/Qcs3UXU7s3D
         ZyA0PrezLXAIyIEfX4oDFxjSHFJAZxEzqkNbL9rzzGC7kyfkcuihuMTpR5w3V43Oe5Vp
         BdsVvlOocmSmPctn+gKY1KXYGe3hRt0RdcTkMiYPEHBroxpN+hD3kpwg5G1qNUbqNl0T
         RnusiIWR31Mrnyk4ix0OBVwplirFsTx5QJPOGcHB7GPxk1PmpQ03QMAKyzyIrRexWtpj
         qwXQ==
X-Gm-Message-State: AJaThX5p+f9YlGZisIqREH47vwWTgP1igiomM+r3gqnpR35IcHPQfVqI
	Sc4tX688gYyGIJokhi87JCJlQe13hUA=
X-Google-Smtp-Source: AGs4zMYW4s3KJOxRpigxtRJijwICwMsrrHPYQ9/hQkk4eADHAl/Ykn1CbXnCJVlcwOVAWjeSDYL85A==
X-Received: by 10.159.254.4 with SMTP id r4mr13167040pls.229.1510676906264;
        Tue, 14 Nov 2017 08:28:26 -0800 (PST)
Date: Tue, 14 Nov 2017 16:28:50 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-Id: <1510676630.u75ilcjvpm.tristanC@fedora>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
	micalg=pgp-sha256; boundary="=-+aosublB9WdMH7aplGvX"
Subject: [oss-security] [OSSA-2017-005] Nova Filter Scheduler bypass through rebuild action
 (CVE-2017-16239)

--=-+aosublB9WdMH7aplGvX
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2017-005: Nova Filter Scheduler bypass through rebuild action
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: November 14, 2017
:CVE: CVE-2017-16239


Affects
~~~~~~~
- Nova: <=3D14.0.9, >=3D15.0.0 <=3D15.0.7, >=3D16.0.0 <=3D16.0.2


Description
~~~~~~~~~~~
George Shuklin from servers.com reported a vulnerability in Nova. By
rebuilding an instance, an authenticated user may be able to
circumvent the Filter Scheduler bypassing imposed filters (for
example, the ImagePropertiesFilter or the IsolatedHostsFilter). All
setups using Nova Filter Scheduler are affected.


Patches
~~~~~~~
- https://review.openstack.org/519684 (Newton)
- https://review.openstack.org/519681 (Ocata)
- https://review.openstack.org/519672 (Pike)
- https://review.openstack.org/519662 (Queens)


Credits
~~~~~~~
- George Shuklin from Servers.com (CVE-2017-16239)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1664931
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-16239

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--=-+aosublB9WdMH7aplGvX
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE6xA96LXmnmMcb/F5IrmgXJJcxdgFAloLGcIACgkQIrmgXJJc
xdi+wgf9FRhZL7KTJvrjbioeJ/Fh5/eqN1H5ykJB9RLlaOvk0sk8nnRSr63QHNER
ibKfKs2DDwJ9TdXAevkwhu62xK79ASCsf1jjIBsD2VvPfChybazpXBpnez8qbyrU
UIkrzOnp4kS0WNeZ+81dchn+2qaDeL+QTpKI23VzlfT7vCBLcXZPuGT7387FLAfb
Pdawk9e6pmPzxa+t5H6HNoov58uLxNKgC1JDRBSiUqGWXDpWRxx0+jTio5g4boa9
tYithPUrR3E9+WClr7uHFr6H9uBzvGTb3/UpNl+Un3KYVOG4VdFrNQY2yGZ4VpVw
e4XL6zkaYsaaKaB8+hzPhXVgqy1QdA==
=8GRJ
-----END PGP SIGNATURE-----

--=-+aosublB9WdMH7aplGvX--

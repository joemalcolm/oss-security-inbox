X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2108" "Friday" "20" "April" "2018" "14:48:08" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<1524234832.jzv1c3sqzc.tristanC@fedora>" "75" "[oss-security] [OSSA-2018-001] Raw underlying encrypted volume access (CVE-2017-18191)" nil nil nil "4" "2018042014:48:08" "[oss-security] [OSSA-2018-001] Raw underlying encrypted volume access (CVE-2017-18191)" (number mark "U       tdecacqu@red Apr 20   75/2108  " thread-indent "\"[oss-security] [OSSA-2018-001] Raw underlying encrypted volume access (CVE-2017-18191)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26503 invoked by uid 550); 20 Apr 2018 14:48:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26477 invoked from network); 20 Apr 2018 14:48:01 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:message-id:mime-version;
        bh=xl8wBPVhfacz0/PytEctiW3fXnxeWPpYsdfLN0GkDOk=;
        b=noFNV8nC/vjQ1x0Yv5rqPQLu8LQKKX117C+RD5CVreDGKjlJlEN0nBS40SVn23hF84
         m+bIUwb7Eb7W2JUfoaiSXeOuZg7IU2hLc5youujlMsLz699Qi3zRL7dgkgo/YUQPYOer
         Tysmtt/lLnx27xj5zESPgX2eFLEGfV9dHcIHuOuBEOHTN5U678N4e9B3eukNh5XJK+gW
         O4AdkdzZqKMrHRIeYMhCB3zrakW9BYxMJxse475WCn4IWRDkTeQzVdhFRE/c2bDuwoHk
         xeAgeIC97ybIK4+c6PK2Jfmgv4FsHwCrLnDSVYBdF6kgwbTk0Isauc+lLpDpPtUyR8bt
         3tiQ==
X-Gm-Message-State: ALQs6tCsWX7QDir5NnGeEl+EpRwAPo9KqoQwetOqoctkVhNBdYNHEom0
	F/sA4yT7uHynL8pfdR4iiA65K1nnBU4=
X-Google-Smtp-Source: AIpwx490YpqQE3o7aajKxPIKQZ658nrl6L1s+49/fD95YtC92IOqCm8U2u+ZY0S4FcoXLCJxCz/c6Q==
X-Received: by 2002:a17:902:d807:: with SMTP id a7-v6mr10890206plz.314.1524235669187;
        Fri, 20 Apr 2018 07:47:49 -0700 (PDT)
Date: Fri, 20 Apr 2018 14:48:08 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-Id: <1524234832.jzv1c3sqzc.tristanC@fedora>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
	micalg=pgp-sha256; boundary="=-t1R6yxwaqURanmmsd6g7"
Subject: [oss-security] [OSSA-2018-001] Raw underlying encrypted volume access
 (CVE-2017-18191)

--=-t1R6yxwaqURanmmsd6g7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
OSSA-2018-001: Raw underlying encrypted volume access
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

:Date: April 20, 2018
:CVE: CVE-2017-18191


Affects
~~~~~~~
- Nova: >=3D15.0.0 <=3D15.1.0, >=3D16.0.0 <=3D16.1.1


Description
~~~~~~~~~~~
Lee Yarwood (Red Hat) reported a vulnerability in Nova encrypted
volumes handling. By detaching and reattaching an encrypted volume an
attacker may access the underlying raw volume and corrupt the LUKS
header resuling in a denial of service attack on the compute host. All
Nova setups supporting encrypted volumes are affected.


Patches
~~~~~~~
- https://review.openstack.org/561604 (Ocata)
- https://review.openstack.org/543569 (Pike)
- https://review.openstack.org/460243 (Queens)


Credits
~~~~~~~
- Lee Yarwood from Red Hat (CVE-2017-18191)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1739593
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-18191


Notes
~~~~~
- Pike and Ocata patches disable encrypted volume swapping, this feature is=
 now
  only supported in Nova version >=3D 17.0.0.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--=-t1R6yxwaqURanmmsd6g7
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE6xA96LXmnmMcb/F5IrmgXJJcxdgFAlrZ/agACgkQIrmgXJJc
xdhREgf+NLTgKHDSKjTjtFY9qd40oxZqyTQZJUMdrub16RR5h1SHkgmtf+S2Ay9M
KA1fxclDJpdw6x70cTfCmizaUoyjB3UwNgxutNunnAA1veV8EKgkg1QZhYLUDSJO
hjJpP7CNvTziX27SEUEo4V7wUWzCDES7l93R7cux90QWpNULM6LIh5FUXBiebBY+
S/nchuBh8b08mazFhmVam0VfuqzLXDR2Ig5FNOE8wDk3UQPH0WYeaIOjUu5WvTGx
m94l6tPD0jnZrDDMsU1S6E5g8EXDTcF1cG2zqLFnr+C/UHXkeSzSNsFMgmFCSHJ5
EE+P3VUnVPzYaf7bMqIwsg4PgDf51A==
=+oeE
-----END PGP SIGNATURE-----

--=-t1R6yxwaqURanmmsd6g7--

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1871" "Saturday" "25" "June" "2016" "07:12:39" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160625051239.GA16648@eldamar.local>" "55" "[oss-security] Linux CVE-2016-1237: nfsd: any user can set a file's ACL over NFS and grant access to it" nil nil nil "6" "2016062505:12:39" "[oss-security] Linux CVE-2016-1237: nfsd: any user can set a file's ACL over NFS and grant access to it" (number mark "U       carnil@debia Jun 25   55/1871  " thread-indent "\"[oss-security] Linux CVE-2016-1237: nfsd: any user can set a file's ACL over NFS and grant access to it\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20352 invoked by uid 550); 25 Jun 2016 05:12:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20334 invoked from network); 25 Jun 2016 05:12:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GAktBweP/PBDYgFsM6yKlHliDLLFqmy9nwr5BI+M4Hg=;
        b=AW7zILYThEx3k9qZAUAT6FRSvBMmtiwrUxXwxo6lOa+04ItEJjc6As/+3QAQLAcZoB
         ZLbU8XM2y9qLi01o374R0zC7rxHTbuWopj/cWz1PZFNe8BwBM+aEI6SZN/0T53iJqf9e
         znyJTt8TPNsWDbnaeABN/3LYmKZDkvJ5LcAWDGw3fypv2q7Bp5SseQ32IAlmFZr6r9yD
         58xvm98qcRRQ+zq/n9uouVfabFXSAgOnp++gOBR0whSvWfI2lYGg9L9a0MNDW0wXo6DK
         bR+DR2c+aLrCfnejFO816x85/9cnXjKTsbAxLzjwlE9rxotTVW9+9SdodnZb10AZnUUI
         LPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=GAktBweP/PBDYgFsM6yKlHliDLLFqmy9nwr5BI+M4Hg=;
        b=E48lAXnOKejooaiBp6BQ8FpRPBNgvUlNATIbUnBg4EAOD8I3Wfy0WIdd/vILxrRyjD
         MZxHTpkBsIfVoezE4h1C0xfU2AP71BtZdpgr36EUSWqNBpquwuyGVqA7TMdllJLawLKB
         kfiqOuWjnZ2LjEZVTojOG34+N/W+H2zFX1irOQQH72fp+S8L7eghqRTq4V3Vrza0bLbm
         e41HU+Z5ti7miHXz3gPT1Zcm5Uhe5P8lFYXAnnHRI/D0rlDSV9rz83PYM6hGiqBOGVDN
         ygUL998ixTD37m9l0+aNFOAPvNFIQbYhB3/e7CvDSXe4t2T7Fowf3OimqVESXgkN8Co6
         UDjA==
X-Gm-Message-State: ALyK8tK41wN/+2LZ+XqX1RTpO+MRApHACpDzx2E48cpOUMfpwwfmwHgqjkfWCFCeszdpYA==
X-Received: by 10.194.173.65 with SMTP id bi1mr7302001wjc.160.1466831565358;
        Fri, 24 Jun 2016 22:12:45 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 25 Jun 2016 07:12:39 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: David Sinquin <david@sinquin.eu>, Ben Hutchings <ben@decadent.org.uk>,
	CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20160625051239.GA16648@eldamar.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] Linux CVE-2016-1237: nfsd: any user can set a file's ACL over NFS
 and grant access to it

--liOOAslEiF7prFVr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi

David Sinquin reported that anyone may be able to grant themselves
permissions to a file by setting the ACL. nfsd did not check
permissions when setting ACLs.

CVE-2016-1237 was assigned by the Debian security team for this issue
were David Singuin initially reported the issue.

The permission checks and inode locking were lost in a refactoring
with commit 4ac7249ea5a0ceef9f8269f63f33cc873c3fac61 which was in
v3.14-rc1.

The issue is fixed with commit
999653786df6954a31044528ac3f7a5dadca08f4 in Linus' tree.

Introduced in: https://git.kernel.org/linus/4ac7249ea5a0ceef9f8269f63f33cc8=
73c3fac61 (v3.14-rc1)

Prerequisite: https://git.kernel.org/linus/485e71e8fb6356c08c7fc6bcce4bf02c=
9a9a663f=20

Fixed by https://git.kernel.org/linus/999653786df6954a31044528ac3f7a5dadca0=
8f4=20

Regards,
Salvatore

--liOOAslEiF7prFVr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJXbhLHAAoJEAVMuPMTQ89EPm0P+QGKKSYoo1a/nwjP3QvCZPl2
uveRu3iQYvMnFs3LcYLOd8RzFXPZk120EeONWvScSmIjBI+YEPcXaDpaBo1++Q5g
RyLOd64V0UrfAhPiZNtFYuQGJedvhPPtD1OoVu5wzTiqTEx+RO6hFYTi2Mj7XHL0
6jtyJdB7vy09/JV+nDQgXm9251VzxTL74dxKsbdCvBSm8aV45zHbcmxKdnEquJ02
JvqC0dz0udrRT36BEG+W3XaGiEqZUsEhUUhVYJuPmtSgbmrRjiBm30S1h0ECfK9N
fyFW9n1Hsh8b6zjXE754qA2UpVR2utApWJykN0J/nd0u7V0On26m94wm1zer81Yb
P9lg2A9gX2N5puKyqXcyppmn6iDYAoztraHQFBKocXXjC/YpHC3pjeOTt8VDTE7j
sZrvFKY1r8MV0kblfOxcQ/Tw4PSdFeX54h4+y5fS2QMrsiKmZ+FGKzwcnboH7f3E
elwYNwHASZ+l7hVFQXd+Jc6fuVzQeoibE0q7zkgJ6Wqg94uOftwyrI61SJ+BtbKB
Ui7zJI3WZaQK7D7cDXFRKj6HJJ1kUkC9tWo8D2ik2VlqdteWPnx4oyo7lnKExWqp
0freehIR8wMr4OMUxsXrNpLzZqioJZUZqayDakGKtfE3mh0yUkLJ3kboMgKhKdvO
zmGBn4v5INg3gYzUrdtu
=wMNe
-----END PGP SIGNATURE-----

--liOOAslEiF7prFVr--

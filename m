X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2982" "Friday" "21" "July" "2017" "10:50:26" "+0100" "Luke Hinds" "lhinds@redhat.com" "<1c828b01-0878-015c-8510-e3f2bfc411ff@redhat.com>" "79" "[oss-security] [OSSN-0078] Ceph credentials included in logs using older versions of libvirt/qemu" nil nil nil "7" "2017072109:50:26" "[oss-security] [OSSN-0078] Ceph credentials included in logs using older versions of libvirt/qemu" (number mark "U       lhinds@redha Jul 21   79/2982  " thread-indent "\"[oss-security] [OSSN-0078] Ceph credentials included in logs using older versions of libvirt/qemu\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25963 invoked by uid 550); 21 Jul 2017 10:56:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21914 invoked from network); 21 Jul 2017 09:50:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=5F2jefbsYVd/br9CtyKpOnFUn9euF2xzvexv4QKBJkg=;
        b=GIXsgAbQgJ/YTZ3RMO1zE5ez3QziTN3QkvhKrAz75f+7EFemOrU7u/9VxOqXFM6c1j
         /ciFs86GpFNHyBItG6mesqbr+g+l3bztrofYObOeaW0agd9VCpnOQjALgLvh4tB4jeRM
         1Sr2d/42XRlAnRN8jiaBOk0TPNT4pJCeORQhQsVL34/zfXXdm7R+LrlHbvQwLqK+VDCS
         ZhEd/964s1iYLkL2snLM5Tg6S1KGV53taNxdGVZHZZMDkUS46S3yW7TGTLo0Bjigfxy6
         TDuEClieKkk7PczOorbTBvsseGz7hiTwrxnmykcTMsaCiNgwKDHSUnCLeN7Y/9bOo3sG
         PEQA==
X-Gm-Message-State: AIVw110ZLMJbwC6s78OQuITJFGtc0Io8bCNfb3H1o4tqDoHzt5kMVPOF
	3GtDQObj+F8PiW9JjXBvtw==
X-Received: by 10.223.163.135 with SMTP id l7mr10103402wrb.89.1500630633550;
        Fri, 21 Jul 2017 02:50:33 -0700 (PDT)
To: oss-security <oss-security@lists.openwall.com>
From: Luke Hinds <lhinds@redhat.com>
Message-ID: <1c828b01-0878-015c-8510-e3f2bfc411ff@redhat.com>
Date: Fri, 21 Jul 2017 10:50:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="9s7T82H0LUkuQCLcrvLmT9q8LMe9VlpRU"
Subject: [oss-security] [OSSN-0078] Ceph credentials included in logs using older versions of
 libvirt/qemu

--9s7T82H0LUkuQCLcrvLmT9q8LMe9VlpRU
Content-Type: multipart/mixed; boundary="jmrMTqF5mdlW7T2x27RFp0U1AGCAijcO5";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <1c828b01-0878-015c-8510-e3f2bfc411ff@redhat.com>
Subject: [OSSN-0078] Ceph credentials included in logs using older versions of
 libvirt/qemu

--jmrMTqF5mdlW7T2x27RFp0U1AGCAijcO5
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB-large
Content-Transfer-Encoding: quoted-printable


Ceph credentials included in logs using older versions of libvirt/qemu
----------------------------------------------------------------------

### Summary ###
Older versions of libvirt included network storage authentication
information on the qemu command line. If libvirt raises an exception
which logs the qemu command line it used, for example an error starting
a domain, this authentication information will available in the logs.

### Affected Services / Software ###
Versions 2.5 and earlier of QEMU and libvirt versions of 2.1 or earlier.

The issue has been resolved in all QEMU versions 2.6 and above and
libvirt 2.2 and above.

No patches or specific releases of Nova or Ceph are required, the
issue is completely resolved in QEMU and libvirt.

### Discussion ###
If a deployment is using ceph, a libvirt error starting a domain would
log the cephx secret key and the monitor addresses on the qemu command
line.

A local attacker could then use this flaw to gain access of the cephx
secret key and perform certain privileged operations within the cluster.

An existing CVE is already present for this issue.

### Recommended Actions ###
The issue has been resolved upstream. Users running qemu version 2.6 or
later, and libvirt version 2.2 or later, are not vulnerable.

No change is required in Nova or Ceph to resolve this issue.

### Contacts / References ###
Author: Luke Hinds, Red Hat
https://access.redhat.com/security/cve/CVE-2015-5160
This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0079
Original LaunchPad Bug : https://bugs.launchpad.net/ossn/+bug/1686743
OpenStack Security Project : https://launchpad.net/~openstack-ossg




--jmrMTqF5mdlW7T2x27RFp0U1AGCAijcO5--

--9s7T82H0LUkuQCLcrvLmT9q8LMe9VlpRU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFGBAEBCAAwFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAllxzmcSHGxoaW5kc0By
ZWRoYXQuY29tAAoJEPFlVhc8ICYURwUH/2NCaw8v25SGsOL+w6NwK6b2u1G7sqzN
AlISA5IC+jqzdII9kJyUR4uFlML/HAmmgHNHGAWrzdk04+ndmReOCEt8pdg8rA7h
zgrSN75VYJxFNwIT+/9PE95gGbprEaAae1enA3o8imavAQgekjn28UORW9Jv7TIK
zJU0IyApX09NkR+Gw8QgAnNCd0Z8Kw7+wkDsecop3De0FKj0GRrfB8Y+hXpTN9Y2
0+N2NmsTIwKxVKz0sDCR7VGsfNp9jUZ2LJlwJRUk3aXtrv/jKEhp6eFcnWLkxMdb
p5CxHbcN8kOBxcrnyBBq2MaFk+/wva0/IHUMs62b8g55U+mUft3A2RA=
=UrVi
-----END PGP SIGNATURE-----

--9s7T82H0LUkuQCLcrvLmT9q8LMe9VlpRU--

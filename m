X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1600" "Wednesday" "25" "March" "2015" "03:13:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150325071340.0D1BB6C004C@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request for OpenStack Compute (nova)" nil nil nil "3" "2015032507:13:40" "[oss-security] Re: CVE request for OpenStack Compute (nova)" (number mark "        cve-assign@m Mar 25   39/1600  " thread-indent "\"[oss-security] Re: CVE request for OpenStack Compute (nova)\"\n") "<20150324122152.GN2457@openstack.org>" ("<20150324122152.GN2457@openstack.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22174 invoked by uid 550); 25 Mar 2015 07:13:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22156 invoked from network); 25 Mar 2015 07:13:52 -0000
In-Reply-To: <20150324122152.GN2457@openstack.org>
Message-Id: <20150325071340.0D1BB6C004C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 25 Mar 2015 03:13:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for OpenStack Compute (nova)
To: jeremy@openstack.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

At this point, it seems best to define the affected releases for
CVE-2015-2687 to include Icehouse and Juno, in addition to Havana.
There is at least one person (hfamily15) who believes it is a
vulnerability within all of these releases, and nobody has indicated
that it must not be considered a vulnerability within any of these
releases.

This means that the http://openwall.com/lists/oss-security/2015/03/24/10
text starting with "It is conceivable that" is no longer applicable.

The CVE project is not attempting to suggest that the existence of a
CVE ID associated with a supported release means that an OSSA is
required.

> Of the many reports we initially receive as potential vulnerabilities,
> only a fraction actually end in an advisory

Similarly, there's obviously no obligation to send a notification to
oss-security whenever a potential vulnerability has been evaluated.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVEl+mAAoJEKllVAevmvmseZEH/2lDzJcTCXE0jPoT3mL+ytLE
7idFQK32HepABqgS/y2GfdI+xlOUHylfAWYgk8AslSbv1OvhGgwwyz64JKiRu7ZW
MKFALlVqLVeWaQNepn2JS0mS+g2OaWUDI2zQB62FzB6MobC2Z9R3lyCdtwQUaNUt
ywbRyCSR4rY2e1pu+WmACQbGevwNC4OQh5oQTaLB0rvivYrK8j4fb+s7uMxLsxKM
fLkkIIIu7DGmgj+Zupzay/xzb120bKG4loXLhj64We+REYVnINM/kellsmBIbexB
a1hxDGqycXLAXSxgeCDigfmxNBMuAmIQLMSmGY6ekbHLfIrwthWYChbZHaFfgFU=
=3MQv
-----END PGP SIGNATURE-----

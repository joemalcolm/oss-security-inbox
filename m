X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1933" "Tuesday" "17" "March" "2015" "15:24:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150317192419.46EF836E004@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)" nil nil nil "3" "2015031719:24:19" "[oss-security] Re: Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)" (number mark "        cve-assign@m Mar 17   43/1933  " thread-indent "\"[oss-security] Re: Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)\"\n") "<20150317180241.387a715f@yaydoe>" ("<20150317180241.387a715f@yaydoe>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31780 invoked by uid 550); 17 Mar 2015 19:24:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30682 invoked from network); 17 Mar 2015 19:24:30 -0000
In-Reply-To: <20150317180241.387a715f@yaydoe>
Message-Id: <20150317192419.46EF836E004@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 17 Mar 2015 15:24:19 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)
To: cap@nsc.liu.se

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Thanks very much for passing along a link to the affected
drivers/infiniband/core/umem.c source code. This specific CVE wasn't
previously announced on the oss-security list, but your message has
important information about an open-source vulnerability.

> https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-8159

For a CVE assigned by Red Hat, it's their prerogative to make their
initial announcement in a document that doesn't mention the related
source-code change and doesn't state whether the document's
information is applicable to upstream. Linux kernel CVEs published by
MITRE (or NVD) normally don't mention fixed Red Hat package versions,
but we do prefer to include some type of related version information
if the upstream applicability is not (yet) known. This doesn't mean
precisely expressing a single distribution's data when better
information is likely to be released soon. This CVE's version
information will be updated based on your report and other sources. In
this case, 2.6.32-504.12.2 was the only actionable version information
determined directly from Red Hat's document.

The specific source-code change from
https://community.mellanox.com/message/4402#4402 isn't in 3.19.1 or
4.0-rc4.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVCH6TAAoJEKllVAevmvmsRDQH/RMS7CVtwVniYTVBOad27vab
hkfmtdUn8I4NwGpLTnyNzmAW+S+XGHDloAl4SeQ2BkTlOkXlWdl6ZGRCXVCDIeb9
pY98S4wmYRGsbPA24HztcDRuljrnE/HBMSQri9c6TiecKEUURl/UqnwxKo7+7DZn
CF3itTZgYI6okLvvgHc8sK2zDCQe9aWfcOdEHY3PCoph599BjURa67hr2/7DG6Fy
kk7Py5xchPSa+mPtzOIl+hISx9AMhoEjPoDTwFPXqRZS5RTihkf9K6GI1OQSFpzM
vVVRRHqBWs3MiW9tDiSycEaf4X/CXCMHZxmKZnp4AsB4QqL7feR+rcOf8B8xxew=
=00es
-----END PGP SIGNATURE-----

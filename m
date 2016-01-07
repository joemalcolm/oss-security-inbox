X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1506" "Thursday" "7" "January" "2016" "15:40:53" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160107204053.68482332272@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE request for vulnerability in OpenStack Nova" nil nil nil "1" "2016010720:40:53" "[oss-security] Re: CVE request for vulnerability in OpenStack Nova" (number mark "U       cve-assign@m Jan  7   37/1506  " thread-indent "\"[oss-security] Re: CVE request for vulnerability in OpenStack Nova\"\n") "<20160107192555.GA82350@hpe.com>" ("<20160107192555.GA82350@hpe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1819 invoked by uid 550); 7 Jan 2016 20:41:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1791 invoked from network); 7 Jan 2016 20:41:05 -0000
From: cve-assign@mitre.org
To: grant.murphy@hpe.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160107192555.GA82350@hpe.com>
Message-Id: <20160107204053.68482332272@smtpvbsrv1.mitre.org>
Date: Thu,  7 Jan 2016 15:40:53 -0500 (EST)
Subject: [oss-security] Re: CVE request for vulnerability in OpenStack Nova

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Xen connection password leak in logs via StorageError
> 
> If a StorageError occurs when attempting to connect a volume
> using the Xen API, the connection parameters will be logged. These
> parameters may include credentials that are not masked.
> 
> https://launchpad.net/bugs/1516765

Use CVE-2015-8749 for the lack of strutils.mask_password use. There is
no CVE ID for the https://bugs.launchpad.net/bugs/1321785 related
discussion of a design issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWjszMAAoJEL54rhJi8gl5RMAP/RcP2koL8KmPcmnknO/jFAGp
ZARI12CsqoS6u+lKUsr0ZnNLbOoJHzIyiinEtRSTrisyrZIF9pLjlCVQ3xwPDZUr
IIVpW5clK3WWsl4838LgtIFfQwTHot8slglIIvWMyfPh/VVMqNA4rWU/i8+loscw
82WnO+rgaMnZDH68IKyEBFkrrvdvrP0ixB3Q0ImjxfnjXqy74PwNzeRWCi26D5+8
FEJEmmaXjkP0nWr1HoKkGuDb2A8TS8ZrNNDCFKJXbQccVv3EikPMAwCdp8yVROmo
jFALhLJSsiyDqOFVFNYQKb6pCTOGQOXunba8AFnTK2XzGOVx/bSQOUVUQn84B7Fo
CC7vneB6upaPNH2lYj8De0Iiw1asPQh1KJhhFR7/3qHZ/9H6WX13GHGfs4/tqDT4
PS5aYJvcW8klwOoy2x2w5bHS2n1fQkvbOzJ1u61xlAleyA0+LICyU/l3nrhz9R+7
V/s8M3sFMh5/eLfYIJEa24fITUnJxU5jt6DiPFgsz1f34msek8x2GitK1NsCMEkO
4Vz6Fp2D6sQlEiTkA/vkUbHMZRcgmbw13If+kWRFevDA1epXWn2h+ikHV687ENvD
dnm6bCUrLYzV4o204hVnrN7G9IzuOYawgrZ3ZC76tkGBJoBDeWiM1UK2TB3b9qvY
3ixDLcVIthDIaJTmNEds
=Zujb
-----END PGP SIGNATURE-----

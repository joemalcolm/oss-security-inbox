X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Friday" "8" "April" "2016" "13:33:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160408173332.997BE6C05DD@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request: systemd / journald created world readable journal files" nil nil nil "4" "2016040817:33:32" "[oss-security] Re: CVE Request: systemd / journald created world readable journal files" (number mark "U       cve-assign@m Apr  8   40/1446  " thread-indent "\"[oss-security] Re: CVE Request: systemd / journald created world readable journal files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22370 invoked by uid 550); 8 Apr 2016 17:33:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22348 invoked from network); 8 Apr 2016 17:33:45 -0000
From: cve-assign@mitre.org
To: meissner@suse.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Message-Id: <20160408173332.997BE6C05DD@smtpvmsrv1.mitre.org>
Date: Fri,  8 Apr 2016 13:33:32 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: systemd / journald created world readable journal files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Fixed for volatile journals was done by this commit in v214:
> https://github.com/systemd/systemd/commit/176f2acf8dee45fee832fd2ab07243f63783a238

>> committed Jun 11, 2014

Use CVE-2014-9770.


> Fixed for the current persistent journal by this commit in v229:
> https://github.com/systemd/systemd/commit/afae249efa4774c6676738ac5de6aeb4daf4889f

>> committed Nov 29, 2015

Use CVE-2015-8842.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXB+sEAAoJEL54rhJi8gl5zhMP/3C4F7RnZztSDKJ2HhG1zuUb
eOEW8F9mh00jqV3DFBAhl5y+TGUdtiGobbcYzEImxvv4wy7NgiboXn+ENVZN49ci
Vlw8wPsj3xmwq7x5rq3fsykmqa+iCtI3LFV6mEu3NnzPWd+5O96T1j+5yCVCnahN
yfcBd4JxevTE46XPXk/Eb058pz6brT+gMJu0AZ0bpT5BAN5g7QuCeD1ZOpxDHxlS
rfWLaj0gZL3ws+U4wSg4FSvLTJIOmxfFmF9ka/aNOZOU2ifI+1vmkd2rfaAEQhsQ
Lrt16WGNnBemg5xpOoty5sowYF6t0oC8QKaquixAWholjoRTHBcQSdndqTTQ68S1
hTocmbMYFKXUSJYG0uy6jhyPPRfrZNKtiCVx9Nk7ctYshM3hmETDVpbTZzndBrVU
6VwxJckUYO3kpyejfBPz68r1OcW49ZJre6rM7qZNYl1/GESeYjzKXJ8LmpZZZc9Y
yFuZmp5vKRiHttBuHYWd0qMRb7QWnHPnIcJCT63rcQ44HqNAqxw5coabZ2ATjKS1
ZLuPGAuVlG+tF37obg+MC3+MJfd2XPTC0uFWIixy7jSMfKFooQx6ndwxnRK7swr2
8X7E2D4RQvc9vzPyWGGL2SiGmezU7r6iq5s2gA6D+Givc+d3E+Ey21S6eEhyKF4I
VGnOJyed8E7zg1AKTwc4
=Rjwg
-----END PGP SIGNATURE-----

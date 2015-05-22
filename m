X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["941" "Thursday" "21" "May" "2015" "23:31:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150522033100.D1D996C001A@smtpvmsrv1.mitre.org>" "27" "[oss-security] Re: CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable" nil nil nil "5" "2015052203:31:00" "[oss-security] Re: CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable" (number mark "        cve-assign@m May 21   27/941   " thread-indent "\"[oss-security] Re: CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable\"\n") "<2165372.NOAPVG722M@rem0te-expl0it>" ("<2165372.NOAPVG722M@rem0te-expl0it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11863 invoked by uid 550); 22 May 2015 03:31:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11833 invoked from network); 22 May 2015 03:31:12 -0000
In-Reply-To: <2165372.NOAPVG722M@rem0te-expl0it>
Message-Id: <20150522033100.D1D996C001A@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 21 May 2015 23:31:00 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable
To: sisharma@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://tracker.ceph.com/issues/11694

> when using the 'ceph-deploy admin' command, the
> /etc/ceph/ceph.client.admin.keyring on the host is world-readable, and
> thus making it usable for all local users

Use CVE-2015-4053.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVXqJTAAoJEKllVAevmvmsxswH/0dKXt6yWuoTCR+jCilII1Rv
5bWxFYYgR+TxK+wZCpbwMOfnSLv8RExtGP2pZErIami1DzKTwKQnZ0FHSN0ThWGS
iLdLYt/oCDg8Xcw67zXcZx758hnuIi6cJrX1JX4VfJz0UkTGYHqFOx1A8k/Sc+IJ
Juo5wwg1NeETLyIK74s+K7IVHKR8UAk5ltynDY2ii/KNHIoVoBAX5CwLa0XOc9x2
GGjAsaz5PK6PrlZUiP4+wxE22q6eRkQQvJ139oQfvfb2vlPUECGNTyyspeYYnFFz
NHe9vOWIWkHSEyT/WBQDsFOVIc5LfcbstBKpvzE8BG8U/DuDc/yQlkeq8bZWk1A=
=sJIJ
-----END PGP SIGNATURE-----

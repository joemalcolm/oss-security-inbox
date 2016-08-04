X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2239" "Thursday" "4" "August" "2016" "01:02:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160804050241.66A89ABC600@smtpvmsrv1.mitre.org>" "60" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" nil nil nil "8" "2016080405:02:41" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" (number mark "U       cve-assign@m Aug  4   60/2239  " thread-indent "\"[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0BD067A@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0BD067A@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3115 invoked by uid 550); 4 Aug 2016 05:02:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3091 invoked from network); 4 Aug 2016 05:02:53 -0000
From: cve-assign@mitre.org
To: zhangkaixiang@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0BD067A@EX02.corp.qihoo.net>
Message-Id: <20160804050241.66A89ABC600@smtpvmsrv1.mitre.org>
Date: Thu,  4 Aug 2016 01:02:41 -0400 (EDT)
Subject: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I found a vulnerability in docker of the latest version which could
> cause a Denial of Service, it results in a machine could not join the
> swarm cluster after another node's repeatedly joining and quitting the
> swarm for many times (taking my testing as example, it should need at
> least one thousand times). Moreover, the docker debugging info
> indicates the Dispatcher is stopped and ca server may exited
> sometimes.
> 
> Login machine A1 and join the swarm ,and then quitted the swarm.
> 
> Login machine A2, repeatedly join and quit the swarm for 1000 times.
> 
> After finishing that, Login machine A1 again and attempt to join the swarm, it failed.
> 
> Error response from daemon: Timeout was reached before node was
> joined. Attempt to join the cluster will continue in the background.
> Use "docker info" command to see the current swarm status of your
> node.
> 
> level=error
> msg="failed to remove node"
> 
> level=error
> msg="session failed"
> error="rpc error: ... context canceled"
> 
> level=debug
> msg="heartbeat expiration"
> 
> level=error
> msg="failed deregistering node after heartbeat expiration"
> error="... dispatcher is stopped"

Use CVE-2016-6595.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXossBAAoJEHb/MwWLVhi2FJ8QALlp1bYssp66abNelRpjiQXl
ylHYSBTYhSMIpguerzlQv88l+O13uLfLtsC/fHPqb9+/cDG1icNHIjKuussr4HeQ
hy3DRSn0D+63XXXHjRG5hvpBP3Sf8irAz3lnwaEHj01hlILsAbAV0CuTP2+lBz3X
QtIojkBnHUUz/glGCT8VMavS85MakRwM7CV2upLJZptHaOiQlR8pa06FOBCBzWjJ
TsxdIFgnlEWomN0Lsf+IKD5uc6n+kmZzmyBNR9hHDCkTNJLRgMEvqVmK1nqVgQPS
jzvdrZSKF+BxQfPmONgrvSfQpSlEbJ4GFTYN0qeHqpt8SRJLJ0Uuy1ukzd+j6S8G
oTuA1fAJsZFwsku40usqv3lbeBGWMmxj4ORKNXZkqUZLOVwXN+p6xbDDC8Qm/p/O
EEF124dGsxSvlcoAGpOqjAHkzB+vrCBsi0kMlsPTb6zKRZSX7ql9jaG6riFJ4H0E
nKooj0RQRZGo2V1Z1NQDc4dMQtQ4HrRHKpDKp5snMdafbwR2DxAD2Kh862JYo2Pp
3kmaQ/4X4oq3BFy9zwsAV3PZvBZJjerlk2MLxPktaQNSqKduriG9z9DxhPraQWaP
kzml/+CylX7EEkV0hm+AZjt1+CMfxHAUQkvvRxi0NyhGLjqfIURI17CesCVNTYOS
ww56x94Z2M9fplQcqRQK
=Wgqx
-----END PGP SIGNATURE-----

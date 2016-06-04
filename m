X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1464" "Friday" "3" "June" "2016" "23:00:14" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160604030014.4F48352E020@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: Dnsmasq denial of service" nil nil nil "6" "2016060403:00:14" "[oss-security] Re: CVE Request: Dnsmasq denial of service" (number mark "U       cve-assign@m Jun  3   35/1464  " thread-indent "\"[oss-security] Re: CVE Request: Dnsmasq denial of service\"\n") "<5751C370.1010802@canonical.com>" ("<5751C370.1010802@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11709 invoked by uid 550); 4 Jun 2016 03:00:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11689 invoked from network); 4 Jun 2016 03:00:28 -0000
From: cve-assign@mitre.org
To: marc.deslauriers@canonical.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5751C370.1010802@canonical.com>
Message-Id: <20160604030014.4F48352E020@smtpvbsrv1.mitre.org>
Date: Fri,  3 Jun 2016 23:00:14 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Dnsmasq denial of service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>  Fix crash when an A or AAAA record is defined locally,
>  in a hosts file, and an upstream server sends a reply
>  that the same name is empty.
> 
> http://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2016q2/010479.html
> http://thekelleys.org.uk/gitweb/?p=dnsmasq.git;a=commit;h=41a8d9e99be9f2cc8b02051dd322cb45e0faac87
> https://bugs.launchpad.net/ubuntu/+source/dnsmasq/+bug/1581181

Use CVE-2015-8899.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUkO/AAoJEHb/MwWLVhi2ECQP/24EmeCxivXRv440Aph1gohv
plToHPOCIhrqC1u2D7zMklmSYdvwtvCc9UwBqKbj/ufgXC9EeAGj2zlmKOq8NoP1
l427TFDVnu9vKPgN/w5GwDWuzAC7bx+qRuCxspycP3HAc5wCBXeF3m37txptQdFh
WkrDaW+2aHaIBliD3/CsZcf2cKlcbm5vvbYQMcJKh5JiGdl5xNidYV+24HMCauU1
Tk22jfNm4I37XTR7PZg93I37JEZguXyq7csrZpCzE7yxHGRYthQCFf5O/Jc/4S+7
GZAXDRX51RCCVfsYTQdHBi/dMlPiUpa/1Lcsgiugg25BU9Wy4qpL4knbVMt4ZSLf
BPR0GGtNfygX0v5S92QaiUU+T6dxPOaidxueyMSwPtuq7taZXullPyPHGS4ioFya
+4OEwNPfqygzXVYjzRZM8925fOQBk733jwMvBuPZeuEuq3lBPFgYF0+CIOeMuAw+
/jn8Jj5K6x4HGjBixr1VRaB6mZ/C/k7XRNjr17/QL3hjOUfj1g6Pn1q52gFwq0ny
02jvT0RQqnGAnIrKPnuzvccsHkJlSydbR0t8JYoWDeK8btULJDqJbG5vit1jAQaL
5Y88gTFabG9mAFLdo4q+hi+jKwKw6gplOlcUQysYleImyMAawIweZ11GodT9Q9hx
cfPCSdvhgyVr8DR4Fmd2
=3Y1C
-----END PGP SIGNATURE-----

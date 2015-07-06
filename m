X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Monday" "6" "July" "2015" "05:23:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150706092311.19A656C0D6A@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: CVE Request: UDP checksum DoS" nil nil nil "7" "2015070609:23:11" "[oss-security] Re: CVE Request: UDP checksum DoS" (number mark "        cve-assign@m Jul  6   34/1437  " thread-indent "\"[oss-security] Re: CVE Request: UDP checksum DoS\"\n") "<1436144163.7337.64.camel@debian.org>" ("<1436144163.7337.64.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3760 invoked by uid 550); 6 Jul 2015 09:23:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3737 invoked from network); 6 Jul 2015 09:23:21 -0000
In-Reply-To: <1436144163.7337.64.camel@debian.org>
Message-Id: <20150706092311.19A656C0D6A@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, carnil@debian.org
Date: Mon,  6 Jul 2015 05:23:11 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: UDP checksum DoS
To: benh@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> However, the presence of "return -EAGAIN" may also have been a
>> security problem in some realistic circumstances. For example, maybe
>> there's an attacker who can't transmit a flood with invalid checksums,
>> but can sometimes inject one packet with an invalid checksum. The
>> goal of this attacker isn't to cause a system hang; the goal is to
>> cause an EPOLLET epoll application to stop reading for an indefinitely
>> long period of time. This scenario can't also be covered by
>> CVE-2015-5364. Is it better to have no CVE ID at all, e.g., is
>> udp_recvmsg/udpv6_recvmsg simply not intended to defend against this
>> scenario?

> It seems reasonable to assign a second CVE ID to that issue.

Use CVE-2015-5366.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVmkgoAAoJEKllVAevmvmsCWkH/1xhstkTg/oWb95ua9Jvr6rR
hLq8qVNZoel+2k5/73YIkxOAi5UvNPn3/sb75p2vggTIeXhdLK6hJw8nUTRItyUR
UhAWrwISpnOxHGKuVOjPoH4e9ujZLNXxDopZW0+eIJLh+Wb3ek00ohJhMNF4Cp5J
9vi759xuM/yNsOqkXE7daIWEHSgkjw1jTs43Hh4L6vV8ixuFN/mNM+u+ljiEGO1/
/SMDUS3ByZKJ+B7odl4fa9s4EB7BO8x0dvZlWeWaGLNShq30nYItpGGJ799lVS81
3JGqrUeqgUumyuy72bd0NtAH1IViOnkHV9MBBFB/G9Whl959h0xdrOiGJh3dxAw=
=GBxR
-----END PGP SIGNATURE-----

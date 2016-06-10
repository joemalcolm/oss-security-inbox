X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2497" "Friday" "10" "June" "2016" "12:43:27" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160610164327.253166C0780@smtpvmsrv1.mitre.org>" "64" "[oss-security] Re: CVE request for vulnerability in OpenStack Neutron" nil nil nil "6" "2016061016:43:27" "[oss-security] Re: CVE request for vulnerability in OpenStack Neutron" (number mark "U       cve-assign@m Jun 10   64/2497  " thread-indent "\"[oss-security] Re: CVE request for vulnerability in OpenStack Neutron\"\n") "<575AD7A7.8090302@redhat.com>" ("<575AD7A7.8090302@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1679 invoked by uid 550); 10 Jun 2016 16:43:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1657 invoked from network); 10 Jun 2016 16:43:39 -0000
From: cve-assign@mitre.org
To: tdecacqu@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <575AD7A7.8090302@redhat.com>
Message-Id: <20160610164327.253166C0780@smtpvmsrv1.mitre.org>
Date: Fri, 10 Jun 2016 12:43:27 -0400 (EDT)
Subject: [oss-security] Re: CVE request for vulnerability in OpenStack Neutron

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Title: Neutron IPTables firewall anti-spoof protection bypass

> independently reported vulnerabilities in Neutron
> anti-spoof protection. By forging DHCP discovery messages or non-IP
> traffic, such as ARP or ICMPv6, an instance may spoof IP or MAC source
> addresses on attached networks resulting in denial of services and/or
> traffic interception. Moreover when L2population isn't used, other
> tenants attached to a shared network are also vulnerable. Neutron
> setups using the IPTables firewall driver are affected.

> The dhcp fix has been included in the 8.0.0 release and this
> request probably needs more than one CVE.

>> https://bugs.launchpad.net/neutron/+bug/1502933/comments/21

>> Just to be clear, the ICMPv6 source address spoof isn't addressed by
>> bug 1558658 patch (I39dc0e23fc118ede19ef2d986b29fc5a8e48ff78).

>> Since both issues abuse the same fundamental flaw, it seems like a
>> good opportunity to bundle both fix in a single advisory.

>> However, because we need different patch, this will likely requires 2
>> different CVE numbers...

> https://bugs.launchpad.net/bugs/1558658 (DHCP spoofing because the rule had only
>                                          -p udp -m udp --sport 68 --dport 67)

Use CVE-2016-5362.


> https://bugs.launchpad.net/bugs/1558658 (MAC source address spoofing)

Use CVE-2016-5363.


> https://bugs.launchpad.net/bugs/1502933 (ICMPv6 source address spoofing)

Use CVE-2015-8914.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXWuzyAAoJEHb/MwWLVhi2bBAQAKsmBq6+BILn7sflHZr1biSs
1bGOleiu+F947NAp5zzqjv9riowFneB7fCTPJ3uSXueCSNEyGFDIVPR80M7MWKdv
vtTUnLT8GLl9P2ZkvdYLaIW12UQq2OQF5nA0kuz8piVJx5Mx6M9rMypw83cKlIfw
iovaJMZuI6ZSsYmdm8RJiEyhRO+fyTXSYi/i7/6UqGUnZuBU4//KvkTqE3ZHWw6K
4HRaFIDVFljIHJpLgdIyLDBoMymxf7yYSvMVAX7f74drOLkQd+LyMYnLzR6dLCtc
sFR31f3f1v+lFSYTXdklEF/toSu6pNHauffcmxAWLpn3vOLJbzKpZZ2I23uDPQSZ
cOJ0ygs+ZbIXABaRsfBiU6bk0uiXvGqyifcFZnoayWPpCyN65qrdJlgMYBjhprVa
g1TEnJ7I+H/6FVTbvpdHo+m0YVS2oF3/Wy2B2FrpdCC43aTPYCzEWNmlQfl8MY39
aGdLugde8eOhWOJQugnqe94CxbAdcR2H/BTh28XaABhLdDwrnU6XSWY56pzcu1ys
ctYo8aPPsgHr9SC6c7noBfO3RMQGqkLOFakjjPGUmMHQ3Fz/Rz3pljVFZYwaQ8aS
BPvpQ2DtsHo9VSDt/t6srftFNWC2B91lbOj68aKm32rXq4rDuuNtS3pbmFpphjgv
WUQ3XjzlzzoHO3TR4PHY
=5QDQ
-----END PGP SIGNATURE-----

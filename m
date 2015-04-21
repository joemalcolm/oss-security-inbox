X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1255" "Tuesday" "21" "April" "2015" "12:07:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150421160749.142C7132F33B@smtpvbsrv1.mitre.org>" "32" "[oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host" nil nil nil "4" "2015042116:07:49" "[oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host" (number mark "        cve-assign@m Apr 21   32/1255  " thread-indent "\"[oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host\"\n") "<alpine.LFD.2.11.1504211330230.30344@wniryva>" ("<alpine.LFD.2.11.1504211330230.30344@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9346 invoked by uid 550); 21 Apr 2015 16:08:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9323 invoked from network); 21 Apr 2015 16:08:01 -0000
In-Reply-To: <alpine.LFD.2.11.1504211330230.30344@wniryva>
Message-Id: <20150421160749.142C7132F33B@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 21 Apr 2015 12:07:49 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> http://git.qemu.org/?p=qemu.git;a=commit;h=3251bdcf1c67427d964517053c3d185b46e618e8

>> A privileged user inside guest could use this flaw to crash the system,
>> resulting in DoS.

> |   1A: one CVE ID for the use of "return s->io_buffer_size != 0" - this
> |       made it impossible for other parts of the code to distinguish
> |       between the "0 bytes" case and the "0 complete sectors" case,
> |       and caused both impacts: "leaked memory for short PRDTs" and
> |       "infinite loops and resource usage"

Use CVE-2014-9718.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVNnVTAAoJEKllVAevmvms0B0H/RzX6rXmwAwPdSsbHlTfpzKy
Kusz9igrWRwcDnymK6n+I7zcz7Faf5k4TH7TYW3l+aNsuVbxy9WDKJBS4l6zTdst
s3OBdCr9JaQyQc9iPcaBqa3BzZuWHrkAaa/m5oc2hPigziom2o16Tf04WHAQyJeb
4BASKG/VCZYPEt9K8Yg4+ib3cjfO4FeC3gcfqMZqrE2ICXGpkYDPlgtRi0OSqpAl
Z/ROodVc2YvBulQYt61Og1AOIXbdd1RM6NYsKWJNzcCtTaD1RUGOHt1TCuKao1Rx
fKruqHAXok9G+Vs0BU0jPPzZx7mkadygxkeKcqh4l8nKVWBQakWFv9xeTFp9uTA=
=OypJ
-----END PGP SIGNATURE-----

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1914" "Thursday" "4" "June" "2015" "09:57:44" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>" "53" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "6" "2015060413:57:44" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "        cve-assign@m Jun  4   53/1914  " thread-indent "\"[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<alpine.LFD.2.11.1506041320520.16237@wniryva>" ("<alpine.LFD.2.11.1506041320520.16237@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7631 invoked by uid 550); 4 Jun 2015 13:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7613 invoked from network); 4 Jun 2015 13:57:56 -0000
In-Reply-To: <alpine.LFD.2.11.1506041320520.16237@wniryva>
Message-Id: <20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  4 Jun 2015 09:57:44 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> From: ebiederm@xmission.com (Eric W. Biederman)
>> 
>> The core issue is that a unprivileged user could call umount(MNT_DETACH)
>> and in the right circumstances gain access to every file on essentially
>> any filesystem in the mount namespace.
>> 
>> e0c9c0afd2fc958ffa34b697972721d81df8a56f mnt: Update detach_mounts to leave mounts connected
>> is the real bug fix that fixes a fairly scary issue.

> From: P J P <ppandit@redhat.com>
> 
> Thank you so much for throwing light on the real issue and
> its corresponding fix.

As far as we can tell, the new information is extremely important but
the original CVE request remains valid as well.

Use CVE-2015-4176 for the issue fixed in
e0c9c0afd2fc958ffa34b697972721d81df8a56f. This code change is present
in 4.0.2.

Use CVE-2015-4177 for the issue fixed in
cd4a40174b71acd021877341684d8bb1dc8ea4ae. This code change is not
present in 4.0.2.

Use CVE-2015-4178 for the issue fixed in
820f9f147dcce2602eefd9b575bbbd9ea14f0953. This code change is not
present in 4.0.2.

Earlier messages in this thread suggest why
cd4a40174b71acd021877341684d8bb1dc8ea4ae and
820f9f147dcce2602eefd9b575bbbd9ea14f0953 can be treated as different
types of problems.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVcFiAAAoJEKllVAevmvmsPdoIAIOhSovjCxHR7BbxfDPTjowL
x4RtY/SVcOVCYLOeM6ys68joTPB+ZPk9CkoShgWBphI895hwBPpIc8nHxk5GjZMq
PRekCMzaq3ODAbT9JDiEirbOf2YHQJ7PAq3on5ifBZuP7y+K/bXrrjPIfqceWsiM
19e/evfP5ilmFHyVgnU3k12+2Q/LrDttVownh+5dnTL0MnPnwQ5jJP4c0bU5TvG4
Ws3Gvc+vTheTvn6fNYP76ynn/UlNnJPY40DIPOBM4qdpSJjLYUwUZSqrzGHaKO13
DUa+X4AfLo/BR/nj4vuHz6uXrW99++tC1T2R1N8ai0ORlN9n5eiORiU+BdEiYco=
=JpSG
-----END PGP SIGNATURE-----

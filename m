X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1584" "Thursday" "18" "June" "2015" "13:05:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150618170512.E67857BC2AA@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" nil nil nil "6" "2015061817:05:12" "[oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" (number mark "        cve-assign@m Jun 18   43/1584  " thread-indent "\"[oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch\"\n") "<BA939B00-BFFE-40B1-B496-23DEA74FD586@me.com>" ("<BA939B00-BFFE-40B1-B496-23DEA74FD586@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27707 invoked by uid 550); 18 Jun 2015 17:05:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27663 invoked from network); 18 Jun 2015 17:05:54 -0000
In-Reply-To: <BA939B00-BFFE-40B1-B496-23DEA74FD586@me.com>
Message-Id: <20150618170512.E67857BC2AA@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 18 Jun 2015 13:05:12 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch
To: gcanalesb@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> As far as we can tell, there are two independent types of problems:

>> We would guess that the most likely case is that only 3 and 6 are
>> applicable, i.e., the code problems are found only in
>> unsquash-1.c/unsquash-2.c/unsquash-3.c/unsquash-4.c and all of these
>> files exist in both squashfs-tools and sasquatch. Is this correct?

> Yes, that is correct.

>>   - "int bytes" is incorrect because the return value of
>>     SQUASHFS_FRAGMENT_BYTES can be larger than the maximum
>>     value of a signed int

Use CVE-2015-4645.


>>   - pull/5 says "If we fix this by making the variable size_t, we run
>>     into an unrelated problem in which the stack VLA allocation of
>>     fragment_table_index[] can easily exceed RLIMIT_STACK" but
>>     actually RLIMIT_STACK can be exceeded regardless of the data type
>>     of the bytes variable

Use CVE-2015-4646.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVgvnhAAoJEKllVAevmvms1oMH/iee0wchZqLNcdv94boq7Nu3
5AWJOLkFZjxAZrlyPvKS0e5wpnRO8Crc9ERLq4ndEzg/l5SFn1QSqgQ4eve7BiR7
rReKZo3m67lLBjn2g+eODNgg+SRp0wxzFallB9UnjX5zaE282/toIIj4+7AvPpXN
DVEgh96AnIUr0NyI5CsUDp6LJj75m96HOVz3iV4tYsiu2RK03eOjpm2TX9gqj8yT
3AZiXAYx4TkHq34BZMh9zMl762vENMj3ylGfB+/PFUIoQYdilxEbfquX2szZP6KL
gLteXkodoHfFN2sagP0pg/t5CNRPeLOqJYW+C04k2/Je7DEglZoJnJq5FKEeRyI=
=iU1A
-----END PGP SIGNATURE-----

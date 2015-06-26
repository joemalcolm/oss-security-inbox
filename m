X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1331" "Friday" "26" "June" "2015" "06:00:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150626100023.BD5636FC04B@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()" nil nil nil "6" "2015062610:00:23" "[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()" (number mark "        cve-assign@m Jun 26   37/1331  " thread-indent "\"[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()\"\n") "<CAOSkqBXYWzB3tzKQX6RRDLw89optSnphk18d50hPvXpB8V86bw@mail.gmail.com>" ("<CAOSkqBXYWzB3tzKQX6RRDLw89optSnphk18d50hPvXpB8V86bw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19751 invoked by uid 550); 26 Jun 2015 10:00:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19731 invoked from network); 26 Jun 2015 10:00:35 -0000
In-Reply-To: <CAOSkqBXYWzB3tzKQX6RRDLw89optSnphk18d50hPvXpB8V86bw@mail.gmail.com>
Message-Id: <20150626100023.BD5636FC04B@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 26 Jun 2015 06:00:23 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()
To: wengx522@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> PCRE library is prone to a vulnerability which leads to Heap Overflow.
> During subpattern calculation of a malformed regular expression, an offset
> that is used as an array index is fully controlled and can be large enough
> so that unexpected heap memory regions are accessed.
> One could at least exploit this issue to read objects nearby of the
> affected application's memory.
> 
> https://bugs.exim.org/show_bug.cgi?id=1651

>> The important thing was the excess closing parenthesis.
>> 
>> pcre_compile.c
>> 
>> -if (cd->check_lookbehind)
>> +if (errorcode == 0 && cd->check_lookbehind)

Use CVE-2015-5073.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVjSJuAAoJEKllVAevmvmsJ7MIAJXTns6Oi79pWowcfkwOnJ6y
X+gL8MRN9CRnVsKylnzWWg3J+0nRDYBOLGmKAuGTxFsSeb9tNjPlncjfCY01wadk
zILaTbxB3nK3cAYV/1z0HXrtDT1bg6ZrP/TMgwViHaoK2n7widOIuZnj0jsk34Qi
yn4Hi5pEqTGXujb3+UrzNToqIk+OLZN42jUCfu6RlethtRHDXfNNmTBnV4/I5pOB
EADjtAONthLnTmpnu583fYlqFE3ARzp6US3wmp41IIfixZ0QiKCpSqvxQdInhnnE
s5pL1u9QbEgnTge/cUqsJ63Nwtic1SOmmFJp7Hqon5335M1SsYqZyRlrbIK71H0=
=LnU5
-----END PGP SIGNATURE-----

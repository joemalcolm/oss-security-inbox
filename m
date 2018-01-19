X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2826" "Friday" "19" "January" "2018" "11:47:21" "+0100" "Ralph Dolmans" "ralph@nlnetlabs.nl" "<0cbfa06b-ffd9-9b08-c16c-2e28d2cb768e@nlnetlabs.nl>" "72" "[oss-security] CVE-2017-15105 Unbound: NSEC processing vulnerability (DNSSEC)" nil nil nil "1" "2018011910:47:21" "[oss-security] CVE-2017-15105 Unbound: NSEC processing vulnerability (DNSSEC)" (number mark "U       ralph@nlnetl Jan 19   72/2826  " thread-indent "\"[oss-security] CVE-2017-15105 Unbound: NSEC processing vulnerability (DNSSEC)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22084 invoked by uid 550); 19 Jan 2018 12:46:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1471 invoked from network); 19 Jan 2018 10:47:33 -0000
Authentication-Results: dicht.nlnetlabs.nl; dmarc=none header.from=nlnetlabs.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nlnetlabs.nl;
	s=default; t=1516358841;
	bh=lZeaTjBuKDYlziBqm05wLRqvT9NBRswCp/2vpD2aOec=;
	h=From:Subject:To:Date;
	b=Bsx8mi9sTVjHaGjzrsrYuRRJFlaa1x6ctJWSJTkcG9D2p82M5a2ud0jUmLF3b2emW
	 I22TkkjR17a4w9EofTb31LU5Na3zz2rRN29ewzry98OPpmjrm5DKrFkDc2mkTSEzZa
	 N3orW5f4VMZmJcIw0Kr3OUXbj02+VJsfbRoSxcZ0=
From: Ralph Dolmans <ralph@nlnetlabs.nl>
To: oss-security@lists.openwall.com
Message-ID: <0cbfa06b-ffd9-9b08-c16c-2e28d2cb768e@nlnetlabs.nl>
Date: Fri, 19 Jan 2018 11:47:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-15105 Unbound: NSEC processing vulnerability (DNSSEC)

Hi,

Below is a copy of Unbound's CVE description that can be found at
https://unbound.net/downloads/CVE-2017-15105.txt

Regards,
Ralph

==

The CVE number for this vulnerability is CVE-2017-15105.

== Summary
We discovered a vulnerability in the processing of wildcard synthesized
NSEC records. While synthesis of NSEC records is allowed by RFC4592,
these synthesized owner names should not be used in the NSEC processing.
This does, however, happen in Unbound 1.6.7 and earlier versions.

== Description
NSEC records are used to prove the non-existence of records between its
owner name and its next owner, and for the proof that the queried for
type does not exist when the queried for name matches the owner of the
NSEC. It is therefore important that the owner name of the NSEC record
can not be changed, this is enforced using a DNSSEC signature (RRSIG).

Because wildcard synthesis on NSEC records is allowed, it is possible to
have DNSSEC valid NSEC records for which the owner name must not be used
for non-existence proofs. A validator can determine that it is a
wildcard record using the label count in the NSEC signature and must in
that case use the non-synthesized wildcard name as NSEC owner.

Unbound validates these NSEC records (using the label count), and then
uses the owner of the NSEC it received for the non-existence proof.

Unbound is only vulnerable for zones that contain a wildcard record and
use NSEC records for the non-existence proof. NSEC3 records do not work
for this attack.

== Impact
The wildcard NSEC record can be used to proof the non-existence
(NXDOMAIN answer) of an existing wildcard record. This can be done by
changing the owner of the wildcard NSEC into a label that will be sorted
before the wildcard label.

The wildcard NSEC record can also be used to trick Unbound into
accepting a NODATA proof. This can be done by changing the owner name of
the NSEC wildcard record into the queried for name. This is only
possible when the queried for type is not in the type bitmap of the NSEC
wildcard record.

This vulnerability can not be used to trick Unbound into accepting an
insecure delegation proof (proof of no DS). The NS bit must be set in
the NSEC type bitmap when proving an insecure delegation, this is never
the case for wildcard records.

== Solution
Download patched version of Unbound, or apply the patch manually.

+ Downloading patched version
Unbound 1.6.8 is released with the patch
https://unbound.net/downloads/unbound-1.6.8.tar.gz

+ Applying the Patch manually
For Unbound version 1.6.7 the patch is:
https://unbound.net/downloads/patch_cve_2017_15105.diff

Apply the patch on Unbound source directory with 'patch -p0 < filename'
then run 'make install' to install Unbound.

== Acknowledgements
Ralph Dolmans (NLnet Labs)
Karst Koymans (University of Amsterdam)

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2013" "Wednesday" "3" "February" "2016" "12:12:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160203171216.EA851332075@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" "^Cc:" nil nil "2" "2016020317:12:16" "[oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" (number mark "        cve-assign@m Feb  3   48/2013  " thread-indent "\"[oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function\"\n") "<20160126203428.GA30775@eldamar.local>" ("<20160126203428.GA30775@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28155 invoked by uid 550); 3 Feb 2016 17:12:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28088 invoked from network); 3 Feb 2016 17:12:29 -0000
In-Reply-To: <20160126203428.GA30775@eldamar.local>
Message-Id: <20160203171216.EA851332075@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  3 Feb 2016 12:12:16 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> > From: Salvatore Bonaccorso
>> >
>> > While checking upstream bugzilla to see if that was reported I noticed
>> >
>> > https://bugzilla.gnome.org/show_bug.cgi?id=749115
>> >
>> > Does this have the same root cause?
>>
>> The CVE-2016-2073 PoC is an '&' followed by three characters, one of
>> which is a 0273 character. The PoC in 749115 has an unexpected
>> character immediately after a "<!DOCTYPE html" substring. We feel that
>> the CVE-2016-2073 report can have that unique ID on the basis of (at
>> least) a different attack methodology. CVE assignment for 749115 is
>> also possible unless 749115 already has a CVE ID.

> ... Can you assign an additional CVE for
> the 749115 issue?

Use CVE-2015-8806 for 749115. (We don't know of any additional
information about a CVE-2015-8806/CVE-2016-2073 interrelationship, or
about other CVE IDs that could potentially apply to an 'unexpected
character immediately after a "<!DOCTYPE html" substring' scenario.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWsjQMAAoJEL54rhJi8gl5ygUQAM4hAERzVI/E9CpMfv6esYFh
qu3drRJ0HyXvxCix9Qq1CvzegF3sFVUcvTjlz1gtNeZ4akP+k+U4VHwavU3yEuLN
ALvOYERtEP+rv841VYXnWwyb717zYqcoy5H3mN3xIIetvLDhNjq2WDduLZTDXLYg
szlt3pQpZIWdzURkfiZC05wcgi3JmRJG5rZQYI2gK2ijWW6yYI8Q+1R1fJT1mvO1
Zp5Z+k6e3eaStEvR+8N9QXsLEL36EDb72B9KCF2Vu500g+cfTkA/KDGyM4h9dB1I
6d2pENAtkt7ur42mMgU36VxZGF6thAtG2EaLJaD2U2DLh8DWwzqCtesBV0xK4u4z
7KOKl9j46XmYvO6AbgrjdK1Ij0QWeOmDbNE3/gRfOTTLZrgH/uwWVx45e05SG9m/
rs2Fb8zHkCfWrHJbBnKgh7biKYrnfg6oj/RELOf3mMdZZ8OVA015IIiI4zLPvdE3
153o4nbiWs9rIXmFhNbuLB7FuCjg2mFl6Ffv7XgzL/BD6OIw5N53i1hxzmE+cV57
JuUMZPCzfdQ75xyBm/UfMc7bpY4auLuegrSQYUkZI4HKaa+QVMdnSJOIA0RAAxsE
9pkvHu9eF5s+j7X+M9u2xJxrwhLDRNolM10jkivTrgTjAPFYUdQ2ppfzJ0AUaYtQ
UMHN8iEju9U93dGVuYRT
=v0jI
-----END PGP SIGNATURE-----

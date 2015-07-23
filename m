X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3265" "Thursday" "23" "July" "2015" "08:58:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150723125816.13ED03321FC@smtpvbsrv1.mitre.org>" "73" "[oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass" nil nil nil "7" "2015072312:58:16" "[oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass" (number mark "        cve-assign@m Jul 23   73/3265  " thread-indent "\"[oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass\"\n") "<20150723114101.GD7017@zoho.com>" ("<20150723114101.GD7017@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15670 invoked by uid 550); 23 Jul 2015 12:58:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15651 invoked from network); 23 Jul 2015 12:58:28 -0000
In-Reply-To: <20150723114101.GD7017@zoho.com>
Message-Id: <20150723125816.13ED03321FC@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, isowarez.isowarez.isowarez@googlemail.com, djm@mindrot.org
Date: Thu, 23 Jul 2015 08:58:16 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass
To: mancha1@zoho.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Our message was written from the perspective that everyone already
understood what the patch does, and to start from there in defining
what CVE-2015-5600 means.

> if the
> devices in the supplied client list all differ, the behavior is
> unchanged pre and post patch:

Yes; however, because no server supports an arbitrarily large number
of different KbdInteractiveDevices, a client that wishes to launch an
effective attack with an arbitrarily large number must use
duplication, as in the original example with 10000 instances of the
pam device. Disallowing all duplication is one way to prevent this
specific "arbitrarily large number" scenario. As we suggested in the
iahad example, disallowing all duplication might break somebody's use
case. (This is just theoretical; we haven't heard any reports of a
problem.) Even if the patch is revised to allow a small amount of
duplication, the definition of CVE-2015-5600 will stay the same.

> The difference in behavior can be observed when the list contains
> repeats:
> 
> -oKbdInteractiveDevices="snap,snap,snap"
> 
> Pre-patch the above would query the snap device three times per userauth
> request while post-patch only once.

Yes; "the client shouldn't be able to specify an arbitrarily large
number of KbdInteractiveDevices and be entitled to have the server
cooperate" means that the vulnerable behavior was the server's
decision to cooperate with the client and execute a piece of code 3
times (or, more importantly, 10000 times), when a more reasonable
behavior is to execute that piece of code only once.

> So, your hypothetical of:
> 
> -oKbdInteractiveDevices="krb5,krb6,krb7,krb8,krb9,krb10,krb11"
> 
> would work the same before and after the fix. Each of the seven listed
> devices would get queried once per userauth request. Assuming a default
> maxauth of 6, that means a total of 42 device queries before the
> connection gets severed.

What we are saying is that we don't consider that specific behavior,
after the fix, to be a separate vulnerability that requires a separate
CVE ID. It is possible for someone to make an argument that the "42
device queries" behavior is inconsistent with the documentation and
that the connection must be severed after 6 device queries. Although
we currently don't agree with that argument, we consider the argument
somewhat reasonable. That's why we chose to explicitly mention the
case of a legitimate list of seven devices, and provide our
perspective on whether we would support a second CVE request based on
a claim of an incomplete fix.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVsOQKAAoJEKllVAevmvmsdPEH/iDAntsGjUOC44KyKBJlewLW
K1Biykxtha0x3SK9GsM9bLBx+nO0fNJHKk2z5BUY7TxiDF9hGYcbD20XAmhgl80g
fWBai2bOY9zIv+oL6nDajDJznQGxvoyQsD/V8UbA/dVWOA45i7Xeg8U5CPnQl7Rf
VLHjd57U4+pyctAKe4jQ1lneQZoG8QQLnh20VVMBbxIWVDMk0m6sVIGiQIgXdSCM
19+67xU4MDcSGiV/ya32nArRr4csDkQMfCbzkuT4nQ4BQl/hATTKhz6dSRAScBZT
grPv0CFvFAsX1PiTNBms7zi0tXWRYxQzHVU0hZxbf1SjL0jkfYuCwGfOwJZP7mQ=
=ZK9C
-----END PGP SIGNATURE-----

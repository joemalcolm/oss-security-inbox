X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2571" "Tuesday" "28" "July" "2015" "08:27:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150728122724.120D93321BC@smtpvbsrv1.mitre.org>" "64" "[oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" nil nil nil "7" "2015072812:27:24" "[oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" (number mark "        cve-assign@m Jul 28   64/2571  " thread-indent "\"[oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129\"\n") "<CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>" ("<CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16201 invoked by uid 550); 28 Jul 2015 12:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16183 invoked from network); 28 Jul 2015 12:27:36 -0000
In-Reply-To: <CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>
Message-Id: <20150728122724.120D93321BC@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 28 Jul 2015 08:27:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129
To: reed@reedloden.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

We can assign an ID for one of these but we have a question about the other.

> * DL::dlopen could open a library with tainted library name even if
> $SAFE > 0
> https://github.com/ruby/ruby/commit/4600cf725a86ce31266153647ae5aa1197b1215b

Use CVE-2009-5147.


> * DL::Function#call could pass tainted arguments to a C function even if
> $SAFE > 0.
> https://github.com/ruby/ruby/commit/7269e3de3cee3bbb6ab77fc708f3a10cab00b65e

> These seem to be different issues than CVE-2008-3657.

Please clarify what research you have done to reach this conclusion
for the DL::Function#call issue. Finding information about
vulnerabilities with different dates does not always mean that
separate CVE IDs are used. For example, if a 2008 patch was
ineffective in the sense that it did not actually fix any aspect of a
CVE-2008-xxxx vulnerability, and then an effective patch and a new
advisory were produced in 2009, the previously assigned CVE-2008-xxxx
ID would continue to be used - there would not be a new CVE-2009-yyyy
ID.

The available information about CVE-2008-3657 includes the "Lack of
taintness check in dl" section of
https://www.ruby-lang.org/en/news/2008/08/08/multiple-vulnerabilities-in-ruby/
with "dl doesn't check taintness ... This vulnerability was reported
by sheepman" and "Please upgrade to ... 1.8.7-p72." See the
ftp://ftp.ruby-lang.org/pub/ruby/1.8/ archives.

Comparing ext/dl/sym.c between p71 and p72 shows a new
rb_check_safe_obj(pval) line in rb_dlsym_call.

Comparing ext/dl/dl.c between p71 and p72 shows new instances of
OBJ_INFECT, among other changes.

The 2009 commit mentions "Patch by sheepman" and a change to a .rb
file (no changes to any .c file).

Is the 2009 issue a new issue because it is specific to a "tainted
arguments to a C function" attack, and the 2008 patch correctly
resolved the 2008 test case involving uname?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVt3TCAAoJEKllVAevmvms7UQH/j6ekzwPRPi2iDBKm1S5wpjt
OSYiFZ7e72VxQqAcZS6O7jA4Rgt/2eZC6JUDmNAR+PrCqHm0QFxgRG7suvI/6SBL
5/FmC6SP/0ZEJ7pFdsjEqk0KfSXFTjZ2t4DeEojEIEJ7rNpimrUi8OfdVz3GzJFI
4DflBp2WJxlRQWTGOA1gCPemOoxH/GjtSiBGze6cB8WImCzm0v09vPZK5GYcGD2X
9FglRlV14T3/UQGa2tQwFhoEfJhhR24Exdau5CkKE0bnekBYSpDN+0LqxfuLeX9z
oH9N7ZTZ+pcvNMUUE0HIyg0XawgRP0YuKFieea9FDxhiZbWOHcdxVv/P4YnQePg=
=uFUY
-----END PGP SIGNATURE-----

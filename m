X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/15/5
Message-ID: <20161115211458.GK2344@openstack.org>
Date: Tue, 15 Nov 2016 21:15:00 +0000
From: Jeremy Stanley <jeremy@...nstack.org>
To: oss-security@...ts.openwall.com
Subject: Re: Re: [FD] CVE-2016-4484: - Cryptsetup Initrd root Shell
Content-Type: text/plain; charset=utf-8

On 2016-11-15 20:11:11 +0000 (+0000), Hector Marco wrote:
> It would be more precise to say "2:1.7.3-2" rather than "2:1".
> This number refers to the Debian package. It seems that Debian is using
> different version numbers for the "cryptsetup" package:
> 
> https://security-tracker.debian.org/tracker/CVE-2016-4484
> 
> We are not sure whether the last part of the version number (2:1.7.3-2)
> of the Debian package (1.7.3-2) is used to match with the cryptsetup
> version.
[...]

The "2:" prefix is called an "epoch" and was introduced around the
time the package was renamed from "cryptsetup-luks" to "cryptsetup"
(for reasons not entirely clear to me from reading the package
changelog, but is usually employed to work around version numbers
going in reverse or mistakes in version numbers for a package). The
-2 suffix is a package revision, which makes updated packages
containing non-updated upstream releases possible (necessary to, for
example, be able to fix bugs in the packaging itself). So in the
case of a 2:1.7.3-2 package version, 1.7.3 is the corresponding
upstream source version number.
-- 
Jeremy Stanley

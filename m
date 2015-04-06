X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1615" "Monday" "6" "April" "2015" "16:29:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150406202932.7AB9272E09C@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts" nil nil nil "4" "2015040620:29:32" "[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts" (number mark "        cve-assign@m Apr  6   42/1615  " thread-indent "\"[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts\"\n") "<5522E40B.4030506@kernel.org>" ("<5522E40B.4030506@kernel.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16120 invoked by uid 550); 6 Apr 2015 20:29:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16088 invoked from network); 6 Apr 2015 20:29:44 -0000
In-Reply-To: <5522E40B.4030506@kernel.org>
Message-Id: <20150406202932.7AB9272E09C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, jann@thejh.net
Date: Mon,  6 Apr 2015 16:29:32 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux namespaces: It is possible to escape from bind mounts
To: luto@kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Do you have a specific scenario in mind?

We think your question is based on a misinterpretation of what we
wrote. To avoid that, we shouldn't have started a sentence with "As
far as we can tell, the patches don't address."

> As far as we can tell, the patches don't address a separate scenario
> in which a ".." attack can occur but the underlying problem is
> something other than rename handling. So, we don't think a second CVE
> ID is needed.

wasn't intended to mean:

  The patches are inadequate because a separate scenario exists,
  and that separate scenario is not addressed by the patches.

Instead, it was intended to mean:

  We are not disputing that the patches are adequate. Also, in our
  current understanding, all attack scenarios ultimately depend on the
  previously incorrect handling of renames. Because there isn't a
  second type of scenario, there isn't a second CVE ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVIuvxAAoJEKllVAevmvmsIdQH/1WSCy4MpOVBZGJYDTaEbg7E
ZSwMKLzYq8cz3WCUXXOiZE+sWNmOW1hIeXQ6yqncP0wjHnkcvx0b9HIsB6IZVXWw
iat281etggs1DLogyp1loG91N8xVjIGQM4Vvno0ciiEh3/hrNzc9J8Pyf6M6k/ec
mC26mdQZAg8LHfL14iPDr8AzTAKEpV3TN9nzA+aSmz6TMF5PqVSLy9QGSl8IteVa
HIF6lG3g7jyUWX3LZa9iEQK9V5JO+BIbwuIQNW7+lDJdpZpPXcv2MsZ4avkPe/MB
OtviouuopAMIVjmHCYLXo5NPE5drcZshmU4rjesGMpqmsSt+36vHKidDgjEFMYs=
=HorD
-----END PGP SIGNATURE-----

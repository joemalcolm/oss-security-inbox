X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2807" "Wednesday" "10" "February" "2021" "14:37:00" "+0100" "Stefan Sperling" "stsp@apache.org" "<YCPhfDAncjgPysNr@byrne.stsp.name>" "76" "[oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.10.7 released" nil nil nil "2" "2021021013:37:00" "[oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.10.7 released" (number mark "U       stsp@apache. Feb 10   76/2807  " thread-indent "\"[oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.10.7 released\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.10.7 released" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25992 invoked by uid 550); 10 Feb 2021 13:50:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10082 invoked from network); 10 Feb 2021 13:37:17 -0000
Date: Wed, 10 Feb 2021 14:37:00 +0100
From: Stefan Sperling <stsp@apache.org>
To: announce@subversion.apache.org, users@subversion.apache.org,
	dev@subversion.apache.org, announce@apache.org
Cc: security@apache.org, oss-security@lists.openwall.com,
	bugtraq@securityfocus.com
Message-ID: <YCPhfDAncjgPysNr@byrne.stsp.name>
Mail-Followup-To: announce@subversion.apache.org,
	users@subversion.apache.org, dev@subversion.apache.org,
	announce@apache.org, security@apache.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.10.7 released

I'm happy to announce the release of Apache Subversion 1.10.7.
Please choose the mirror closest to you by visiting:

    https://subversion.apache.org/download.cgi#supported-releases

This is a stable bugfix and security release of the Apache Subversion
open source version control system.

THIS RELEASE CONTAINS AN IMPORTANT SECURITY FIX:

  CVE-2020-17525
  "Remote unauthenticated denial-of-service in Subversion mod_authz_svn"

The full security advisory for CVE-2020-17525 is available at:
  https://subversion.apache.org/security/CVE-2020-17525-advisory.txt

A brief summary of this advisory follows:

  Subversion's mod_authz_svn module will crash if the server is using
  in-repository authz rules with the AuthzSVNReposRelativeAccessFile
  option and a client sends a request for a non-existing repository URL.

  This can lead to disruption for users of the service.

  We recommend all users to upgrade to the 1.10.7 or 1.14.1 release
  of the Subversion mod_dav_svn server.

  As a workaround, the use of in-repository authz rules files with
  the AuthzSVNReposRelativeAccessFile can be avoided by switching
  to an alternative configuration which fetches an authz rules file
  from the server's filesystem, rather than from an SVN repository.

  This issue was reported by Thomas Åkesson.

SHA-512 checksums are available at:

    https://www.apache.org/dist/subversion/subversion-1.10.7.tar.bz2.sha512
    https://www.apache.org/dist/subversion/subversion-1.10.7.tar.gz.sha512
    https://www.apache.org/dist/subversion/subversion-1.10.7.zip.sha512

PGP Signatures are available at:

    https://www.apache.org/dist/subversion/subversion-1.10.7.tar.bz2.asc
    https://www.apache.org/dist/subversion/subversion-1.10.7.tar.gz.asc
    https://www.apache.org/dist/subversion/subversion-1.10.7.zip.asc

For this release, the following people have provided PGP signatures:

   Stefan Sperling [2048R/4F7DBAA99A59B973] with fingerprint:
    8BC4 DAE0 C5A4 D65F 4044  0107 4F7D BAA9 9A59 B973
   Branko Čibej [4096R/1BCA6586A347943F] with fingerprint:
    BA3C 15B1 337C F0FB 222B  D41A 1BCA 6586 A347 943F
   Johan Corveleyn [4096R/B59CE6D6010C8AAD] with fingerprint:
    8AA2 C10E EAAD 44F9 6972  7AEA B59C E6D6 010C 8AAD

These public keys are available at:

    https://www.apache.org/dist/subversion/subversion-1.10.7.KEYS

Release notes for the 1.10.x release series may be found at:

    https://subversion.apache.org/docs/release-notes/1.10.html

You can find the list of changes between 1.10.7 and earlier versions at:

    https://svn.apache.org/repos/asf/subversion/tags/1.10.7/CHANGES

Questions, comments, and bug reports to users@subversion.apache.org.

Thanks,
- The Subversion Team

--
To unsubscribe, please see:

    https://subversion.apache.org/mailing-lists.html#unsubscribing

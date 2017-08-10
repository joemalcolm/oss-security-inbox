X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2409" "Thursday" "10" "August" "2017" "18:04:26" "+0000" "Daniel Shahaf" "danielsh@apache.org" "<2fefe468-7d41-11e7-aea1-9312c6089150@apache.org>" "58" "[oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.9.7 released" nil nil nil "8" "2017081018:04:26" "[oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.9.7 released" (number mark "U       danielsh@apa Aug 10   58/2409  " thread-indent "\"[oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.9.7 released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11959 invoked by uid 550); 10 Aug 2017 18:10:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7325 invoked from network); 10 Aug 2017 18:04:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=fm1; bh=+hF95z/ZxtO0plPwc1kd3K8fx3358WNfPiT2DZx3l
	jE=; b=En1+iTcZcL4ewGx6gCuIZqmkC1YcnZPDyR0JgsithBxfBQbYAFDW7auTm
	KXEqhcUbMduEC/hoZn9P0+J8/xw8lmRLn7PQ/jsDCsfdcrF4NTcJj3Wwuf5YyHJC
	EnOkccf5yV5yF1cm9hT3QaNRKOhI4pwI2FnIF2Qk+jL8UwKJs3RQgkKP0IkypDYv
	y8feqz9AZ2/zHTHtNEJn6o6v3TTIj719jIgQADe7pGnaL04p1Moa0O5ZpJDvaQpI
	foeQYbY6C08eci41SBKo+N2w0DrteguArmaQbuMSrXADdC+uzzuxQetXbsIlBhCx
	j6QCW8PaBFnwzRSdNMMbdiTfxdnlA==
X-ME-Sender: <xms:LKCMWZhhFwX6amFUz1U5mHLsY7qOT2kqXm9v4nKhllA-M_hI4-4Wpg>
X-Sasl-enc: upNxsgi3d1gT4R8fgTzB81W5YWJTKBVSZEYj+sXc8Ljw 1502388268
Date: Thu, 10 Aug 2017 18:04:26 +0000
From: Daniel Shahaf <danielsh@apache.org>
To: announce@subversion.apache.org, users@subversion.apache.org,
	dev@subversion.apache.org, announce@apache.org
Cc: security@apache.org, oss-security@lists.openwall.com,
	bugtraq@securityfocus.com
Message-ID: <2fefe468-7d41-11e7-aea1-9312c6089150@apache.org>
Mail-Followup-To: announce@subversion.apache.org,
	users@subversion.apache.org, dev@subversion.apache.org,
	announce@apache.org, security@apache.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.9.7 released

I'm happy to announce the release of Apache Subversion 1.9.7.
Please choose the mirror closest to you by visiting:

    http://subversion.apache.org/download.cgi?update=201708081800#recommended-release

This is a stable security release of the Apache Subversion open source
version control system.  It fixes one security issue:

    CVE-2017-9800:
    Arbitrary code execution on clients through malicious svn+ssh URLs in
    svn:externals and svn:sync-from-url
    http://subversion.apache.org/security/CVE-2017-9800-advisory.txt

The SHA1 checksums are:

    874b81749cdc3e88152d103243c3623ac6338388 subversion-1.9.7.tar.bz2
    1a5f48acf9d0faa60e8c7aea96a9b29ab1d4dcac subversion-1.9.7.tar.gz
    741727b62596bf27f75838c46d1bb6938c83fbd7 subversion-1.9.7.zip

SHA-512 checksums are available at:

    https://www.apache.org/dist/subversion/subversion-1.9.7.tar.bz2.sha512
    https://www.apache.org/dist/subversion/subversion-1.9.7.tar.gz.sha512
    https://www.apache.org/dist/subversion/subversion-1.9.7.zip.sha512

PGP Signatures are available at:

    http://www.apache.org/dist/subversion/subversion-1.9.7.tar.bz2.asc
    http://www.apache.org/dist/subversion/subversion-1.9.7.tar.gz.asc
    http://www.apache.org/dist/subversion/subversion-1.9.7.zip.asc

For this release, the following people have provided PGP signatures:

   Johan Corveleyn [4096R/B59CE6D6010C8AAD] with fingerprint:
    8AA2 C10E EAAD 44F9 6972  7AEA B59C E6D6 010C 8AAD
   Stefan Sperling [2048R/4F7DBAA99A59B973] with fingerprint:
    8BC4 DAE0 C5A4 D65F 4044  0107 4F7D BAA9 9A59 B973
   Evgeny Kotkov [4096R/B64FFF1209F9FA74] with fingerprint:
    E7B2 A7F4 EC28 BE9F F8B3  8BA4 B64F FF12 09F9 FA74
   Stefan Hett (CODE SIGNING KEY) [4096R/376A3CFD110B1C95] with fingerprint:
    7B8C A7F6 451A D89C 8ADC  077B 376A 3CFD 110B 1C95
   Daniel Shahaf [3072R/A5FEEE3AC7937444] with fingerprint:
    E966 46BE 08C0 AF0A A0F9  0788 A5FE EE3A C793 7444
   Philip Martin [2048R/76D788E1ED1A599C] with fingerprint:
    A844 790F B574 3606 EE95  9207 76D7 88E1 ED1A 599C

Release notes for the 1.9.x release series may be found at:

    http://subversion.apache.org/docs/release-notes/1.9.html

You can find the list of changes between 1.9.7 and earlier versions at:

    http://svn.apache.org/repos/asf/subversion/tags/1.9.7/CHANGES

Questions, comments, and bug reports to users@subversion.apache.org.

Thanks,
- The Subversion Team

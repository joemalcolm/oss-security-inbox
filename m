X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1705" "Thursday" "1" "October" "2015" "08:17:51" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151001121751.548F66C0670@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: Apache James Server 2.3.2 security vulnerability fixed VU#988628" nil nil nil "10" "2015100112:17:51" "[oss-security] Re: Apache James Server 2.3.2 security vulnerability fixed VU#988628" (number mark "        cve-assign@m Oct  1   42/1705  " thread-indent "\"[oss-security] Re: Apache James Server 2.3.2 security vulnerability fixed VU#988628\"\n") "<560BE19C.50901@apache.org>" ("<560BE19C.50901@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31782 invoked by uid 550); 1 Oct 2015 12:18:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31744 invoked from network); 1 Oct 2015 12:18:03 -0000
In-Reply-To: <560BE19C.50901@apache.org>
Message-Id: <20151001121751.548F66C0670@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, Jakub.Palaczynski@ingservicespolska.pl, security@apache.org, cert@cert.org
Date: Thu,  1 Oct 2015 08:17:51 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Apache James Server 2.3.2 security vulnerability fixed VU#988628
To: eric@apache.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Description: Apache James Server 2.3.2 has security issue that can let a
> user execute arbitrary system command for servers configured with file
> based user repositories.
> 
> Mitigation: 2.3.2 users should upgrade to 2.3.2.1 to be downloaded from
> http://james.apache.org/download.cgi#Apache_James_Server
> 
> Credit: This issue was discovered by Palaczynski Jakub
> <Jakub.Palaczynski@ingservicespolska.pl> (recorded as VU#988628 by CERT)

Use CVE-2015-7611.

(The MITRE CVE team has had earlier communication with the discoverer,
and learned that step 8 of the
http://www.apache.org/security/committers.html process wasn't
completed in this case.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWDSLlAAoJEL54rhJi8gl5Z4MP/0qtNB4vq72DmYEHNKScQYFc
fojNnegH/3uH8V6Mj8f3NZw/87SkZCfcryIK9PcFcJDFwHwnJAIjfixFySSacvri
x5JjIMhYKNWFV5wAbSN1cWmKMEehhhtHT3TRSyR10gsu+wmJZgQDM5RhTb90QCQt
SkFHWbrNckvgiuOtTNflhX9D3Nkv7yy8KmzNfD1QAhtKHjy4DWw+zKje5MIj5a70
BZdwPkufTB2AvL6iYMsF3UMCuzRYNIp3Oa3EXdPonf20V/kvJINX5pURLh0UAawG
Y85mNhmen0UnQyAnMxw+ewWzAJ2NwqIfS6CiV3nDCDeZ5XqXwYi86RR+U/rOjf1C
3RXOq8jfAc/0HgaZ2vIw7BE8Gx7Co8mYh+zbw+DWiSGUhxwAsKwTM7W+jdtqyW2+
iGrsrFbwxQVTxK4iU4BmW2uzFnbDVHIogJHVrC0lr2g7miWOGmQwclBzoRRP2X1M
xfrEc80u9gQuSssv97Dr8ykmCPHOuxfuZPxA6xhj519DqpDQgVcNMZDa7qJzJvgj
2L6LkEptqK3nYm4IKE1QwxzszTtY6A5f/H71v3qs9JCzWhEVLK8YYu5Svjdtz9o9
f4/WFgUu4mRaQDrvHVEwz0fXOChTvwILTEIZyK8lqZ0LIhvrT1kaoMyjsSzkdRlk
PbH4QryaY29jRJbRTzys
=hNER
-----END PGP SIGNATURE-----

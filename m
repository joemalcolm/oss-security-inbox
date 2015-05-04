X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Monday" "4" "May" "2015" "12:55:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150504165511.4E92A6C005F@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request for vulnerability in OpenStack Keystone" nil nil nil "5" "2015050416:55:11" "[oss-security] Re: CVE request for vulnerability in OpenStack Keystone" (number mark "        cve-assign@m May  4   39/1446  " thread-indent "\"[oss-security] Re: CVE request for vulnerability in OpenStack Keystone\"\n") "<5547989E.5020802@enovance.com>" ("<5547989E.5020802@enovance.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28145 invoked by uid 550); 4 May 2015 16:55:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28123 invoked from network); 4 May 2015 16:55:23 -0000
In-Reply-To: <5547989E.5020802@enovance.com>
Message-Id: <20150504165511.4E92A6C005F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon,  4 May 2015 12:55:11 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for vulnerability in OpenStack Keystone
To: tristan.cacqueray@enovance.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Title: Potential Keystone cache backend password leak in log
> Affects: versions through 2014.1.4, and 2014.2 versions through 2014.2.3

> The
> backend_argument configuration option content is being logged, and it
> may contain sensitive information for specific backends (like a password
> for MongoDB). An attacker with read access to Keystone logs may
> therefore obtain sensitive data

> https://launchpad.net/bugs/1443598

> there are other backends provided by dogpile that support
> authentication through "arguments" (which keystone exposes as
> "backend_arguments"):

> In addition, custom cache backend implementations could also utilize
> backend_arguments. All of those would be affected as well.

Use CVE-2015-3646.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVR6IJAAoJEKllVAevmvms/qkH/3xbAcGsfGXCxlscmRmfInDR
3LoP1RjtJrn3NSYhUTBj8dNXT5qnD0W7uf2WtUh5l1nRQ4O1qWJvMGizNTHZVtfi
dkONWWk33bYg8nNwmlrS1Famy4i7i7yCFRbcpOTaYXad668dzSp0xLq4gcrTlR2A
uXySvJ/ohW8fSzbAtD6yh03JEB6iZ5yV1aYYJHiLc+DIq7ptymOEQ4DRbUqb8EAT
WL12gOTrL/cAPZsX/s5REnEJ10gYwif7Bpl3lRKELLK4tCPw2mIcZHfih+0HJCw3
ntqJg1T8KEYUkgrWnoiQOig1lPQBq2UeFdPB+eYvpPShJHLjqtwEum1XDlkR1fI=
=/tHl
-----END PGP SIGNATURE-----

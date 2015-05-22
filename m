X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1862" "Friday" "22" "May" "2015" "11:10:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150522151035.7D8476C0081@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE Request: OSSIM multiple vulnerabilities" nil nil nil "5" "2015052215:10:35" "[oss-security] Re: CVE Request: OSSIM multiple vulnerabilities" (number mark "        cve-assign@m May 22   57/1862  " thread-indent "\"[oss-security] Re: CVE Request: OSSIM multiple vulnerabilities\"\n") "<55530B66.3000209@sysdream.com>" ("<55530B66.3000209@sysdream.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6023 invoked by uid 550); 22 May 2015 15:10:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5995 invoked from network); 22 May 2015 15:10:46 -0000
In-Reply-To: <55530B66.3000209@sysdream.com>
Message-Id: <20150522151035.7D8476C0081@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, v.hautot@sysdream.com
Date: Fri, 22 May 2015 11:10:35 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: OSSIM multiple vulnerabilities
To: d.cauquil@sysdream.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Multiple vulnerabilities were found in OSSIM < 5.0.1

> https://www.alienvault.com/forums/discussion/5127

>> AlienVault ID: ENG-99866
>> Description: Vulnerability in the asset discovery scanner makes it
>>              possible to escalate privileges so that any command
>>              inserted on the os.execute method will be launched as
>>              root.
>> AV:L
>> Attribution: Vincent Hautot at Sysdream

> OSSIM uses *sudo* to launch a nmap scan for network discovery, allowing
> privilege escalation through a specifically crafted nmap script.

> /etc/sudoers
> www-data ALL=NOPASSWD: /usr/bin/nmap

> sudo nmap --script=/tmp/exec 127.0.0.1 -p 80

Use CVE-2015-4045.


>> AlienVault ID: ENG-99865
>> Description: Vulnerability in the asset discovery scanner makes it
>>              possible to execute a command remotely to run an asset
>>              discovery scan.
>> AV:N
>> Attribution: Vincent Hautot at Sysdream

> /ossim/netscan/do_scan.php?assets[]=;ncat

> /usr/share/ossim/www/netscan/do_scan.php
> $cmd = "/usr/bin/php /usr/share/ossim/scripts/vulnmeter/remote_nmap.php '$assets_p'
> system($cmd);

Use CVE-2015-4046.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVX0aYAAoJEKllVAevmvms++gH/jGnE5Huvhpv+zb6/gRfIH2s
F6zwEm9u5/u0Hi2FfUDWFJVvBXbXyt6yEgU2lbJZQXy5d/un30PzGcdJuEvSZ4nI
8AXo4rl2zHabt5daNhGPrfQnjQIvs8nx7cM2lMp+dhRWIE4gbr10FJdlwaZWUspJ
5/CVJJoA8dEJ5302gPEYP9NJdAVGYeiPlh7CcVdPthnt6mh2tXkazhjZjz6V7mJh
oOxtPvm50WCa5vOcVqzP8XtcGq0I2HNaQLQZaSdYT2zuan6wbXp6b9sBKwsqd3xD
BMq624mQiUyiMydaO7+8ZTCCThiev0h20wcacrX83NzaLQS/jV15p+ZwnXRPMLU=
=hHfc
-----END PGP SIGNATURE-----

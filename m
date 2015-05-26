X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["946" "Tuesday" "26" "May" "2015" "15:21:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150526192120.7C2426C002C@smtpvmsrv1.mitre.org>" "30" "[oss-security] Re: CVE Request for WP Fastest Cache plugin" nil nil nil "5" "2015052619:21:20" "[oss-security] Re: CVE Request for WP Fastest Cache plugin" (number mark "        cve-assign@m May 26   30/946   " thread-indent "\"[oss-security] Re: CVE Request for WP Fastest Cache plugin\"\n") "<CAN6thH4u+tRjwgKw0EAo6GnbctqTojku69M6c0=EvURf8Vxspw@mail.gmail.com>" ("<CAN6thH4u+tRjwgKw0EAo6GnbctqTojku69M6c0=EvURf8Vxspw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11659 invoked by uid 550); 26 May 2015 19:21:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11641 invoked from network); 26 May 2015 19:21:34 -0000
In-Reply-To: <CAN6thH4u+tRjwgKw0EAo6GnbctqTojku69M6c0=EvURf8Vxspw@mail.gmail.com>
Message-Id: <20150526192120.7C2426C002C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 26 May 2015 15:21:20 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for WP Fastest Cache plugin
To: 0pc0defr@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> CSRF vulnerability was found in WP Fastest Cache 0.8.3.4 plugin.
> 
> The vuln is found in admin.php:

> $this->saveOption();
> $this->deleteCache();
> $this->deleteCssAndJsCache();
> $this->addCacheTimeout();

Use CVE-2015-4089.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVZMdTAAoJEKllVAevmvms0mcIAIQ3YiRYDVzMQ4yRzaVcJUjf
VsH+cPTThrOU8OOLPsnYccFeyrBciiz4XUtX4AQX2tIF1DCK0+QL+UB32pdYnLLl
zwHLMOS2dpT7tsRoIkVYDb9cZxFCbZ4FCv5RLlaj2nHo57YyhVrNUmqsaNzmfJlb
Wd6Tot38eiMjFJnQxyUwAVHGwh5vJkZeJSqc8jauLJIZZn9qa8NcuB51BtZqiQ9/
B1Z1vi1HJpMqvrqeyA3cDGCF5zA2oBNbPfLYjTKfTbEC2FKy8NjEJYYmR9s4Jc87
AJ26GrIX41skoJMnnxvvMBCABE2x5z3KEOWsJmS0xzJehJHOppMZ/UtKYwdH81w=
=taMN
-----END PGP SIGNATURE-----

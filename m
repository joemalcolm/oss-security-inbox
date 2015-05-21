X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1422" "Thursday" "21" "May" "2015" "10:47:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150521144740.345B7B2E272@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: nbd denial of service" nil nil nil "5" "2015052114:47:40" "[oss-security] Re: CVE Request: nbd denial of service" (number mark "        cve-assign@m May 21   35/1422  " thread-indent "\"[oss-security] Re: CVE Request: nbd denial of service\"\n") "<20150519101608.GA4245@kronk.local>" ("<20150519101608.GA4245@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17943 invoked by uid 550); 21 May 2015 14:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17903 invoked from network); 21 May 2015 14:47:51 -0000
In-Reply-To: <20150519101608.GA4245@kronk.local>
Message-Id: <20150521144740.345B7B2E272@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 21 May 2015 10:47:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: nbd denial of service
To: alessandro@ghedini.me

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://sourceforge.net/p/nbd/mailman/message/30410146/
> https://github.com/yoe/nbd/commit/741495cb08503fd32a9d22648e63b64390c601f4

As far as we can tell, the CVE request is primarily about the
vulnerability that affects versions 2.9.22 through 3.3. Use
CVE-2013-7441.

>> Versions released between 2.9.16 and 2.9.22 ... are vulnerable in the
>> sense that the bad design is still there, but I don't believe they
>> would crash in that manner.

If someone is interested in a CVE ID for those older versions
(released in 2010 and 2011), and the behavior is different (e.g., if
the unexpected client behavior doesn't immediately lead to a crash and
instead can cause memory corruption), please let us know.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVXe+IAAoJEKllVAevmvmsuzwIAL5k8kTryqGjXT/7W5VY6O/N
Ybjzpqb9JrKk5t6SyedrtilpEwx6Wj87Pk36Wfw336fPDnzHFh8SvipW3oT/Dzil
I9llHybnTum0zGz2POnqzm1bL2Qr0QB0ly6gL56MCeErsfhngQahv6PGFuZC3wNH
p9MaHFwVVZAGDwzrbA2JAyw6C7T4xm6TyfY9/2tF3jhXvbTM+5yO9znK5p9BChco
ski7lbZW9tw3HK0CChrT0xQv6m6JTPR6s+faOiREE8+CkdqDpr/GTTIY5KGx6eFr
RiyinKasLHxIfsMZYQJIBotOLAFo9XdxO7cQIGNfL4npc8NBPcU8uhJUsH4scTQ=
=T6E3
-----END PGP SIGNATURE-----

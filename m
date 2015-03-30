X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1456" "Monday" "30" "March" "2015" "17:00:21" "+0200" "Sebastian Krahmer" "krahmer@suse.de" "<20150330150021.GB23696@suse.de>" "40" "[oss-security] Re: CVS-Request: realmd code execution/auth bypass" nil nil nil "3" "2015033015:00:21" "[oss-security] Re: CVS-Request: realmd code execution/auth bypass" (number mark "        krahmer@suse Mar 30   40/1456  " thread-indent "\"[oss-security] Re: CVS-Request: realmd code execution/auth bypass\"\n") "<20150325203652.6FAF56DC007@smtpvmsrv1.mitre.org>" ("<20150325131648.GC3795@suse.de>" "<20150325203652.6FAF56DC007@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19485 invoked by uid 550); 30 Mar 2015 15:00:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18424 invoked from network); 30 Mar 2015 15:00:33 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150330150021.GB23696@suse.de>
References: <20150325131648.GC3795@suse.de>
 <20150325203652.6FAF56DC007@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150325203652.6FAF56DC007@smtpvmsrv1.mitre.org>
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer=2C_Jane_Smithard=2C_Jennife?= =?utf-8?Q?r?= Guild, Dilip
 Upmanyu, Graham Norton, HRB 21284 (AG Nuernberg)
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com
Date: Mon, 30 Mar 2015 17:00:21 +0200
From: Sebastian Krahmer <krahmer@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVS-Request: realmd code execution/auth bypass
To: cve-assign@mitre.org

On Wed, Mar 25, 2015 at 04:36:52PM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> > Upstream has opened two bugs for issues in realmd
> 
> This initial response has a CVE ID only for the second one.
> 
> > could lead to remote attackers logging into the local system
> > by placing an evil AD server in the LAN
> > https://bugs.freedesktop.org/show_bug.cgi?id=89205
> 
> Is upstream planning to announce this as a vulnerability fix? Although
> the old behavior was unsafe if there was any possibility of an
> untrusted device on the LAN, it appears that the old behavior had been
> intentional. For example, the old behavior may have been chosen as a
> security/convenience tradeoff. This example might be applicable:
> 
>   https://fedoraproject.org/wiki/QA:Testcase_realmd_join_automatic
> 

Are CVE's only assigned if upstream is issuing fixes? The bug
entry reads like that there is something that needs fixing:

Attackers can pose as a legit realm (with the same name) so the admin is tricked to
join to a rogue AD, allowing an attacker to log into the machine.
The admin has no chance to know that he joined an evil AD which
has hijacked his legit realm-name.
Even when its intentional that the join is automatic for convenience,
it should "somehow" be ensured that the legit AD servers are used.

Sebastian


-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.de - SuSE Security Team


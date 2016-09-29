X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["781" "Thursday" "29" "September" "2016" "15:54:30" "+0200" "Quentin Casasnovas" "quentin.casasnovas@oracle.com" "<20160929135430.GA11369@chrystal.uk.oracle.com>" "14" "Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" "^Cc:" nil nil "9" "2016092913:54:30" "[oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" (number mark "        quentin.casa Sep 29   14/781   " thread-indent "\"Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call\"\n") "<F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>" ("<F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21887 invoked by uid 550); 29 Sep 2016 14:14:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22507 invoked from network); 29 Sep 2016 13:50:40 -0000
Message-ID: <20160929135430.GA11369@chrystal.uk.oracle.com>
References: <F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Thu, 29 Sep 2016 15:54:30 +0200
From: Quentin Casasnovas <quentin.casasnovas@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows
 escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call
To: oss-security@lists.openwall.com

On Thu, Sep 29, 2016 at 07:43:35AM +0000, 张谦 wrote:
> Hi there,
> I found a memory corruption vulnerabiliry in Linux kernel through 4.6.2, and I have a working exploit to escalade privileges which requires the ip6_tables module to be loaded, that it is properly blocked on all up-to-date versions.
> Due to the number of users running vulnerable code(not update to 4.7 or higher), and that this exploit is only available to security researchers and kernel packagers upon request but that I don't want it to spread.
> 
> I have reported this issue to Linux kernel official and they have already fixed this.
> And I would like to request CVE-ID for this issue.
> 

This was already disclosed here and CVEs were assigned AFAICT:

 http://seclists.org/oss-sec/2016/q2/599

Quentin

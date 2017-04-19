X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["947" "Wednesday" "19" "April" "2017" "13:22:47" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170419112247.GC19075@suse.de>" "27" "Re: [oss-security] CVE-2017-7874 versus CVE-2009-1185 ?" nil nil nil "4" "2017041911:22:47" "[oss-security] CVE-2017-7874 versus CVE-2009-1185 ?" (number mark "U       meissner@sus Apr 19   27/947   " thread-indent "\"Re: [oss-security] CVE-2017-7874 versus CVE-2009-1185 ?\"\n") "<20170419092124.GA9609@suse.de>" ("<20170419092124.GA9609@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9549 invoked by uid 550); 19 Apr 2017 11:23:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9525 invoked from network); 19 Apr 2017 11:22:59 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 19 Apr 2017 13:22:47 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20170419112247.GC19075@suse.de>
References: <20170419092124.GA9609@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170419092124.GA9609@suse.de>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE-2017-7874 versus CVE-2009-1185 ?

On Wed, Apr 19, 2017 at 11:21:24AM +0200, Sebastian Krahmer wrote:
> Hi
> 
> 
> I stumbled across https://twitter.com/info_dox/status/854372066228932609
> that is curious about an udev+kernel exploit
> (https://packetstormsecurity.com/files/142152/Linux-Kernel-4.8.0-udev-232-Privilege-Escalation.html)
> 
> which claims to exploit a missing sender-check within udev. That makes
> me wonder, as kernel 4.8.0 (and even earlier) no longer allow users
> to send NETLINK_KOBJECT_UEVENT messages. Our testcases fail,
> as they should:
> 
> https://bugzilla.suse.com/show_bug.cgi?id=1034330
> 
> 
> However, MITRE apparently assigned a valid CVE for it:
> 
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-7874
> 
> So either we miss some weird corner case or the CVE is invalid
> and should be withdrawn?

I think the reporter is incorrect and it should be retracted. I tried emailing 
him, but got no reply on this issue so far.

Ciao, Marcus

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1212" "Monday" "18" "October" "2021" "17:52:51" "+0000" "halfdog" "me@halfdog.net" nil "40" "Re: [oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using overlays copy_up" nil nil nil "10" nil nil (number mark "U       me@halfdog.n Oct 18   40/1212  " thread-indent "\"Re: [oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using overlays copy_up\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using overlays copy_up" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30223 invoked by uid 550); 18 Oct 2021 17:53:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30202 invoked from network); 18 Oct 2021 17:53:24 -0000
From: halfdog <me@halfdog.net>
To: Alon Zahavi <Alon.Zahavi@cyberark.com>
cc: oss-security@lists.openwall.com
In-reply-to: <PAXP193MB1405A3EC41713BE9D524FBE48DB89@PAXP193MB1405.EURP193.PROD.OUTLOOK.COM>
References: <DB9P193MB140461EEF44F153D9F66FF958DB89@DB9P193MB1404.EURP193.PROD.OUTLOOK.COM> <PAXP193MB1405A3EC41713BE9D524FBE48DB89@PAXP193MB1405.EURP193.PROD.OUTLOOK.COM>
Comments: In-reply-to Alon Zahavi <Alon.Zahavi@cyberark.com>
   message dated "Thu, 14 Oct 2021 18:30:53 +0000."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Date: Mon, 18 Oct 2021 17:52:51 +0000
Message-ID: <4095-1634579571.798266@3V_h.d15S.uAgJ>
Subject: Re: [oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using overlays copy_up

Alon Zahavi writes:
>
> After disclosing the issue with the linux-distros mailing list,
> I am reporting the security issue publicly to here. There is
> no patch available and may not be available for a long time
> because the kernel can't enforce the mitigation proposed, as
> that would be a layering violation and could also possibly
> cause a regression. This vulnerability was attached with
> CVE-2021-3847. Here is the report that was initially sent:
> ...

Just funny, just hours before this mail I got 3 mails on different
overlayfs copy-up vuln, e.g.

"""
The Precise Pangolin has reached end of life, so this bug will not be
fixed for that release

** Changed in: linux (Ubuntu Precise)
       Status: New => Won't Fix

-- 
You received this bug notification because you are subscribed to the bug
report.
https://bugs.launchpad.net/bugs/1534961
"""
...

[Bug 1534961] Re: CVE-2016-1575
[Bug 1547400] Re: CVE-2016-2853
[Bug 1535150] Re: CVE-2016-1576

So it is 5 years and not so much changed :-)

Overlayfs and alike where lower privileged user can simultaneously
access lower/upper AND the mounted file system is extremely dangerous
and prone to so many vulns, that nobody should use/allow that.

hd


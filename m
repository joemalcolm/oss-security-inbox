X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1103" "Friday" "17" "August" "2018" "15:14:01" "+0200" "Dominique Martinet" "asmadeus@codewreck.org" "<20180817131401.GA28952@nautica>" "28" "Re: [oss-security] Rule for releasing fixes for embargoed bugs" "^Date:" nil nil "8" "2018081713:14:01" "[oss-security] Rule for releasing fixes for embargoed bugs" (number mark "        asmadeus@cod Aug 17   28/1103  " thread-indent "\"Re: [oss-security] Rule for releasing fixes for embargoed bugs\"\n") "<20180817125244.illsqe3lckimtnms@suse.de>" ("<20180817114516.GA27667@nautica>" "<20180817125244.illsqe3lckimtnms@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26000 invoked by uid 550); 17 Aug 2018 13:14:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25977 invoked from network); 17 Aug 2018 13:14:28 -0000
Message-ID: <20180817131401.GA28952@nautica>
References: <20180817114516.GA27667@nautica>
 <20180817125244.illsqe3lckimtnms@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20180817125244.illsqe3lckimtnms@suse.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Fri, 17 Aug 2018 15:14:01 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Rule for releasing fixes for embargoed bugs
To: oss-security@lists.openwall.com

Marcus Meissner wrote on Fri, Aug 17, 2018:
> There seems to be some miscommunation here, which should be directly
> clarified with the security team of the affected distribution(s).

You are correct, I will also send them an email.

> Rule of thumb is: when a vendor publishes updates for an issue, the issue
> is public and can be referenced publically. I do not understand why you
> would get push back unless there are communication problems.
> 
> Also FWIW CVE-2018-3690 is an older reference to "Bounds Check Bypass Store",
> which is now tracked as CVE-2018-3693 and is public.

Thank you for the reference to the new CVE, I only had what was in the
package changelog to go with and none of the trackers I know about
reference CVE-2018-3690 as a duplicate/old name of CVE-2018-3693, so it
was confusing.
This is actually pretty reassuring that the rule is then appropriately
respected.

That being said, if CVE-2018-3693 is public there really is no reason to
say what they said in the discussions I have had with the RDMA folks, so
I will work to clear that up.


Thanks,
-- 
Dominique Martinet

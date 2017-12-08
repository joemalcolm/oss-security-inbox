X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["780" "Friday" "8" "December" "2017" "12:09:50" "+0300" "Dan Carpenter" "dan.carpenter@oracle.com" "<20171208090949.j6zlcrgv6djmwq4l@mwanda>" "24" "[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" nil nil nil "12" "2017120809:09:50" "[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" (number mark "U       dan.carpente Dec  8   24/780   " thread-indent "\"[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1\"\n") "<20171207111718.GA1230@kroah.com>" ("<CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>" "<20171207111718.GA1230@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25670 invoked by uid 550); 8 Dec 2017 09:19:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21617 invoked from network); 8 Dec 2017 09:10:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2017-10-26;
 bh=cooYcvbSctFEVHqSzfb+tYOHhZs4JiPxb2Yn3cJGGgo=;
 b=UnmrvIY/IQ1IFxGNIZgSEsJEjtEkCBiN6jC6N9JuzV+wxFEuba90b4XsXB73fQEFd53o
 SwpVwRxZPSlkYBuG5zqD7PD8N9LdHru7XpHAmcTiBVc+bcd1NQAVNyj2MCZQywi5m6SE
 sJCADpshhX27iya352d1RCp3V1JYZyScF1V0ahus/iXkMp/r0JnbspEPfrT5s9+8yyu3
 Xe3EBSXtHJGyYO9tzryCTZHtzDWjW5MJ5uUEyntkZZos4VilxQkels1PTxCzlmQlPkWo
 /WZ5Ph1zgRXXxaQAIVoAdGlZsNjSKWvYib2WLaXbutgM8dZsAwnxpCA3Gy1vZ8OiIbFY BQ== 
Date: Fri, 8 Dec 2017 12:09:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <greg@kroah.com>
Cc: at zhou <zhouat2017@gmail.com>, security@kernel.org, secalert@redhat.com,
        security@suse.com, tglx@linutronix.de, oss-security@lists.openwall.com,
        linux-distros@vs.openwall.org
Message-ID: <20171208090949.j6zlcrgv6djmwq4l@mwanda>
References: <CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>
 <20171207111718.GA1230@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171207111718.GA1230@kroah.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8738 signatures=668644
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=587
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1711220000 definitions=main-1712080133
Subject: [oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1

On Thu, Dec 07, 2017 at 12:17:18PM +0100, Greg KH wrote:
> On Thu, Dec 07, 2017 at 06:01:43PM +0800, at zhou wrote:
> > Hi all,
> > 
> > credit   to   L5@360vulcan team
> > 
> > I fuzzed the linux kernel and find signed integer overflow on linux
> > 4.15.0-rc1+.
> > the crash log can see below, the .config and the poc file ,please see the
> > attachments.
> 
> Odd, doesn't seem to affect a 4.9 or 4.15-rc2 kernel here on my
> machines, is there something specific in the .config that might be
> triggering this?
> 

Greg, you're running with UBSAN?

I've always wondered how UBSAN was going to work because there are *so*
many harmless integer overflows in the kernel.  That's my main challenge
with trying to use static analysis for integer overflows.

regards,
dan carpenter

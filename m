Received: (qmail 30145 invoked by uid 550); 18 Apr 2026 17:36:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27707 invoked from network); 18 Apr 2026 17:36:36 -0000
Date: Sat, 18 Apr 2026 19:36:40 +0200
From: Solar Designer <solar@openwall.com>
To: cyber security <cs7778503@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20260418173640.GA24846@openwall.com>
References: <CAPmip_xXkz6hjTUUKbaHr1hwq5ROfpNwn5Rq-t9cxMgs6uXhZQ@mail.gmail.com> <CAPmip_xVPZ_mFkTUjGd=k_3K222BQxPhySy1ei2VieqBp=pBng@mail.gmail.com> <CAPmip_zm57=Za1HVTM4RMr9xZiS3YNRcYRwXHXwPN3yMRC_eug@mail.gmail.com> <CAPmip_yuO6dEb7VNUmysMU3u1=4bjxpJyq=Q3SMAbM-ijAvqEA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPmip_yuO6dEb7VNUmysMU3u1=4bjxpJyq=Q3SMAbM-ijAvqEA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [CVE-2026-33691] OWASP CRS whitespace padding bypass vulnerability

Hi,

On Sat, Apr 18, 2026 at 08:14:12AM -0400, cyber security wrote:
> Also you can use CVE-2026-33691, to disable security headers while bypassing CRS
> 
> More info at https://unlockoldupload.hashnode.dev/turn-off-security-headers-using-cve-2026-33691

This gives a 404 Page Not Found, but more importantly actual content
should have been directly included in your posting, not only referenced
via a link (although providing a link as well would then be OK).

> On Sat, Apr 18, 2026 at 3:00 AM cyber security <cs7778503@gmail.com> wrote:
> > After deep analysis we confirm, that CVE-2026-33691 aka it alias
> > UnlockOldUpload, can even disable ModSecurity WAF
> >
> > More info at https://unlockoldupload.hashnode.dev/disable-modsecurity-waf-using-cve-2026-33691.

This one exists.  The gist of it is:

"upload a file called .htaccess with the content SecRuleEngine Off"

which should have been directly in your message.

With this, I think you've said enough about this CVE already, and should
stop here - no further examples are needed.

Thanks,

Alexander

Received: (qmail 7713 invoked by uid 550); 25 Apr 2025 00:08:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7607 invoked from network); 25 Apr 2025 00:08:35 -0000
Date: Fri, 25 Apr 2025 02:08:31 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250425000830.GA25158@openwall.com>
References: <tencent_11C8C35C2CF529292F8447A8@qq.com> <20250424183209.GA22610@openwall.com> <20250424190626.4qoptkgyk7tj6c74@jwilk.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424190626.4qoptkgyk7tj6c74@jwilk.net>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-3512: Qt Base QTextMarkdownImporter Front Matter Buffer Overflow

On Thu, Apr 24, 2025 at 09:06:26PM +0200, Jakub Wilk wrote:
> * Solar Designer <solar@openwall.com>, 2025-04-24 20:32:
> >There appears to be a growing trend towards calling OOB reads "buffer 
> >overflows".
> 
> Part of the problem may be that AddressSanitizer uses this unforuntate 
> terminology; you get something like this:
> 
>     ==7802==ERROR: AddressSanitizer: stack-buffer-overflow on address 
>     0xf5f00021 at pc 0xf79c113e bp 0xfff496e8 sp 0xfff492c4
>     READ of size 2 at 0xf5f00021 thread T0

Yes, this may very well be the main cause of this trend.  Is someone
reading this in a position to change the wording in AddressSanitizer?
For example, it could have "stack out-of-bounds read" in place of
"stack-buffer-overflow" above.

Alexander

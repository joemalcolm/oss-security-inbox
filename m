Received: (qmail 28112 invoked by uid 550); 28 Jul 2024 14:38:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27843 invoked from network); 28 Jul 2024 14:38:01 -0000
Date: Sun, 28 Jul 2024 16:37:58 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: sebastian@centricular.com
Message-ID: <20240728143758.GA17036@openwall.com>
References: <2309f1ae-1898-41f4-a369-c964498e9128@oracle.com> <20240726194606.GA12556@openwall.com> <886447e5-efb2-4701-83ef-2872bfd657e0@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <886447e5-efb2-4701-83ef-2872bfd657e0@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] GStreamer Security Advisory 2024-0003: Orc compiler stack-based buffer overflow

On Fri, Jul 26, 2024 at 01:05:09PM -0700, Alan Coopersmith wrote:
> Yes, this came up in the discussion to add asprintf() to POSIX in
> https://austingroupbugs.net/view.php?id=1496 :
> 
> >Of the above listed implementations, all but GNU libc document that they 
> >will
> >set *ptr to NULL on error, while GNU libc explicitly states that you cannot
> >rely on it to do so (and looking at its code, sometimes it does, sometimes
> >it doesn't).
> 
> and so the standard was written to allow both ways to be conformant.
> 
> If GNU libc was willing to change that, perhaps the next version of the
> standard could as well.

I didn't know you contributed to getting this standardized.  Thank you!

I think glibc should change, but the standard should merely strongly
encourage libc's to implement the safer behavior.  It shouldn't
guarantee it because older glibc systems will remain in use.

Alexander

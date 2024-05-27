Received: (qmail 23931 invoked by uid 550); 27 May 2024 11:34:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29840 invoked from network); 27 May 2024 11:26:55 -0000
Date: Mon, 27 May 2024 13:26:44 +0200
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Message-ID: <20240527112644.GA14080@unix-ag.uni-kl.de>
References: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com>
 <20240418164242.GA2468@openwall.com>
 <7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr>
 <87bk4r1r71.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bk4r1r71.fsf@oldenburg.str.redhat.com>
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Subject: Re: [oss-security] The GNU C Library security advisories update for
 2024-04-17: GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix
 out-of-bound writes when writing escape sequence

Hi,

On Mon, May 27, 2024 at 12:31:46PM +0200, Florian Weimer wrote:
> >
> > Although very late, here is a follow up explaining the impact of the
> > vulnerability.
> >
> > Provided that you can force an application to convert a partially
> > controlled buffer to ISO-2022-CN-EXT, you get an
> > overflow of 1 to 3 bytes whose value you don't control.
> >
> > This can be triggered in at least two ways in PHP:
> >
> > - Through direct calls to iconv()
> > - Through the use of PHP filters (i.e. using a "file read" vulnerability)
> >
> > Due to the way PHP's heap is built, you can use such a memory
> > corruption to alter part of a free list pointer,
> > which can in turn give you an arbitrary write primitive in the
> > program's memory.
> >
> > With this bug, any person that has a file read vulnerability with a
> > controlled prefix on a PHP application has RCE.
> 
> Out of curiosity, why would PHP translate a file to ISO-2022-CN-EXT
> while reading it?  It's not even an ASCII-transparent charset.

According to <https://www.ambionics.io/blog/iconv-cve-2024-2961-p1>, PHP
can be told to do so via "php://filter/…", a default behavior of PHP,
it seems (I have just skimmed that page and do not know any details).

HTH,
Erik

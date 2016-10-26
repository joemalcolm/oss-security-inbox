X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2434" "Wednesday" "26" "October" "2016" "10:46:40" "+0100" "Simon McVittie" "smcv@debian.org" "<20161026094640.rv26wlnarguz5lyv@perpetual.pseudorandom.co.uk>" "43" "Re: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" nil nil nil "10" "2016102609:46:40" "[oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" (number mark "U       smcv@debian. Oct 26   43/2434  " thread-indent "\"Re: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)\"\n") "<8284992.IKFRmaKcSl@blackgate>" ("<2510502.0NpgWQPfkR@blackgate>" "<20161023010359.42F65336005@smtpvbsrv1.mitre.org>" "<CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>" "<8284992.IKFRmaKcSl@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23723 invoked by uid 550); 26 Oct 2016 09:46:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23699 invoked from network); 26 Oct 2016 09:46:52 -0000
Date: Wed, 26 Oct 2016 10:46:40 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161026094640.rv26wlnarguz5lyv@perpetual.pseudorandom.co.uk>
References: <2510502.0NpgWQPfkR@blackgate>
 <20161023010359.42F65336005@smtpvbsrv1.mitre.org>
 <CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>
 <8284992.IKFRmaKcSl@blackgate>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8284992.IKFRmaKcSl@blackgate>
User-Agent: NeoMutt/20161014 (1.7.1)
Subject: Re: [oss-security] Re: jasper: memory allocation failure in
 jas_malloc (jas_malloc.c)

On Wed, 26 Oct 2016 at 10:08:56 +0200, Agostino Sarubbo wrote:
> more or less I agree with you, but since time ago I saw that similar bugs 
> reveiced a CVE, I thought that these type of bugs could interest the community 
> and them I'm sharing them.
> If I'm not mistaken, CWE-789 covers these type of bugs.

It depends on the purpose of your software, and how it runs (for example
a one-shot command-line tool vs. a long-running daemon). If a
command-line tool for converting JPEG2000 to JPEG (or whatever) exits
unexpectedly due to a failed attempt to allocate multiple gigabytes
of memory, that isn't really any worse than exiting unsuccessfully
because an arbitrary limit on image size was exceeded: the user isn't
getting their desired JPEG either way.

Conversely, if a daemon that accepts uploaded JPEG2000 images and
converts them to JPEG exits unexpectedly due to a failed attempt to
allocate multiple gigabytes of memory, then that's denying service to
the service's other users as well, which is an instance CWE-789.

For a general-purpose library like jasper, which could be used in
either of those contexts, I suspect the best you can do is to make sure
conversion gracefully fails with an appropriate error report (error code
or exception or whatever you use) if memory can't be allocated or if
a library-user-specified limit is exceeded - then the library user can
handle that however they want to, for example by exiting (appropriate
for a command-line tool) or by reporting an error but continuing to
accept new requests (appropriate for a daemon).

Denial-of-service is basically a failure of the "availability" security
property: the actions of a malicious user make the service unavailable to
its non-malicious users. However, imposing arbitrary limits can also be
argued to be a failure of availability: if you put a limit of, say, 100M
on the uncompressed size of images you are willing to work with, then
that's denying service to non-malicious users whose images happen to
need 102M. Choosing where to draw the line is a trade-off rather than an
absolute, and library code rarely has enough information or configurability
to make an informed decision about the right place for that trade-off.

(I recognise the hypocrisy in saying this as a maintainer of D-Bus,
whose messages have a completely arbitrary size limit chosen to make
it obvious that 32-bit arithmetic on message sizes never overflows :-)

    S

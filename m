Received: (qmail 26134 invoked by uid 550); 18 Oct 2025 00:26:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5581 invoked from network); 17 Oct 2025 23:59:57 -0000
Date: Sat, 18 Oct 2025 01:59:49 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20251017235949.GD2696@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20251017231636.GC2696@qaa.vinc17.org>
 <20251017235023.GA23530@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251017235023.GA23530@openwall.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.15+91 (ba36b184) vl-169878 (2025-10-03)
Subject: Re: [oss-security] rplay (Mark R. Boyns) potential security issues
 (unsanitized data, unchecked malloc...)

On 2025-10-18 01:50:23 +0200, Solar Designer wrote:
> On Sat, Oct 18, 2025 at 01:16:36AM +0200, Vincent Lefevre wrote:
> > Debian distributes Mark R. Boyns's rplay 3.3.2. I've had
> > a very quick look at the source and found at least:
> > 
> > * In rplay/rplay.c line 600, the use of atoi() on something that
> >   looks like unsanitized data from a remote server:
> > 
> >         remote_size = -1;
> >         p = rptp_parse(response, "size");
> >         if (p)
> >             remote_size = atoi(p);
> > 
> > * Various malloc() without a check of failure, such as:
> 
> These look like minor correctness and robustness issues.

Some of them may be minor, but ones in librplay may be a major
issue. For instance, in Debian, /usr/libexec/fvwm2/2.7.0/FvwmEvent
is linked against this library:

qaa:~> ldd /usr/libexec/fvwm2/2.7.0/FvwmEvent
[...]
        librplay.so.3 => /lib/librplay.so.3 (0x00007f25461f4000)
[...]

meaning that this could make the window manager crash (unless it
has some protection for modules).

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

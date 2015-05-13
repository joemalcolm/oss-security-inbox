X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1018" "Wednesday" "13" "May" "2015" "11:53:22" "-0700" "Greg KH" "greg@kroah.com" "<20150513185322.GA4029@kroah.com>" "28" "Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" nil nil nil "5" "2015051318:53:22" "[oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" (number mark "        greg@kroah.c May 13   28/1018  " thread-indent "\"Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities\"\n") "<CAHmME9pL6kU5D9YNZdDMHXc0harTZ_oDo9xEpmojEN9_qs+qpQ@mail.gmail.com>" ("<1431542014-3239-1-git-send-email-Jason@zx2c4.com>" "<20150513184331.GA1847@kroah.com>" "<CAHmME9pL6kU5D9YNZdDMHXc0harTZ_oDo9xEpmojEN9_qs+qpQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5710 invoked by uid 550); 13 May 2015 18:53:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5685 invoked from network); 13 May 2015 18:53:36 -0000
Message-ID: <20150513185322.GA4029@kroah.com>
References: <1431542014-3239-1-git-send-email-Jason@zx2c4.com>
 <20150513184331.GA1847@kroah.com>
 <CAHmME9pL6kU5D9YNZdDMHXc0harTZ_oDo9xEpmojEN9_qs+qpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9pL6kU5D9YNZdDMHXc0harTZ_oDo9xEpmojEN9_qs+qpQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security <oss-security@lists.openwall.com>,
	shigekatsu.tateno@atmel.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Date: Wed, 13 May 2015 11:53:22 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death
 vulnerabilities
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

On Wed, May 13, 2015 at 08:48:31PM +0200, Jason A. Donenfeld wrote:
> On Wed, May 13, 2015 at 8:43 PM, Greg KH <greg@kroah.com> wrote:
> > Any reason you didn't cc: the maintainer who could actually apply these
> > to the kernel tree?
> 
> I did, look at the email again: the first recipient is
> <shigekatsu.tateno@atmel.com>.
> 
> >From the MAINTAINERS file:
>     STAGING - OZMO DEVICES USB OVER WIFI DRIVER
>     M:      Shigekatsu Tateno <shigekatsu.tateno@atmel.com>
>     S:      Maintained
>     F:      drivers/staging/ozwpan/

$ ./scripts/get_maintainer.pl --file drivers/staging/ozwpan/Makefile 
Shigekatsu Tateno <shigekatsu.tateno@atmel.com> (maintainer:STAGING - OZMO DE...)
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM)
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)

You missed me, and the driverdev mailing list.  netdev could care less
about this.

Please resend to get the proper people involved.

thanks,

greg k-h

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1201" "Tuesday" "20" "September" "2016" "00:06:00" "+0200" "Solar Designer" "solar@openwall.com" "<20160919220600.GA17104@openwall.com>" "26" "Re: [oss-security] Re: ezmlm warning" nil nil nil "9" "2016091922:06:00" "[oss-security] Re: ezmlm warning" (number mark "U       solar@openwa Sep 20   26/1201  " thread-indent "\"Re: [oss-security] Re: ezmlm warning\"\n") "<CALPTtNX6gO6We7_3=Wf4xXdt6er8PwmPNjCWTwhZ-0jQ5GkU-g@mail.gmail.com>" ("<1436834771.18369.ezmlm-warn@lists.openwall.com>" "<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>" "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>" "<20150718174051.GB2727@openwall.com>" "<CALPTtNX6gO6We7_3=Wf4xXdt6er8PwmPNjCWTwhZ-0jQ5GkU-g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24004 invoked by uid 550); 19 Sep 2016 22:06:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23863 invoked from network); 19 Sep 2016 22:06:07 -0000
Date: Tue, 20 Sep 2016 00:06:00 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20160919220600.GA17104@openwall.com>
References: <1436834771.18369.ezmlm-warn@lists.openwall.com> <CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com> <CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com> <20150718174051.GB2727@openwall.com> <CALPTtNX6gO6We7_3=Wf4xXdt6er8PwmPNjCWTwhZ-0jQ5GkU-g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALPTtNX6gO6We7_3=Wf4xXdt6er8PwmPNjCWTwhZ-0jQ5GkU-g@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Re: ezmlm warning

On Mon, Sep 19, 2016 at 02:01:08PM -0700, Reed Loden wrote:
> On Sat, Jul 18, 2015 at 10:40 AM, Solar Designer <solar@openwall.com> wrote:
> > On Thu, Jul 16, 2015 at 05:41:35PM -0700, Reed Loden wrote:
> > > Likely, the ezmlm instance on lists.openwall.com needs to be updated to get
> > > some of the DMARC compliance changes that were made last year (
> > > http://untroubled.org/ezmlm/archive/7.2.2/CHANGES).
> >
> > Thank you.  I assume you mean primarily this one:
> >
> > - Added optional rewritefrom feature to ezmlm-send, automatically
> >   enabled when the sender has a "reject" DMARC policy.
> 
> Alexander,
> 
> Any update on getting the ezmlm instance on oss-security updated so people
> with e-mail providers who have implemented DMARC don't get their e-mails
> rejected? Would be much appreciated.

This is on my back burner.  I might approach experimenting with this
some months later.  I'm afraid I have other priorities right now.  For
now, I recommend that you don't use DMARC for addresses that you use on
mailing lists (posting and/or subscribing); in fact, I am likely to
continue to recommend this even if we do deploy a workaround for the
lists hosted at Openwall.

Alexander

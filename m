X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["808" "Saturday" "25" "April" "2015" "16:40:10" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150425144010.GC28124@suse.de>" "23" "Re: [oss-security] Re: CVE request: X server crash by client" nil nil nil "4" "2015042514:40:10" "[oss-security] Re: CVE request: X server crash by client" (number mark "        meissner@sus Apr 25   23/808   " thread-indent "\"Re: [oss-security] Re: CVE request: X server crash by client\"\n") "<20150425032220.EB99F6C0032@smtpvmsrv1.mitre.org>" ("<20150424150022.GC25205@suse.de>" "<20150425032220.EB99F6C0032@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14234 invoked by uid 550); 25 Apr 2015 14:40:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14210 invoked from network); 25 Apr 2015 14:40:22 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150425144010.GC28124@suse.de>
References: <20150424150022.GC25205@suse.de>
 <20150425032220.EB99F6C0032@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150425032220.EB99F6C0032@smtpvmsrv1.mitre.org>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Jennifer_Guild=2C_Dilip_?=
 =?iso-8859-1?Q?Upmanyu=2C_Graham_Norton=2C_HRB_21284_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org, xorg_security@x.org
Date: Sat, 25 Apr 2015 16:40:10 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: X server crash by client
To: oss-security@lists.openwall.com

On Fri, Apr 24, 2015 at 11:22:20PM -0400, cve-assign@mitre.org wrote:
> > We got notified that the fix for CVE-2014-8092 introduced the possibility
> > of a division by 0 when the "height" for the PutImage call is 0, leading
> > to X server abort.
> > 
> > This was already fixed in January in X git.
> > http://cgit.freedesktop.org/xorg/xserver/commit/?id=dc777c346d5d452a53b13b917c45f6a1bad2f20b
> > 
> > As this is a local denial of service, but might be triggerable by images with 0 height
> > supplied externally, it might need a CVE.
> 
> Use CVE-2015-3418.

thanks!

> > https://bugzilla.novell.com/show_bug.cgi?id=928520
> 
> This currently doesn't seem to be a public bug - we don't know whether
> that's intentional.

opened it... was not open as it was under another product before.

Ciao, Marcus

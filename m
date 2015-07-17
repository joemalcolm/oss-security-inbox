X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Friday" "17" "July" "2015" "08:10:33" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<874ml3nwkm.fsf@mid.deneb.enyo.de>" "17" "Re: [oss-security] Re: ezmlm warning" nil nil nil "7" "2015071706:10:33" "[oss-security] Re: ezmlm warning" (number mark "        fw@deneb.eny Jul 17   17/722   " thread-indent "\"Re: [oss-security] Re: ezmlm warning\"\n") "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>" ("<1436834771.18369.ezmlm-warn@lists.openwall.com>" "<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>" "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17765 invoked by uid 550); 17 Jul 2015 06:10:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17737 invoked from network); 17 Jul 2015 06:10:46 -0000
References: <1436834771.18369.ezmlm-warn@lists.openwall.com>
	<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>
	<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>
In-Reply-To: <CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>
	(Reed Loden's message of "Thu, 16 Jul 2015 17:41:35 -0700")
Message-ID: <874ml3nwkm.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Fri, 17 Jul 2015 08:10:33 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ezmlm warning
To: oss-security@lists.openwall.com

* Reed Loden:

> Yup, I get these, too... Been happening for almost a year. See also
> http://seclists.org/oss-sec/2014/q3/471.
>
> Likely, the ezmlm instance on lists.openwall.com needs to be updated to get
> some of the DMARC compliance changes that were made last year (
> http://untroubled.org/ezmlm/archive/7.2.2/CHANGES).

Or you need to upgrade your email service to something that supports
mailing lists.  oss-security uses Internet Mail in the way it is
intended and specified.  If recipient mail servers cannot accept those
messages, it is really their fault.

DMARC is just one aspect of that.  For example, would you also request
that Openwall will never deploy IPv6 because Gmail rejects mail sent
over IPv6?

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["442" "Saturday" "18" "July" "2015" "20:40:51" "+0300" "Solar Designer" "solar@openwall.com" "<20150718174051.GB2727@openwall.com>" "11" "Re: [oss-security] Re: ezmlm warning" nil nil nil "7" "2015071817:40:51" "[oss-security] Re: ezmlm warning" (number mark "        solar@openwa Jul 18   11/442   " thread-indent "\"Re: [oss-security] Re: ezmlm warning\"\n") "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>" ("<1436834771.18369.ezmlm-warn@lists.openwall.com>" "<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>" "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15928 invoked by uid 550); 18 Jul 2015 17:41:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15908 invoked from network); 18 Jul 2015 17:40:59 -0000
Message-ID: <20150718174051.GB2727@openwall.com>
References: <1436834771.18369.ezmlm-warn@lists.openwall.com> <CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com> <CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 18 Jul 2015 20:40:51 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ezmlm warning
To: oss-security@lists.openwall.com

On Thu, Jul 16, 2015 at 05:41:35PM -0700, Reed Loden wrote:
> Likely, the ezmlm instance on lists.openwall.com needs to be updated to get
> some of the DMARC compliance changes that were made last year (
> http://untroubled.org/ezmlm/archive/7.2.2/CHANGES).

Thank you.  I assume you mean primarily this one:

- Added optional rewritefrom feature to ezmlm-send, automatically
  enabled when the sender has a "reject" DMARC policy.

Alexander

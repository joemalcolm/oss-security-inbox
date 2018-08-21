X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["989" "Tuesday" "21" "August" "2018" "10:00:26" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "23" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082115:00:26" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        bfriesen@sim Aug 21   23/989   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28290 invoked by uid 550); 21 Aug 2018 15:00:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28271 invoked from network); 21 Aug 2018 15:00:39 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com> <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 21 Aug 2018 10:00:26 -0500 (CDT)
Date: Tue, 21 Aug 2018 10:00:26 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable
 PS coders in policy.xml by default?
To: oss-security@lists.openwall.com

On Tue, 21 Aug 2018, Tavis Ormandy wrote:
>
> I think those thumbnails should be disabled, but you've probably noticed I
> think everything related to untrusted ghostscript should be disabled :-)

I have posted to the GraphicsMagick Announcements mailing list 
regarding your findings (with a link to this list) and suggested that 
a fool-proof solution is that Ghostscript should be uninstalled.

Uninstalling Ghostscript entirely might cause software using libgs to 
not execute at all unless a stub library is put in its place.

Dependencies on Ghostscript are much larger than one would initially 
think due to Postscript being the traditional output from Unix 
software for "printing" and thus it is used as an intermediate format 
in order to convert between formats.  EPS content is also embedded in 
some other formats.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/

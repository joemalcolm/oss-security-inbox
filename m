X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["876" "Monday" "22" "August" "2016" "16:16:45" "+0300" "Solar Designer" "solar@openwall.com" "<20160822131645.GA6176@openwall.com>" "20" "Re: [oss-security] memory issues in libksba 1.3.4 and git" nil nil nil "8" "2016082213:16:45" "[oss-security] memory issues in libksba 1.3.4 and git" (number mark "U       solar@openwa Aug 22   20/876   " thread-indent "\"Re: [oss-security] memory issues in libksba 1.3.4 and git\"\n") "<87mvk59d3f.fsf@wheatstone.g10code.de>" ("<E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>" "<8760qtaza4.fsf@wheatstone.g10code.de>" "<20160822111506.GA4403@openwall.com>" "<87mvk59d3f.fsf@wheatstone.g10code.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30164 invoked by uid 550); 22 Aug 2016 13:17:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29993 invoked from network); 22 Aug 2016 13:16:48 -0000
Date: Mon, 22 Aug 2016 16:16:45 +0300
From: Solar Designer <solar@openwall.com>
To: Werner Koch <wk@gnupg.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20160822131645.GA6176@openwall.com>
References: <E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com> <8760qtaza4.fsf@wheatstone.g10code.de> <20160822111506.GA4403@openwall.com> <87mvk59d3f.fsf@wheatstone.g10code.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mvk59d3f.fsf@wheatstone.g10code.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] memory issues in libksba 1.3.4 and git

On Mon, Aug 22, 2016 at 02:56:20PM +0200, Werner Koch wrote:
> On Mon, 22 Aug 2016 13:15, solar@openwall.com said:
> > Werner, maybe you could try this old workaround for next time you post? -
> >
> >   (setq mml-insert-mime-headers-always t)
> 
> Done.  Thanks for pointing me to this setting; for reference this is:
> 
>   If non-nil, always put Content-Type: text/plain at top of empty parts.
>   It is necessary to work against a bug in certain clients.

Thanks.  This appears to have made no effect, and thus didn't work
around whatever ezmlm-idx bug(?) your messages are triggering here.
Your messages are missing the Content-Type header for MIME parts that
are not empty, so this does not literally fit the description above.

Anyway, it's not a topic for oss-security.  I am merely noting that this
is something I need to investigate and fix... eventually.

Alexander

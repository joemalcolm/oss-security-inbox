X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2698" "Monday" "22" "August" "2016" "14:15:06" "+0300" "Solar Designer" "solar@openwall.com" "<20160822111506.GA4403@openwall.com>" "69" "Re: [oss-security] memory issues in libksba 1.3.4 and git" nil nil nil "8" "2016082211:15:06" "[oss-security] memory issues in libksba 1.3.4 and git" (number mark "U       solar@openwa Aug 22   69/2698  " thread-indent "\"Re: [oss-security] memory issues in libksba 1.3.4 and git\"\n") "<8760qtaza4.fsf@wheatstone.g10code.de>" ("<E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>" "<8760qtaza4.fsf@wheatstone.g10code.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23956 invoked by uid 550); 22 Aug 2016 11:15:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23806 invoked from network); 22 Aug 2016 11:15:11 -0000
Date: Mon, 22 Aug 2016 14:15:06 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Werner Koch <wk@gnupg.org>, Pascal Cuoq <cuoq@trust-in-soft.com>,
	Rapha??l Rieu-Helft <raphael.rieu-helft@trust-in-soft.com>
Message-ID: <20160822111506.GA4403@openwall.com>
References: <E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com> <8760qtaza4.fsf@wheatstone.g10code.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8760qtaza4.fsf@wheatstone.g10code.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] memory issues in libksba 1.3.4 and git

Hi,

I thought I had fixed that ezmlm-idx incompatibility with Werner's setup
of Gnus, but it seems not - perhaps it's not exactly that same old bug,
even if very similar:

http://www.openwall.com/lists/oss-security/2016/08/18/20

In those old bug reports, it was about MIME sections completely lacking
headers.  In Werner's messages, the MIME section has only the
Content-Transfer-Encoding header, but not a Content-Type header.

Also, Werner's latest message appears to have an invalid boundary
string.  (The previous message for which corruption occurred had a
valid boundary string, even if unusual.  These unusual boundary strings
might or might not be relevant to the problem.)  Specifically:

--=SRI-target-ANDVT-Freeh-anthrax-[Hello-to-all-my-friends-and-fans-in=

The "[" character isn't in the allowed set per RFC 2046:

     boundary := 0*69<bchars> bcharsnospace

     bchars := bcharsnospace / " "

     bcharsnospace := DIGIT / ALPHA / "'" / "(" / ")" /
                      "+" / "_" / "," / "-" / "." /
                      "/" / ":" / "=" / "?"

Unfortunately, the message corruption occurs post moderator approval, so
I couldn't easily see whether it occurred this time or not without
approving the message first.  I guess I'd need to debug it on a test
list, re-injecting Werner's message on my own, but I don't currently
have time for that.  I'll include Werner's original message below.

Werner, maybe you could try this old workaround for next time you post? -

  (setq mml-insert-mime-headers-always t)

Thanks, and sorry, and yes this is pretty ridiculous.

Alexander

On Mon, Aug 22, 2016 at 12:11:47PM +0200, Werner Koch wrote:
> On Sat, 20 Aug 2016 16:06, cuoq@trust-in-soft.com said:
> 
> > These inputs have been set to Werner Koch, privately as per his
> > request, on May 25, June 11 and July 11. I am publishing them now so
> 
> I am sorry about the delays.  I asked Pascal to discuss this privately
> for the simple matter that I would anyway be the one to fix the things.
> In the future I will take care to CC my co-hackers on such private mails
> so they can jump in or remind me of such delays.
> 
> > that anyone who uses or might want to use libksba to parse messages
> > (received pre-authentification by definition) can make an informed
> > choice considering the risks of denial of service and information
> 
> I just release libksba 1.3.5 which limits the allocation to a 16 MiB
> which is the best solution I could come up with.  Note that this parser
> is only used for smallish ASN.1 objects like certificates or small parts
> of of larger ASN.1 objects (like CRLs).
> 
> Thanks to Pascal for looking at Libksba.
> 
> 
> Shalom-Salam,
> 
>    Werner

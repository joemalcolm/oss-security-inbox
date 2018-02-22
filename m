X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2709" "Thursday" "22" "February" "2018" "18:23:29" "+0100" "Solar Designer" "solar@openwall.com" "<20180222172329.GA4137@openwall.com>" "62" "Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length" "^Date:" nil nil "2" "2018022217:23:29" "[oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length" (number mark "        solar@openwa Feb 22   62/2709  " thread-indent "\"Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length\"\n") "<20180218180945.GA22931@openwall.com>" ("<20180218180945.GA22931@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5802 invoked by uid 550); 22 Feb 2018 17:23:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5678 invoked from network); 22 Feb 2018 17:23:33 -0000
Message-ID: <20180222172329.GA4137@openwall.com>
References: <20180218180945.GA22931@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180218180945.GA22931@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 22 Feb 2018 18:23:29 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length
To: oss-security@lists.openwall.com

On Sun, Feb 18, 2018 at 07:09:45PM +0100, Solar Designer wrote:
> https://github.com/LibVNC/libvncserver/issues/218

> libvncserver/rfbserver.c: rfbProcessClientNormalMessage() contains the
> following code:
> 
>     case rfbClientCutText:
> 
>         if ((n = rfbReadExact(cl, ((char *)&msg) + 1,
>                            sz_rfbClientCutTextMsg - 1)) <= 0) {
>             if (n != 0)
>                 rfbLogPerror("rfbProcessClientNormalMessage: read");
>             rfbCloseClient(cl);
>             return;
>         }
> 
>         msg.cct.length = Swap32IfLE(msg.cct.length);
> 
>         str = (char *)malloc(msg.cct.length);
>         if (str == NULL) {
>                 rfbLogPerror("rfbProcessClientNormalMessage: not enough memory");
>                 rfbCloseClient(cl);
>                 return;
>         }
> 
>         if ((n = rfbReadExact(cl, str, msg.cct.length)) <= 0) {

As I just wrote in a comment to the GitHub issue above:

There's another issue I had missed: the first rfbReadExact() reading the
msg header is only checked for <= 0, but that doesn't catch a partial
read e.g. on a prematurely closed connection.  The same issue is present
all over the codebase.  I guess "Exact" in the name was understood
literally, but the function doesn't guarantee that when a lower-level
read() or the like returns 0, such as when there's no more data to read.
Maybe the function itself should be adjusted to match the semantics the
callers expects from it (set errno to a value of its choosing and return
-1 on a partial read? it already does that on a timeout, so this change
wouldn't make it more inconsistent).

There's no clear security impact from most of those misunderstandings
of "Exact".  Some uninitialized data may be processed e.g. as if it were
a payload length (as in the example above), but such values could as
well have been provided by the client, so the only possible security
impact is if such leftover data happens to be security sensitive.

As to fixing the issues I reported originally:

I think part of the fix should be not invoking the setXCutText()
callback at all when rfbReadExact() reads other than exactly
msg.cct.length bytes from the client.  (This can be done in the code
quoted above, or it can be done by adjusting rfbReadExact()'s semantics
as I've just suggested.)  Invoking the callback with the actual read
count would avoid the uninitialized memory issue, but would be
weird/unneeded.

There should also be a sane limit on the value of msg.cct.length that
this code would agree to process, so that unreasonably large memory
allocation and integer overflow risk (including inside a realistic
implementation of the callback) are avoided.

Alexander

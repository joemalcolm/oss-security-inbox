X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1856" "Monday" "10" "December" "2018" "16:40:20" "+0100" "Solar Designer" "solar@openwall.com" "<20181210154020.GA2063@openwall.com>" "36" "Re: [oss-security] libvnc and tightvnc vulnerabilities" "^Cc:" nil nil "12" "2018121015:40:20" "[oss-security] libvnc and tightvnc vulnerabilities" (number mark "        solar@openwa Dec 10   36/1856  " thread-indent "\"Re: [oss-security] libvnc and tightvnc vulnerabilities\"\n") "<9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>" ("<9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25855 invoked by uid 550); 10 Dec 2018 15:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25613 invoked from network); 10 Dec 2018 15:41:09 -0000
Message-ID: <20181210154020.GA2063@openwall.com>
References: <9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Mon, 10 Dec 2018 16:40:20 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] libvnc and tightvnc vulnerabilities
To: Pavel Cheremushkin <Pavel.Cheremushkin@kaspersky.com>

On Mon, Dec 10, 2018 at 12:48:43PM +0000, Pavel Cheremushkin wrote:
> 2. heap buffer overflow in rfbServerCutText handler
>     Heap buffer overflow in `rfbServerCutText` handler inside `HandleRFBServerMessage` happens due to the malloc argument unsigned integer overflow on line rfbproto.c:1220. Suppose msg.sct.length equals 0xffffffff, then `malloc(msg.sct.length+1);` = `malloc(0);` will allocate small heap chunk of size 0x10. But `msg.sct.length` = 0xffffffff bytes may be read in this chunk on line 1222 (`ReadFromRFBServer(serverCutText, msg.sct.length)`).

This one is interesting in that related server-side code got some
scrutiny before, yet apparently this similar issue in its client-side
counterpart was overlooked.  (I assume this is in
libvncclient/rfbproto.c, and you meant line 2220, not 1220.)

Specifically, the oCERT advisory from 2014 based on "vulnerability
report received from Nicolas Ruff of Google Security Team":

https://www.openwall.com/lists/oss-security/2014/09/25/11
https://ocert.org/advisories/ocert-2014-007.html

"A malicious VNC client can trigger multiple DoS conditions on the VNC
server by advertising a large [...] ClientCutText message length [...]"

Per this wording, there was no integer overflow potential in the
server-side code.  Just potentially maliciously large allocation.

This reminds us now: in the client-side code, we should also deal not
only with the integer overflow potential, but also with potentially
maliciously large allocation.

The thread I started earlier this year:

https://www.openwall.com/lists/oss-security/2018/02/18/1

"LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case
rfbClientCutText doesn't sanitize msg.cct.length"

I did not look at the VNC client code as it was not relevant to the
security audit I was working on when I found the server-side issue.

Alexander

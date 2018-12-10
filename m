X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3274" "Monday" "10" "December" "2018" "16:08:00" "+0000" "Pavel Cheremushkin" "Pavel.Cheremushkin@kaspersky.com" "<200f245d2ec342c3bc05586d3f277b42@kaspersky.com>" "71" "RE: [oss-security] libvnc and tightvnc vulnerabilities" "^CC:" nil nil "12" "2018121016:08:00" "[oss-security] libvnc and tightvnc vulnerabilities" (number mark "        Pavel.Cherem Dec 10   71/3274  " thread-indent "\"RE: [oss-security] libvnc and tightvnc vulnerabilities\"\n") "<20181210154020.GA2063@openwall.com>" ("<9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>" "<20181210154020.GA2063@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7326 invoked by uid 550); 10 Dec 2018 16:14:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3083 invoked from network); 10 Dec 2018 16:08:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaspersky.com;
	s=mail; t=1544458092;
	bh=Xrso60/2+1tkXZBuyHIfJ/jJkcjS/zeYjbjoENZhaXg=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
	b=SFB/mWUKITA5nkyY7uj9Ou+7wirhCvZRg6lKwz9xUTbkQgJxniJeVfQBPsj0TCpa3
	 gFM6MJTurh8G4T1LLk02Ehmry9DmCuPmH93+D5c61cwguzdTYVQkB7Lm1fjDbpjjRj
	 H0D3rEoimow+vmHUC665out/QziDgo8cK7CG3obk=
Thread-Topic: [oss-security] libvnc and tightvnc vulnerabilities
Thread-Index: AdSQfEQTGmJAaaQTQKO5Um5RBEacMwACT64AAAaMDmA=
Message-ID: <200f245d2ec342c3bc05586d3f277b42@kaspersky.com>
References: <9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>
 <20181210154020.GA2063@openwall.com>
In-Reply-To: <20181210154020.GA2063@openwall.com>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.68.128]
x-kse-serverinfo: hqmailmbx2.avp.ru, 9
x-kse-attachmentfiltering-interceptor-info: no applicable attachment filtering
 rules found
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 10.12.2018 13:04:00
x-kse-bulkmessagesfiltering-scan-result: InTheLimit
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-KLMS-Rule-ID: 52
X-KLMS-Message-Action: clean
X-KLMS-AntiSpam-Status: not scanned, disabled by settings
X-KLMS-AntiSpam-Interceptor-Info: not scanned
X-KLMS-AntiPhishing: Clean, bases: 2018/12/10 14:56:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.16, bases: 2018/12/10 13:48:00 #12727398
X-KLMS-AntiVirus-Status: Clean, skipped
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Dec 2018 16:08:00 +0000
From: Pavel Cheremushkin <Pavel.Cheremushkin@kaspersky.com>
Reply-To: oss-security@lists.openwall.com
Subject: RE: [oss-security] libvnc and tightvnc vulnerabilities
To: Solar Designer <solar@openwall.com>

Thanks for an answer.=20

> This one is interesting in that related server-side code got some scrutin=
y before, yet apparently this similar issue in its client-side counterpart =
was overlooked.  (I assume this is in libvncclient/rfbproto.c, and you mean=
t line 2220, not 1220.)

These particular issues I was describing in my previous letter are located =
in source code of TightVNC vncviewer. Source code of TightVNC 1.3.10 vncvie=
wer can be acquired though this link https://www.tightvnc.com/download/1.3.=
10/tightvnc-1.3.10_unixsrc.tar.gz and integer overflow that leads to a heap=
-buffer-overflow I was speaking about is located on the line 1220 inside fi=
le `vnc_unixsrc/vncviewer/rfbproto.c`. It is a fun fact that inside `libvnc=
client/rfbproto.c` the same code is located on line 2220, but all bugs conn=
ected with LibVNC I described in Github issues inside LibVNC repository.

Best Regards,
Pavel Cheremushkin
Security Researcher| ICS CERT Vulnerability Research Group |=9AKaspersky Lab
39A bld.2 Leningradskoye Highway, Moscow 125212, Russia |=9Awww.kaspersky.c=
om,www.securelist.com


-----Original Message-----
From: Solar Designer [mailto:solar@openwall.com]=20
Sent: Monday, December 10, 2018 6:40 PM
To: Pavel Cheremushkin <Pavel.Cheremushkin@kaspersky.com>
Cc: oss-security@lists.openwall.com
Subject: Re: [oss-security] libvnc and tightvnc vulnerabilities

On Mon, Dec 10, 2018 at 12:48:43PM +0000, Pavel Cheremushkin wrote:
> 2. heap buffer overflow in rfbServerCutText handler
>     Heap buffer overflow in `rfbServerCutText` handler inside `HandleRFBS=
erverMessage` happens due to the malloc argument unsigned integer overflow =
on line rfbproto.c:1220. Suppose msg.sct.length equals 0xffffffff, then `ma=
lloc(msg.sct.length+1);` =3D `malloc(0);` will allocate small heap chunk of=
 size 0x10. But `msg.sct.length` =3D 0xffffffff bytes may be read in this c=
hunk on line 1222 (`ReadFromRFBServer(serverCutText, msg.sct.length)`).

This one is interesting in that related server-side code got some scrutiny =
before, yet apparently this similar issue in its client-side counterpart wa=
s overlooked.  (I assume this is in libvncclient/rfbproto.c, and you meant =
line 2220, not 1220.)

Specifically, the oCERT advisory from 2014 based on "vulnerability report r=
eceived from Nicolas Ruff of Google Security Team":

https://www.openwall.com/lists/oss-security/2014/09/25/11
https://ocert.org/advisories/ocert-2014-007.html

"A malicious VNC client can trigger multiple DoS conditions on the VNC serv=
er by advertising a large [...] ClientCutText message length [...]"

Per this wording, there was no integer overflow potential in the server-sid=
e code.  Just potentially maliciously large allocation.

This reminds us now: in the client-side code, we should also deal not only =
with the integer overflow potential, but also with potentially maliciously =
large allocation.

The thread I started earlier this year:

https://www.openwall.com/lists/oss-security/2018/02/18/1

"LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCu=
tText doesn't sanitize msg.cct.length"

I did not look at the VNC client code as it was not relevant to the securit=
y audit I was working on when I found the server-side issue.

Alexander

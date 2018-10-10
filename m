X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["997" "Wednesday" "10" "October" "2018" "10:10:58" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" "18" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018101009:10:58" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        eddie@ehuk.n Oct 10   18/997   " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12100 invoked by uid 550); 10 Oct 2018 12:01:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26296 invoked from network); 10 Oct 2018 09:11:10 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk 7746CBFDD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1539162658; bh=QbpKMb2x4gjNTujC2fhTgoaO9J0PgrdbhaEddeDf9Xk=;
	h=Subject:To:References:From:Reply-To:Date:In-Reply-To:From;
	b=p1JtF6vp1F8SGcXc7WBAQoygGDLSnnSthHJdst1gWsQ99+bfkUE8BuWwXSnqXWqXW
	 QmaiiB4KpqOUyv43qnUds8UIw2p7jOBOI5j7RVHf6EdV4bNprxv4pmI/cAayKpyIFB
	 Xd5FwvHDCCeUhzd+fg4K1Qpu52F0Mj8P0U+ovYnE=
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
Message-ID: <e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Date: Wed, 10 Oct 2018 10:10:58 +0100
From: Eddie Chapman <eddie@ehuk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com, Tavis Ormandy <taviso@google.com>

On 09/10/18 14:58, Tavis Ormandy wrote:
>  Because nautilus will automatically invoke
> evince-thumbnailer without any user-interaction, just browsing a website 
> is enough to trigger the vulnerability in some common configurations.

While the vulnerability in ghostscript itself is clear in this thread, 
does anyone have any more info on the above aspect of this? i.e is the 
above scenario (inadvertently running postscript, perhaps contained in 
an image, through ghostscript by just browsing a malicious site) limited 
to just nautilus in gnome environments? Do other browsers/environments 
handle this better or do they do similar? It seems that, strictly 
speaking, the "critical" nature of this vulnerability hinges on the 
behaviour of the browser/desktop environment. Otherwise the scope is 
limited to an individual manually downloading a postscript file and 
opening it outside of the browser.

Apologies if I'm missing anything obvious or if this has been covered 
elsewhere online.

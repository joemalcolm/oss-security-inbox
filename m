X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1272" "Thursday" "22" "August" "2019" "20:33:54" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>" "23" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082219:33:54" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        eddie@ehuk.n Aug 22   23/1272  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822150054.1a7ef060@jabberwock.cb.piermont.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" "<9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>" "<20190822150054.1a7ef060@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13878 invoked by uid 550); 22 Aug 2019 19:46:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3871 invoked from network); 22 Aug 2019 19:34:06 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk 942A6BFED7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1566502434; bh=XJBoKQym5/iFHb2uuFG8+qhJy0cDfHzLomrEAjMNVpY=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=YZowZe6SvPaUXfm3siXKYUXcYDOQKBgCyMhxjTELy/i+E7QD7Hr0Ob7Y/Is9QmxyC
	 lUWcV92j+WCn3Ozadj8OAIoDCAqWZWSCvqhAW/XHa+dhkTXEJOHOR4dj0NbjduJ98t
	 XvB64ttPQzDGeoNMmA2Dni9qBWk7A3zek8NyOLcI=
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822135753.10d124a4@jabberwock.cb.piermont.com>
 <9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>
 <20190822150054.1a7ef060@jabberwock.cb.piermont.com>
Message-ID: <e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822150054.1a7ef060@jabberwock.cb.piermont.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Date: Thu, 22 Aug 2019 20:33:54 +0100
From: Eddie Chapman <eddie@ehuk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On 22/08/2019 20:00, Perry E. Metzger wrote:
> You can argue anything you like. Power charging points have popped up
> around the world, and you're not in a position to stop
> them. Furthermore, I'll note that over the air exploitable bugs in
> things like WiFi stacks and Bluetooth stacks have also appeared over
> time; perhaps it's foolish to have your phone on at all, and yet
> people will continue to turn their phones on, and even to use them.
> 
> Perry

Well, I certainly am not deluded enough to think I have the power to 
stop power charging points popping up everywhere :-) Or to stop people 
making mistakes. Just because something is possible and everyone else 
does it doesn't make something less stupid.

It's a similar principle with wifi/bluetooth, which is why I avoid 
connecting even to a family member's wifi access point unless it's 
absolutely necessary. But USB is a physical interface directly into a 
device's circuitry, I think that carries more risk than radio. ok, usb 
2.0 is only 2 x power and 2 x data, but radio waves are at least 
filtered somewhat after hitting an antenna. Physical interfaces on a 
device, on the other hand, the circuit designer does not usually design 
them "defensively" (apart from e.g. fuses on the power lines).

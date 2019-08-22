X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1351" "Thursday" "22" "August" "2019" "16:28:38" "-0400" "Stuart D. Gathman" "stuart@gathman.org" "<alpine.LRH.2.21.1908221621220.24302@fairfax.gathman.org>" "25" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082220:28:38" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        stuart@gathm Aug 22   25/1351  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" "<9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>" "<20190822150054.1a7ef060@jabberwock.cb.piermont.com>" "<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1617 invoked by uid 550); 22 Aug 2019 21:19:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32164 invoked from network); 22 Aug 2019 20:28:57 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::2" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1566505722; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=EC21nohIQPHTLva796fuXFCd2lvqpmYS6RzjfE/wCGk=; 
 b=U7WxhegvyxM62ohlXo+p5BPPbZJLhCYp1XygViz4C2jtiM3s42/jZjvC
 8gKhNLhIC2HoqyviI+GDoE9jmBmxkatNWs11d9ElRFkVJALnbr3wee/pe/
 dG+a3PMv0WCH7BcJpy7Pw3J2Z+rIS0EISa0jxFg0ebohQaJgyZFzLQ5Ow=
In-Reply-To: <e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>
Message-ID: <alpine.LRH.2.21.1908221621220.24302@fairfax.gathman.org>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com> <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com> <20190822093122.GQ6086@suse.de> <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com> <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822135753.10d124a4@jabberwock.cb.piermont.com> <9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net> <20190822150054.1a7ef060@jabberwock.cb.piermont.com> <e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Date: Thu, 22 Aug 2019 16:28:38 -0400 (EDT)
From: "Stuart D. Gathman" <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the
 USB subsystem x2
To: oss-security@lists.openwall.com

Since we're arguing...  What would worry me is an exploit where I allow
a friend to connect their USB flash drive, it operates normally to all 
appearances.  Nothing is auto-executed by a stupid OS (like the Iran
centrifuge worm).  But, the device is able to insert some privileged 
code through low level protocol bugs - all while operating normally as
a USB storage device.  It is not obvious how any of the USB bugs just
reported could be exploited that way - but anytime you have buffer
overflows and stuff, some evil genius might find a way.  I also worry
about file system bugs doing something similar on any removeable media,
or downloaded image.

On Thu, 22 Aug 2019, Eddie Chapman wrote:

> On 22/08/2019 20:00, Perry E. Metzger wrote:
>> You can argue anything you like. Power charging points have popped up
>> around the world, and you're not in a position to stop
>> them. Furthermore, I'll note that over the air exploitable bugs in
>> things like WiFi stacks and Bluetooth stacks have also appeared over
>> time; perhaps it's foolish to have your phone on at all, and yet
>> people will continue to turn their phones on, and even to use them.

-- 
 	      Stuart D. Gathman <stuart@gathman.org>
"Confutatis maledictis, flamis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.

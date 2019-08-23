X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3015" "Friday" "23" "August" "2019" "04:40:30" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<df75b26c-da5c-e1be-7602-030370bdff3f@ehuk.net>" "56" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082303:40:30" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        eddie@ehuk.n Aug 23   56/3015  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822211311.1d435223@jabberwock.cb.piermont.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" "<9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>" "<20190822150054.1a7ef060@jabberwock.cb.piermont.com>" "<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>" "<20190822211311.1d435223@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1576 invoked by uid 550); 23 Aug 2019 04:07:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18215 invoked from network); 23 Aug 2019 03:40:42 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk 59567BFEAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1566531630; bh=UDUqpgEGU7llEXkgaVJtIn+6RYksMzqV7tUgPXuGBbM=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=qn4eaqNWrHkOPkVIsBuSI6yNhvHFZgku7cLfkparDVlzETeL9gYAyIB9WtmjvB++U
	 EV2k4IAjVm1KZzkCaTwv0D0X7XNiq0npkn8qPqvLGdhj7e6FF5BN05YWIem+AYw5OS
	 XRo6qN3V3rN54kiXYPi2hbQjGNiJ8cvH6q3tWFkQ=
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822135753.10d124a4@jabberwock.cb.piermont.com>
 <9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>
 <20190822150054.1a7ef060@jabberwock.cb.piermont.com>
 <e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>
 <20190822211311.1d435223@jabberwock.cb.piermont.com>
Message-ID: <df75b26c-da5c-e1be-7602-030370bdff3f@ehuk.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822211311.1d435223@jabberwock.cb.piermont.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Date: Fri, 23 Aug 2019 04:40:30 +0100
From: Eddie Chapman <eddie@ehuk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On 23/08/2019 02:13, Perry E. Metzger wrote:
> On Thu, 22 Aug 2019 20:33:54 +0100 Eddie Chapman <eddie@ehuk.net>
> wrote:
>> On 22/08/2019 20:00, Perry E. Metzger wrote:
>>> You can argue anything you like. Power charging points have
>>> popped up around the world, and you're not in a position to stop
>>> them. Furthermore, I'll note that over the air exploitable bugs in
>>> things like WiFi stacks and Bluetooth stacks have also appeared
>>> over time; perhaps it's foolish to have your phone on at all, and
>>> yet people will continue to turn their phones on, and even to use
>>> them.
>>
>> Well, I certainly am not deluded enough to think I have the power
>> to stop power charging points popping up everywhere :-) Or to stop
>> people making mistakes. Just because something is possible and
>> everyone else does it doesn't make something less stupid.
>>
>> It's a similar principle with wifi/bluetooth, which is why I avoid
>> connecting even to a family member's wifi access point unless it's
>> absolutely necessary.
> 
> I think the fact that you avoid connecting to WiFi access points,
> even ones owned by family members, unless absolutely necessary, may
> demonstrate that your model of what does and does not constitute
> a ordinary user behavior might not be the same as other
> people's. Most people do use WiFi in a variety of places, and most
> people do charge off of USB ports they have not personally vetted.
> 
> Given this, I think fixing bugs that might lead to privilege
> escalation, even if they require physical connection of USB devices,
> does indeed seem reasonable.

Yep, my behaviour with these things I'd say is quite unusual compared to 
  most people's. But I wouldn't say I'm particularly paranoid. By the 
way my reasons for not trusting wifi access points in general is not 
because I'm worried about wifi protocols. I'm worried about what might 
be running on the never-been-updated access point from 
doesnt-really-care-after-its-shipped manufacturer, that's been connected 
to the internet for a long time, with a root password of london1982 or 
such like, and a web interface listening on the wan port. Combined with 
the fact I don't fully trust my handset's ability to defend itself while 
connected to said access point, due to its difficult to keep up-to-date 
OS and heavily locked down firmware. I feel somewhat safer connecting 
with my laptop. But that's all veering far off topic.

What I do find very interesting is the question of what is CVE-worthy, 
particularly with regards to USB flaws in the kernel. The wider question 
of should the CVE process be driven, to whatever extent, by most 
people's behaviour, even if that behaviour is ill-advised for whatever 
reason (simply unaware of/don't care about the risks in most cases).

By the way, I'm not arguing that people should not put any effort into 
fixing these issues, I believe a flaw is always worth fixing, nothing is 
too trivial to submit a patch to a kernel mailing list for.

Rest my case :-)

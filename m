X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1928" "Wednesday" "22" "April" "2015" "22:34:44" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<55385A44.2030509@canonical.com>" "44" "Re: [oss-security] Re: USBCreator D-Bus service" nil nil nil "4" "2015042302:34:44" "[oss-security] Re: USBCreator D-Bus service" (number mark "        marc.deslaur Apr 22   44/1928  " thread-indent "\"Re: [oss-security] Re: USBCreator D-Bus service\"\n") "<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>" "<20150423002746.GD3854@hunt>" "<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6132 invoked by uid 550); 23 Apr 2015 02:34:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6111 invoked from network); 23 Apr 2015 02:34:58 -0000
Message-ID: <55385A44.2030509@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>	<20150423000423.GA31439@openwall.com>	<20150423002746.GD3854@hunt> <CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>
In-Reply-To: <CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Wed, 22 Apr 2015 22:34:44 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: USBCreator D-Bus service
To: oss-security@lists.openwall.com

On 2015-04-22 08:50 PM, Tavis Ormandy wrote:
> On Wednesday, April 22, 2015, Seth Arnold <seth.arnold@canonical.com> wrote:
>> On Thu, Apr 23, 2015 at 03:04:23AM +0300, Solar Designer wrote:
>>> Either way, it sounds weird to keep a low severity issue private.  Low
>>> severity usually means not needing an embargo in the first place.  But I
>>> guess it was the vendor's preference?
>>
>> In this case, no, Ubuntu would have preferred several days embargo for
>> this issue. Hypothetically speaking, Monday would have been ideal, as
>> we prefer to not release updates on Friday, Saturday, or Sunday.
>>
>> We treat local root escalation vulnerabilities with a high priority[1].
> 
> I wish you had spoken up during the previous discussion. It was my
> impression that embargoes for local privilege escalations were universally
> considered deprecated.

Nonsense, embargoes for local or remote privilege escalations are still
considered to be high priority and should be handled with an embargo.

Making this type of information public without giving the vendor a chance to
publish updates within a reasonable timeframe is a great disservice to users and
exposes them to great risk.

> 
>> Please do inform us privately of further local root escalations in the
>> future, either via security@ubuntu.com or filing "private security"
>> bugs against the corresponding package in Launchpad.
>>
>> Thanks
> 
> Embargoes tend to make things worse, see your apport patch developed during
> embargo or shellshock for examples. However, if you're sure, I'm willing to
> do so for Ubuntu specific bugs in future.

No they don't. They allow vendors time to develop a proper fix without exposing
users to unneeded risk. Yes, sometimes the fix is inadequate and needs to be
fixed, but publishing an exploit without a few days notice just makes matters
unbearable for users and encourages vendors to keep security issues secret.

Marc.




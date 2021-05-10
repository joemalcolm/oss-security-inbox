X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1128" "Monday" "10" "May" "2021" "15:28:02" "+0930" "Alex Murray" "alex.murray@canonical.com" nil "33" "Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil "5" nil nil (number mark "U       alex.murray@ May 10   33/1128  " thread-indent "\"Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22444 invoked by uid 550); 10 May 2021 08:24:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9730 invoked from network); 10 May 2021 05:58:22 -0000
References: <CAM6JnLex-+TM+p5aNrcifxG3qmpL+gfXzSTzWpVpbj3_hsp_Fw@mail.gmail.com>
 <20210510042443.GA19253@lorien.valinor.li>
User-agent: mu4e 1.4.15; emacs 28.0.50
From: Alex Murray <alex.murray@canonical.com>
To: oss-security@lists.openwall.com
Cc: Nadav Markus <nmarkus@paloaltonetworks.com>, Or Cohen
 <orcohen@paloaltonetworks.com>, Salvatore Bonaccorso <carnil@debian.org>
In-reply-to: <20210510042443.GA19253@lorien.valinor.li>
Date: Mon, 10 May 2021 15:28:02 +0930
Message-ID: <87fsyvnn9x.fsf@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
Subject: Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in
 sctp sockets


On Mon, 2021-05-10 at 13:54:43 +0930, Salvatore Bonaccorso wrote:

> Hi,
>
> On Sun, Apr 18, 2021 at 11:41:06AM +0300, Or Cohen wrote:
>> Hello,
>> 
>> This is an announcement about CVE-2021-23133 which is a race-condition
>> I found in Linux kernel sctp sockets (net/sctp/socket.c). It can lead to 
>> kernel
>> privilege escalation from the context of a network service or from
>> an unprivileged process if certain conditions are met.
>> 
>> The bug was fixed on April 13, 2021:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b166a20b07382b8bc1dcee2a448715c9c2c81b5b
>
> It looks that additionally
> https://git.kernel.org/linus/34e5b01186858b36c4d7c87e1a025071e8e2401f
> refer to CVE-2021-23133.

It seems b166a20b07382b8bc1dcee2a448715c9c2c81b5b got reverted in the
follow-up commit
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/sctp/socket.c?id=01bfe5e8e428b475982a98a46cca5755726f3f7f
and so 34e5b01186858b36c4d7c87e1a025071e8e2401f would appear to be the
most correct fix from what I can tell.

>
> Are both commits necessary?
>
> Regards,
> Salvatore


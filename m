X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2006" "Monday" "6" "November" "2017" "19:42:25" "+0100" "Florian Weimer" "fweimer@redhat.com" "<848ccf01-0a05-76ea-470d-aa59579d447b@redhat.com>" "43" "Re: [oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams" "^Date:" nil nil "11" "2017110618:42:25" "[oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams" (number mark "U       fweimer@redh Nov  6   43/2006  " thread-indent "\"Re: [oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams\"\n") "<4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>" ("<4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7565 invoked by uid 550); 6 Nov 2017 18:42:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7547 invoked from network); 6 Nov 2017 18:42:39 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C267BC04AC47
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=fweimer@redhat.com
References: <4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>
Message-ID: <848ccf01-0a05-76ea-470d-aa59579d447b@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 06 Nov 2017 18:42:27 +0000 (UTC)
Date: Mon, 6 Nov 2017 19:42:25 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Race condition between UDP bind(2) and connect(2)
 delivers wrong datagrams
To: oss-security@lists.openwall.com,
 Jonas 'Sortie' Termansen <sortie@maxsi.org>

On 11/06/2017 04:31 PM, Jonas 'Sortie' Termansen wrote:
> Hi oss-security,
> 
> When you connect(2) a UDP socket to an address, any subsequent recv(2) must
> only receieve datagrams from that address. However, if the UDP socket is
> first given a local address with bind(2), there is a race condition before
> the connect(2) where datagrams received from any address is added to the
> socket's receieve queue. Unfortunately, all of Darwin, DragonFly, FreeBSD,
> GNU/Hurd, Haiku, Linux, Minix, NetBSD, OpenBSD, and OpenIndiana don't purge
> the receieve queue of datagrams with the wrong source on connect(2).
> Instead, they deliver datagrams already in the recieve queue even if they
> have the wrong source. I've failed to find any operating system that handles
> this case correctly.

The alternative is that these systems are handling the situation correctly.

> Even though it can be difficult to exploit this bug, it is a validation bug
> in the kernels. POSIX 2008 (2016 edition) says[1]:
> 
>      "For SOCK_DGRAM sockets, the peer address identifies where all datagrams
>       are sent on subsequent send() functions, and limits the remote sender
>       for subsequent recv() functions."

Whatever the exact wording used is, the intent of POSIX is to describe 
the BSD sockets API behavior.  If the API does something else, that's a 
POSIX bug.

> Software can work around this bug by using recvfrom(2) or recvmsg(2) and
> verifying the sender's address.

It's often possible to simply drain all pending datagrams after the 
connect call because the application knows that all packets received at 
this points must be garbage and not intended for it to process.

> I've not been able to think of / find any other software that bind(2) a UDP
> socket to an address and then use connect(2) to fix a particular peer, but
> I don't have time to do a thorough search. Please let me know if you can
> think of any.

OpenJDK had a similar issue because it supported socket disconnect.

Thanks,
Florian

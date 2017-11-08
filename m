X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["990" "Wednesday" "8" "November" "2017" "13:13:20" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1711081305160.6849@scrappy.simplesystems.org>" "23" "Re: [oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams" nil nil nil "11" "2017110819:13:20" "[oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams" (number mark "U       bfriesen@sim Nov  8   23/990   " thread-indent "\"Re: [oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams\"\n") "<56029e38-0e38-181c-2f61-f92b4bfd6826@redhat.com>" ("<4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>" "<848ccf01-0a05-76ea-470d-aa59579d447b@redhat.com>" "<2f823095-af60-b5d7-b828-d92981e05973@maxsi.org>" "<56029e38-0e38-181c-2f61-f92b4bfd6826@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3236 invoked by uid 550); 8 Nov 2017 19:13:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3208 invoked from network); 8 Nov 2017 19:13:33 -0000
Date: Wed, 8 Nov 2017 13:13:20 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@scrappy.simplesystems.org
To: oss-security@lists.openwall.com
cc: "Jonas 'Sortie' Termansen" <sortie@maxsi.org>
In-Reply-To: <56029e38-0e38-181c-2f61-f92b4bfd6826@redhat.com>
Message-ID: <alpine.GSO.2.20.1711081305160.6849@scrappy.simplesystems.org>
References: <4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org> <848ccf01-0a05-76ea-470d-aa59579d447b@redhat.com> <2f823095-af60-b5d7-b828-d92981e05973@maxsi.org> <56029e38-0e38-181c-2f61-f92b4bfd6826@redhat.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 08 Nov 2017 13:13:21 -0600 (CST)
Subject: Re: [oss-security] Race condition between UDP bind(2) and connect(2)
 delivers wrong datagrams

On Wed, 8 Nov 2017, Eric Blake wrote:
>>
>> This issue is not that case because Darwin[1], DragonFly[2], FreeBSD[3],
>> GNU/Hurd (though by importing Linux man pages), Linux[4], NetBSD[5], and
>> OpenBSD[6] all document behavior compatible with POSIX[7].
>
> It doesn't matter what the implementations document (if their
> documentation is copying from POSIX), but what they actually DO.

For the purpose of this list (about security) it seems to me that the 
current behavior makes use of the recv(2) (or read(2)) system calls 
inherently insecure since there is no way to verify that a received 
message is from the expected source address.  The only work-around is 
to intentionally discard messages until no more messages are 
available, but this may discard valid messages.

This makes most common uses of recv(2) insecure.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/

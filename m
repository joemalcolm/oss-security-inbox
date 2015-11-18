X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1423" "Wednesday" "18" "November" "2015" "13:16:07" "+0100" "Florian Weimer" "fweimer@redhat.com" "<564C6C07.1020702@redhat.com>" "37" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111812:16:07" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       fweimer@redh Nov 18   37/1423  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<20151118015718.GA31188@openwall.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<20151118015718.GA31188@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23597 invoked by uid 550); 18 Nov 2015 12:16:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23579 invoked from network); 18 Nov 2015 12:16:20 -0000
To: oss-security@lists.openwall.com, Bernd Schmidt <bschmidt@redhat.com>
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <20151118015718.GA31188@openwall.com>
Cc: Jeff Law <law@redhat.com>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <564C6C07.1020702@redhat.com>
Date: Wed, 18 Nov 2015 13:16:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151118015718.GA31188@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

On 11/18/2015 02:57 AM, Solar Designer wrote:

> I'd like more detail on the plan of dealing with function epilogues, if
> there is a plan for that.
> 
> I'm not sure if this fits under:
> 
>>   * Look into an idea Florian had for improving stack-protector
>>     epilogues.
> 
> or if that's (more likely) something entirely different.

It's about things like this:

   1c6d3:       48 8b 4c 24 58          mov    0x58(%rsp),%rcx
   1c6d8:       64 48 33 0c 25 28 00    xor    %fs:0x28,%rcx
   1c6df:       00 00
   1c6e1:       75 31                   jne    1c714
   1c6e3:       48 83 c4 68             add    $0x68,%rsp
   1c6e7:       5b                      pop    %rbx
   1c6e8:       5d                      pop    %rbp
   1c6e9:       41 5c                   pop    %r12
   1c6eb:       41 5d                   pop    %r13
   1c6ed:       41 5e                   pop    %r14
   1c6ef:       41 5f                   pop    %r15
   1c6f1:       c3                      retq
…
   1c714:       e8 47 b7 ff ff          callq  <__stack_chk_fail@plt>
   1c719:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)

It seems to me that if the stack canary check happened directly before
the RET instruction, after restoring the registers, it would make it
more difficult to abuse the RET instruction.  With the code above, you
can just jump to the address 1c6e7 and have access to quite a few useful
POP instructions.

Florian

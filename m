X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1086" "Wednesday" "18" "November" "2015" "11:20:42" "-0700" "Jeff Law" "law@redhat.com" "<564CC17A.3060905@redhat.com>" "29" "[oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111818:20:42" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       law@redhat.c Nov 18   29/1086  " thread-indent "\"[oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<20151118015718.GA31188@openwall.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<20151118015718.GA31188@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17466 invoked by uid 550); 18 Nov 2015 18:20:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17442 invoked from network); 18 Nov 2015 18:20:54 -0000
To: Solar Designer <solar@openwall.com>, Bernd Schmidt <bschmidt@redhat.com>
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <20151118015718.GA31188@openwall.com>
Cc: oss-security@lists.openwall.com, Florian Weimer <fweimer@redhat.com>
From: Jeff Law <law@redhat.com>
Message-ID: <564CC17A.3060905@redhat.com>
Date: Wed, 18 Nov 2015 11:20:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151118015718.GA31188@openwall.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: [oss-security] Re: Fwd: x86 ROP mitigation

On 11/17/2015 06:57 PM, Solar Designer wrote:
>
> I'd like more detail on the plan of dealing with function epilogues, if
> there is a plan for that.
There's not a lot of detail at this point.  For function's that don't 
escape, the compiler has visibility of both the call and return sites. 
So for those we can look at indirection, address mangling and the like. 
  It's something Bernd is just starting to experiment with.

Once something escapes, then we may be looking at something like 
stack-protector-all or somehow emitting a sequence that's painful to try 
and exploit while being semantically equivalent.  The concern is that 
with the cost of stack-protector-all there'll be resistance to using 
that as the mitigation technique.


>
> I'm not sure if this fits under:
>
>>    * Look into an idea Florian had for improving stack-protector
>>      epilogues.
>
> or if that's (more likely) something entirely different.
No, it's based on some experiments that show changing the stack 
protector epilogue can result in an epilogue sequence that is painful to 
exploit.


jeff

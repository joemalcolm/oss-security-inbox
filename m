X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1000" "Wednesday" "18" "November" "2015" "13:06:56" "+0100" "Bernd Schmidt" "bschmidt@redhat.com" "<564C69E0.9090508@redhat.com>" "25" "[oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111812:06:56" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       bschmidt@red Nov 18   25/1000  " thread-indent "\"[oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<20151118015718.GA31188@openwall.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<20151118015718.GA31188@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11749 invoked by uid 550); 18 Nov 2015 12:07:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11716 invoked from network); 18 Nov 2015 12:07:09 -0000
To: Solar Designer <solar@openwall.com>
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <20151118015718.GA31188@openwall.com>
Cc: oss-security@lists.openwall.com, Jeff Law <law@redhat.com>,
        Florian Weimer <fweimer@redhat.com>
From: Bernd Schmidt <bschmidt@redhat.com>
Message-ID: <564C69E0.9090508@redhat.com>
Date: Wed, 18 Nov 2015 13:06:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151118015718.GA31188@openwall.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] Re: Fwd: x86 ROP mitigation

On 11/18/2015 02:57 AM, Solar Designer wrote:
> I'd like more detail on the plan of dealing with function epilogues, if
> there is a plan for that.
>
> I'm not sure if this fits under:
>
>>    * Look into an idea Florian had for improving stack-protector
>>      epilogues.
>
> or if that's (more likely) something entirely different.

That was a detail we discussed internally. I'll need to look at it again 
but the idea was to make those kinds of epilogues less useful. Maybe 
Florian can comment.

There's also the contification thing (although now I've googled it I'm 
not sure that's really the right term). I currently envision this as 
follows: instead of using a call instruction, we push an index into a 
table of known return addresses and convert returns into essentially a 
switch. I think that can be made to work entirely inside the compiler 
for static functions (LTO might help to enlarge the scope). I could also 
imagine a more involved approach involving linker trickery.


Bernd

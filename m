X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Tuesday" "17" "November" "2015" "10:34:46" "-0700" "Jeff Law" "law@redhat.com" "<564B6536.2030908@redhat.com>" "56" "[oss-security] Re: Fwd: x86 ROP mitigation" "^Cc:" nil nil "11" "2015111717:34:46" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "        law@redhat.c Nov 17   56/2445  " thread-indent "\"[oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564B54BA.6090203@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14042 invoked by uid 550); 17 Nov 2015 17:34:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13998 invoked from network); 17 Nov 2015 17:34:58 -0000
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
Message-ID: <564B6536.2030908@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564B54BA.6090203@redhat.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: Bernd Schmidt <bschmidt@redhat.com>, oss-security@lists.openwall.com,
        Florian Weimer <fweimer@redhat.com>
Date: Tue, 17 Nov 2015 10:34:46 -0700
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Fwd: x86 ROP mitigation
To: Solar Designer <solar@openwall.com>

On 11/17/2015 09:24 AM, Bernd Schmidt wrote:
> On 11/17/2015 04:39 PM, Solar Designer wrote:
>  > A few days ago, Bernd Schmidt posted this gcc patch:
>  >
>  > https://gcc.gnu.org/ml/gcc-patches/2015-11/msg01773.html
>  >
>  > "This adds a new -mmitigate-rop option to the i386 port. The idea is to
>  > mitigate against certain forms of attack called "return oriented
>  > programming" that some of our security folks are concerned about.
>  > [...]
>  > This patch is a small step towards preventing this kind of attack.
>  > I have a few more steps queued (not quite ready for stage 1), but
>  > additional work will be necessary to give reasonable protection."
>  >
>  > This was followed with a few tweets:
> [...]
> Obviously, I'm aware that this by itself isn't going to do very much. I
> said so in my submission email! But you have to start somewhere, and
> these pieces were ready.
Right.  It's a small piece of a much longer term effort to start 
spoiling ROP gadgets, both those which are inherent in the normal 
instruction stream (ie function epilogues) and those which are a result 
of the variable length instruction nature of the x86 ISA.


>
>  > Bernd, I'd appreciate it if you describe your plan in a reply to this
>  > e-mail.  Please keep oss-security CC'ed.
>
> I wouldn't call it my plan. I'm essentially in the role of implementing
> requirements that others with more knowledge of the security issues come
> up with.
>
> The plan, as far as it goes, is to start picking low-hanging fruit, and
> hopefully build up over time until we have something that actually
> provides protection. Things that we've discussed include:
Right.  I don't think anyone believes this stuff will make a significant 
difference *at this stage*.  Thus, we aren't planning announcements or 
any promotion of the work.

The obvious idea is to keep knocking off sources of ROP gadgets, 
hopefully reaching a point where ROP gadgets are reasonably hard to find 
& exploit in GCC generated code at some point in the future.

As each bundle of work reaches completion, it will be submitted to the 
appropriate project (GCC & binutils).  There's no value in holding back 
any particular mitigation technique.  They'll just keep dropping as 
they're completed.  FWIW, mod R/M is the only work that I see landing in 
GCC 6 given its development window closed earlier this week.

If you have any questions, feel free to contact me directly.

Jeff




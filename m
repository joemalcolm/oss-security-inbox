X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2669" "Tuesday" "17" "November" "2015" "17:24:26" "+0100" "Bernd Schmidt" "bschmidt@redhat.com" "<564B54BA.6090203@redhat.com>" "58" "[oss-security] Re: Fwd: x86 ROP mitigation" "^Cc:" nil nil "11" "2015111716:24:26" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "        bschmidt@red Nov 17   58/2669  " thread-indent "\"[oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564B52D6.9090205@t-online.de>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7335 invoked by uid 550); 17 Nov 2015 18:11:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30151 invoked from network); 17 Nov 2015 16:24:40 -0000
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de>
Message-ID: <564B54BA.6090203@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564B52D6.9090205@t-online.de>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: oss-security@lists.openwall.com, Jeff Law <law@redhat.com>,
        Florian Weimer <fweimer@redhat.com>
Date: Tue, 17 Nov 2015 17:24:26 +0100
From: Bernd Schmidt <bschmidt@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Fwd: x86 ROP mitigation
To: Solar Designer <solar@openwall.com>

On 11/17/2015 04:39 PM, Solar Designer wrote:
 > A few days ago, Bernd Schmidt posted this gcc patch:
 >
 > https://gcc.gnu.org/ml/gcc-patches/2015-11/msg01773.html
 >
 > "This adds a new -mmitigate-rop option to the i386 port. The idea is to
 > mitigate against certain forms of attack called "return oriented
 > programming" that some of our security folks are concerned about.
 > [...]
 > This patch is a small step towards preventing this kind of attack.
 > I have a few more steps queued (not quite ready for stage 1), but
 > additional work will be necessary to give reasonable protection."
 >
 > This was followed with a few tweets:
[...]
Obviously, I'm aware that this by itself isn't going to do very much. I 
said so in my submission email! But you have to start somewhere, and 
these pieces were ready.

 > Bernd, I'd appreciate it if you describe your plan in a reply to this
 > e-mail.  Please keep oss-security CC'ed.

I wouldn't call it my plan. I'm essentially in the role of implementing 
requirements that others with more knowledge of the security issues come 
up with.

The plan, as far as it goes, is to start picking low-hanging fruit, and
hopefully build up over time until we have something that actually
provides protection. Things that we've discussed include:

   * modr/m bytes (posted)
   * sib bytes (relatively simple extension, some parts done)
   * immediates (patch exists but has some remaining problems)
   * also look into avoiding not just ret bytes but also indirect jumps
     and such. More interesting because that may span instructions.
   * See if we can get as to detect cases where two adjacent instructions
     contain a pattern useful for attacks (like the indirect jump) and
     put a nop in between.
   * Look into an idea Florian had for improving stack-protector
     epilogues.
   * branch offsets (I'm not sure but I think Jeff told me of efforts
     on the binutils side).
   * yesterday we discussed something which Florian tells me is called
     "contification" and which I think could be done reasonably easily
     for functions with known local scope. Florian thinks it's expensive
     (it probably is) so we may want -mmitigate-rop=strong options at
     some point.
   * Further out, symbolic addresses are a remaining problem that would
     require work throughout the toolchain and could be expensive to
     address.

Also useful would be better tools to detect possibly exploitable 
sequences. Florian had some complaints about the reliability of the ones 
we looked at, and I had some complaints about being lost in python 
dependencies and not getting them installed in the first place.


Bernd

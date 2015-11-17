X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1909" "Tuesday" "17" "November" "2015" "18:39:51" "+0300" "Solar Designer" "solar@openwall.com" "<20151117153951.GA28672@openwall.com>" "32" "[oss-security] x86 ROP mitigation" "^Cc:" nil nil "11" "2015111715:39:51" "[oss-security] x86 ROP mitigation" (number mark "        solar@openwa Nov 17   32/1909  " thread-indent "\"[oss-security] x86 ROP mitigation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19981 invoked by uid 550); 17 Nov 2015 15:40:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19793 invoked from network); 17 Nov 2015 15:39:54 -0000
Message-ID: <20151117153951.GA28672@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Tue, 17 Nov 2015 18:39:51 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] x86 ROP mitigation
To: Bernd Schmidt <bernds_cb1@t-online.de>

Bernd, all -

A few days ago, Bernd Schmidt posted this gcc patch:

https://gcc.gnu.org/ml/gcc-patches/2015-11/msg01773.html

"This adds a new -mmitigate-rop option to the i386 port. The idea is to
mitigate against certain forms of attack called "return oriented
programming" that some of our security folks are concerned about.
[...]
This patch is a small step towards preventing this kind of attack.
I have a few more steps queued (not quite ready for stage 1), but
additional work will be necessary to give reasonable protection."

This was followed with a few tweets:

TTYtter> /th zz7
zz0> (x13) <RichFelker> #gcc i386 ROP mitigation https://gcc.gnu.org/ml/gcc-patches/2015-11/msg01773.html
zz1> <@solardiz> @RichFelker This is ridiculous as it is, but I'll defer judgement until I see further steps that Bernd has queued
zz2> <@RichFelker> @solardiz I have concerns about the deg to which is possible, but doesn't just reducing the freq of these bytes reduce chance of exploit?
zz3> <@solardiz> @RichFelker I think this patch alone doesn't help at all. It might break some pre-existing exploits, but so would many non-security options.
zz4> <@stevecheckoway> @solardiz @RichFelker I agree. This doesn't seem useful. ROP using only intended instructions works just fine (as does ROP without returns).
zz5> <@joshbressers> @stevecheckoway @solardiz @RichFelker I'm certainly not smart enough to help with this, but we should work together, don't just complain.
zz6> <@solardiz> @joshbressers @stevecheckoway @RichFelker I think one of us should ask Bernd to outline his plan and let the community comment on it
zz7> <@joshbressers> @solardiz @stevecheckoway @RichFelker You need to engage about this on oss-security. There is a plan, that patch is step 1.

Bernd, I'd appreciate it if you describe your plan in a reply to this
e-mail.  Please keep oss-security CC'ed.

Thank you for your work!

Alexander

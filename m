Received: (qmail 15934 invoked by uid 550); 12 Mar 2026 20:17:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13478 invoked from network); 12 Mar 2026 20:17:29 -0000
Date: Thu, 12 Mar 2026 21:17:21 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Justin Swartz <justin.swartz@risingedge.co.za>,
	Adiel Sol <adiel@dreamgroup.com>,
	Collin Funk <collin.funk1@gmail.com>
Message-ID: <20260312201721.GA24953@openwall.com>
References: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Remote Pre-Auth Buffer Overflow in GNU Inetutils telnetd (LINEMODE SLC)

On Thu, Mar 12, 2026 at 08:24:42PM +0200, Justin Swartz wrote:
> I would like to draw the community's attention to the following
> vulnerability [1], summarized as "Remote Pre-Auth Buffer Overflow
> in GNU Inetutils telnetd (LINEMODE SLC)", which was reported to
> the bug-inetutils mailing list recently.
> 
> I am not affiliated with the researchers, inetutils, nor GNU/FSF.
> 
> Regards,
> Justin
> 
> ---
> 
> [1] 
> https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00031.html

Thank you, Justin!

In cases like this, we should be bringing the entire report to
oss-security, not just a link.  So I'll include it below.

Further in the above thread, there's a link to a fix pull request by
Collin Funk.  I didn't review it in full context, but even within the
patch context it fails my review:

add_slc (char func, char flag, cc_t val)
{

  /* Do nothing if the entire triplet cannot fit in the buffer.  */
  if (slcbuf + sizeof slcbuf <= slcptr + 6)
    return;

  if ((*slcptr++ = (unsigned char) func) == 0xff)
    *slcptr++ = 0xff;

  if ((*slcptr++ = (unsigned char) flag) == 0xff)
    *slcptr++ = 0xff;

  if ((*slcptr++ = (unsigned char) val) == 0xff)
    *slcptr++ = 0xff;

}				/* end of add_slc */

In "slcptr + 6", it appears to rely on pointer math working outside of
the object, but that's UB in C.  If the C compiler concludes that the
"if" condition cannot be true within defined behavior, it is free to
optimize the entire "if" and "return" out.  A proper check may be:

  if (slcbuf + sizeof slcbuf - 6 <= slcptr)

or perhaps with "<" in place of "<=", unless we need an extra element
for some reason.

For comparison, here's the function from netkit-telnet-0.17/telnetd/slc.c:

static unsigned char slcbuf[NSLC*6];    /* buffer for slc negotiation */

static void add_slcbuf_raw_char(unsigned char ch) {
   if (slcoff < sizeof(slcbuf)) {
      slcbuf[slcoff++] = ch;
   }
}

static void add_slcbuf_char(unsigned char ch) {
   add_slcbuf_raw_char(ch);
   if (ch==0xff) {
      add_slcbuf_raw_char(0xff);
   }
}

#ifdef LINEMODE
/*
 * add_slc
 *
 * Add an slc triplet to the slc buffer.
 */
void add_slc(char func, char flag, cc_t val) {
    add_slcbuf_char(func);
    add_slcbuf_char(flag);
    add_slcbuf_char(val);
}

Alexander

---
From: 	Adiel Sol
Subject: 	Remote Pre-Auth Buffer Overflow in GNU Inetutils telnetd (LINEMODE SLC)
Date: 	Wed, 11 Mar 2026 12:20:57 +0000

Hi GNU Inetutils / Savannah Security Team,

I would like to report a security vulnerability in GNU Inetutils telnetd.

Summary

The telnetd server has a buffer overflow in the LINEMODE SLC (Set Local Characters) suboption handler. An unauthenticated attacker can trigger it by connecting to port 23 and sending a crafted SLC suboption with many triplets. No login is required; the bug is hit during option negotiation, before the login prompt. The overflow corrupts memory and can be turned into arbitrary writes. In practice this can lead to remote code execution. Because telnetd usually runs as root (e.g. under inetd or xinetd), a successful exploit would give the attacker full control of the system.

Affected Component

telnetd/slc.c (functions add_slc, process_slc, do_opt_slc; buffer slcbuf at line 59)
Versions: All GNU Inetutils through 2.7, including current development HEAD. Any telnetd derived from the BSD codebase that still uses this SLC implementation may also be affected.

Root Cause

The SLC response is built in a fixed 108-byte buffer, slcbuf, with only 104 bytes used for data after a 4-byte header. The function add_slc() (lines 162-175) appends 3 bytes per SLC triplet but never checks whether the buffer is full. The pointer slcptr is just incremented each time.
When the server gets an SLC suboption, it calls process_slc() for each triplet. For any triplet with function code greater than 18 (NSLC), the server calls add_slc() to queue a "not supported" reply. There is no limit on how many such replies are queued.
The client can send a long SLC suboption (the suboption buffer is 512 bytes, so about 170 triplets). After about 35 triplets with func > 18, the 104-byte space is exceeded and the code writes past the end of slcbuf. That corrupts whatever lies after it in BSS (including the slcptr pointer). Later, end_slc() uses the corrupted slcptr to write the suboption end marker, which gives the attacker an arbitrary write in memory. So the bug is a classic buffer overflow with no bounds check (CWE-120, CWE-787).

Impact

CVSS 3.1: AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H (9.8 Critical)
CWE-120 (Buffer Copy without Checking Size of Input), CWE-787 (Out-of-bounds Write)
Any unauthenticated attacker with network access to port 23 can trigger the overflow with a single telnet connection and a crafted SLC suboption.
Successful exploitation can lead to arbitrary code execution as root and full compromise of the host (backdoors, data exfiltration, pivot, etc.).

Proof of Concept

1. Start GNU Inetutils telnetd (e.g. with inetd or run telnetd manually) so it listens on port 23.
2. From another machine, connect to the telnet port and complete the initial handshake. When the server sends DO LINEMODE, reply with WILL LINEMODE so the server enters LINEMODE negotiation.
3. Send a single LINEMODE SLC suboption containing at least 40 to 50 triplets, each with a function code greater than 18 (e.g. 19, 20, 21, ... 68). Each triplet is 3 bytes (func, flag, value). Use 0x00 for flag and value. The suboption must be properly framed with IAC SB LINEMODE LM_SLC at the start and IAC SE at the end.
4. The server will call add_slc() for each triplet. After about 35 triplets it will write past the end of slcbuf. You should observe a crash, or (if you craft the overflow) memory corruption and possibly code execution.

Credit Request

We kindly request that the following researchers be credited for this discovery:
Adiel Sol, Arad Inbar, Erez Cohen, Nir Somech, Ben Grinberg, Daniel Lubel - DREAM Security Research Team
Best regards,
    DREAM Security Research Team

Attachment: 13-16-27.mp4

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1191" "Monday" "31" "October" "2016" "11:48:45" "+0100" "Florian Weimer" "fweimer@redhat.com" "<14b76703-8185-dadb-7605-10496331452c@redhat.com>" "45" "[oss-security] Stack guard canary massaging" nil nil nil "10" "2016103110:48:45" "[oss-security] Stack guard canary massaging" (number mark "U       fweimer@redh Oct 31   45/1191  " thread-indent "\"[oss-security] Stack guard canary massaging\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24374 invoked by uid 550); 31 Oct 2016 10:49:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24339 invoked from network); 31 Oct 2016 10:48:59 -0000
To: kernel-hardening@lists.openwall.com, oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <14b76703-8185-dadb-7605-10496331452c@redhat.com>
Date: Mon, 31 Oct 2016 11:48:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 31 Oct 2016 10:48:47 +0000 (UTC)
Subject: [oss-security] Stack guard canary massaging

Sorry for cross-posting.

glibc does this to set up the stack canary:

static inline uintptr_t __attribute__ ((always_inline))
_dl_setup_stack_chk_guard (void *dl_random)
{
   union
   {
     uintptr_t num;
     unsigned char bytes[sizeof (uintptr_t)];
   } ret = { 0 };

   if (dl_random == NULL)
     {
       ret.bytes[sizeof (ret) - 1] = 255;
       ret.bytes[sizeof (ret) - 2] = '\n';
     }
   else
     {
       memcpy (ret.bytes, dl_random, sizeof (ret));
#if BYTE_ORDER == LITTLE_ENDIAN
       ret.num &= ~(uintptr_t) 0xff;
#elif BYTE_ORDER == BIG_ENDIAN
       ret.num &= ~((uintptr_t) 0xff << (8 * (sizeof (ret) - 1)));
#else
# error "BYTE_ORDER unknown"
#endif
     }
   return ret.num;
}

This is an elaborate way of setting ret.bytes[0] = '\0'.

The intent (determined from an old commit message) is to make it harder 
to obtain the canary value through a read buffer overflow of a 
NUL-terminated string: The read overflow will stop at the NUL byte and 
not include the random canary value, reducing the risk of inappropriate 
disclosure.

But this reduces entropy of the canary to 24 bits on 32-bit systems, so 
I wonder if this is the right trade-off here.

Thanks,
Florian

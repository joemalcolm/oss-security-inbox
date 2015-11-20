X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["806" "Friday" "20" "November" "2015" "11:45:05" "+0100" "Florian Weimer" "fweimer@redhat.com" "<564EF9B1.4050908@redhat.com>" "17" "[oss-security] Instruction encoding which prevents execution of a suffix" "^Date:" nil nil "11" "2015112010:45:05" "[oss-security] Instruction encoding which prevents execution of a suffix" (number mark "        fweimer@redh Nov 20   17/806   " thread-indent "\"[oss-security] Instruction encoding which prevents execution of a suffix\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21724 invoked by uid 550); 20 Nov 2015 10:45:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21688 invoked from network); 20 Nov 2015 10:45:20 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <564EF9B1.4050908@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Fri, 20 Nov 2015 11:45:05 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Instruction encoding which prevents execution of a suffix
To: oss-security@lists.openwall.com

Suppose you have some critical kernel operation you want to protect
against execution if some preconditions are not met.  Therefore, you
check the precondition, and abort if it is not met.  But this does not
really work because if attackers have control over the program counter,
they can just enter the function after the checks.

What generic transformations exist (on x86_64) to make sure that an
attacker cannot jump over the checks and execute only a suffix of the
function?  I know of one approach—move the check into the kernel, before
the critical operation—but this is not always desirable for
architectural reasons.

I'd also prefer solutions which do not require changing *all* indirect
jumps in the process image, and something that does not involve dynamic
code generation (JIT).

Florian

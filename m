Received: (qmail 1087 invoked by uid 550); 25 Apr 2025 15:51:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17651 invoked from network); 25 Apr 2025 07:46:25 -0000
Date: Fri, 25 Apr 2025 09:46:15 +0200 (CEST)
From: Jan Engelhardt <ej@inai.de>
To: Florian Westphal <fw@strlen.de>
cc: Sunny73Cr <Sunny73Cr@protonmail.com>, 
    "netfilter-devel@vger.kernel.org" <netfilter-devel@vger.kernel.org>, 
    oss-security@lists.openwall.com
In-Reply-To: <20250425062231.GA7332@breakpoint.cc>
Message-ID: <sqo7nqpr-151q-4sr4-1o40-r95r62179s29@vanv.qr>
References: <1EYtBL_6T4QRNdyaUOoY2OO_FLzCtCfv4Q7gBf28RHR_k_LB-t0IN5R7v12bgaOOSKputo826H9PZ-2EmksldVLnGVoXyMQVemTy3tMra10=@protonmail.com> <20250425062231.GA7332@breakpoint.cc>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] Re: Trailing dot in Cygwin filenames [was: failed to clone
 iptables,ipset,nftables]

On Friday 2025-04-25 08:22, Florian Westphal wrote:

>Sunny73Cr <Sunny73Cr@protonmail.com> wrote:
>> error: invalid path 'src/json.'
>
>There is indeed a bogus file of that name, no idea
>why its there or why cygwin git chokes on it.

There is some prior record -
https://github.com/libgit2/libgit2/issues/6968

"foo" and "foo." are equivalent in DOS, and there is a normalization
phase from "foo." to "foo". This carried forward into contemporary
Windows cmd.exe, explorer.exe (File Explorer), the usual file access
APIs.

	echo abc >x
	echo def >y.

creates "y" not "y." in cmd.

But Cygwin does something unusual, it *actually* creates a file with
the 2-char sequence "y.", through whatever means. Explorer *shows* it
with the dot, but practially no application other than Cygwin can
open it, because all normal APIs and fs lookup mechanisms are
rummaging for "y" as per the earlier equivalance, and either

1. there is no file "y", so some programs can/may/will throw an error
2. or, come to think of it, there is an evil file (hi oss-security)

  [in cgwin]
  echo good >y
  echo evil >y.

If you now try to open "y." with notepad.exe from Explorer, you always 
get the "good" variant. Only inside Cygwin, e.g. with cat.exe, can "y" 
be distinguished from "y.".

Received: (qmail 16060 invoked by uid 550); 12 Jun 2024 22:54:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1677 invoked from network); 12 Jun 2024 22:49:43 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Wed, 12 Jun 2024 22:49:28 -0000 (UTC)
Message-ID: <v4d8ln$2ut$1@ciao.gmane.io>
References: <28902b9a-3255-4bfe-a3c8-d0e08fb5f426@redhat.com>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: CVE-2024-35235 cups: Cupsd Listen arbitrary chmod 0140777

On 2024-06-11, Zdenek Dohnal wrote:
>  ???????? Impact
>
> Given that cupsd is often running as root, this can result in the change 
> of permission of any user or system files to be world writable.
>
>
> https://github.com/OpenPrinting/cups/commit/a436956f3
>

This is a pretty confusing description... if we accept the premise that an
attacker can somehow get root to run cupsd with a modified configuration
file (how???), then this patch doesn't seem sufficient. They can still
get root to unlink() an arbitrary file, no?

I guess someone from CUPS has seen a working Ubuntu exploit that did
this, but this really feels like fixing the bug in the wrong place?

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso


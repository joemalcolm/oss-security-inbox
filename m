X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1463" "Monday" "23" "November" "2015" "21:11:31" "-0500" "Josh Bressers" "bressers@redhat.com" "<538567108.21747548.1448331091442.JavaMail.zimbra@redhat.com>" "35" "Re: [oss-security] Instruction encoding which prevents execution of a suffix" "^Date:" nil nil "11" "2015112402:11:31" "[oss-security] Instruction encoding which prevents execution of a suffix" (number mark "        bressers@red Nov 23   35/1463  " thread-indent "\"Re: [oss-security] Instruction encoding which prevents execution of a suffix\"\n") "<564EF9B1.4050908@redhat.com>" ("<564EF9B1.4050908@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22087 invoked by uid 550); 24 Nov 2015 02:11:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22060 invoked from network); 24 Nov 2015 02:11:43 -0000
Message-ID: <538567108.21747548.1448331091442.JavaMail.zimbra@redhat.com>
In-Reply-To: <564EF9B1.4050908@redhat.com>
References: <564EF9B1.4050908@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.5.30.88]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF41 (Linux)/8.0.6_GA_5922)
Thread-Topic: Instruction encoding which prevents execution of a suffix
Thread-Index: lRrGGZdeSf33eHlJeiGcO8O4gBbPrQ==
Date: Mon, 23 Nov 2015 21:11:31 -0500 (EST)
From: Josh Bressers <bressers@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Instruction encoding which prevents execution of
 a suffix
To: oss-security@lists.openwall.com

----- Original Message -----
> Suppose you have some critical kernel operation you want to protect
> against execution if some preconditions are not met.  Therefore, you
> check the precondition, and abort if it is not met.  But this does not
> really work because if attackers have control over the program counter,
> they can just enter the function after the checks.
>=20
> What generic transformations exist (on x86_64) to make sure that an
> attacker cannot jump over the checks and execute only a suffix of the
> function?  I know of one approach=E2=80=94move the check into the kernel,=
 before
> the critical operation=E2=80=94but this is not always desirable for
> architectural reasons.
>=20
> I'd also prefer solutions which do not require changing *all* indirect
> jumps in the process image, and something that does not involve dynamic
> code generation (JIT).
>=20

I'm certainly not an expert here, but I know enough to be dangerous.

If an attacker has full control (and in this case that should be the
assumption), there's nothing you can do short of some sort of processor
magic that doesn't exist today (that I'm aware of).

What if you did the checks inside the kernel operation. Some sort of
pre-shared secret of sorts to ensure the caller isn't new code.

Of course this would require a kernel patch that I imagine wouldn't be a
welcome change. Sometimes it's worth talking through problems like this
with silly ideas though.

--=20
    JB


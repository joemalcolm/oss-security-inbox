Received: (qmail 20385 invoked by uid 550); 25 Jul 2023 18:57:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17583 invoked from network); 25 Jul 2023 18:55:24 -0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ayaya.dev; s=key1;
	t=1690311312;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=98qOo6nMSajtp1L5yb717XjskeNMN2vzqbaTpEoJ8A0=;
	b=Z+ga7VKXMbQ/Thn9nxjeradPcl92eybvvTBZC8d9PQwWXilL6OoMjxubSZjnO8Wyr59vyj
	ysQoI6YVDKdEOLfipT8ii1PLkvdULo+kGfAbcIpdOcxFyPrCES37FKtWpoadvnEHzzaBs8
	01O+3Y/MofO2MXFbva6g38k3XZjgiu4=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 25 Jul 2023 18:55:11 +0000
Message-Id: <CUBHCOEVELYD.2SECD6I5QE7QA@sumire>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "alice" <alice@ayaya.dev>
To: <oss-security@lists.openwall.com>
References: <ZL6Kgih+pRaeA2e/@thinkstation.cmpxchg8b.net>
 <43f83e16-e492-4540-b34d-d2b51da2bb74@canonical.com>
 <ZL8lFPN2e+6jX5HH@largo.jsg.id.au> <CUB4TMY2T01E.9PNA8WXRWGZR@sumire>
 <ab2390108dee5325ff7683d404465e32.squirrel@ukinbox.ecrypt.net>
 <ZMANYXG61AR/oTGa@itl-email>
 <CAH8yC8mhacP4=w2AbF5jFY5EMmk0Q0X3GZG9OkLnoGMg_XiS6A@mail.gmail.com>
In-Reply-To: <CAH8yC8mhacP4=w2AbF5jFY5EMmk0Q0X3GZG9OkLnoGMg_XiS6A@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] CVE-2023-20593: A use-after-free in AMD Zen2
 Processors

On Tue Jul 25, 2023 at 6:30 PM UTC, Jeffrey Walton wrote:
> On Tue, Jul 25, 2023 at 2:14=E2=80=AFPM Demi Marie Obenour
> <demi@invisiblethingslab.com> wrote:
> >
> > On Tue, Jul 25, 2023 at 06:12:44PM +0100, Eddie Chapman wrote:
> > > alice wrote:
> > > > this is a disaster of a security announcement from AMD. nothing is =
fixed
> > > > except for epyc. the only workaround anyone really has is the chick=
en bit,
> > > > thankfully.
> > >
> > > Yes, very disappointing. Pure speculation; perhaps they were planning=
 on
> > > disclosing at the end of the year with full set of Microcode ready but
> > > something we don't know (yet) forced them to disclose early. Who know=
s.
> >
> > Does AMD make OS-loadable =CE=BCcode patches available for client platf=
orms,
> > or must all =CE=BCcode loading on clients be done by the firmware?  If =
the
> > latter, then it will take a very long time for clients to get patched,
> > even if AMD released the updates promptly.  Also, server platforms can
> > usually reflash the firmware via the BMC, but client platforms do not
> > have this option.
>
> Related, Ubuntu released an updated amd64-microcode around (or before)
> 1:45 PM EST today. My Ubuntu machines have already been patched.
>
> I was kind of surprised to see how quickly it landed.

the updated amd64-microcode only contains the fixes published to linux-firm=
ware,
which only affects epyc cpus, as noted. unless you're running epyc cpus (wh=
ich
is slightly unlikely so i thought i'd mention it, but apologies if that is
indeed the case) you didn't actually receive any fix.

the latest kernel released today sets the chicken bit if no patched ucode is
loaded which also works to mitigate the issue.
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/=
?id=3D522b1d69219d8f083173819fde04f994aa051a98)

you can test this by running the zenbleed reproduction, from
https://cmpxchg8b.com/files/zenbleed-v5.tar.gz

(if it outputs anything, you're vulnerable)

>
> Jeff


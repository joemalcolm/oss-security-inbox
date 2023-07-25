Received: (qmail 15678 invoked by uid 550); 25 Jul 2023 09:11:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21535 invoked from network); 25 Jul 2023 09:06:21 -0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ayaya.dev; s=key1;
	t=1690275970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NDDHnRlrGpZxINK3swHHblXSsTkRHTnceir0aBJbM5g=;
	b=dH7hB7VWY4dGWTtoxVj/gXQaN29rVMbTk63bD6yU87bhS3isBGX+uzD+0HcBKag5VnyvMh
	VpX49Pkfxrm0dC7bbT41G/onLs1DJMO9oPnemVkgU4k23RSX3JVdNfDlXpswDaaaPeU+vh
	ASStBtLbVBfUj8ZkLEh+ujjmLRftHAY=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 25 Jul 2023 09:06:05 +0000
Message-Id: <CUB4TMY2T01E.9PNA8WXRWGZR@sumire>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "alice" <alice@ayaya.dev>
To: <oss-security@lists.openwall.com>
References: <ZL6Kgih+pRaeA2e/@thinkstation.cmpxchg8b.net>
 <43f83e16-e492-4540-b34d-d2b51da2bb74@canonical.com>
 <ZL8lFPN2e+6jX5HH@largo.jsg.id.au>
In-Reply-To: <ZL8lFPN2e+6jX5HH@largo.jsg.id.au>
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] CVE-2023-20593: A use-after-free in AMD Zen2
 Processors

On Tue Jul 25, 2023 at 1:27 AM UTC, Jonathan Gray wrote:
> On Mon, Jul 24, 2023 at 01:41:36PM -0400, Marc Deslauriers wrote:
> > Hi,
> >=20
> > There seems to be confusion regarding which is the correct commit:
> >=20
> > Your blog post says it's 0bc3126c9cfa0b8c761483215c25382f831a7c6f which=
 is
> > for family 17h.
> >=20
> > This post says it's b250b32ab1d044953af2dc5e790819a7703b7ee6 which is f=
or
> > family 19h.
> >=20
> > I assume the 17h family one is the correct one?
> >=20
> > Thanks,
> >=20
> > Marc.
>
> Yes, but it by no means covers all zen 2 models.  See amd-ucode/README
>
>   Family=3D0x17 Model=3D0x31 Stepping=3D0x00: Patch=3D0x0830107a Length=
=3D3200 bytes
>   Family=3D0x17 Model=3D0xa0 Stepping=3D0x00: Patch=3D0x08a00008 Length=
=3D3200 bytes
>
> 17-31-00 Rome/Castle Peak	0x0830107a
> 17-a0-00 Mendocino		0x08a00008
>
> Models missing include:
>
> 17-60-01 Renoir			0x0860010b
> 17-68-01 Lucienne		0x08608105
> 17-71-00 Matisse		0x08701032
> 17-90-02 Van Gogh
>
> The known good patch levels are used by xen and linux.  But the
> microcode for Renoir, Lucienne and Matisse is not available as far as
> I can tell.

the amd security bulletin at
https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7008.html
states that really only 2nd-gen epyc is fixed. etas for all other cpus (con=
sumer
level) are in october/november/december.

quoting above:
2nd Gen AMD EPYC=E2=84=A2 Processors "Rome" (fixed)
AMD Ryzen 3000 Series Desktop Processors "Matisse" (Target Dec 2023)
AMD Ryzen 4000 Series Desktop Processors with Radeon Graphics "Renoir" AM4 =
(Target Dec 2023)
AMD Ryzen Threadripper 3000 Series Processors "Castle Peak" HEDT (Target Oc=
t 2023)
AMD Ryzen Threadripper PRO 3000WX Series Processors "Castle Peak" WS SP3 (T=
arget Nov 2023/Dec 2023)
AMD Ryzen 5000 Series Mobile Processors with Radeon Graphics "Lucienne" (Ta=
rget Dec 2023)
AMD Ryzen 4000 Series Mobile Processors with Radeon Graphics "Renoir" (Targ=
et Nov 2023)
AMD Ryzen 7020 Series Processors "Mendocino" FT6 (Target Dec 2023)

this is a disaster of a security announcement from AMD. nothing is fixed ex=
cept
for epyc. the only workaround anyone really has is the chicken bit, thankfu=
lly.

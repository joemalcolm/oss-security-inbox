X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7798" "Monday" "26" "June" "2017" "06:40:36" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170626104036.GA21186@grsecurity.net>" "174" "Re: [oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?" "^Date:" nil nil "6" "2017062610:40:36" "[oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?" (number mark "        spender@grse Jun 26  174/7798  " thread-indent "\"Re: [oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?\"\n") "<CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>" ("<CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18282 invoked by uid 550); 26 Jun 2017 10:52:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13508 invoked from network); 26 Jun 2017 10:40:49 -0000
Message-ID: <20170626104036.GA21186@grsecurity.net>
References: <CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
In-Reply-To: <CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 26 Jun 2017 06:40:36 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Can someone explain all the CONFIG_VMAP_STACK
 CVEs lately?
To: oss-security@lists.openwall.com

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andy,

As I recently learned, you'll have to go through the CVE
dispute/reject process for each one of them.  Since I'm the reporter
I believe I would have to reject them (you could only dispute them),
however I'm not willing to reject any but the USB ones given the
information I found below, since the vulnerability (for the crypto
etc cases) is also the BUG() when CONFIG_DEBUG_VIRTUAL is enabled
(aka the thing you seem to depend on to find these bugs in the first
place since no static analysis is apparently being done), which will
panic the system when panic_on_oops is on.

#ifdef CONFIG_DEBUG_VIRTUAL
unsigned long __phys_addr(unsigned long x)
{
        unsigned long y =3D x - __START_KERNEL_map;

        /* use the carry flag to determine if x was < __START_KERNEL_map */
        if (unlikely(x > y)) {
                x =3D y + phys_base;

                VIRTUAL_BUG_ON(y >=3D KERNEL_IMAGE_SIZE);
        } else {
                x =3D y + (__START_KERNEL_map - PAGE_OFFSET);

                /* carry flag will be set if starting x was >=3D PAGE_OFFSE=
T */
                VIRTUAL_BUG_ON((x > y) || !phys_addr_valid(x));
        }

        return x;
}
EXPORT_SYMBOL(__phys_addr);

These are well-established denial of service issues that CVEs have been
assigned for in the past.

I've dug into the USB case a bit more since reading your mail and Greg's.
It has changed apparently since I originally wrote KSTACKOVERFLOW in
2014.  Here's what seems to be the relevant commit:

commit 29d2fef8be1165a26984a94fbcf81d68c1442fc5
Author: Dan Williams <dan.j.williams@intel.com>
Date:   Thu May 8 19:25:56 2014 +0300

    usb: catch attempts to submit urbs with a vmalloc'd transfer buffer
=20=20=20=20
    Save someone else the debug cycles of figuring out why a driver's
    transfer request is failing or causing undefined system behavior.
    Buffers submitted for dma must come from GFP allocated / DMA-able
    memory.
=20=20=20=20
    Return -EAGAIN matching the return value for dma_mapping_error() cases.
=20=20=20=20
    Acked-by: Alan Stern <stern@rowland.harvard.edu>
    Cc: Sarah Sharp <sarah.a.sharp@linux.intel.com>
    Cc: Mathias Nyman <mathias.nyman@linux.intel.com>
    Signed-off-by: Dan Williams <dan.j.williams@intel.com>
    Signed-off-by: Mathias Nyman <mathias.nyman@linux.intel.com>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

diff --git a/drivers/usb/core/hcd.c b/drivers/usb/core/hcd.c
index 9c4e292..adddc66 100644
--- a/drivers/usb/core/hcd.c
+++ b/drivers/usb/core/hcd.c
@@ -1502,6 +1502,9 @@ int usb_hcd_map_urb_for_dma(struct usb_hcd *hcd, stru=
ct urb *urb,
                                        ret =3D -EAGAIN;
                                else
                                        urb->transfer_flags |=3D URB_DMA_MA=
P_PAGE;
+                       } else if (is_vmalloc_addr(urb->transfer_buffer)) {
+                               WARN_ONCE(1, "transfer buffer not dma capab=
le\n");
+                               ret =3D -EAGAIN;
                        } else {
                                urb->transfer_dma =3D dma_map_single(
                                                hcd->self.controller,

So it wasn't at all the case that the transfer would simply be rejected,=20
certainly not since the 2.2 days.  Prior to this patch (assuming=20
CONFIG_VMAP_STACK existed back then, which it didn't) you can see it=20
would have hit the dma_map_single call, which would call virt_to_page=20
which will end up in __phys_addr() and hit the BUG() on=20
CONFIG_DEBUG_VIRTUAL. My first version of KSTACKOVERFLOW seems to have=20
been for 3.14 which didn't carry this patch.  When I ported to 3.15, I=20
had already redesigned KSTACKOVERFLOW to avoid triggering DoS conditions=20
in buggy drivers/crypto code since it was clear the long-held no DMA on=20
stack policy was never enforced across the board, so we would have never=20
seen any USB-related issues again to have ever seen that WARN().

For the CVE dispute/reject process, Kurt Seifried can tell you all
about it.  Give him a couple weeks, since
https://twitter.com/kurtseifried/status/876818809079816193
is still up, the CVE still apparently is not rejected, and he is
very busy taking pictures of his dinner.  I am certain he will
treat a member of upstream Linux the same as I've been treated,
as he is a very professional and equitable person.

That said, I'm happy to be wrong about the USB case (and to clear
up Greg's misconception about it), and I hope the above info/history
makes clear where my assumption went wrong.  I'll gladly work with you
to get the USB-related CVEs rejected that you were saved from via
the above commit.

-Brad

On Sun, Jun 25, 2017 at 08:49:43PM -0700, Andy Lutomirski wrote:
> As the author of the CONFIG_VMAP_STACK patches, I'm a bit confused
> here.  There have been quite a few bugs in which some code passes a
> stack buffer to either sg_set_buf(), etc. or to the usb core.  The
> former seem to all be crypto users.
>=20
> As I understand it, the supposed vulnerability is that, if you can
> force the buffer to span a page boundary, the kernel or device will
> instead hit the physical page following the the first page of the
> buffer, which is likely to be the wrong page.  This causes corruption
> and maybe code execution.
>=20
> Naively, this failure mode occurs because __pa (or virt_to_phys() or
> virt_to_page() or whatever interface gets used) will return the PA of
> the *beginning* of the buffer, but the next virtual page may not be
> the next physical page.  But this makes no sense -- __pa and friends
> don't have that effect when called on addresses in vmap space.
>=20
> So I tried to refresh my memory of what actually happened.  (I looked
> into this when I wrote CONFIG_VMAP_STACK.)  __pa() and friends return
> garbage when called on a vmap address.  (I think it's likely to be a
> totally bogus PA that won't even correspond to a real physical page of
> memory.)  The tricky but is that it's *invertable* garbage.  When
> these buffers are passed to synchronous crypto APIs, the crypto core
> calls sg_virt(), which inverts the transformation and returns a valid
> virtual address of the page.  But this is the original VA and points
> to the vmap space where the buffer is genuinely contiguous.
>=20
> IOW, for most synchronous crypto, using sg_set_buf() on a stack
> address is utterly bogus, but it works correctly.  Ick.
>=20
> I haven't checked what USB does, but I suspect it's a wildly
> out-of-bounds DMA transfer that's more likely to result in a
> straight-up abort than easily exploitable corruption.
>=20
> So could someone all these CVEs, please?
>=20
> --Andy

--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZUOSdAAoJEETRwPglJf5Jh6YP/3gmgrjm8MYjs2kPrGbezS4B
u4nfFInO3avY3/m1vmC6i23i3SqvQWVcbGFaGwfIK/ON/qqCHyF8U7VuxVdpCgKS
3v2vO72tmf0UER7ObSgD2QvUusWa3Y0uojgHZz4vhcP5kG5D25wAAsbeOBWWwwY0
H7MfoSTeP83ksvXs3n45s/w5GY6cm3sDLp1rmXr1m3sABLYTNR+UF2t6d+vRfwSJ
ghz49A5Ok1QW/bQtwmpaJZPgKyZp1xxm1Zuy5bIJtdp3AFiCvxPvdUy+HHKwkaOJ
aYYhwPaRB3U6D2FVe5ULptck7d1QMpf2k2VqmTZn9c47H3lWIMuEOYzzQvtWIO6C
5HfVAugqcz15g60pmzdzxa4KrXVpZTpmFutXImlHvR7nVln3dJ/d5R7mhzna21fR
3oIEAtzkYWSLZmfh0b6/lApq/GcgJGEPaqrFMRZNveTYudL89BQ7+wTHqSFjJBCM
IWOYDo59l+MuZLUF8MEFG2xX/gv+NEjGsZZz5W9UTNa47Y/zfmIjLgftTxGtz325
kUyfZD6Vi5YVLV5sVGhMLMpxILEpziD5/O0ZTh94flAh8eJgdKnKqaAodESMnp5e
4R8eKc4mSyUxP89Z60BWLjJL7CbzhknN6NB14iyPVh5T8LyjUHsv77IOhG8CRQCU
rl51fbrSUwnbaNJ35Rb1
=LRVD
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--

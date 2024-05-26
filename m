Received: (qmail 8106 invoked by uid 550); 26 May 2024 14:28:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10179 invoked from network); 26 May 2024 11:41:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716723665; x=1717328465; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bKlhteE+RnfWYpfuFdzHlwRQ2hg1arixOWWRA6ahmP8=;
        b=nJ04Ljxabae1+ZAdbMJS785k8fm01OI4qXFQK2/kYHaVEC0SiUg2yXc36kNbHHbtPj
         8dZu/Q7EryHPtFRVN/ufdwlY6tHts9Xpk6vrRUjqUaYI9Xusas/0IB7SyvVpuC9mZFjv
         VH6PJNDPGpw3YQjQC5mfDkGEE0nhwyaE3bNYlo2zpA1U7yIPHZkFUbsybz3ruVn0nddF
         wLji0dcJ7RHYT2mBYVVc7tjQKmeMh1foenuueOPpxU0GE1GiHhjH8zVW5A7q9GnqNsKN
         WMSusPLHYcSgfinGExII8Gu0ZEV5E+k6ZqctLMgaD084EGly2yADHwC6+Z4V5hNvDHVr
         Vm7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716723665; x=1717328465;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bKlhteE+RnfWYpfuFdzHlwRQ2hg1arixOWWRA6ahmP8=;
        b=tNGpyDJ3EdhIu6HfWgq+MGv4qxJ4JlNj4o8aERIiUHM6DUjGICoyB8pLBgtHudPQiu
         qOT/h0mhSbjESzKttorpbXlpj2hzcb+LFi51APYKPAGkKBNDWFfo7dK3quvzYq15GTR4
         e3/xUmOoqMVfulbxJiKPbB5hng1ojhJc6ArjiwpZjWIK+iGpvBY+j8S9zUeYTFjXsKtE
         dYC1t3H3QUJYYsoE9uvOkdi/zH8Ry2jppKYTskLZI/ooGZPxjNfWJUAqHinZRCMQC4m+
         NmSqF9c/9iq5fYNItd5uk0CZw+B1vHzUllPFYUHCsUvnHzKMFQTjEBiBvJ5h2I9YvUwP
         9Agw==
X-Gm-Message-State: AOJu0Yws4YuMLJy+3fHeGCYLdLiX/Mg1KjTy4mjWwDIuQZc7xEUTIZfw
	qIzL9Tk1QURZTmtvvipznMcaOIBZNrN6EmZVmQBOSSehSdlmDGSG53oE8GqL6MlQa5uEd4n6gwV
	KXAnfFZlUQILb7ZeD8eUa2CUkVyg8dOiMYm8z3w==
X-Google-Smtp-Source: AGHT+IGHH3m0NABylwYbc/k/1kop4tW3Cns/tsEV8KhjZbWcu0/pyNXQ7hAnkGbzMEfD6Oj1N2pIg64hZoIE7h5iUVE=
X-Received: by 2002:a81:a049:0:b0:627:8616:4de with SMTP id
 00721157ae682-62a08d1a2f6mr65058197b3.5.1716723665047; Sun, 26 May 2024
 04:41:05 -0700 (PDT)
MIME-Version: 1.0
From: houjingyi <houjingyi647@gmail.com>
Date: Sun, 26 May 2024 19:40:53 +0800
Message-ID: <CAN1eSkue9p8=qkJdEFrczVwc1nfUhG7w6Z2dMHhxHc47T+sv=A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003ba15a061959e039"
Subject: [oss-security] path traversal in tar extract in intel cve-bin-tool

--0000000000003ba15a061959e039
Content-Type: text/plain; charset="UTF-8"

https://github.com/intel/cve-bin-tool

From github about page: The CVE Binary Tool helps you determine if your
system includes known vulnerabilities. You can scan binaries for over 200
common, vulnerable components (openssl, libpng, libxml2, expat and others),
or if you know the components used, you can get a list of known
vulnerabilities associated with an SBOM or a list of components and
versions.

Vuln detail: When you scan some archive with cve-bin-tool, cve-bin-tool
will try to unarchive them. The problem is for tar file, python do not
check filename in tar contains slash and backslash, so we can provide a
malicious tar file and when cve-bin-tool scan it, we can create Arbitrary
file. This is very very dangerous.

on a linux/macos machine, running cve-bin-tool against
https://github.com/snyk/zip-slip-vulnerability/blob/master/archives/zip-slip.tar
.
Then you can find /tmp/evil.txt in your machine.
on a windows machine, running cve-bin-tool against
https://github.com/snyk/zip-slip-vulnerability/blob/master/archives/zip-slip-win.tar
.
Then you can find C:\Temp\evil.txt in your machine.

Timeline:

2024/1/25 : report to intel by intigriti

2024/1/25 : intel said: we were able to reproduce your finding and have
validated your submission

2024/3/1 : intel said : Open-source projects fall out of Scope for bounty
rewards. However, we are pleased to inform you that the issue you've
reported is eligible for CVE.

2024/5/15 : intel said : this not to be an Intel product vulnerability but
a functional weakness due to Python's tar parser. As such, it does not meet
the requirements for issuing a CVE in our Bug Bounty program.

However, they fixed this in
https://github.com/intel/cve-bin-tool/releases/tag/v3.3. It's fine if you
are using latest version.

--0000000000003ba15a061959e039--

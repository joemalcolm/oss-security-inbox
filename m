Received: (qmail 24297 invoked by uid 550); 10 Sep 2025 19:07:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1490 invoked from network); 10 Sep 2025 12:19:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757506732; x=1758111532; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9o2ZGQ75PoRFXJeu4jVh6wckEeEh70vAZ08sN5g+Ido=;
        b=l+H+d/5Iuy6BB7zw9UoXBv1Gk+/HRdxeZkacimignUZgaZ6/0SEl04vFKB2cq3ruhf
         6bGhqw2DcH46eLrEMwUdfQLN/0JONiffzDIufb+jZnMXszhuxeWvCPcTzTjqUYGEkTRT
         /eQvJ44rWnM3rNb/zovBFALMkBR1Bp4gIMFjAdxlxeN+EeSU6joekhZQMtzVG6sOIkPN
         wxXyWR0zv26BLioB5NtMyWmltURZz/eU/EFsDxZATaKJPN6FsO1c9ZUOIVdksJnVzGlF
         zhtYIC3i5A1pdCjMBwQZQDMW7aKMHKBLVGO4Ag3cUYg+7AITj7IAgbArsSjNWk+V192+
         BeMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757506732; x=1758111532;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9o2ZGQ75PoRFXJeu4jVh6wckEeEh70vAZ08sN5g+Ido=;
        b=UKtEN4T9rBuG4hDR27RQBN4nGTvXKGFFDqgYext/3SEa4lH1j0mFm84h8i4XWXT6qT
         WOcfby+Ue+uX1qnfjFaDbDNBKl6+GR0lntV7wnfC9hcchPqM2+DH+TKqkwkqhQYwP8eU
         T1AADt/swMYFM/KBsc3l8UYL4W3hdGoXFhlJUPYY1iq2TtckJyQTcyEri/V5B+FshAF9
         wC3DeYCZcPVjkxYpBzprONzsnt7Awxb/jwLg8HDeZCrU5kwOIT4eY/R/kXL3g/vZlT7F
         FHzsU3S/Rqs/pNLakXyvXmmsM8eLx64Le5MtzsR3BzeDlYPOX2uGgHVZ1ANm04eX4yy5
         ZX4g==
X-Gm-Message-State: AOJu0YyzAZrydKXJLOAmNNYTAkRi7VaL/2Tv3U2wxN0mEI65pcEvhZrW
	DJQ0/OB8VyH+aaqX1RGwaAop1wLsmmleMDwi+aOdueUHd0xtGDVaC37e8QavJg==
X-Gm-Gg: ASbGncs9STiYbnt/tNo/kycO+SEPmsSkHPZ9wv+c/J9ZojE/LJDQ1vMvk8xfCw8txrN
	MSXbmtJpAobruTtL909cWwLKSnFpl4JSbn2V93vUeoclG5GCZLj3+Ar7HRsUGR3Ptb6eqpKNt3A
	iMvoAw3jt4N9lmL+o3cycm1fMbZ2tf/xYGU0VBLvqECJFeyuAF44FsIGcFluIBh+uQiQ7+jW8Gg
	xeXfWNszF0C+2EsHf1sGmrK+JKlVWtgM0+7Hp3Go3wpEqAfFDM1d22/UVunq/XwG519JCMOtg5y
	GbPV0C0OvFnGwL//eh8WB/x+mjyBcCCCO6gRfyO9aLAtG4q13SvmOtDb9a2SpfGYytM3lKVZPZB
	9nWKVECi257aTOK5Oj3oeRfpQ
X-Google-Smtp-Source: AGHT+IHz+01OLl7dCC42gXjbEktRWpaPK5n+6yZEmzseX3Vm0JILHsyuMXJnR27z89KiDWjCoxOUpQ==
X-Received: by 2002:a05:6000:18a3:b0:3e3:e7a0:1fee with SMTP id ffacd0b85a97d-3e636d8f73bmr14687745f8f.5.1757506731685;
        Wed, 10 Sep 2025 05:18:51 -0700 (PDT)
Message-ID: <38ed516a-ffb7-4944-aca5-b0a68f44d79c@gmail.com>
Date: Wed, 10 Sep 2025 14:18:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Daniel Stenberg <daniel@haxx.se>,
 curl security announcements -- curl users <curl-users@lists.haxx.se>,
 libcurl hacking <curl-library@lists.haxx.se>
References: <27oo7n57-95s9-nn64-qqo8-95n4n23901so@unkk.fr>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Content-Language: en-US
Autocrypt: addr=pochu27@gmail.com; keydata=
 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 R74=
In-Reply-To: <27oo7n57-95s9-nn64-qqo8-95n4n23901so@unkk.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-10148:
 predictable WebSocket mask

Hi Daniel,

On 10/09/2025 07:54, Daniel Stenberg wrote:
> predictable WebSocket mask
> ==========================
> 
> Project curl Security Advisory, September 10 2025 -
> [Permalink](https://curl.se/docs/CVE-2025-10148.html)
> 
> VULNERABILITY
> -------------
> 
> curl's websocket code did not update the 32 bit mask pattern for each new
> outgoing frame as the specification says. Instead it used a fixed mask that
> persisted and was used throughout the entire connection.
> 
> A predictable mask pattern allows for a malicious server to induce traffic
> between the two communicating parties that could be interpreted by an involved
> proxy (configured or transparent) as genuine, real, HTTP traffic with content
> and thereby poison its cache. That cached poisoned content could then be
> served to all users of that proxy.
> 
> INFO
> ----
> 
> This exact scenario is warned about in the security section of the WebSocket
> RFC 6455 and is the very reason the mask should be updated for every outgoing
> frame.
> 
> For this bug to become a real-life problem, the libcurl-using application must
> be communicating through such a (defective) proxy that confuses a WebSocket
> communication for HTTP traffic. Further, to trigger the problem it requires
> the traffic to be done using clear text HTTP / WebSocket (`ws://`) and not
> over TLS (`wss://`).
> 
> The Common Vulnerabilities and Exposures (CVE) project has assigned the name
> CVE-2025-10148 to this issue.
> 
> CWE-340: Generation of Predictable Numbers or Identifiers
> 
> Severity: Low
> 
> AFFECTED VERSIONS
> -----------------
> 
> - Affected versions: curl 7.86.0 to and including 8.15.0
> - Not affected versions: curl < 7.86.0 and >= 8.16.0
> - Introduced-in: https://github.com/curl/curl/commit/d78e129d50b2d1
> 
> WebSocket was considered experimental before 7.86.0 and therefore we do not
> consider earlier versions vulnerable.

 From what I can see, websocket support was introduced in 7.86 in [1], and later 
marked as supported/not-experimental in 8.11 [2]. If so, I think the above note 
(also in [3]) should say that it was experimental before 8.11.

Cheers,
Emilio

[1] https://github.com/curl/curl/commit/664249d095275e
[2] https://github.com/curl/curl/commit/d78e129d50b2d1
[3] https://curl.se/docs/CVE-2025-10148.html

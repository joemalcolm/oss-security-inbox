Received: (qmail 18035 invoked by uid 550); 5 Mar 2025 19:11:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18017 invoked from network); 5 Mar 2025 19:11:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1741201886; x=1741806686; darn=lists.openwall.com;
        h=content-transfer-encoding:autocrypt:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DZaame9Ci028tUxlPLSZYIhVkogn4h4VCrJpnOsb3QI=;
        b=RELc6Nb99XPKWE6jk/Z9ni+T9VFWeDRlMu7FfOgSUXKv/dv9pZ2jd1lOssipy6iakU
         xPRwehRztmVPsrkyfkkb0q1gvQbPoTqSJcPOxpw6ejbRkz4KPQaF0J/VwMbj+P4g8dgT
         7VWXht+b4syLWv9zcy3grPWkJmqJsP8ZRm3Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741201886; x=1741806686;
        h=content-transfer-encoding:autocrypt:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DZaame9Ci028tUxlPLSZYIhVkogn4h4VCrJpnOsb3QI=;
        b=N69uhf2M6gCVY355uFGZf07bxhEIuXkk5dcI0DOcob0L/8XUVjsjyKNlawm5CfP7Hd
         09zeIFIhHr8xCTlSk3nWHMEYNN8oJ1fcqrAOy16VWDsMg4Ssj5r99T2I5ugpp3O3tN3R
         QQfBj8KvJMPassH1MhOV/qfT6FEjeP6APgdf7Wk+VV4fVMjySK+l3DsroUFCPd7jSswx
         XR2lAsSqYm7VLEZ131peRKD1cPplFlC0daj+Lqw6FALqOtOhGMFHvOJq8jB+KofBSBQU
         ZaluscjEfARHwdTBnoSHk2JaGHTiaHnsH+ihYAhKK8zYi3MFJ6sz+qlxBcZtSK4n4GDE
         9plg==
X-Forwarded-Encrypted: i=1; AJvYcCWbbnrOpeOLaUNgoJIRr0s05sGKzDgFucHLioW1wfnUsyp+fitr2OP6D7gCeq5kv4ljkkEQC5A43RNtAlw=@lists.openwall.com
X-Gm-Message-State: AOJu0YwmOhMx10FAxx0Fzb726tb0eaLvih8obi50kKspqsLkVgeKdgUR
	aWAnchxWZs67rafx36+wyGLp0MLi/eH+lykN3ZiyLOs++61szUo9cR8Ja3DTmmU=
X-Gm-Gg: ASbGncvDb4aT8SEmt//Aq61gty75GjVvaKpJJcMVeNkOXyCAR9vCCFSuS981vHnGNxI
	NqCcyWzdC3VoBqGC+1h2H5bQVGMZ60QlfC26uw4RhJ9uRhWN6GYKq6I04dV5dPSRviVOWqAq6x/
	Z4JkvYSapwGBWEnUIrkWNrIQIt4drzCwVitrZDYMbWcohHOHWAx2jw5ds8Taw1sC/cKm28daDwS
	LI8sPJooOsh/kDre6+QnGv8G2js/E0LVP8moNQLpFvrJuSf3M0QyYzAOBeEMo1k5q4GZvrXW9CP
	M9eYHOX13F2Gzato5kj8FWT0ukSb/6ID08NhM7ECqpP9lmdDEtmWYSnG3f3UxMV/xwW5AkcRktt
	+9CLmZMEd
X-Google-Smtp-Source: AGHT+IE4Oj0YBaW1g1qsSSQnSSCOaSMQmxLzlg0vhrLzGeXWTn120/RwT20dUywm3p5AOlyDXi21Kw==
X-Received: by 2002:a17:907:3f25:b0:ac1:fcda:78c1 with SMTP id a640c23a62f3a-ac20d97e6b7mr466336266b.34.1741201885183;
        Wed, 05 Mar 2025 11:11:25 -0800 (PST)
Message-ID: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
Date: Wed, 5 Mar 2025 19:11:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "xen-announce@lists.xen.org" <xen-announce@lists.xen.org>,
 Xen-devel <xen-devel@lists.xen.org>,
 "xen-users@lists.xen.org" <xen-users@lists.xen.org>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: "Xen.org security team" <security-team-members@xen.org>
From: Andrew Cooper <andrew.cooper3@citrix.com>
Autocrypt: addr=andrew.cooper3@citrix.com; keydata=
 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
 6+ahAA==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU Microcode Signature
 Verification Vulnerability

See:

https://bughunters.google.com/blog/5424842357473280/zen-and-the-art-of-microcode-hacking
https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7033.html

Right now there are four known but (reasonably) benign microcodes from a
non-AMD source.  However, there is a tool to sign arbitrary microcode.

In Xen, we've provided a stopgap mitigation to perform extra checks on
microcode load on affected CPU families.  This is a SHA2 digest check
against hashes with believed-good provenance.  This is staging only for
now, in case it is overly disruptive.

This will not protect against an already-compromised platform, but it
will prevent an uncompromised system becoming compromised via Xen's
microcode loading capabilities.

On affected systems, the only complete fix is a firmware update.  This
is a very firmly recommended course of action.

Sincerely,

~Andrew, on behalf of the Xen Security Team.


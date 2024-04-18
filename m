Received: (qmail 3183 invoked by uid 550); 18 Apr 2024 09:05:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27893 invoked from network); 18 Apr 2024 08:01:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713427307; x=1714032107;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hAacAvf2PA4fba1Xj7YX1hv4D+WO8IQImTkoQRMl6uc=;
        b=OZNsrXLekw+LuWtqSct7lTb1zdCqqyRShjOlmwEU3Bfv0mXq1be/ByV/jHXmmyeztN
         e+565YBZmphbizVKMahZuh0NaIDc1aJTGd2FpkZgSFLtFn/jp7J0QiTs7eRggOWflhPx
         ItXXx1LNtx7WPt8oiqRXjsGjskpYXJxt4a+9+odgfrbGFbBauuiX3cD7gEw/HxOyt1+r
         jzJ74PLAWS4jAu6B6rk5U2TGyrcOSM2KRcZWP/Hji+HatoN9+MbvRuR7ESPNBWkrO4OD
         UcUO06hKgRB24nZrGGQuEbUZer3VIkBYsrLyITrroWPA5h7SXxxUAC4NkgHYLrT4JJxT
         hxOw==
X-Gm-Message-State: AOJu0YxJ14GywehNdyoLaKF3dy9I92uecUU28j+AHhUJ7q8laMPVywcx
	rAXipmlKTWT1XfH4Z0CHHTK/P/RsqmapSBE3dVhFvD0hLmHhIzWv8Iw7RGtO
X-Google-Smtp-Source: AGHT+IFNZHk1K/mdYvyhY3Xhnpg4BspUsgUqgnnsqOFbL3St+XTT2dBq9rKxtRReG3iO49Rtwh88vQ==
X-Received: by 2002:a05:600c:2246:b0:418:8df1:ca73 with SMTP id a6-20020a05600c224600b004188df1ca73mr1239473wmm.19.1713427307333;
        Thu, 18 Apr 2024 01:01:47 -0700 (PDT)
Date: Thu, 18 Apr 2024 10:01:41 +0200
From: David Morel <david.morel@vates.tech>
To: oss-security@lists.openwall.com
Message-ID: <ZiDTZcjVnt-uqHRQ@raton>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] libreswan: IKEv1 default AH/ESP responder can crash and restart

Hello,

I noticed I missed a few CVEs on libreswan recently as the project is
not posting them here, I subscribed to their announce mailing-list to
monitor that for work, and thought I could try to follow and post them
here when there are new things. That being said, here is the latest one:

Vulnerability information
=========================
The function compute_proto_keymat() did not handle unexpected proposals
for which the keymat size is 0, such as AES-GMAC which can be used only
with NULL encryption.  The function ends up calling an assertion failure
routine. No Remote Code Execution is possible.

- CVE-2024-3652
- Advisory: https://libreswan.org/security/CVE-2024-3652/CVE-2024-3652.txt
- Severity: Medium
- Vulnerable versions: libreswan 3.22 - 4.14
- Not vulnerable: libreswan 3.0 - 3.21, 4.15+, 5.0+

-- 
David Morel

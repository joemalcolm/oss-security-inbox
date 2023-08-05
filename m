Received: (qmail 30047 invoked by uid 550); 5 Aug 2023 21:02:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11396 invoked from network); 5 Aug 2023 20:12:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691266341; x=1691871141;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q9IMbS6rxw9xu+PYv/d98+HiaGGmLU6TMbgnLU5nD+4=;
        b=bWP9LLMHKOHSw4zwmqfKF9lxPnAeiztPH63NfmoXkGrcxYYRDwu50hePiAV5/Nr90y
         7c7VAz6DrKFgbhWfoxUTKE95/QjeVZjOzVR41NdxSP+30R/RgQ5t1gqccOJD6+XauJ+I
         +jEcjIDNvT6c8EtF3lZ8NXAO/FBR4J2jESbIzOCK/ARLo+GiOcXwA3RCyGndXTzuA8Oi
         lKBpTRDbZ0hV2oI8gh/gmsFmwzRxa2oqMtELRriSzta4XkAxlG0IKYBhcDlB8ap7Nr9r
         LIyhVYG2inIk8+abdQYno9lPZoht0XW0TCnxZYKg6PKtJ53yYC61gVmDrarS+Jz/LXQY
         fuLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691266341; x=1691871141;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q9IMbS6rxw9xu+PYv/d98+HiaGGmLU6TMbgnLU5nD+4=;
        b=HsbYOcIUGpXvC98EJSm2vNooV45M4uzGytC3KLxJUu3m5d7zOamrLGb3R6F4JMk0Xr
         KtMwQTIarOWUNvmK7a3G6Cia09bdT+lPSjcNnA+1vvzielLQeaxlAuVfG8uIhc11RHtf
         ajdkQZB6YcwPTM3ZIBnSbTSaVEnYwDBtm635vYnx8YVjQIYnmE/nnj2E7Xy13vPRg/TZ
         UYTQpSdeQxCzFDsc+yXMmoL0mTyLYBmdmLwiCzHNVwxMdgan2NuLmQFvwtS4BQaQ963Y
         dxBbmpBfzHB7oO7M4Y+MLagb6geyN91mD2F4PDWGplxWltuJE4WbYb+kaZt4oNZeDsT4
         Lh2g==
X-Gm-Message-State: AOJu0YyEaCRKO6AKEF+UOaAKPdf/hKAEARXSMKTVmMd3aZci4948g2V2
	4XZHIFreLEfDBwmqw5kq39Gf4kgRejjeHTMUiRQ=
X-Google-Smtp-Source: AGHT+IEOUOzSQcWLeecabrKVoyGY+696eKpCXNgl9D78xNULAdiQaGn8w40UrlSoxFCuijx5wZ/H11uQNXC0MHLbtac=
X-Received: by 2002:a5d:6812:0:b0:314:1b6a:a095 with SMTP id
 w18-20020a5d6812000000b003141b6aa095mr3432067wru.23.1691266341332; Sat, 05
 Aug 2023 13:12:21 -0700 (PDT)
MIME-Version: 1.0
From: Dave <snoopdave@gmail.com>
Date: Sat, 5 Aug 2023 16:12:10 -0400
Message-ID: <CAF1aazB_eBVHv75fjPKHQXvuq7jqZhz_9JOhqMhbpPPA+cVRFg@mail.gmail.com>
To: Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	srivani.reddy@securelayer7.net, dev@roller.apache.org, 
	Roller User <user@roller.apache.org>
Content-Type: multipart/alternative; boundary="0000000000007eebb9060232a16a"
Subject: [oss-security] CVE-2023-37581: Apache Roller: XSS vulnerability for site with
 untrusted users

--0000000000007eebb9060232a16a
Content-Type: text/plain; charset="UTF-8"

The Apache Roller project would like to announce a vulnerability that may
impact Roller installations that allow group blogging with untrusted users.

Severity:

Medium (only impacts group blogging sites with untrusted users)

Description:

Insufficient input validation and sanitation in Weblog Category name,
Website About and File Upload features in all versions of Apache Roller on
all platforms allows an authenticated user to perform an XSS attack.

Mitigation:

If you are not running a group blog, then no mitigation is needed. If you
are running a group blog and you do not have Roller configured for
untrusted users, then you need to do nothing because you trust your users
to author raw HTML and other web content.

But, if you are running a group blog and you do not trust your users to
author HTML, CSS and JavaScript then you should upgrade to Roller 6.1.2 and
you should disable Roller's File Upload feature. Roller 6.1.2 is available
for download here: https://roller.apache.org/downloads/downloads.html

Apache Roller would like to thank Srivani Reddy for reporting this
vulnerability.

--0000000000007eebb9060232a16a--

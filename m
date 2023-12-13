Received: (qmail 7963 invoked by uid 550); 13 Dec 2023 14:59:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11460 invoked from network); 13 Dec 2023 14:11:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702476706;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=0upV1CNocKXovuQKcxnjQ8K4ItqbKR7TFk8EVwAqQKo=;
	b=hMVwmM4mDx1gSV+th6S7vBdB1SYLyMVmfW4PO7KoY+c2bD5QGryzMtOv1+T2lL6opaJnWW
	VVZ0KwdvttaDR2a/7lMwIkKHkY1GCpEb8IOjlB/pp9GjvtECTKMVm+JDDN02GocEw71bAN
	9ljon1CDxY0n7KnvNvbEsq8eZr1dM+A=
X-MC-Unique: rh9mFGDtMkKOAKzz7_WIZQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702476703; x=1703081503;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0upV1CNocKXovuQKcxnjQ8K4ItqbKR7TFk8EVwAqQKo=;
        b=rit3jKUgp5tKaYo9bLW6TpHqalt1PVBnJf+7QV2q1cbzCn4hQ446EWOHrj2B+FMVlR
         Zjq1eshG6tBrM2fLlpC4FDd/wknJuSzFVYu6g60w7SY1GhbOVOOJpFzlcdIAFxlfst9o
         +BOGfBzyJxMtqERl6eeCdLYuD59QKKpnx8SLSst0YhrF6Qd4PB8axUWoVg0KttbbxF1s
         fOBQ4RxJqoQ2PVCcpc08fS5eka/TeLXGGlZn+1Q541CojdIN7NrCMc7R65Ru/t6C98b8
         Ni6rnnvGxF607zMrfvrvK0iifdH7k2uo054P+QKai9yruWx9wzVsiJfRL4lBghYByUtg
         MWfg==
X-Gm-Message-State: AOJu0Ywp7FECFHreA5P6vnoblENSvAQd9kvw3am/abKs7TDUbaLXVOYN
	CHbbvY743vd/GS9tB2ApM/GH6f2IQT0aqXtglXyQaRcYwsnZHK66aWqfpmv4B/scdIvJ7trKiD4
	lVKx3OFdglcBhkGqnP5rubTNANmZi4cgRUTvgvy3SSrQ+3nvHEBtf7xE=
X-Received: by 2002:a05:651c:158c:b0:2cc:2751:a113 with SMTP id h12-20020a05651c158c00b002cc2751a113mr3943202ljq.12.1702476703654;
        Wed, 13 Dec 2023 06:11:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEB/cU0K56o6gvp6KI3+P7erVcokngpmlu7M5WG6CQxzp5vfQATOHOqKwHelH8SEOHzk+SSg9Q9ZSORnVPw+pE=
X-Received: by 2002:a05:651c:158c:b0:2cc:2751:a113 with SMTP id
 h12-20020a05651c158c00b002cc2751a113mr3943190ljq.12.1702476703289; Wed, 13
 Dec 2023 06:11:43 -0800 (PST)
MIME-Version: 1.0
From: Jakub Jelen <jjelen@redhat.com>
Date: Wed, 13 Dec 2023 15:11:32 +0100
Message-ID: <CAHrFiA8AHe6mk3cVSubH3b0CH1A=vSqqtmFvcoPwiK2zTQ8RUg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-40660: Potential PIN bypass with empty PIN in OpenSC before 0.24.0

When the token/card was plugged into the computer and authenticated
from one process, it could be used to provide cryptographic operations
from different process when the empty, zero-length PIN was provided
and the token could track the login status using some of its
internals. This is dangerous for OS logon/screen unlock and small
tokens that are plugged permanently to the computer. The bypass was
removed and OpenSC implemented explicit logout for most of the card
drivers to prevent leaving unattended logged-in tokens.

The PoC is available for MacOS screen unlock bypass with Yubikey. The
issue can be reproduced also with a PKCS#11 module and Minidriver if
the calling applications does not bail out on empty pin (For example
with Firefox. The SSSD does not allow empty PIN under Linux even
before reaching out to the PKCS#11 module).

Note, that the login tracking is still useful on the pkcs15init layer
so the second commit restores the similar code block in more
appropriate place which could not be misused to bypass authentication
on PKCS#11 layer.

Affected versions: OpenSC 0.17.0 - 0.23.0

Fixed with:

868f76fb31255fd3fdacfc3e476452efeb61c3e7
80cc5d30635f0d2c92b5099c0f9dc680d0ffce2f

Originally reported by Deepanjan Pal (Oracle Corporation)

CVSS:3.0/AV:P/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H (7.3)



The full release notes for the 0.24.0 is available in announce list:

https://sourceforge.net/p/opensc/mailman/message/58712583/

and on github:

https://github.com/OpenSC/OpenSC/releases/tag/0.24.0


Received: (qmail 7291 invoked by uid 550); 6 Apr 2022 17:02:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3305 invoked from network); 6 Apr 2022 16:58:43 -0000
X-Gm-Message-State: AOAM533gyVeQ8f6nlbAR6SM6Zi8hp8IRoNVlkAPjPeSOTVDlksphpvBS
	fZxE6n/VAL6rHRmfGKaEyjS3giojFaSTk10w+NI=
X-Google-Smtp-Source: ABdhPJyaRrwTt5oU8slRqHkhnZ8SBP1B965xuHSRatAw40/Cl5KvLLoIsVl6tRLHONZRH4rRKEDh3tAu5RxmJkQRLAY=
X-Received: by 2002:a05:622a:311:b0:2e1:c5eb:f52f with SMTP id
 q17-20020a05622a031100b002e1c5ebf52fmr8329339qtw.468.1649264309481; Wed, 06
 Apr 2022 09:58:29 -0700 (PDT)
MIME-Version: 1.0
From: Nathan Gough <thenatog@apache.org>
Date: Wed, 6 Apr 2022 12:58:18 -0400
X-Gmail-Original-Message-ID: <CAEhjM2Bg-NDaUP6-LUM_+a7Q-3MzuZgni0HC4k3eA0oYU-8q4g@mail.gmail.com>
Message-ID: <CAEhjM2Bg-NDaUP6-LUM_+a7Q-3MzuZgni0HC4k3eA0oYU-8q4g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004eb55905dbff4560"
Subject: [oss-security] CVE-2022-26850: Apache NiFi: Insufficiently protected credentials

--0000000000004eb55905dbff4560
Content-Type: text/plain; charset="UTF-8"

Severity: moderate

Description:

When creating or updating credentials for single-user access, NiFi
wrote a copy of the Login Identity Providers configuration to the
operating system temporary directory. On most platforms, the operating
system temporary directory has global read permissions. NiFi
immediately moved the temporary file to the final configuration
directory, which significantly limited the window of opportunity for
access.

This issue is being tracked as NIFI-9785

Mitigation:

NiFi 1.16.0 includes updates to replace the Login Identity Providers
configuration without writing a file to the operating system temporary
directory.

Credit:

This issue was discovered by Jonathan Leitschuh
(https://twitter.com/jlleitschuh)

References:
https://nifi.apache.org/security.html#CVE-2022-26850

--0000000000004eb55905dbff4560--

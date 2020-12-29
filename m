X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["882" "Monday" "28" "December" "2020" "23:05:36" "-0500" "Billie Rinaldi" "billie@apache.org" "<CAF1jEfCZoRW_tJNgz9+X7THYd1Jb2N30MJnGMKk1kv=HK03HBw@mail.gmail.com>" "22" "[oss-security] CVE-2020-17533: Apache Accumulo Improper Handling of Insufficient Permissions" nil nil nil "12" "2020122904:05:36" "[oss-security] CVE-2020-17533: Apache Accumulo Improper Handling of Insufficient Permissions" (number mark "U       billie@apach Dec 28   22/882   " thread-indent "\"[oss-security] CVE-2020-17533: Apache Accumulo Improper Handling of Insufficient Permissions\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17533: Apache Accumulo Improper Handling of Insufficient Permissions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18376 invoked by uid 550); 29 Dec 2020 16:48:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24115 invoked from network); 29 Dec 2020 04:06:00 -0000
X-Gm-Message-State: AOAM530w8fmrEMy1wHRDJ+/lFYEexIpJy5u7gK2+SUG/qRXOi0q553Uv
	cvpaELmExq/xdirxQmBqi8TQFcFopra46uuvjB4=
X-Google-Smtp-Source: ABdhPJx2695KkZPNw4wEjN9xk1tfyBO/Sx065fdvHGqD57uvtVzb/9sLtpw0bbLR77k9P9saQEen1PszQHAaEe/31to=
X-Received: by 2002:a92:d0c8:: with SMTP id y8mr45059945ila.46.1609214747477;
 Mon, 28 Dec 2020 20:05:47 -0800 (PST)
MIME-Version: 1.0
From: Billie Rinaldi <billie@apache.org>
Date: Mon, 28 Dec 2020 23:05:36 -0500
X-Gmail-Original-Message-ID: <CAF1jEfCZoRW_tJNgz9+X7THYd1Jb2N30MJnGMKk1kv=HK03HBw@mail.gmail.com>
Message-ID: <CAF1jEfCZoRW_tJNgz9+X7THYd1Jb2N30MJnGMKk1kv=HK03HBw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000640c6105b79281e2"
Subject: [oss-security] CVE-2020-17533: Apache Accumulo Improper Handling of Insufficient Permissions

--000000000000640c6105b79281e2
Content-Type: text/plain; charset="UTF-8"

Description:

Apache Accumulo versions 1.5.0 through 1.10.0 and version 2.0.0 do not
properly check the return value of some policy enforcement functions
before permitting an authenticated user to perform certain administrative
operations. Specifically, the return values of the 'canFlush' and
'canPerformSystemActions' security functions are not checked in some
instances, therefore allowing an authenticated user with insufficient
permissions to perform the following actions: flushing a table, shutting
down Accumulo or an individual tablet server, and setting or removing
system-wide Accumulo configuration properties.

This issue is being tracked as https://github.com/apache/accumulo/pull/1828

Mitigation:

Upgrade to Apache Accumulo version 1.10.1, 2.0.1, or later.

--000000000000640c6105b79281e2--

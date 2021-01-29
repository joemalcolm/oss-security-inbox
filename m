X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["793" "Friday" "29" "January" "2021" "09:57:45" "-0800" "Jihoon Son" "jihoonson@apache.org" "<CACZfFK5qhiaNND7Tsf4AKG=Jh9Nk4pHKSLKKCmZS7Au6pEgVqA@mail.gmail.com>" "20" "[oss-security] CVE-2021-25646: Authenticated users can override system configurations in their requests which allows them to execute arbitrary code." nil nil nil "1" "2021012917:57:45" "[oss-security] CVE-2021-25646: Authenticated users can override system configurations in their requests which allows them to execute arbitrary code." (number mark "U       jihoonson@ap Jan 29   20/793   " thread-indent "\"[oss-security] CVE-2021-25646: Authenticated users can override system configurations in their requests which allows them to execute arbitrary code.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-25646: Authenticated users can override system configurations in their requests which allows them to execute arbitrary code." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11946 invoked by uid 550); 29 Jan 2021 18:01:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11500 invoked from network); 29 Jan 2021 17:58:23 -0000
X-Gm-Message-State: AOAM530/dcvZuqW4T+bPpFL7X0mIfD8fz61MI+z43k0TSU577v3trpO4
	ftcbPYzypYXyqkiuWKrUXDbHNLgjN7G3owQfj3U=
X-Google-Smtp-Source: ABdhPJxq8RRpcpGKhVCfbXAE/SZzlZSOHzRQvrxPqKEKGBEvPuewvVn2OM4iG+1NMck3HyyGmGmp0U28Ak+3K51UOO0=
X-Received: by 2002:a05:622a:248:: with SMTP id c8mr5169785qtx.122.1611943076118;
 Fri, 29 Jan 2021 09:57:56 -0800 (PST)
MIME-Version: 1.0
From: Jihoon Son <jihoonson@apache.org>
Date: Fri, 29 Jan 2021 09:57:45 -0800
X-Gmail-Original-Message-ID: <CACZfFK5qhiaNND7Tsf4AKG=Jh9Nk4pHKSLKKCmZS7Au6pEgVqA@mail.gmail.com>
Message-ID: <CACZfFK5qhiaNND7Tsf4AKG=Jh9Nk4pHKSLKKCmZS7Au6pEgVqA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-25646: Authenticated users can override system
 configurations in their requests which allows them to execute arbitrary code.

Description:

Apache Druid includes the ability to execute user-provided JavaScript
code embedded in various types of requests. This functionality is
intended for use in high-trust environments, and is disabled by
default. However, in Druid 0.20.0 and earlier, it is possible for an
authenticated user to send a specially-crafted request that forces
Druid to run user-provided JavaScript code for that request,
regardless of server configuration. This can be leveraged to execute
code on the target machine with the privileges of the Druid server
process.

Mitigation:

Users should upgrade to Druid 0.20.1. Whenever possible, network
access to cluster machines should be restricted to trusted hosts only.

Credit:

This issue was discovered by Litch1 from the Security Team of Alibaba Cloud.

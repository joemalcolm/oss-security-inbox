X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1441" "Thursday" "30" "November" "2017" "17:15:47" "+0000" "Keith W" "keith.wall@gmail.com" "<CAFEMS4vaXWPFXqDk-PnhURiFRLTkOx=mL6RmxzAMC59-gxNi9w@mail.gmail.com>" "39" "[oss-security] [SECURITY] [CVE-2017-15702] Apache Qpid Broker-J Authentication Vulnerability on HTTP Ports" nil nil nil "11" "2017113017:15:47" "[oss-security] [SECURITY] [CVE-2017-15702] Apache Qpid Broker-J Authentication Vulnerability on HTTP Ports" (number mark "U       keith.wall@g Nov 30   39/1441  " thread-indent "\"[oss-security] [SECURITY] [CVE-2017-15702] Apache Qpid Broker-J Authentication Vulnerability on HTTP Ports\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28243 invoked by uid 550); 30 Nov 2017 17:17:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26405 invoked from network); 30 Nov 2017 17:15:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=GF6HZDvg4jF9WGiP5b5WhnRHQFcyAczQbdrhqIxnhI4=;
        b=vCOwsimiZBy4GE3VN1e1Ox4mYv863T2vNYzvHaVYg6ocHllX2cncuIWQO7ciuuk5G2
         icwdUUv7MvlotjxzO7v1D0J+a5YnakDuDvbtmhW0mcw8WQ9v/tS+pd7rEkGe+z56scMb
         W2vulnYV1lnbAcJsCzcnGDfKgvPZL5I5+Ob07PdG2kRA5CSwwG5F+mzUwGlD4l8UL75n
         2Mzuu0e/qhtFoC07r4n2ygctxc38Z2WnHuKxfo3KDOkXi0G7q3pNyRNYWHKobkyh2tqe
         LhQscNYowPX+Co7vqh1M29pTqfJheIjd1DqRDJ9DSdxeaxgib59m5f5V1xOUKuNsfxNS
         p6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=GF6HZDvg4jF9WGiP5b5WhnRHQFcyAczQbdrhqIxnhI4=;
        b=m2mWrIr5nnT/CDPdA52xyslWDNV7yHwy1xpQl/0+wUYj3ybZDmQnHszhDbvWzRuzjZ
         hhOqbtQ8zTfOP3NOf6+JFdc+jL06SU26qJ3rnbG5Pd8Cb88SNv0zZqHRx8TNN72MlA0V
         +41lF3rTCzxnAYDg9SvziBSjKSwYQlHDnLzAtgXzkTJo9uEpxZ0h3JbaymVkuGQskC8/
         DJst4wp/oqUSoS3q6kEKdh9WRjq4oV6DzYUzNwrOIDC0NKY9UCNuT5kYQENp0kwm5lDV
         v8JmDdOg4suGevjp3b9gVZ2wLiKwZL75b2nTZS0a8RZTQym+wEUFNzloMuXB3u+7HW1B
         6t+Q==
X-Gm-Message-State: AJaThX4+i6gxA9G7dkXqQzJjzSgujoJ2oQyUJuYTY6X2+fs5y8JUjmOC
	yloYBf1rru/yQQSG+tBGfOU5t4G3gCkvEiX29qU=
X-Google-Smtp-Source: AGs4zMbnZdmXbK6CcEGelgphdwWSm7lksii9NJTvjEYstmuAvZjUvyH93cUyOBkxpvgxJZS1jMR4hUYFo9cwPi2S2p4=
X-Received: by 10.223.166.103 with SMTP id k94mr2595905wrc.22.1512062148152;
 Thu, 30 Nov 2017 09:15:48 -0800 (PST)
MIME-Version: 1.0
From: Keith W <keith.wall@gmail.com>
Date: Thu, 30 Nov 2017 17:15:47 +0000
Message-ID: <CAFEMS4vaXWPFXqDk-PnhURiFRLTkOx=mL6RmxzAMC59-gxNi9w@mail.gmail.com>
To: "users@qpid.apache.org" <users@qpid.apache.org>, "dev@qpid.apache.org" <dev@qpid.apache.org>, security@apache.org, 
	oss-security@lists.openwall.com, announce@apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] [CVE-2017-15702] Apache Qpid Broker-J Authentication
 Vulnerability on HTTP Ports

CVE-2017-15702: Apache Qpid Broker-J authentication vulnerability on HTTP ports

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Versions 0.18 through 0.32

Description:

If the broker is configured with different authentication providers on
different ports one of which is an HTTP port, then the broker can be
tricked by a remote unauthenticated attacker connecting to the HTTP
port into using an authentication provider that was configured on a
different port.  The attacker still needs valid credentials with the
authentication provider on the spoofed port.  This becomes an issue
when the spoofed port has weaker authentication protection (e.g.,
anonymous access, default accounts) and is normally protected by
firewall rules or similar which can be circumvented by this
vulnerability.  AMQP ports are not affected.  Versions 6.0.0 and newer
are not affected.

Resolution:

Users of affected versions who have more than one port and different
authentication providers configured on them should upgrade to a
later unaffected version.

Mitigation:

If upgrading the broker is not possible then users should ensure all
their authentication providers offer an equal amount of protection.
In particular, authentication providers with default accounts and
those with anonymous access should be removed if other providers in
use require credentials.

References:

https://issues.apache.org/jira/browse/QPID-8039

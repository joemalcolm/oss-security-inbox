X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1036" "Tuesday" "5" "June" "2018" "10:35:54" "-0400" "P. Taylor Goetz" "ptgoetz@apache.org" "<AC205FFE-711A-4E19-AE73-00D404071375@apache.org>" "38" "[oss-security] [CVE-2018-1332] Apache Storm user impersonation vulnerability" nil nil nil "6" "2018060514:35:54" "[oss-security] [CVE-2018-1332] Apache Storm user impersonation vulnerability" (number mark "U       ptgoetz@apac Jun  5   38/1036  " thread-indent "\"[oss-security] [CVE-2018-1332] Apache Storm user impersonation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32732 invoked by uid 550); 5 Jun 2018 14:47:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22263 invoked from network); 5 Jun 2018 14:36:08 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=3Mjs8rcql8V3FR5rkUv0c7AnBiwsEGBTJH8xoJheY6I=;
        b=Q4Y0Hwk/ggTgRkt6dFdDO9S8kN2ym+8X2Er34MPCsaLkeRQInCkeSUAv3zQPcwZRcs
         7nsLksT2qAQ/RrjGgwGgM4XDNF1DmqQJPf2lSptjoo6qB+Fz98eWln139Y72pzWFGau0
         0vg6ONXNC2ZmwqkjMzpFYNZR5lPXa3d9/+7Izq9dbO2pw+xzbcudXjWzLjw2iGZPF1IK
         2Rcl+nj8ILLNJPo/U0qxQKpaGOLg0bXIs1wybaMy9rigMLXN3beMrPrwpZ4fzqEn1C3W
         3Fx7orQRGhX85MJWfWUm2VV9AT+lqWojA0w80tXuJH2CoFEc9beVkcbYqVy3oVx4Baei
         1iXw==
X-Gm-Message-State: APt69E2FOSqM7y0Cd2uPhGq1DgcwxrJtUaeMRQ6Gm/xpnff1mP6c5O1k
	tTyNMI8bu4GjiLdPbUL8KRk=
X-Google-Smtp-Source: ADUXVKLxHsaIizmouB5te2PXCb+XoaQ7E0EHz/L9KTL4PNgkuMQK3vNtXDLK/sX+AAaIyMZ7cRCOsg==
X-Received: by 2002:a37:bdc5:: with SMTP id n188-v6mr21751894qkf.12.1528209356594;
        Tue, 05 Jun 2018 07:35:56 -0700 (PDT)
From: "P. Taylor Goetz" <ptgoetz@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.3 \(3445.6.18\))
Message-Id: <AC205FFE-711A-4E19-AE73-00D404071375@apache.org>
Date: Tue, 5 Jun 2018 10:35:54 -0400
To: user@storm.apache.org,
 dev@storm.apache.org,
 announce@apache.org,
 Apache Security Team <security@apache.org>,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.6.18)
Subject: [oss-security] [CVE-2018-1332] Apache Storm user impersonation vulnerability

CVE-2018-1332: Apache Storm user impersonation vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Storm 1.2.1
Apache Storm 1.1.2

Description:
Apache Storm version 1.0.6 and earlier, 1.2.1 and earlier, and version 1.1.=
2 and earlier expose a vulnerability that could allow a user to impersonate=
 another user when communicating with some Storm Daemons.


Mitigation:
1.2.1 users should upgrade to version 1.2.2.
1.1.2 users should upgrade to version 1.1.3.
1.0.6 users should upgrade to version 1.1.3.

Apache Storm 1.2.2 artifacts are available for immediate download here:

http://www.us.apache.org/dist/storm/apache-storm-1.2.2/

Apache Storm 1.1.3 artifacts are available for immediate download here:

http://www.us.apache.org/dist/storm/apache-storm-1.1.3/

Credit:
This issue was discovered by Bobby Evans of the Apache Storm PMC

References:
http://storm.apache.org/2018/06/04/storm122-released.html
http://storm.apache.org/2018/06/04/storm113-released.html

P. Taylor Goetz=

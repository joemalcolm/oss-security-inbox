X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["371" "Monday" "10" "September" "2018" "14:40:05" "-0400" "Christopher Shannon" "christopher.l.shannon@gmail.com" "<CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>" "11" "[oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification" "^Cc:" nil nil "9" "2018091018:40:05" "[oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification" (number mark "U       christopher. Sep 10   11/371   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17820 invoked by uid 550); 10 Sep 2018 18:52:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9389 invoked from network); 10 Sep 2018 18:40:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=jva1GcyTqDVZrCEci0UtoDYd78nfbr3osgNZu1ntZtE=;
        b=aWshicvyS1081x5fUYlTRZE8S5yjQjX+fUpNzdkliDz0639rZk4URCPFdcAW7eXMeZ
         af16PsW2Wmy6zKgljwu2BuP5u9u6uIDTtHWv9fA/d806NQieI9L5o2d75rIWllHc+B9q
         UqUsNYcFuCyiEYGwh0OpRI/j18r2PO3F5p/jx1++7bMLpVU+618Aiwt9JTIuQMA4PV/7
         GF7IXBQLCP5WNbnKj/pfVgqvUPZTbMywtPy0/uCu22BkYA+jpyefelSuG++Ts4QJMHRm
         KZxi0sX82lnbHbnfe9QWiwKYDw7yUXg2ta7oXLagSOB/XUVgAbLBih7mOhU/RJbnF8Po
         vngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=jva1GcyTqDVZrCEci0UtoDYd78nfbr3osgNZu1ntZtE=;
        b=QYtFHa8Wf2X5QL8fOGAZO/shI46w70MC7CBo0eOr4PMu92v74QynmgucdMkinncQeu
         +CX4quYtJCjouCbVuYti4LiV261f3iyHl0059lFrUrQv30L50lSZlZ4kzu6A09DbntNH
         gCWGGlOg7MwiyjSeEfdXMVca4yv+RC4WC5PT0H0lSBUufa0TC2DswlQTAdBEc6HPgSJt
         ibNCbzJqh9NZ8ccOIbyNkOViQAKfA4+5IIaESNI7GSSeu++I0moHAB3Rdx3CInQ7EgFa
         fVKIlToCg1f9+XDEJFXy4WcfXjfFmJJGA6Pr4yByIt4jbdNgxvk+xUik/jY5Yd0SlzGT
         Ij6A==
X-Gm-Message-State: APzg51CaXQfs2wuzvghDY5hlA8ww6yhiuOUzfbjpeIDiWhp4CdlYWgcT
	oBDGcvchP+qgpWHXrLxa1YByy5NKWdO9V6wWinR7JBHf
X-Google-Smtp-Source: ANB0Vdb4rJuPPOGaUsp1YEkGjsLRjCpkh1MTKlR1/I/s0VfPjRZEvC+FfhHnV/NBN0A5cZEV2/KwfruTfa6pSqEfU/w=
X-Received: by 2002:a81:530a:: with SMTP id h10-v6mr10805438ywb.411.1536604831267;
 Mon, 10 Sep 2018 11:40:31 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: The Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Date: Mon, 10 Sep 2018 14:40:05 -0400
From: Christopher Shannon <christopher.l.shannon@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification
To: dev@activemq.apache.org, users@activemq.apache.org

The following security vulnerability was reported against Apache
ActiveMQ 5.15.5 and older versions.

Please check the following document and see if you=E2=80=99re affected by t=
he issue.

http://activemq.apache.org/security-advisories.data/CVE-2018-11775-announce=
ment.txt

Apache ActiveMQ 5.15.6 has been released with appropriate fixes and is
available for upgrade.

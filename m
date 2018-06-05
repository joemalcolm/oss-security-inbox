X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1251" "Tuesday" "5" "June" "2018" "10:36:05" "-0400" "P. Taylor Goetz" "ptgoetz@apache.org" "<7ACF84EA-55E8-419D-B4B7-BE43C60070A5@apache.org>" "40" "[oss-security] [CVE-2018-8008] Apache Storm arbitrary file write vulnerability" nil nil nil "6" "2018060514:36:05" "[oss-security] [CVE-2018-8008] Apache Storm arbitrary file write vulnerability" (number mark "U       ptgoetz@apac Jun  5   40/1251  " thread-indent "\"[oss-security] [CVE-2018-8008] Apache Storm arbitrary file write vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1471 invoked by uid 550); 5 Jun 2018 14:47:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22378 invoked from network); 5 Jun 2018 14:36:18 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=0+Pk94rkXlG45RRDKdATBmSMPPQ3ljSrqg7eu7+/AWE=;
        b=WOwJvEe480b1LkxH6DY/qC2atDk0hq/EX4odMsZFalLB5UPT3U/Xr7hNDJKfAORMpK
         Jq7gnwWlw0cB1GMZm4cWRwKj6/7pvYYzHukwh11xs0bbRG1V25uQdPh1Bmo88mrNaJhy
         eN7xnS035NK/xSvADp8qaL7Ta/e1XlcHNBP49Uqa7J8Hc6JMrP8lZauQENFnrBz5upds
         GUrdwj2rAOktoCUqant9ThbiQVjaTNpfbYGtfj8AGElSZ0Y2glJETbmPLjOIbBzDyKWj
         Zn1ApdGOZk6HYPKkcWRouZluekWC1X4aHX9CpnexMwH2gPMZ2vkB4Prza55TDu30lgU1
         hjFg==
X-Gm-Message-State: APt69E1tvcNcjwgAu+jN23ZbRo1nZ/sq0gHUNXG5Vsrj89Hnpcl73V11
	Pd6P7QQECMwne+rZ889OczQ=
X-Google-Smtp-Source: ADUXVKLWtBwolx2aRWiguc5WobO7otQopRqpyN+t2Juh3Sg4Vo9O4usXYPkRQMy1Icpx5I/jipR2CQ==
X-Received: by 2002:a0c:d972:: with SMTP id t47-v6mr24109434qvj.128.1528209366429;
        Tue, 05 Jun 2018 07:36:06 -0700 (PDT)
From: "P. Taylor Goetz" <ptgoetz@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.3 \(3445.6.18\))
Message-Id: <7ACF84EA-55E8-419D-B4B7-BE43C60070A5@apache.org>
Date: Tue, 5 Jun 2018 10:36:05 -0400
To: user@storm.apache.org,
 dev@storm.apache.org,
 announce@apache.org,
 Apache Security Team <security@apache.org>,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.6.18)
Subject: [oss-security] [CVE-2018-8008] Apache Storm arbitrary file write vulnerability

CVE-2018-8008: Apache Storm arbitrary file write vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Storm 1.2.1
Apache Storm 1.1.2

Description:
Apache Storm version 1.0.6 and earlier, 1.2.1 and earlier, and version 1.1.=
2 and earlier expose an arbitrary file write vulnerability, that can be ach=
ieved using a specially crafted zip archive (affects other archives as well=
, bzip2, tar, xz, war, cpio, 7z), that holds path traversal filenames. So w=
hen the filename gets concatenated to the target extraction directory, the =
final path ends up outside of the target folder.

Mitigation:
1.2.1 users should upgrade to version 1.2.2.
1.1.2 users should upgrade to version 1.1.3.
1.0.6 users should upgrade to version 1.1.3.

Apache Storm 1.2.2 artifacts are available for immediate download here:

http://www.us.apache.org/dist/storm/apache-storm-1.2.2/

Apache Storm 1.1.3 artifacts are available for immediate download here:

http://www.us.apache.org/dist/storm/apache-storm-1.1.3/

Credit:
This issue was discovered by Snyk Security Research Team

References:
http://storm.apache.org/2018/06/04/storm122-released.html
http://storm.apache.org/2018/06/04/storm113-released.html

P. Taylor Goetz=

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["982" "Tuesday" "21" "March" "2017" "20:34:17" "+0100" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do5JY9-nP-Fqecf8dfPCO8A_ruz2Ff578thrvwYQ_D8=1A@mail.gmail.com>" "32" "[oss-security] subscription-manager: CVE-2017-2663 unsafe dbus interface" nil nil nil "3" "2017032119:34:17" "[oss-security] subscription-manager: CVE-2017-2663 unsafe dbus interface" (number mark "U       cbuissar@red Mar 21   32/982   " thread-indent "\"[oss-security] subscription-manager: CVE-2017-2663 unsafe dbus interface\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13826 invoked by uid 550); 21 Mar 2017 19:34:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13804 invoked from network); 21 Mar 2017 19:34:50 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=crvhtZzHYZzzgNoyTya++Uq/jE4Cr9E31eSBN8xHVc8=;
        b=pFHRv1NhEZrx7nX4ss3jvNQMMknU2NKjqMPYxeFghprkdeGCr6etEikgEup0R95Td8
         QeWj0g3N+v5M+bT9Mue7J3RHZiQS8jk0mmxXCKVtX8Fq1wqRvKfVQETy+ECXVZ91tqw2
         g+mZr9baXzk7x3ywWdxiC8kM60dRVvWzRka0BPea/tG00UwGIS4a6+EZuAhEQr0+JgCo
         2ca0f4uUNPkvttBT1ysYs4g24aHgQSnI+Mpf9uzcHM3Fs2wdYQrVfbcSxOdsTGjsnzdG
         ut2rP6xHYidOT2zKoiTxx8CImoY364wA1Hu/fHRymMtSfl9eRVLRXQ0d7bLi1HiaQOZA
         0JvQ==
X-Gm-Message-State: AFeK/H1VIsd5vkvuLIJESuplRCbvhxR1E6LZZ5aWmSOgezoCFkTQ3ELx3V2gNPXEInnfeAqg+/Fh2R+IwiAa5bJX
X-Received: by 10.13.216.195 with SMTP id a186mr7070269ywe.128.1490124877981;
 Tue, 21 Mar 2017 12:34:37 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Tue, 21 Mar 2017 20:34:17 +0100
Message-ID: <CAKG8Do5JY9-nP-Fqecf8dfPCO8A_ruz2Ff578thrvwYQ_D8=1A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114e3f2e05fe01054b42bc8a
Subject: [oss-security] subscription-manager: CVE-2017-2663 unsafe dbus interface

--001a114e3f2e05fe01054b42bc8a
Content-Type: text/plain; charset=UTF-8

Hi,

CVE-2017-2663 has been assigned for the following issue :

Subscription-manager's new DBus interface provides methods that can be used
for malicious usage. It allows an unprivileged local user to have access to
information known to root only, and/or to modify subscription-manager
configuration file, allowing, for example, privilege escalation.

-> Upstream patch :
 * Lock down Facts object to be accessible to root only.
https://github.com/candlepin/subscription-manager/commit/882bb587a
-> Followed by this one :
 * 1434094: Deny D-BUS Config.Set from non-root
https://github.com/candlepin/subscription-manager/commit/afa0f7afee

Affected versions : from subscription-manager-1.19.0-1 (information
disclosure) & subscription-manager-1.19.3-1 (configuration modification)

Fixed version : subscription-manager-1.19.4-1


Thanks,

-- 
Cedric Buissart,
Product Security

--001a114e3f2e05fe01054b42bc8a--

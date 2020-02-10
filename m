X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1819" "Monday" "10" "February" "2020" "13:49:30" "-0800" "Andy LoPresto" "alopresto@apache.org" nil "43" nil "^Date:" nil nil "2" nil nil (number mark "        alopresto@ap Feb 10   43/1819  " thread-indent "\"[oss-security] CVE-2020-1942: Apache NiFi 0.0.1 to 1.11.0 information disclosure in logs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1942: Apache NiFi 0.0.1 to 1.11.0 information disclosure in logs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13868 invoked by uid 550); 10 Feb 2020 22:15:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32412 invoked from network); 10 Feb 2020 21:49:44 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=4nXXwMCj1jhi/5+6AgDge5jPYM1NZQWyBB+sS+Trqso=;
        b=DAgFKA88KdEdPEz9hkbO0+9SX6BNgG2Kb3Oaq6Om53naAzy1nsCrNfLFsuurCPfyWM
         bVOOUYtbciEsOCFqiSSTUdU4zu5EaMZ6QvoyuSJifsjMB/fNIK18Wkms++tfE+F1jBha
         8Z9r8goBvKbeEk0WvlUoZsI15hgcfY2q3AkGtsyje6D/N5q3RXwgfA56p+HQ3IGIe4TB
         3nhX6G81Fgr1Us3rh3AXGcQyL6TxaDEcZCag3VB47pYxgtHXoFQVB5u+n3wz6S/c9qQ6
         +u5u4WGGafjEIX1eGwWpDsd93OULq3WKjFfcdObLODp5KRaHxHsOpu8yqGCAmYDHE4ax
         tVVA==
X-Gm-Message-State: APjAAAWKPO8b1ibAoV8xD1RtdaZfuoWXZhzyRj4h+3bKG2aSi0VPy8vf
	MHQSB1ElQy4jsKrT7CZHocdxs+ca
X-Google-Smtp-Source: APXvYqykOdzko1WHGNJFu1/QhG54vCZQohaLM4UgfH4nZ0EfW1TuaeOjyHc5neuaTYjqmurhjeOhQA==
X-Received: by 2002:a17:902:161:: with SMTP id 88mr2913565plb.129.1581371371744;
        Mon, 10 Feb 2020 13:49:31 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_42DC1E86-174C-4CF1-97F4-99203FBCF0CC"
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Message-Id: <CE6967F1-2CD4-4A6E-89CF-75B2FE817EAE@apache.org>
X-Mailer: Apple Mail (2.3445.102.3)
Date: Mon, 10 Feb 2020 13:49:30 -0800
From: Andy LoPresto <alopresto@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-1942: Apache NiFi 0.0.1 to 1.11.0 information disclosure in logs
To: oss-security@lists.openwall.com

--Apple-Mail=_42DC1E86-174C-4CF1-97F4-99203FBCF0CC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

The https://nifi.apache.org/security.html <https://nifi.apache.org/security=
.html> page has been updated with 1 vulnerability discovered in previous Ni=
Fi versions which has been resolved in release 1.11.1. The severity of this=
 issue was determined to be =E2=80=98important'. Questions about this vulne=
rability can be directed to security@nifi.apache.org <mailto:security@nifi.=
apache.org>.

CVE-2020-1942: Apache NiFi information disclosure in logs

Severity: Important

Versions Affected: Apache NiFi 0.0.1 - 1.11.0

Description: The flow fingerprint factory generated flow fingerprints which=
 included sensitive property descriptor values. In the event a node attempt=
ed to join a cluster and the cluster flow was not inheritable, the flow fin=
gerprint of both the cluster and local flow was printed, potentially contai=
ning sensitive values in plaintext.

Mitigation: Implemented Argon2 secure hashing to provide a deterministic lo=
ggable value which does not reveal the sensitive value. Users running any p=
revious NiFi release should upgrade to the latest release.

Released: February 4, 2020

If you identify new security issues within the NiFi 1.11.1 release, please =
forward your report to security@nifi.apache.org <mailto:security@nifi.apach=
e.org> and do not disclose the issue publicly. The security vulnerability r=
eporting and disclosure process can be found here: https://www.apache.org/s=
ecurity/committers.html <https://www.apache.org/security/committers.html>.

Andy LoPresto
alopresto@apache.org
alopresto.apache@gmail.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


--Apple-Mail=_42DC1E86-174C-4CF1-97F4-99203FBCF0CC--

Received: (qmail 7627 invoked by uid 550); 16 Jun 2025 17:14:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3299 invoked from network); 16 Jun 2025 15:33:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=maennchen.ch; s=google; t=1750088029; x=1750692829; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KlBpc3WnHX0nbNjMKD9Xn89rMl9bylP6PcCnBrntmpw=;
        b=SntzZA/ycpmhfAsCkLnLPjg5XIRQsMRsGfTdZ0UDaSjEqRCTglXDXnDSFlef3aYQys
         SOfV8pFRotGcK0sgqf/RDwRrvTXHIpPOj2pv6LwFKM0ygW52gXVa+/PTB9TprFfDre6f
         +1/GTI3/RZdWbajy2rKWgMr8KjRCaV6N3KZVEyvwX5yIlNYyV1G81KMJazZZKjjAStXj
         qcpoTwSPnGclNsEOn4BuIE+2Xref0carM5GZYKCIsBWWGld3ClZU594EPKj25OK0pAWl
         dA/Gkv10QKPsFM98xZJvi4SZC2ZTc0orrz5yCDSZazrN0wKm3Uqj3mIiomoM91kJL9uW
         OR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750088029; x=1750692829;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KlBpc3WnHX0nbNjMKD9Xn89rMl9bylP6PcCnBrntmpw=;
        b=O/8CIRi/dKu3XGN357ppuf7H18vYkVdm0WPlF7MM/5dgEuwLPbxaAD54J1xGt66OPs
         e5mmo3nLCj4shXVA5a/zjIERv/bAbXlHRINpVFxF2Pp5pVsB8+TV8hA2ibAbSiYqBASM
         XnHNduIJTHy2LsHmvoxWc7tgzV3iPN9z26jSCXJgFmb6bhthmM7xEZucbs5h3LNV4NFZ
         FXdKmPc4U9Bh5RKpENQNiwfEjC5KXBixHxp3YRFPx98ZpaknOC3v1i6fgJLsGHVZJUCl
         19+kAFCaVU9JZCHqrCPfvs85H3p3Le88uSZb075EZPz1DlxGuoYNRkP31d0oxCgsqolj
         1cJg==
X-Gm-Message-State: AOJu0Yycxst7/GqauBO5rxwcy8lOGj9uGYaLplU6DaqyOl3AM2B57K9F
	dmSfRdlFee+K6FttQbxEnPvn0qBBvNjc+hRloipT7AJDqBnitk45H/Dyl2DuItRZsf1NbXbWiuc
	iphBbugeFoNWLPkkSVCY8guMqmh0V67zge/t7aPPXv3U83Ma+NDW/3FEpIw==
X-Gm-Gg: ASbGncsd3mwWwQINX7WVuBozkUQ8g5WJrez80yVyH6xIjIu1XF85WEkXhruGq3fMdNR
	UZFd9IAAigse8N+LhprPmLbt5Itf3elUYnWvLRdN2V3S3OEQ/4qlIKsTmP7A39kAvdBF4kgSZtb
	Grne8MVNNJoY9hnM2KmpoKbqdOwhFSEWDvhGENaoYd/vaazQSvkzDPx4kVgHxnk4U12R7uUuVb
X-Google-Smtp-Source: AGHT+IEy/PmmhAgWfbC2kBwqMlU7Tf5ICml8OZuKZjEf8Jh++ozrxxRlHUCUNl912lc56xL+0QO3f23wjZDi8zOX00w=
X-Received: by 2002:a05:6a00:ac3:b0:736:89bd:ffb9 with SMTP id
 d2e1a72fcca58-7489cd5b5b2mr4592379b3a.0.1750088028859; Mon, 16 Jun 2025
 08:33:48 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Jonatan_M=C3=A4nnchen?= <jonatan@maennchen.ch>
Date: Mon, 16 Jun 2025 17:33:37 +0200
X-Gm-Features: AX0GCFskLGC2-qUS3x2sH0t9glVX3bWXPjsuuViGn-dB8efql5yMlfbZ40Qxr24
Message-ID: <CACupubOH0Lbk0f001JiFmdCn6mCvgUZ14KR2RUrVXK--7fyffg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] =?UTF-8?Q?CVE=2D2025=2D4748=3A_Erlang=2FOTP_17=2E0=E2=80=9328=2E0=2E0_absolute=2Dpat?=
	=?UTF-8?Q?h_traversal_in_zip=3Aunzip=2Fzip=3Aextract?=

Hi all,

An absolute-path traversal flaw has been found in the Erlang/OTP
standard-library ZIP routines `zip:unzip/1,2` and `zip:extract/1,2`.
If the caller does **not** supply the `memory` option, archive entries whose
file names start with "/" are written to disk verbatim. An attacker can
therefore create or overwrite arbitrary files writable by the Erlang VM. The
issue is tracked as **CVE-2025-4748**.

### Affected releases

* 17.0 up to 28.0.0 (fixed in 28.0.1)
* 27.x up to 27.3.4 (fixed in 27.3.4.1)
* 26.x up to 26.2.5 (fixed in 26.2.5.13)

### Impact

When the zip module is used to extract files to disk and the archive is
maliciously corrupted by including absolute file paths, the zip module would
extract them as absolute paths instead of stripping the leading /, drive or
device letter.

This vulnerability is associated with program files `lib/stdlib/src/zip.erl=
` and
program routines `zip:unzip/1`, `zip:unzip/2`, `zip:extract/1`, `zip:extrac=
t/2`
unless the `memory` option is passed.

### Mitigation / Fix

Upgrade to one of the fixed releases listed above, or cherry-pick the upstr=
eam
patch. The patch is available in unified diff form at:

https://patch-diff.githubusercontent.com/raw/erlang/otp/pull/9941.patch

Until you can upgrade, you have two work-arounds:

1. Pass the `memory` option and perform your own validation before writing =
files
to disk.
2. Call `zip:list_dir/1` first, reject archives that contain absolute paths,
then proceed with extraction.

### Credits

* Reported by **Wander Nauta**
* Patch by **Lukas Backstr=C3=B6m**
* Reviewed by **Bj=C3=B6rn Gustavsson**

### References

* Vendior advisory:
https://github.com/erlang/otp/security/advisories/GHSA-9g37-pgj9-wrhc
* CNA Advisory: https://cna.erlef.org/cves/cve-2025-4748.html
* CVE record: https://cve.org/CVERecord?id=3DCVE-2025-4748
* Patch PR: https://github.com/erlang/otp/pull/9941

Best Regards,
Jonatan M=C3=A4nnchen
CISO @ Erlang Ecosystem Foundation

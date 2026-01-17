Received: (qmail 14007 invoked by uid 550); 17 Jan 2026 19:47:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5843 invoked from network); 17 Jan 2026 16:29:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768667343; x=1769272143; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yf/i5oKxatTS+JdkydnXYC0/60pPeaXyfzVE1hPqURE=;
        b=fqPRFHBQN/Bb7ofYBYEXb02kA9BcxFooIfmaQLGUkHcvdzNGzE1MaGCw4nVP9ss+Rk
         BtojXgHLadiMYI4QlFIYbejGNI2j5iXuNDbcRznvZKJPvQ/LA242JCRod91DY4WcpoqE
         k6pW1w8p9SZHJlL35vJ+HhwgoahgywZd2nEGVNJIqGSI8T/+8hwG/PQneQvXNXZ85qFP
         SHe2m8fag0dtpb5+Oh9S1nMuhcdwCypMUJ8VKSRXDBWhxDuf/S8mh+yki8hRjLGHg7N0
         DnIdwIKaSTFtSwPM7yrg2sYqLB+ANUDbyE5Jvz3KIdAuHjyMBIvjE2V3N+pef/jmIKv/
         XggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768667343; x=1769272143;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yf/i5oKxatTS+JdkydnXYC0/60pPeaXyfzVE1hPqURE=;
        b=Xo2ND9tvUSXMOcWPYD5qY+vJP8ppeNfd9X011/0rEEAKG+LeCXIuRlj7PPIg1Ceas4
         T1QQAC3yHThQNiYRA/r9AjzQGwd87dY9na6ls4Bt5hslIJImqcewx+3yWaC+J/zu/0WU
         fh1MuJfdHsC4UuXOY9lbqto67REz/4uI9Qh7WsBdpJnr77Jj22yA+kU0g3uJVQezGILU
         iIcT4xrxC6wp2iBWLOL6Rut9w1FDFfH8oBsZ+lbtFWzDABWnRBb/WxBU+j3vRet6pzmJ
         YowZXIIuAPuhZxdEGtqAfpsNHnpTv3Idl4Uv+DJ+QLOWXGZr9y7ob8oajUdaiDUB2bln
         XZug==
X-Gm-Message-State: AOJu0Yz7S2gMdYlP9hmgU7+UH2crHFwM4SSywe9VKOrrULg7AC4QwMsq
	XP8hWrmhGWdWCscdav0reXUojd5mS1I1FiZhx6nFn0KNRvP3dhN/nBaGyoRWD2kgGlT0jpmE9Ey
	Mql1+8Qn3wdmgIFBRcrzXA2wXXR0rMzRN8xb0zuc=
X-Gm-Gg: AY/fxX5JiI/BH84C2X3TxEeiAlApil/fd5xu/noh9M+ArEZ9KunUeV+Iblev9azfBI2
	qmNEGV3T6vLX+5/AXh4PgCv/Gfy0BZya7eE5gw8oV38YepSfFJeK2rFQcIfaDjrVFrKJ6Y4JbeP
	dFGFY/e3v3m1qsON/r+pMps42DdDqolIu82LUDgttf0U7mJCfQubYZ26/EuQJJT9L7ibkIbNX1H
	ZMvH3o1hFs3wJIw5bbRmZ26NfjOfr3otQ1jEzM/GwQVWeN8CDtLapFIVT3XcB8Xw0CWn007Vw==
X-Received: by 2002:a17:907:7282:b0:b87:4c37:7fd8 with SMTP id
 a640c23a62f3a-b8796b953bamr495938866b.49.1768667342658; Sat, 17 Jan 2026
 08:29:02 -0800 (PST)
MIME-Version: 1.0
References: <CALj3r0jnYcmJ9-ymGs1X3_t7=9OV6UbvVJ7nmiuXpfe+9yN9Tg@mail.gmail.com>
In-Reply-To: <CALj3r0jnYcmJ9-ymGs1X3_t7=9OV6UbvVJ7nmiuXpfe+9yN9Tg@mail.gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 18 Jan 2026 00:28:51 +0800
X-Gm-Features: AZwV_QhAwx1bXQSKyR5kNYfE3sQXEb5hKNQB1n6mAc8O7oOoJMeNcwdCGdvDVn4
Message-ID: <CALj3r0garTYmNZeTJaKUcpUUaxiv+-5nWfaihikxRBrFSXOt7A@mail.gmail.com>
To: oss-security@lists.openwall.com, security@suse.com, 
	team@security.debian.org, secalert@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: CVE-2025-68121: Regression and Incomplete Fix for Go TLS Session Resumption

Correction: The current official patch is not CL 735051

See https://go.dev/issue/77113

Coia Prant <coiaprant@gmail.com> =E4=BA=8E2026=E5=B9=B41=E6=9C=8818=E6=97=
=A5=E5=91=A8=E6=97=A5 00:20=E5=86=99=E9=81=93=EF=BC=9A
>
> Hi,
>
> I am the original reporter of the vulnerabilities recently addressed
> in Go 1.25.6/1.24.x (CVE-2025-61730, CVE-2025-68121).
>
> I am writing to inform the community that the official fix provided by
> the Go security team is critically flawed and causes significant
> regressions in the networking ecosystem (notably breaking quic-go).
>
> 1. Missing Root Cause in Official Advisory
>
> The official advisory attributes the risk to "misuse of APIs," but the
> root cause is a fundamental logic error in Go's TLS 1.3 state machine
> during session resumption.
>
> Specifically, it fails to re-validate the identity of the trust anchor
> when a session is resumed, allowing for Cross-CA certificate bypass.
>
> 2. Flawed Patch Implementation
>
> The current official patch (CL 735051) contains amateurish errors that
> undermine its effectiveness:
>
> Incorrect Indexing: It attempts to verify peerCertificates instead of
> the verifiedChain (that include RootCA).
>
> Ecosystem Breakage: By aggressively blocking Config.Clone logic to
> "fix" the issue, it has paralyzed 0-RTT and session resumption in the
> QUIC ecosystem.
>
> 3. Proposed O(1) Solution
>
> I have proposed a far more elegant solution that performs a
> constant-time SHA-224 fingerprint check of the root CA.
>
> This fixes the vulnerability without breaking the Config.Clone
> semantics or performance.
>
> Details and Discussion:
>
> https://github.com/golang/go/issues/77217
>
> I encourage downstream maintainers (SUSE, Red Hat, Debian) to review
> the fix before deploying it to mission-critical infrastructure.
>
> Best regards,
> Coia Prant (rbqvq)

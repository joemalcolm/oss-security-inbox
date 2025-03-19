Received: (qmail 20107 invoked by uid 550); 19 Mar 2025 00:56:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5637 invoked from network); 19 Mar 2025 00:19:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chainguard.dev; s=google; t=1742343540; x=1742948340; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dS20baTqgZNEdpi9Nj2NXrOF82fBUrjq/rapXdCtFJY=;
        b=jxcMrTc9ig3HwObwoSCHbLgfChFwMbtQNyap/UM4rBYbcc/e5MdNaV/6vRoCW0lPVc
         1gf1Ul7N6uA66bXvfVKRYG/Z2idC7CsgPwoWuh6HBycnEUztGeK0UIsGBIgVTbCRoHOU
         nQNbUMAFOx7vCWAcEpkmAa1NVej0OEcJVerythEQgwjHdgW/0P6GjLSeBYgRNvOULiY6
         fzziDbu4PpkGR85ZdSDrabUH3Fp6w/WhRaVPDelgTr6B+YytU50SrX7kKy0duUxcpFFW
         qYcg2F6Eh1k/2VI85tQX/r/sQDMWI84zan/Ural6JRLeLfLOanCE/1GAgxrc+WLptHU1
         8Bpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742343540; x=1742948340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dS20baTqgZNEdpi9Nj2NXrOF82fBUrjq/rapXdCtFJY=;
        b=xABI7nsLiAh8H1LOI9DgyYZg+xnMuAL+e7GszhHiZHYxmHLjLefhK/8EqzEGzc1wUB
         sj6/sStVuXoRmj4k6YSmLpTDQ1SkjIiHe6r32cVpBqie00otzPGixyK3zQlnu0tVQgw6
         jmLNIgef9cg7sq+x5sIRfr/Kxhjm45SzYTtPS5EWiB75VvktxHJjoKrnFJ71LBEdIb8p
         hJWalW+drBgnqUie44nJQuceAuwdFJXTqfpvU5RdgBDnNM6FdXOzcFOV1NdK0Uo4llT/
         7jMemfAUiVhxEEEsGWOqJHZ4gLceLYbOTZ+xYDpl4lmuA7XjDWxY3n7hxjmZiJsIRaue
         l93g==
X-Gm-Message-State: AOJu0YwkE2AyMjaGBJGH6AV4SkAixcZR8DSErZwDV7hM+j8eSt2b66up
	mIugz4jfeQTuZutHfZw7Zuppwqbnzwzsc1C3HXLByX0XGo2zj3DfasbPsvGYdKMy1+LOiZGbgHp
	ePfr2/i4l/mllLKIAoksDPFbnjDwenjfzHAOm0JITEuTuF+hgu00=
X-Gm-Gg: ASbGncuznyKcx3tq9yCxSTWZtANfuV7B285m7xZlEdtDhN7nf30G7VFLTGSgQZCA9lI
	LmhGaWgV24Dlno2rjxbjsvyDpK84piYrRayXr3ePDC0i6Fui+rJz8O2WrSTYstFIbMWwsfdkNf8
	5TFkXqxhLeraYLZZbeq16gPMjCUID3jW0TBn5w9s8=
X-Google-Smtp-Source: AGHT+IEqdaOenWF5XHYxUORXzGIRmnRNA95i4J7hzupUk6otIqxDivEJW2oRwIASug95E91ZNnUKlBuJ9kkmcoyPS8g=
X-Received: by 2002:a05:622a:598f:b0:476:8595:fa09 with SMTP id
 d75a77b69052e-47708378529mr15089051cf.40.1742343539750; Tue, 18 Mar 2025
 17:18:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAK84RTWeQW-+SAFR5V+Y_utGT8U30NaoVxYu+7CfZz18EQ0Vag@mail.gmail.com>
In-Reply-To: <CAK84RTWeQW-+SAFR5V+Y_utGT8U30NaoVxYu+7CfZz18EQ0Vag@mail.gmail.com>
From: Mark Esler <mark.esler@chainguard.dev>
Date: Tue, 18 Mar 2025 17:18:49 -0700
X-Gm-Features: AQ5f1JoAG8EP2u26klLLTjAMkL3-a0rrZekYBdqHNpayRlGiPnfLXtSuOgxc6nI
Message-ID: <CAK84RTW=9jD8N83fRbx2F4ho4Z94NuyYDo9DfQPn6Yk4jKWTFg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Evan Gibler <evan.gibler@chainguard.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: tj-action/changed-files GitHub action was compromised

Evan (CC'd) wrote tooling to detect tj-actions/changed-files compromises ov=
er
the weekend.

tj-scan is now public and aims to help others review logs from their private
and public repos for leaked credentials.

https://github.com/chainguard-dev/tj-scan

Mark


On Sat, Mar 15, 2025 at 12:03=E2=80=AFPM Mark Esler <mark.esler@chainguard.=
dev> wrote:
>
> On March 14 2025 at 16:57:45 UTC the tj-action/changed-files GitHub actio=
n was
> compromised with commit 0e58ed8 ("chore(deps): lock file maintenance (#24=
60)").
> This commit was added to all 361 tagged versions of the GitHub action. Th=
is
> malicious commit results in a script that can leak CI/CD secrets from run=
ner
> memory.
>
> The compromised action has been removed from GitHub.
>
> We are discovering open source projects which are using the compromised a=
ction.
>
> StepSecurity [0] and Semgrep [1] posted early analysis.
>
> Cheers,
> Mark
>
> [0] https://www.stepsecurity.io/blog/harden-runner-detection-tj-actions-c=
hanged-files-action-is-compromised
> [1] https://semgrep.dev/blog/2025/popular-github-action-tj-actionschanged=
-files-is-compromised/

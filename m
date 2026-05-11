Received: (qmail 17697 invoked by uid 550); 11 May 2026 18:09:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12203 invoked from network); 11 May 2026 17:56:01 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778522152; cv=none;
        d=google.com; s=arc-20240605;
        b=NNbEheJsovwgf2duLvk8ZV+S1aKe3/snL3dTq/lU4gt1vB2931l4TM4mlqZQix2yOS
         Xzb5mjKd5dHN+Xz0ZEQ9upcTQNGHQ1zvPNaKMpHrGZeXLmo9fMP0Oe8PRMc1SU3lmMIM
         lOeHaJmRy4sy0YHholfCyWJQWJYDk311gFna60euNneSapzgh71bjdJKmmeQ/3eCIcVR
         6IFKEzh7bFAMZOnif4YM+64dSrsToQwSKl6h7JBRksP89RuiTij+mOnV41p6tIzLGsnQ
         dmJ9H48EJzGIDAUN/CrLjwMFF8UFf7vM+XaSBxTd3QuyNse9+IzXDtZKN9k7Ei/Ay6wF
         gJdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=9HtbXVfuvJ5Gh/C/Zg5asjJLEXc4+vGDQPtm0asnyuI=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=Q3+lT9hvnBk9Kd6quRByWyez8UR0FtWcBlIPp0pN0luPwB1DuuJ0jZqp09Qcs6ikGV
         pRGyn3yoZK8cEQGgA7lLileMxGv632C6aJ7rLB0WyH9ekLrcuQDYrD7YET1mrRHqbj2Z
         CVlvWuCzxaFVakAOYYvSieBvWotdKMiw5abznDIkw3eiCukydckzTSg90z0JxwXwIxBE
         K+iGE0S4Pt2qta+kUlK71XUuWbi+I+AOCDbZ8ApUjyAlE01KYF9iVKzajpS3VpyvTgj0
         HdNRXqtV3lXsv7u5u5riMoOiP3sGnaT9ffvphRFu4n0USpdvauM4s+LOXMtLiXDDuTnS
         OvWA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778522152; x=1779126952; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9HtbXVfuvJ5Gh/C/Zg5asjJLEXc4+vGDQPtm0asnyuI=;
        b=joJyXe2clmNwLPVdF5Mr2ihpS4q4tkRgOrSvTOvVMY+LSuxRsMxMwLXpFvGwEYHPlm
         kzxJGVq6kFyMG0vYdSPLhCkotT0+REHMdhnYqzBf4aQ31ey6+Ov8K6LL9PEigg+e1Hj/
         5EzPd/CMU2LlRf/B80q51yNlB8t58mvvns/g2Rlu3xxTGTe+yTbT6mJaIJtmt3gj+aEa
         3txKc+25C3TVJrCMyNWDCbJS8wg/nXFGmsEI5V0HK0046obWWrVASenPZSDNhN+GOsm9
         frb4KL9tM4BOCAvCIbt9sAlZ8vFCTudmzNG0cl5qckAYX/U3E+2qUe68aZU1pFOKKcgd
         7Zvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778522152; x=1779126952;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9HtbXVfuvJ5Gh/C/Zg5asjJLEXc4+vGDQPtm0asnyuI=;
        b=T7v0gl+nDGn3fwPmHDpb4ri+M/R5lQOrmaIptTP4oV6+mU9pZB/vflOx0ru3nCLzAA
         WCmGAi4VvQvtLr3AC8eVXSyHAdBDwKm6zwsq5gLJTCz3om4jO9kPgkcRZLvcSlCJTeO/
         acF/941Fit1C22g1gm/ecpSOGo8aBLBDOUhOaOr9uqDi/GZ00SCMfqLsELnBQ+CH/GSE
         iNZqv7wxbpdvYEcQWg7361JvCKyDHrsYZ+TapkMYiwARyqeyziXWEvFzc7WBDdo0Gd2O
         H6zUht8apwZI4YI+egQm4h5SJ086D0ozJuR4HptYyqVqX/Ni+o6k4dBE/YKQNjtV9/XP
         YGKw==
X-Gm-Message-State: AOJu0YwrWyexX9crWPIJA2UouRADJda0nUwinUpXJpYPrpyuS5O8T+I2
	XRWoedayc92KWdaZHYM7VcZYn4kNZIP72BAOf6tAv2GMHeodOf2rH7uNkGwS0j9iS0F+cuceVic
	82LhPs2rKh24E73jjwRLU2VahcVR8lCVJtDsc
X-Gm-Gg: Acq92OGrqtO8PZy2WICmVyYWsjdyEnsMUS7Ilu7MFJ02TYTOJn/t2uOM9JveHOYSwyu
	KSLbGWqawve/a9inrm9q3GkqEgNE9EtVKZqgUrc9bLSY7wADgD5hqfro5NbNj3f9fRR4dlhObQc
	U8aakQMly4X5hmahO0R3OHjWyVcE3Fe8a/+4lWSVtQ4zdo3TSJCKPPCJSxFihYzyID1qDgT9L2n
	pPuib4JIGw0NJLsNsCJrAacrrqAggFQac7eQPpgFK3XbuDr4Qpcg0Dd59knGW3AEWns4UsKXd2E
	hHgEMTi9uWbc+hdtx8R9A9OydOQtQbtNN/81969XMkk/XYf8KqZr2q9IZgjGW+ORPBJQdC4cQA=
	=
X-Received: by 2002:a05:6a20:9195:b0:39b:f026:6f79 with SMTP id
 adf61e73a8af0-3aa5a9a7177mr27279786637.21.1778522151767; Mon, 11 May 2026
 10:55:51 -0700 (PDT)
MIME-Version: 1.0
From: "Emiliano Solazzi G." <coma.retained@gmail.com>
Date: Mon, 11 May 2026 13:55:43 -0400
X-Gm-Features: AVHnY4L9Oe74JC-Bo1y7K16ZyoyZ61s4Oh9LMC_I5swxYzRxgD4FL2zo1QftQUE
Message-ID: <CANZ2odhBX0G_K7UEEsv0=FDWooRO3dyCd+qrvKsvZuV_ODR8vQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000014d3c506518e75c4"
Subject: [oss-security] CVE Request: Fail-open authentication in hathor-wallet-headless <=
 0.38.0 (vendor declined to fix)

--00000000000014d3c506518e75c4
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm requesting a CVE and posting public disclosure for a fail-open
authentication defect in hathor-wallet-headless, the official REST
wallet daemon maintained by HathorNetwork.

Product:        hathor-wallet-headless
Vendor:         HathorNetwork
Affected:       <= 0.38.0 (all releases)
Fixed in:       None (vendor declined to fix)
Severity:       Critical (CVSS v3.1 9.8 -
AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H)
CWE:            CWE-1188, CWE-276, CWE-636
Repository:     https://github.com/HathorNetwork/hathor-wallet-headless

Summary
-------
In src/app.js, the API-key authentication middleware is mounted only
when config.http_api_key is truthy. The mainRouter is mounted
unconditionally on the same Express app. When http_api_key is unset
- which is the shipped default in config.js.template, config.js.docker,
and the Dockerfile that EXPOSEs 8000 - the daemon binds to 0.0.0.0
and serves every wallet endpoint (start, send-tx, simple-send-tx,
utxo-consolidation, melt-tokens, etc.) without authentication.

Anyone who can reach the listening socket can spend, mint, and melt
funds from any wallet the daemon controls.

The fix is one line: refuse to start when http_api_key is unset and
http_bind_address is non-loopback, or always require an API key.
This is the standard fail-closed pattern used by every comparable
self-hosted wallet daemon (bitcoind, geth, electrum, lnd, c-lightning).

Reproduction, defect walk-through, configuration evidence, suggested
patch, and disclosure timeline:

  https://gist.github.com/emilianosolazzi/f50b2e3d5f9dec524971a89beeb33fcd

Vendor position
---------------
Reported via Immunefi 2026-04-30. Vendor (yanmartins, 2026-05-04)
closed the report stating "this is expected behavior. Wallet operators
should protect their APIs." Immunefi mediation denied. Vendor has
declined to ship a fix or a security advisory. Publishing here to
give operators a chance to audit their deployments.

A CVE-ID assignment via MITRE has been requested; CVE form submitted
2026-05-11.

--
Emiliano Solazzi

--00000000000014d3c506518e75c4--

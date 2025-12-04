Received: (qmail 3949 invoked by uid 550); 4 Dec 2025 17:51:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20381 invoked from network); 4 Dec 2025 17:24:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764869081; x=1765473881; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=orI9GCLjKZUJtwy4tcsLfAqUupcZ0ykqojj7iyKd+ho=;
        b=VhMmHMftNemurGlCmad2tnudZ/RMAjdS06U+ohk9p4jS9Ltg4A9QgPkheXn+ZWZmf2
         VTTA/HSTKY5gjBe+ptGHgVjN4rCZBKmccngAujb62tKQoHp1YqxQ+W5cIZ1HFdh/dBSx
         Q+0Cxd4H3Pn8tr7s4L5pfUz7G3tk1P2lafqeRnxpP4UW7cz35Rbt0AcSDaW8LVWvApca
         g7ogWra+qLgQgAr67/4Mp05i4eU5kSvpOUUMeMrsGmWMqTlLZaVtPbxuIBGoyQ7T4RS3
         gqYDkUG7HGoQL15qKG4vbDRXjxg7g0KwGyX5IXdodWwB800e1jZ0LTKnfd6n8c5WrCGH
         YeFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764869081; x=1765473881;
        h=to:subject:message-id:date:from:reply-to:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=orI9GCLjKZUJtwy4tcsLfAqUupcZ0ykqojj7iyKd+ho=;
        b=dblsQyuCdO8lzgE4gHCLxrzg701+pYFDIh1zUsdNzMnvGR3oT6Zo3JDUT5O1i00vfC
         h53KYIyHXJ9gAT8PhYwJMdnY3IG2ahDgZyU7savI2WTKh42MDc6IiYxUV4gzJPujjUSj
         CHeHflrjmrnR5ga7vevvy/Q/7xUzYGbbGJEIKa5fY/AQqByZx4nEHdj2lOsbgTgJ959G
         HfPuyi6PqM43iDEtIMOaUBdLxryDChGVSUgaXiSKBvuTf3VlJldzTmSOd/UfDWdD3Lrm
         GD2m4TvVkumnmnIvLnF6SdSK/GWRewmiPl4CYDv8k1mWDmjJDbczQgyNaJjP/8Y5h9Xg
         M21w==
X-Gm-Message-State: AOJu0YyaUmiG++su8A35afYkWfENkmhOFg9XaN7H1XCPrndh0G2VS3+J
	d9t/5UH5KUqUEkD9l791gA4OJL+UpjBaMxpdJfjv6JGuRrLqhkfC2DpZRSGftyns4J+rOf6klqD
	FI8I5Md2icT3q8vA0qqxXoJJH2pFanJTuQHJV
X-Gm-Gg: ASbGnctjC1i9U+VF/QTW+L0PfyPtmxSSgN/lLXGJqTmN2qQNv+pk9i26W8X+ce4FA9H
	s7J8ThrnE+hauPENz+PK4PD1lldNxnVs7yxXn+dnbw7+bucqpYow94pztKIOaCEzh6u8WjBkU/6
	tP/fdJCnYN1xow+YVn+3hJwqwllk9cq3aG6y8tbMDfeUUXB2g93rc+SqJyK8dXek4DscU8eL8DS
	TArf8l72CKXt4p4JY0xT9kLbKJOZkp0g/dKLLtaNpwFWsyV/FQ4WvS260QviyIIimdrQJJeTRbJ
	XYIvIaV0kz7t1dBm7WkI1D/afnFlpiXYtLGDtuGzGBtGqft25nQWaAk=
X-Google-Smtp-Source: AGHT+IHhpegBPyu2BcBVV/cKn7RU/gRpgtDGYoVl5Xdu8bIyiRYNyUcgOaqeMCynhvVMh4wIrA5aaSCqEQCUCnzI7bE=
X-Received: by 2002:a05:6512:10c3:b0:594:493a:a27f with SMTP id
 2adb3069b0e04-597d3fb96c6mr2744463e87.36.1764869080926; Thu, 04 Dec 2025
 09:24:40 -0800 (PST)
MIME-Version: 1.0
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 4 Dec 2025 12:24:02 -0500
X-Gm-Features: AWmQ_bnA13sJ9o8KzqlbficaAqwKOIaOlmGySh3iTTZG4-ERb3XnGcdynOSAjqA
Message-ID: <CAH8yC8=oK5--ODnLFq-HYgKwV2a99JqufsAAYKYFRBpMbxVOfQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] React2Shell (CVE-2025-55182/CVE-2025-66478)

A new RCE dropped last night -- React2Shell
(CVE-2025-55182/CVE-2025-66478).  The vulnerabilities kicked-off a
fire drill at $dayjob.

More reading at:

* CVE-2025-55182,
<https://react.dev/blog/2025/12/03/critical-security-vulnerability-in-react-server-components>
* CVE-2025-66478,
<https://github.com/vercel/next.js/security/advisories/GHSA-9qr9-h5gf-34mp>

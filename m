Received: (qmail 27687 invoked by uid 550); 23 Jun 2025 14:33:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11792 invoked from network); 23 Jun 2025 12:00:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750679998; x=1751284798; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VJzOd/3jhPo9M+lAe8AvooMMrWgAwhIOSiXtVvZP0Qw=;
        b=FFXFuHoCTO+njdUtnD7HqkrXi+EVqnaK7DRuDKPDbez+dhs9AU7uzmvLw6eOYqkuqb
         KG8dvzruMSbMK4FhPOI7wHdOXzMQqAddi4/hJy0mK4J3UvFNdn4ld7IM1H+xohFSBWlM
         VrDN0adzaFM/+9/U703D3tBkFkOky1KUJsABKiVl8jIAEN47jGWByIiKUDoaAB5XRy1m
         TmQS9S1uET7fHBxlEtTUDRAnuybaeupig7IdmGXtXpexUQrM6KcSq4L2mXW5ronwKlwL
         AJxZ539nExGU3uulj4yQIC4nAG2yP2VIjK0ub4Dh5E1F5jgJKnxkykZLcZuWZQR/hq6/
         I77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750679998; x=1751284798;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VJzOd/3jhPo9M+lAe8AvooMMrWgAwhIOSiXtVvZP0Qw=;
        b=W0w/Upicj3GDp3q1LinGQ4mVnnYFFt2unWQABNB33e0E+ASp6IgudJXxxZS0S1WgBg
         LV6PyJ+MPN8EZw6DcqM6vVeG/6MqnZkFmkrzRpxcLi36908IXZbbGKvroae1cafvE0tO
         UQLzw5mm37wu91q39t33apoXhVl/+1Slux/EWwI2jT5z7YKsnyYrfhgH7n62psAfLVGY
         g6F5UZh1si/1isMxNwSWrWlDlPCenfhXc8z+qw1sGej0J97pDh1QAfG9NeQUAX9qauzj
         kziWxxR8r2QI6nokMyzGMP5/cVMRa5NTSmc45ev5IDo2SPge1HOrPkXj1u1AuimqLf0L
         92FQ==
X-Gm-Message-State: AOJu0Yx25pOXPodbstJBF0K6yY0jKMiUlxtTWEEknV0Sub0LamFg9rbA
	qn+6DpzSxT7/FZA8I8/AoELw6prSHJz9rOBCnu0fvGaWo32q9krl0NjYAGR6GcEySkMEMGfxkeX
	28ukwVbcnCmY3Ky6K3IHpOs7yKAxyUnwvsBecQP4=
X-Gm-Gg: ASbGnctljzx5T2Fx9YHkndJwyNyvyuxthZ87AyfqIrcAedmOSqp8PLX6qZOxODjMX07
	Jv9hnAW4F2TT/LkXUx5r3WhPoCtjcb9unpC5hwiZ2QbDRmeA/bCbLV0HtiUOrOpKxJ4VFD46+r4
	ZrgfLlKX9OlwafNMSNz5UxMDwc/BsDak7whxjwuZqPwg==
X-Google-Smtp-Source: AGHT+IHwuO45SnTjILN5XAp4RWiaYxvr82T8LJCRh45aNcYImBF930CnA9335YePqCfg9LHmqozsLn6PtwPAS4RmP38=
X-Received: by 2002:a05:690c:6209:b0:70d:f6ff:cc6f with SMTP id
 00721157ae682-712c6386f45mr171965107b3.4.1750679997693; Mon, 23 Jun 2025
 04:59:57 -0700 (PDT)
MIME-Version: 1.0
From: grape mingijung <mingijung.grape@gmail.com>
Date: Mon, 23 Jun 2025 20:59:46 +0900
X-Gm-Features: Ac12FXwodefW7-ZIpJxtKGUooOw5z5SBxPEOp9EcuKYUne1VWMsI_jS_Y8nHXNM
Message-ID: <CAFyT70jJBgFDN1nreS1D6xp5QdXjJ8aLiJSbGfN8PTo5F1tChw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000060c4c606383bf307"
Subject: [oss-security] xdg-open bypassing SameSite=Strict

--00000000000060c4c606383bf307
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to share a security concern involving the behavior of the
xdg-open command, which is widely used in operating systems. This behavior
may allow bypassing the SameSite=3DStrict cookie policy enforced by modern
browsers.

This issue has already been reported to distros under embargo, which has
now expired, making public disclosure appropriate at this time.

The reason this issue was initially reported to Linux distros is that it
resides in a *gray area between the OS, the xdg-open utility, and browser
security policies*=E2=80=94making it unclear where the mitigation responsib=
ility
lies.
------------------------------
=E2=96=A0 Summary:

xdg-open is commonly used by desktop applications to open URLs in the
system's default web browser. Many applications=E2=80=94such as email clien=
ts and
messaging tools=E2=80=94rely on this mechanism to handle external links.

However, when a browser launches via xdg-open to open a URL, it interprets
the navigation as if the user *manually typed the URL into the address bar*.
As a result, SameSite=3DStrict cookies are included in the request.

This behavior differs from in-browser link navigation (e.g., clicking a <a>
tag), where SameSite=3DStrict cookies are intentionally excluded to enforce
CSRF protections.
------------------------------
=E2=96=A0 Security Impact:

Consider the following example: an email client parses a DOM element such as

<a href=3D"https://evil.com?csrf=3Dstrict_cookie">,

and the user clicks this link. The application uses xdg-open to launch the
browser.

In this case, the browser treats the request as a user-initiated top-level
navigation, and SameSite=3DStrict cookies are sent=E2=80=94allowing the CSR=
F attack
to succeed.

In contrast, if the same email is opened directly in the browser and the
same <a> tag is clicked, SameSite=3DStrict cookies are *not* sent, and the
CSRF attempt fails.

This creates an inversion of expected behavior: *navigating via xdg-open
can result in weaker security than navigating from within the browser
itself.*
------------------------------
=E2=96=A0 Recommendations:

During discussions with several Linux distro security teams, the following
suggestions were raised:

   1. Introduce an "untrusted" mode or flag in browser CLI tools for
   opening external URLs
   2. Extend xdg-open to support passing this "untrusted" flag or context
   to the browser
   3. Modify desktop environments or applications to invoke xdg-open with
   the "untrusted" option when appropriate

In summary, it was suggested that the *browser should be updated first*,
followed by gradual support at the xdg-open and system levels.

Accordingly, the issue has been forwarded to *browser vendors*, who are
currently reviewing it and exploring potential fixes.
------------------------------
=E2=96=A0 Current Status:

Major browser vendors have been notified and are aware of the issue.
Discussions are ongoing to determine an appropriate solution.

Although no specific fix has been finalized, the need for action is
acknowledged.

We will continue to share updates on this issue, including browser-side
responses or mitigation strategies, via the oss-security mailing list.

Best regards,

Mingi Jung

--00000000000060c4c606383bf307--

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2812" "Monday" "16" "April" "2018" "19:46:03" "+0300" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>" "90" "[oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths" nil nil nil "4" "2018041616:46:03" "[oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths" (number mark "U       bbrumley@gma Apr 16   90/2812  " thread-indent "\"[oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16130 invoked by uid 550); 16 Apr 2018 16:46:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16112 invoked from network); 16 Apr 2018 16:46:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=53efwLl7rGDlFOg9+S9RYpOdTPPqt4zlO6N59qYNzWM=;
        b=L2tGFw0oIHj2SEpUPVOETN4ju5qO0Sl403G/M23B3eCkzQ6Zz/bxImJWuhbJl/hAd0
         uBFlSPfaRtISdQVlmcPrAaVhsM7iKQpELK4axic7B32tkQE75WvrPZKxfpMHl0rBw69t
         strjohFGrRTeKZgyyPx1DlK55EkPMoabeQoYdBf9H/zavwgA44T+I5ukiB/mdgf2tvBq
         63jQskjGIY/FF37xC66NUMacesRwAiHlH4diIhQ4e06fUPl7qYZ3c6wZmvikFyT4GJSA
         0Z8y+xjzIGQb9Gxd9caFdqT+8jFmliBAmyQYQvtEipp5EtA5D/cU5FgmLMON++72YT9Z
         OKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=53efwLl7rGDlFOg9+S9RYpOdTPPqt4zlO6N59qYNzWM=;
        b=LYNED+ZwzzWvgFPZD8rKVUcbwNJF5+klPGjyVlQPJOMt78/e/E2UhSwfbLjPKqI5Ru
         tqh5xtJn6RzDdQuthLmKGvJW43Sjz+oO57ZTXPtNlhGeDE1DXyGOVRFVed+inC5P9Y0f
         x/+JwYdkrQcrRXnBje/kreN4W/VNigW654GR17bvBsjKf5S8gBiwXvnFfTD87YLpZILF
         FqdCvBYsyZW6gPgX9mfO7jwLmxfGT1nV3nSaJm4WmD5EBS8DC3prvekOVkbTkrCQrJVy
         ECVzk//sv1zMoM1iiX7JzIuP0YpOBygyLBWULsP4T1MiRsDcm+Zpm96kM6aYfKIlTgwS
         GBuA==
X-Gm-Message-State: ALQs6tANXVD0jhjW9wiPH6S6TvZ3Z7qukj/e36Gd4P4DZ/7CwRk0giue
	k107XhPFMV97WMY2D20sQVDXx1p7r8kZpFcFWyX92rI=
X-Google-Smtp-Source: AIpwx49mQf3mx3iT+bA4Aj7+Nhy8hDKQLwZdBucu1eHM9Ugx5efCefswJq+C/1Dz4eGvrgeI8C0Yui01PJW7JigDkPU=
X-Received: by 10.55.18.35 with SMTP id c35mr16753848qkh.165.1523897163810;
 Mon, 16 Apr 2018 09:46:03 -0700 (PDT)
MIME-Version: 1.0
From: Billy Brumley <bbrumley@gmail.com>
Date: Mon, 16 Apr 2018 19:46:03 +0300
Message-ID: <CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows several non
 constant time code paths

Hey Folks,

We discovered 3 vulnerabilities in OpenSSL that allow cache-timing
enabled attackers to recover RSA private keys during key generation.

1. BN_gcd gets called to check that _e_ and _p-1_ are relatively
prime. This function is not constant time, and leaks critical GCD
state leading to information on _p_.

2. During primality testing, BN_mod_inverse gets called without the
BN_FLG_CONSTTIME set during Montgomery arithmetic setup. The resulting
code path is not constant time, and leaks critical GCD state leading
to information on _p_.

3. During primality testing, BN_mod_exp_mont gets called without the
BN_FLG_CONSTTIME set during modular exponentiation, with an exponent
_x_ satisfying _p - 1 = 2**k * x_ hence recovering _x_ gives you most
of _p_. The resulting code path is not constant time, and leaks
critical exponentiation state leading to information on _x_ and hence
_p_.

OpenSSL issued CVE-2018-0737 to track this issue.

# Affected software

LibreSSL fixed these issues (nice!) way back when this was reported in
Jan 2017. Looks like commits

5a1bc054398ec4d2c33e5bdc3a16eece01c8901d
952c1252f58f5f57227f5efaeec0169759c77d72

We verified that with a debugger.

OTOH, OpenSSL wanted concrete evidence of exploitability. That's what
we did over the past year and a half or so.We ran with bug (1) and
recover RSA keys with cache-timings, achieving roughly 30% success
rate in over 10K trials on a cluster.

Affects 1.1.0, 1.0.2, and presumably all the EOL lines.

## Fixes

Recently, it looks like (1) was independently discovered, and some
code changes happened. Nothing for (2) and (3).

### 1.0.2-stable

Part of the fix (1) is in commits

0d6710289307d277ebc3354105c965b6e8ba8eb0
64eb614ccc7ccf30cc412b736f509f1d82bbf897
0b199a883e9170cdfe8e61c150bbaf8d8951f3e7

In combination with our contributed patch in

349a41da1ad88ad87825414752a8ff5fdd6a6c3f

we verified with a debugger they cumulatively solve (1) (2) and (3).

### 1.1.0-stable

Part of the fix (1) is in commits

7150a4720af7913cae16f2e4eaf768b578c0b298
011f82e66f4bf131c733fd41a8390039859aafb2
9db724cfede4ba7a3668bff533973ee70145ec07

In combination with our contributed patch in

6939eab03a6e23d2bd2c3f5e34fe1d48e542e787

we verified with a debugger they cumulatively solve (1) (2) and (3).

Look for our preprint on http://eprint.iacr.org/ soon -- working title
is "One Shot, One Trace, One Key: Cache-Timing Attacks on RSA Key
Generation". We'll update the list with the full URL once it's posted.

# Timeline

Jan 2017: Notified OpenSSL, LibreSSL, BoringSSL
4 Apr 2018: Notified OpenSSL again, with PoC and 16 Apr, 15:00 UTC embargo
11 Apr 2018: Notified distros list
16 Apr 2018: Notified oss-security list

Thanks for reading!

Alejandro Cabrera Aldaya
Cesar Pereida Garcia
Luis Manuel Alvarez Tapia
Billy Brumley

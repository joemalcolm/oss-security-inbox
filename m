X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1828" "Friday" "7" "September" "2018" "09:54:02" "+1000" "Jeremy Choi" "jechoi@redhat.com" "<CADDhp-LME6id-2V0UhF2OaVFZkna2exQfkARkORrNVgJ4-Pu0A@mail.gmail.com>" "60" "[oss-security] perl Crypt::JWT vulnerability" "^Date:" nil nil "9" "2018090623:54:02" "[oss-security] perl Crypt::JWT vulnerability" (number mark "U       jechoi@redha Sep  7   60/1828  " thread-indent "\"[oss-security] perl Crypt::JWT vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25694 invoked by uid 550); 7 Sep 2018 10:44:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18397 invoked from network); 6 Sep 2018 23:54:15 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nhDSIGJIireMoXBz12tL0H3TvlT2N+/+mgWaaDQBVh4=;
        b=Fz6C/DByjNT3OtwyIUFI1oAC+c2hmxbnpKO335gEvicNuXUhMde8Zu+PamEBzMjuz4
         /SAYxapZU17OV1etU+oRaWwoSRMD8rR0BXIWfWw7n9HoXuAAGU66vR0UH6ZJHZ5elzg5
         xGy2xsI8RX8n44EpVCsUMNC8kxF0JQJQmqcJVlpEr4JuzbdNxXJvQpSdfC1x+3xojz6W
         sQXQ6+7QYEpTxv+ts7SukaN5B57bZCtwgqribgBdiAGiA3/y1Qnv4ZUxwKqhQJSmEJ6S
         3+7ijJd9anJph6yFE6g95w4q03N5En/cTY/p6QiHA1SaJ5RQN94tPiz3hBb5Io+sEi/1
         tmfA==
X-Gm-Message-State: APzg51DtyO6zH0GdJv6UdYqZOu4c4GHeYdQ7LzUBGu7Lnr2YSS+vp5q0
	FWUuVNtT5qCP60azXbvqLBOl4e0ejN7IwAhmXyTVLoFDOow=
X-Google-Smtp-Source: ANB0Vda97ROOBti3NK6VcZQB4jbdRPjrHxp+OFERM8Ia9cN49FufaYNUihnFezH9N7KbH3qR1HJ0d2+x0C4IlgC5dsc=
X-Received: by 2002:a62:5f82:: with SMTP id t124-v6mr5510840pfb.223.1536278043075;
 Thu, 06 Sep 2018 16:54:03 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CADDhp-LME6id-2V0UhF2OaVFZkna2exQfkARkORrNVgJ4-Pu0A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000008bedf05753c9bc2"
Date: Fri, 7 Sep 2018 09:54:02 +1000
From: Jeremy Choi <jechoi@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] perl Crypt::JWT vulnerability
To: oss-security@lists.openwall.com

--00000000000008bedf05753c9bc2
Content-Type: text/plain; charset="UTF-8"

A vulnerability that might be able to cause bypass authentication was
discovered by myself in Perl Crypt::JWT package prior to 0.023(fix -
https://github.com/DCIT/perl-Crypt-JWT/commit/b98a59b42ded9f9e51b2560410106207c2152d6c
).
## Details

(JWT.pm)
606 # key
607 my $key = defined $args{keypass} ? [$args{key}, $args{keypass}] :
$args{key};
608 my $kid = exists $header->{kid} ? $header->{kid} :
$unprotected_header->{kid};
609 if (!defined $key && defined $kid && $args{kid_keys}) {
610 my $k = _kid_lookup($kid, $args{kid_keys}, $alg);
611 $key = $k if defined $k;
612 }
613 # if no key given, try to use 'jwk' value from header
614 $key = $header->{jwk} if !$key && $header->{jwk};

The vulnerability comes from line 614. If no 'kid' is given, 'jwk' will be
used instead. Where 'RS256' is set as alg, it's okay as _prepare_rsa_key()
will be failed. However, if 'HS256' is set, the key from the 'jwk' header
is used for decoding.

...

537 elsif ($alg =~ /^HS(256|384|512)$/) { # HMAC integrity
538 $key = _prepare_oct_key($key);
539 return 1 if $sig eq hmac("SHA$1", $key, $data);
540 }

...

65 sub _prepare_oct_key {
66 my ($key) = @_;
67 croak "JWT: undefined oct key" unless defined $key;
68 if (ref $key eq 'HASH' && $key->{k} && $key->{kty} && $key->{kty} eq
'oct') {
69 return decode_b64u($key->{k});
70 }
71 elsif (!ref $key) {
72 return $key;
73 }

Since the jwk key is a string, it reaches line 72 and then 539 above.

If a project uses Crypt::JWT for its authentication without additional
mitigation, it may allow attackers to bypass authentication by providing a
token by crafting with hmac() with 'HS(256|384|512)'

I'm requesting a CVE ID through DWF.

Thanks
--
Jeremy Choi / Red Hat Product Security

--00000000000008bedf05753c9bc2--

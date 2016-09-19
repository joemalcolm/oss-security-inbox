X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2794" "Monday" "19" "September" "2016" "10:34:47" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8nJ5cqnEdkqRK1AfSM=kCNyFw=rahiWL86Xih5fO9afmQ@mail.gmail.com>" "94" "[oss-security] Fwd: CVE-2016-7420 (Info Disclosure due to assert), Crypto++ and down level remediation" "^Date:" nil nil "9" "2016091914:34:47" "[oss-security] Fwd: CVE-2016-7420 (Info Disclosure due to assert), Crypto++ and down level remediation" (number mark "        noloader@gma Sep 19   94/2794  " thread-indent "\"[oss-security] Fwd: CVE-2016-7420 (Info Disclosure due to assert), Crypto++ and down level remediation\"\n") "<CAH8yC8=-xMe=6ROWMpNQojUi17J6cR6Mc4z6oEU7=any=o-x8w@mail.gmail.com>" ("<CAH8yC8=-xMe=6ROWMpNQojUi17J6cR6Mc4z6oEU7=any=o-x8w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32348 invoked by uid 550); 19 Sep 2016 14:39:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30108 invoked from network); 19 Sep 2016 14:34:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=TQx9it8PMv0KayV+lRTb/lIKbYuzrzl8Whc+0Kh5P8E=;
        b=UdmUExbO6qus+JJCVCBtyyEHgke2PubzgVpCYXSc9WrfmNkVoOZ4hqK4jWHUWUlW2X
         j5A4w27D4CBrlRkqXydYZPi6pzQmU9tUc2Fc1by3ylxUsnFcGxlIHzuVEH1OXzXcF3hY
         hPJtfAxuEFtlNYsO15Jw3Nt5tLKvWnBNBXfW1m3ukQt9e8T5jPMmEpaGO8rGLwwBqeLT
         GvArW2U0iKKwk/MllpLwcV32bgeOnuxlZcrHiIrLCh0Zeh6P5HazLn+7SXGAWd867R1P
         iXMifS5RYEuxWNLlfsjxnbvATKEo/nhCAQuQAxoTNJrJiJN0/o4GnvHVfmYzavtBoLNP
         gX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to;
        bh=TQx9it8PMv0KayV+lRTb/lIKbYuzrzl8Whc+0Kh5P8E=;
        b=NoDixWgK8RYNGsy/0wlp3dTQz8piP6IBjSQn8JxAhgND/mHO7JDcZUYhQxYz4IJx+W
         lHby3/w4Lnin9qgBfGoJ+nusNNoTDnigUtnjjNBvEwpnOX2+x8m7uxhDy+bUvBtl1JzE
         et/cqM+lWbFMKWEelWCeiwi7AbCLUZ2O87ThCt3rJm6FRLm+2Faa+AMp+y6gXWWzomg/
         2tAJ9sNkC9HsmuAYOOZjTh/Wdv39QF6GJvL1wbbLwh+8Ky7WbCjfJWTfQx42n12Qu08B
         WtMJF5L0o0oXH2oa4bV7zyLZwO+2GgcpFVmeZY+wA8n2W5scbnj7JMREwegIsdJwjT5I
         xyeg==
X-Gm-Message-State: AE9vXwM22Ncunn/E+OzfO0J1zjSr86kBT6J32wWtdYd9oRaszB7PMA6HO2iCAfRwm+vgTljHbZs4qc+4uDbZeQ==
X-Received: by 10.107.156.129 with SMTP id f123mr35272407ioe.112.1474295687754;
 Mon, 19 Sep 2016 07:34:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAH8yC8=-xMe=6ROWMpNQojUi17J6cR6Mc4z6oEU7=any=o-x8w@mail.gmail.com>
References: <CAH8yC8=-xMe=6ROWMpNQojUi17J6cR6Mc4z6oEU7=any=o-x8w@mail.gmail.com>
Message-ID: <CAH8yC8nJ5cqnEdkqRK1AfSM=kCNyFw=rahiWL86Xih5fO9afmQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 19 Sep 2016 10:34:47 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: CVE-2016-7420 (Info Disclosure due to assert), Crypto++ and down
 level remediation
To: oss-security@lists.openwall.com

---------- Forwarded message ----------
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, Sep 19, 2016 at 10:32 AM
Subject: CVE-2016-7420 (Info Disclosure due to assert), Crypto++ and
down level remediation
To: <redacted; maintainers and distros>

Hi Everyone,

Crypto++ 5.6.5 will be released within a month or so to remediate the
information disclosure from CVE-2016-742. Distros will need to patch
Crypto++ 5.6.4 and below. The following provides more information and
procedures we recommend for down level Crypto++.

We re-engieered the "debugging and diagnostic" support area because
documenting the behaviors did *not* reduce the risk; rather it simply
moved the blame around. You can see the staged changes at
https://github.com/weidai11/cryptopp/issues/277#issuecomment-247829210
.

We believe the best course of action for a distor is to make the
asserts inert in Crypto++ 5.6.4 and below because they are expected to
be removed by NDEBUG. However and simple sed and 's|<exp>||g' won't
work as expected.

If you have any problems or questions, then please email me or call
me. My cell number is <redacted>. My home number is
<redacted>. Distros get special treatment because they are so
important to the ecosystem.

My apologies for the inconvenience and trouble this has caused.

Jeff

**********

To remediate CVE-2016-7420 in Crypto++ 5.6.4 and below, perform the following.

1. Crypto++ 5.6.2 and below (Crypto++ 5.6.4 and 5.6.3 has it, so skip
this step).

    (a) Add CRYPTOPP_UNSED macro to config.h

     #define CRYPTOPP_UNSED(x) ((void)(x))

2. Change every assert() to CRYPTOPP_UNUSED()

    (a) replace en masse
    (b) find with sed or grep and 'assert[[:space:]]*('

3. Verify changes

    (a) cat *.h *.cpp | egrep -v '(<|>|//)' | grep assert
    (b) should only see compile-time assert

4. Test changes

    (a) 'make clean && make -j 4'
    (b) './cryptest.exe v'

5. Update the package

    (a) rebuild the library and package it
          - all asserts rendered inert
    (b) rebuild all dependent packages
          - asserts in Crypto++ headers could cross-pollinate

**********

Procedures performed on Crypto++ 5.6.2:

# Prepare
$ git clone https://github.com/weidai11/cryptopp cryptopp-assert
$ cd cryptopp-assert
$ git checkout CRYPTOPP_5_6_2

# Step 1 (Add)
$ echo "#define CRYPTOPP_UNUSED(x) ((void)(x))" >> config.h

# Step 2 (Replace)
$ sed -i "" 's|assert[[:space:]]*(|CRYPTOPP_UNUSED(|g' *.h *.cpp

# Step 3 (Verify)
$ cat *.h *.cpp | egrep -v '(<|>|//)' | grep assert
#define CRYPTOPP_COMPILE_ASSERT(assertion)
CRYPTOPP_COMPILE_ASSERT_INSTANCE(assertion, __LINE__)
#define CRYPTOPP_COMPILE_ASSERT_INSTANCE(assertion, instance)

# Step 4 (Test)
$ make clean && make -j 4
$ ./cryptest.exe v   # Tail should report no failures

# Step 5 (Repackage)
...

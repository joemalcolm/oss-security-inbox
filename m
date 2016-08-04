X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2888" "Thursday" "4" "August" "2016" "10:18:55" "+0100" "Cory Benfield" "cory@lukasa.co.uk" "<A341696A-69DE-484C-93CB-746F1B01A924@lukasa.co.uk>" "96" "[oss-security] CVE-2016-6581, Python HPACK and old Python Hyper releases: HPACK Bomb" nil nil nil "8" "2016080409:18:55" "[oss-security] CVE-2016-6581, Python HPACK and old Python Hyper releases: HPACK Bomb" (number mark "U       cory@lukasa. Aug  4   96/2888  " thread-indent "\"[oss-security] CVE-2016-6581, Python HPACK and old Python Hyper releases: HPACK Bomb\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31925 invoked by uid 550); 4 Aug 2016 09:19:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31900 invoked from network); 4 Aug 2016 09:19:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lukasa-co-uk.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=uYIgettNyRIzjXPajPdlKCcynsDelA9l+l0H6H8eyO0=;
        b=ZEBSwJV7PTVCmg14wwWf8/o4193QvAX9f7j74OBj60aEcsMPYkrfFqgWO7hFqM0INw
         2qIzkfIlhJvte8lvHK1g5geYGFG7AKEFBp6p6JtbGxvv/9302/TKNU20pbkIhcl/PDQh
         jGx+9vCkUiWgcBRpZFUjleEpuYopSEOX0KxhYowboONKhrMA2KBj4OlCU5VMTqSJaYUa
         WNWKX0WgecjHUsK40Q9rhkqpzay9QjXPF5UaMSGn/ZpxdqxHx9RYA6omY7wah06Y2AI7
         N1Gkt6g81Ey6uQ1mApcZMGMhBy2pD+wBSbJLtc6Kgw4PIL3W6HWM+7oAAb+p5J0ykAgR
         pWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=uYIgettNyRIzjXPajPdlKCcynsDelA9l+l0H6H8eyO0=;
        b=SsPEogyGdPqD+qdlu/miJokLpTbbok2GSDR7Qb2s+Br35VcKtn0saYK5kmH1O8DcOs
         O0kr3w7igb37m1esw9ZnrNN4eIeLjdwqwQ0QL5KGqESo+y2PTUI7sFW/bzDR1u8FHxvz
         NxEt7BTnBcRjXxT+Ary507g8JCaAMPvJPovBdQ+5NCDbMTN/Nw4zjwQ+DLOZIRFcHwu6
         mnCDfoYr+A1xxd4c++esmLWfNtzMEzaana0udawZZOTdu208UySDMYIH7GOSw82lwK5q
         M+Eb4RdU7vePS4EiKUVheWPiqV9VX0wvJVCsDh+4Km+ftSTeN9/fd+fnS4UOdPw8bU1Y
         xSGQ==
X-Gm-Message-State: AEkooutwL77siICdh4MfZjh8v2q0uffz4D91GZ66W3yhLmZlgvFAk/0WZtqIyjDtby7AJA==
X-Received: by 10.194.172.165 with SMTP id bd5mr5656763wjc.33.1470302336673;
        Thu, 04 Aug 2016 02:18:56 -0700 (PDT)
From: Cory Benfield <cory@lukasa.co.uk>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.0 \(3204\))
Message-Id: <A341696A-69DE-484C-93CB-746F1B01A924@lukasa.co.uk>
Date: Thu, 4 Aug 2016 10:18:55 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3204)
Subject: [oss-security] CVE-2016-6581, Python HPACK and old Python Hyper releases: HPACK Bomb

HPACK Bomb
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Hyper Project security advisory, August 4th 2016.

Vulnerability
-------------

A HTTP/2 implementation built using the priority library could be targetted=
 for
a denial of service attack based on HPACK, specifically a so-called "HPACK
Bomb" attack.

This attack occurs when an attacker inserts a header field that is exactly =
the
size of the HPACK dynamic header table into the dynamic header table. The
attacker can then send a header block that is simply repeated requests to
expand that field in the dynamic table. This can lead to a gigantic compres=
sion
ratio of 4,096 or better, meaning that 16kB of data can decompress to 64MB =
of
data on the target machine.

It only takes a few such header blocks before the attacker has forced the
target to allocate gigabytes of memory, which will take the process down. T=
his
requires relatively few resources on the part of the attacker.

While we are not aware of any attacker actively exploiting this vulnerabili=
ty,
it has been public disclosed in this report[1], and so users should assume =
that
they are likely to be targetted by such an attack.

Info
----

This issue has been given the name CVE-2016-6581.

Affected Versions
-----------------

This issue affects all versions of the HPACK library prior to 2.3.0. It also
affects versions of the Hyper client library earlier than 0.6.0, which bund=
led
a copy of the HPACK library.

The Solution
------------

In version 2.3.0, the HPACK library limits the maximum decompressed size of=
 the
header block. It does so by essentially adding support for the HTTP/2 setti=
ng
``SETTINGS_MAX_HEADER_LIST_SIZE``. This value defaults to 64kB, but is
user-configurable.

If it is necessary to backport a patch, the patch can be found in
this GitHub pull request[2].

Recommendations
---------------

We suggest you take the following actions immediately, in order of preferen=
ce:

1. Update HPACK to 2.3.0 immediately.
2. Backport the patch made available on GitHub.
3. Substantially decrease the maximum size of the compressed header block y=
our
   application will accept, or alternatively ensure that each decompressed
   header block is freed before your application processes the next one.

If you have a copy of the Hyper client library, we recommend taking the
following actions, in order of preference:

1. Update hyper to any version later than 0.6.0
2. Backport the patch made available on GitHub.

Timeline
--------

This class of vulnerability was publicly reported in this report[1] on the
3rd of August. We requested a CVE ID from Mitre the same day.

HPACK 2.3.0 was released on the 4th of August, at the same time as the
publication of this advisory.


Thanks,

Cory Benfield, on behalf of the Python Hyper project.


[1]: http://www.imperva.com/docs/Imperva_HII_HTTP2.pdf
[2]: https://github.com/python-hyper/hpack/pull/56=

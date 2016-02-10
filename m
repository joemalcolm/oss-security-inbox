X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["892" "Wednesday" "10" "February" "2016" "14:41:16" "+0100" "Andreas Lindh" "addelindh@gmail.com" "<CALfBxESL4MhUEZ_sg+CPBCmsJki3QVHDAhvkTSJ4niR3KeqKww@mail.gmail.com>" "25" "[oss-security] CVE request for Media Player Classic" nil nil nil "2" "2016021013:41:16" "[oss-security] CVE request for Media Player Classic" (number mark "U       addelindh@gm Feb 10   25/892   " thread-indent "\"[oss-security] CVE request for Media Player Classic\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11444 invoked by uid 550); 10 Feb 2016 14:08:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19956 invoked from network); 10 Feb 2016 13:41:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=zt9a37cgSpiARRhN4IpSotvWvp1CAW1UD4ftOpwbXCk=;
        b=kJknfkL3RzoUJfdcxQ6JaXkQH3HqCZxeKHBzzwb0N3H+uS+mV0wXpKBdCkTd7BLJdH
         rMg4fp9kP9Ny/7h4QdXGzy88l/0reXJQG7MrZ49yAFBAJn8Y21fHny3PwK+mO1SmxRLa
         TaphHzpeH8AOmyNNUHt3l4imlJCOjFKqHEHaS66+/DeQl6HtfjKVJV83gCNok7KBM/TF
         HztRdPoMHn9l4mMS5Fhqa6/cnbaH12erkmtWESG5x9+SkIbDnn1GsIVYmjcidA/OAwL3
         F+Oe8yPpoO/kp8e1iNksAeT78ckn0MBWdkth7BHJWOxZyfOk8j6VhoDkqBTi56qjETOM
         6VKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=zt9a37cgSpiARRhN4IpSotvWvp1CAW1UD4ftOpwbXCk=;
        b=YJCWr672t8GQKMUmujLx1a4Cyze1yq1c3tDqC4UPMaEG+31xMWF4nxXbr7cPubuUaw
         r6oACruVN98R6G1mDbDKANRNf4uNwdasyvAGHjsv1TfsFu/G27p2McbQvtPZlJN0SVWa
         SW1831w3Oaq1B8tWARMhKeLKzmdigFHxXzeKARTcIl+q+leq8Q0YSXgAgyZlUuXTRmaU
         GawQMTN1ZKD2nbw9YU0b2gDY87DQiKXUfstkJxac0DB5yc7QtR8yi98eYbSnybZefH/Q
         6oDBHvZY3EJz8zFXwPnX3vdsDUSfBFtzTLZuoVTGYxQBahgMtOsGcrIkQVBmwEPjulig
         qlGg==
X-Gm-Message-State: AG10YOSq1GPVBms2YaDr76oSWwbdjri4nWgLmRGXyFYulAF8qBy/VIjmlBZtcTZ5/Gzw1m18HLSddDzyiMrIhQ==
MIME-Version: 1.0
X-Received: by 10.13.252.67 with SMTP id m64mr21933490ywf.67.1455111676238;
 Wed, 10 Feb 2016 05:41:16 -0800 (PST)
Date: Wed, 10 Feb 2016 14:41:16 +0100
Message-ID: <CALfBxESL4MhUEZ_sg+CPBCmsJki3QVHDAhvkTSJ4niR3KeqKww@mail.gmail.com>
From: Andreas Lindh <addelindh@gmail.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=94eb2c06b22c9225f2052b6a96cd
Subject: [oss-security] CVE request for Media Player Classic

--94eb2c06b22c9225f2052b6a96cd
Content-Type: text/plain; charset=UTF-8

Hi list, CVE-assign,

On the 14th of November 2015, Media Player Classic - Home Cinema (MPC-HC)
disabled the preview function in the MPC-HC Web UI in version 1.7.10, as
this function could be abused to steal private images from the machine
running MPC-HC with the Wen UI enabled.

See https://mpc-hc.org/changelog/ for the MPC-HC changelog, and
http://haxx.ml/post/125666329821/abusing-the-mpc-hc-webui-to-steal-private-pictures
for more details on the issue and practical exploitation of it.

The main issue here is that the Web UI does not have any authentication,
something which (besides the already mentioned issue) enables an attacker
on the same network to start media files on the MPC-HC running on the
affect machine.

Could a CVE be assigned for this please?

Cheers,
Andreas

--94eb2c06b22c9225f2052b6a96cd--

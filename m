X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Monday" "15" "June" "2020" "09:58:53" "+0100" "Simon Steiner" "simonsteiner1984@gmail.com" "<001301d642f3$32a10d70$97e32850$@gmail.com>" "30" "[oss-security] [CVE-2019-17566] Apache XML Graphics Batik SSRF vulnerability" nil nil nil "6" "2020061508:58:53" "[oss-security] [CVE-2019-17566] Apache XML Graphics Batik SSRF vulnerability" (number mark "U       simonsteiner Jun 15   30/662   " thread-indent "\"[oss-security] [CVE-2019-17566] Apache XML Graphics Batik SSRF vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-17566] Apache XML Graphics Batik SSRF vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1651 invoked by uid 550); 15 Jun 2020 09:37:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3412 invoked from network); 15 Jun 2020 08:59:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=AOpt935d9/8AfJyr5p23+PmRVEW/Mk0z1L8cpwxX0mA=;
        b=X6NkC3shmCLAM6O2wv5A51KzYmVZwhR8kKVGtBUZCJ201lQy7+g/KSjwVgNqm/eS6j
         EpRFFwA9nwl54FaI2P/wihXrTEf9atPQxH0iwyajVoejjU3G/Dw2invoJ3dnOHyueyBV
         2aESOjjaHpSzwMtkSHZVopEy48NPf/w2PguQK2yL/jGu88DEINYf/nAd7ERSoTT7u/Kn
         jIbYHHdwi3MoYxJbcjMLwGTmq9lbwtakUQlySXPPswBu5kvHuZuG5Qq2HcAW+yNNhP/D
         k6uI8nX0k/EqiKifAszl7dz4BwWKMkX3N49VAJbVDwcKXNLvfAyKzDJnYQTdXstwedkQ
         t5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=AOpt935d9/8AfJyr5p23+PmRVEW/Mk0z1L8cpwxX0mA=;
        b=IFMRKPZMBIMKSlqedIq+5lU0q5cQICG5SogjEV4/Mh2k7biP6EP+5smaIfE8NiAKkh
         LsSeMbgJuwCdL8ovH23IDu9PCaphXX1YjsPIhw05RR/YUbMQiu2VVlpNwuASdalYllF/
         jldlV6ytHrNJxC6aJYgoZpFEWnPgeHIKlF+vPeC9wikn20eTIs3JuWZUY9r+sbK9D2KR
         8a9HwXXXnZLOKsxilH3HWG3dytKfUbU7743QFpkhViFtKpAVq/dbh5TSZmqX4BeP1EZl
         EgH+zozZpzjG3EPRUvIaxIrOyqtbU87S7qCi9R839kJgFRU9z+HAYulg9njiyI6hvZiy
         UEIQ==
X-Gm-Message-State: AOAM530WpyaDvg/o6mOeDThxyYRFsHVIV6Bx6o/eaGadGvOZCbnWIdOs
	k9xg59pj1IcRFr/+I+/cgh7TwCsBX+E=
X-Google-Smtp-Source: ABdhPJwgcmLIZu4LMtNsbvjBcJ14gFatxqXZx6CIADjSV5YtafeaFZ8RPyYitVFR3NLZbPLLk/Tjww==
X-Received: by 2002:adf:ab08:: with SMTP id q8mr26812565wrc.216.1592211535188;
        Mon, 15 Jun 2020 01:58:55 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <oss-security@lists.openwall.com>
Date: Mon, 15 Jun 2020 09:58:53 +0100
Message-ID: <001301d642f3$32a10d70$97e32850$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGsyPOsrJ5JVzrkQZ54ryRo+b9nVg==
Content-Language: en-gb
Subject: [oss-security] [CVE-2019-17566] Apache XML Graphics Batik SSRF vulnerability

CVE-2019-17566:
        Apache XML Graphics Batik SSRF vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.12 and earlier

Description:
        The Apache Batik library is vulnerable to SSRF via "xlink:href"
attributes that allow an
attacker to cause the underlying server to make arbitrary GET requests.

Mitigation:
        Users should upgrade to Batik 1.13 or later and pass
-blockExternalResources on the command line

Credit:
        This issue was independently reported by Sean Melia

References:
        http://xmlgraphics.apache.org/security.html

The Apache XML Graphics team.



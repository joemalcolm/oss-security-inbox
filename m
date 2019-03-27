X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["522" "Wednesday" "27" "March" "2019" "13:11:53" "+0100" "Dejan Bosanac" "dejan@nighttale.net" nil "17" nil nil nil nil "3" nil nil (number mark "U       dejan@nightt Mar 27   17/522   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2019-0222 - Apache ActiveMQ: Corrupt MQTT frame can cause broker shutdown\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] CVE-2019-0222 - Apache ActiveMQ: Corrupt MQTT frame can cause broker shutdown" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30091 invoked by uid 550); 27 Mar 2019 12:12:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30072 invoked from network); 27 Mar 2019 12:12:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=sqFL2kb6XYbk9EItBDwcw4nirhRRY9Y6cM1GVaVm2Jw=;
        b=lXaoq7f710qDOcvTtUcEUSGcRWk5nBxH0qaSc8+S0j0WIys8IcPfpubNpBZJafDhsm
         c5GW7zC7y3fuhBucpQqzyirbwSEpxvwV6Zgv4NS7Ha47qkgADulzkuBFPKekCKo+mre2
         4wO9Oek9HCX2KRdPXThE5X8rAOkhRPrTQbfMTosrTZL9GLuTwxaGlCBqnmNqnGdxNb+X
         q+R213P/K3qLcxkD2ekppwLksPiVn0m7a6Jy8mJYXftsSVQmxlVzIDsXpzKp/qNoXsnR
         XncPkIYVPfWZFORytu9BFgaoGKu1VdYYSfpwzRMbuRby4RyqcRgqnuV82uh3I1f058tT
         sAGw==
X-Gm-Message-State: APjAAAWQKN0Sa0qz0xUc2wmkDrQ/l+Tc0eS6Yyhyv9cU9ldhM4TlGNsJ
	y7k9KZOi09b015M+k+X9TZgLX6MBAV8mCoPSpzw=
X-Google-Smtp-Source: APXvYqwii97eFuBml16yRMo8BFLQF66D1hQMLIf7k0tcO88cVr4tLUFK84feeIVcAcDJ8EEJp3X8tP/RoyXhh48gFxQ=
X-Received: by 2002:a6b:f201:: with SMTP id q1mr24186207ioh.197.1553688725030;
 Wed, 27 Mar 2019 05:12:05 -0700 (PDT)
MIME-Version: 1.0
From: Dejan Bosanac <dejan@nighttale.net>
Date: Wed, 27 Mar 2019 13:11:53 +0100
Message-ID: <CAGeh-pFCN4a1c5gfBM0bbEjs3fCAH8gB0sKc3q_Ytgq==sH9fA@mail.gmail.com>
To: "dev@activemq.apache.org" <dev@activemq.apache.org>, 
	"users@activemq.apache.org" <users@activemq.apache.org>, "insi_2304@ymail.com" <insi_2304@ymail.com>
Cc: Apache Security Response Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008c0f0b05851258ab"
Subject: [oss-security] [ANNOUNCE] CVE-2019-0222 - Apache ActiveMQ: Corrupt MQTT frame can
 cause broker shutdown

--0000000000008c0f0b05851258ab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The following security vulnerability was reported against Apache
ActiveMQ 5.15.8 and older versions.

Please check the following document and see if you=E2=80=99re affected by t=
he issue.

http://activemq.apache.org/security-advisories.data/CVE-2019-0222-announcem=
ent.txt

Apache ActiveMQ 5.15.9 has been released with appropriate fixes and is
available for upgrade.

--0000000000008c0f0b05851258ab--

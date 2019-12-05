X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4418" "Wednesday" "4" "December" "2019" "22:37:33" "-0800" "=?UTF-8?B?Q29sbSBNYWNDw6FydGhhaWdo?=" "colm@allcosts.net" "<CAAF6GDe681q_7hypyv-b3L0yydQh4USaNyR1hDAzTFMDVUUPog@mail.gmail.com>" "95" "Re: [oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil "12" "2019120506:37:33" "[oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." (number mark "U       colm@allcost Dec  4   95/4418  " thread-indent "\"Re: [oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections.\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13684 invoked by uid 550); 5 Dec 2019 10:53:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22226 invoked from network); 5 Dec 2019 06:38:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=allcosts-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=Yn0hEiNkzRk98n38kAoZBt8OBxMI+myHAM5EIERjxEo=;
        b=n0cBHeuRGin05t1W8lonq0ZqMkGEFUrwc7knGmD32TqwlGZEowIIZ1WJ5L1BiTBhO3
         uCpGVsxY4WU766WorqdUK28pjf36Wwgeun56DpoP2NbHQqYtKZ98cpllLX2NdK39jzK7
         9kmVT+LE3U7wqrJ1sAy92H4AyzC+Ek4W2ICNXOYABw7Z22jqHHNpF2Sx/HPu0qjG22zZ
         v+xm8186DVV65DZvNhj5jGqUwGalOfFDEO3D2h1MfuZ0o0jLRBcEcsG9nSmQsZaDBojY
         MUtzazCRxiZL2Auh7rQvvkV1NRweoZIecjSEL5ALta9TzsyX5BAAvJDqHmBWLKNdzkY3
         TR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Yn0hEiNkzRk98n38kAoZBt8OBxMI+myHAM5EIERjxEo=;
        b=pNeGJMB0F1N8hz25VQdh6XkC0U0j0oG28OHJ7uv+uIIa8CbdwRaD0kcXhJY9IP+xjj
         w183R+hCqJctti8llwDcsOJvGmHMfPqw5reSMRbMlkdTaALjsnngTA4LUkUrOPHJ5mfj
         1WK2xXVftx3YQwF61Mn7/sEUN+Hr9C1ygSdTw2hW9RLxMgJmdwFYusWZVoW2NFG4j/5V
         SUQ1V78kbzCc/0CV4xZaP4jtcxzMp5LF19ojK1wI2HPEuAI++5TA5hH2HFTpfi5rzU7i
         uu+vxh0Yx9UNAwxQEDrlIUN0oNADYZ7iRWTSdsskeZU1CIdxjgjPS4KviK3Bd3GMDzxI
         oskQ==
X-Gm-Message-State: APjAAAXZ1G+Vo/qOkAyO0eXMatAj81d3VoHpCAcR7jEdK2KXvKtWlhNz
	m9J2vs0mn4nZZThHxqRRsk5UVw2TI6EhgH6XvleYHEwQe9mPXw==
X-Google-Smtp-Source: APXvYqzhTEv61vEOF6FDPs+a1LXpv3g4JKlqHfW7MYl6U65Ry0SozEMl6xyx/vBtYr38XhFdDwemVmI5bxTCoMXH81c=
X-Received: by 2002:a17:906:bfe7:: with SMTP id vr7mr7670763ejb.177.1575527878720;
 Wed, 04 Dec 2019 22:37:58 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Colm_MacC=C3=A1rthaigh?= <colm@allcosts.net>
Date: Wed, 4 Dec 2019 22:37:33 -0800
Message-ID: <CAAF6GDe681q_7hypyv-b3L0yydQh4USaNyR1hDAzTFMDVUUPog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008b941b0598ef2bc1"
Subject: Re: [oss-security] [CVE-2019-14899] Inferring and hijacking
 VPN-tunneled TCP connections.

--0000000000008b941b0598ef2bc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I work on Amazon Linux, which enables reverse path filtering on all
existing interfaces and is not impacted by this issue, however in examining
this issue we did notice some additional areas that may be of heightened
concern to operating systems or VPNs that are impacted.

The report cleverly uses educated guesses about traffic and error messages
to work its way up to injection of a packet into an open TCP connection.
TLS on that TCP connection would thwart this attack, but it=E2=80=99s a sig=
nificant
combination of tactics with important security consequences.

Unfortunately, by combining this issue with DNS spoofing, this issue can be
improved upon into a more serious threat.

Suppose that =E2=80=9Cservice.company.corp=E2=80=9D is a known service runn=
ing on a
corporate network, accessed by employees using roaming laptops, phones or
other mobile devices. When an employee opens their laptop, some software
may make queries for this DNS name in the background; and it may or may not
resolve. That depends on whether the company publishes its internal DNS ent=
ries
to a =E2=80=9Cpublic=E2=80=9D DNS view.  At this point an untrusted network=
 (e.g. an access
point that has been owned) could trivially poison the response, with a
high-TTL entry, and control what the name resolves to. If they have the
name resolve to an IP of their choosing, they can MITM the traffic. Because
of this risk, it is normal for VPNs to flush the DNS cache when a VPN is
established (my corporate laptop does this), or for DNS caches to be
flushed when a system resolver is changed; and the threat is mitigated.

CVE-2019-14899 resurrects this threat. Using the CVE-2019-14899, an
untrusted network can watch for traffic patterns that correlate to a
DNS request
and a DNS reply. These are easy to profile based on size; and the exact
plaintext even may already be known; either because the query was also made
before the VPN was established, or because it=E2=80=99s not that hard to le=
arn or
guess the service naming details of a large corporate network.

When the query and reply is observed, the encrypted packet containing the
reply can be buffered and effectively =E2=80=9Cpaused=E2=80=9D by the untru=
sted network.
The untrusted network can then use the UNM-BBG issue to spoof a large
number of forged DNS replies towards the target for the query. Note that
due to the UNM-BBG techniques the source IP and dest IP are likely known,
and that DNS clients =E2=80=93 especially stub resolvers =E2=80=93 typicall=
y use a
restricted port range. DNS requests and DNS replies have a queryid that
must match, but this is only 16-bits in size.  The number
of replies that need to be sent to gain a match are measured as [stub
resolver source port-range] * 2^16, which is likely in the 100s of
millions. This would take 10s of seconds to transmit over a 1Gbit LAN.An
attacker need only succeed once to =E2=80=9Cown=E2=80=9D the DNS response f=
or a period of
their desire (they can set a high TTL on their spoofed responses).  Wifi
has much lower PPS (802.11ac is just 75k pps) and would take more
attempts.  Either way the numbers are well below the safety boundaries of a
typical security protocol and an attacker may be able to gain control of
=E2=80=9Ctrusted=E2=80=9D network DNS.

Hijacking traffic via DNS is usually much more powerful than payload inject=
ion;
for example an attacker can observe all connections but choose to target
only connections that do not use TLS. This is more flexible and helps evade
detection.

Some notes:

- DNS packets are often the =E2=80=9Cfirst=E2=80=9D traffic in a sequence, =
and even when the
size is obfuscated by padding, they can be identified through timing
analysis alone.

- DNS between stub resolvers and recursive resolvers is not protected by DN=
SSEC
and DNSSEC does not thwart this attack.

- Well-configured TLS does prevent poisoned DNS from being used to MITM TLS
traffic, but there are gaps such as users over-riding warnings, or
protocols not using TLS.

- Some browsers and applications may keep their own DNS caches; if
these DNS caches
are not also flushed when VPNs are established, they are vulnerable to the
other, older, issue. Although unrelated, this CVE may call attention to
these issues.

--=20
Colm

--0000000000008b941b0598ef2bc1--

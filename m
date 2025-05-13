Received: (qmail 4030 invoked by uid 550); 13 May 2025 15:19:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6121 invoked from network); 13 May 2025 14:58:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=varnish-software.com; s=google; t=1747148289; x=1747753089; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5R23UT/WKVamTmiRTgXPfw4it3LEWmml3u/M88OWySU=;
        b=fGg0Pswz3bYkm79ODvLlGFZplMWbcjrz+1gMYEs3qJ96r7ONGTCZTZ+Mj1UMpsbszq
         HlXTe7HYU+pdPnGPwr1CcGzdf2ah9EPqw6f/5p1y6F7dQvtCE/fP2Ni4KqCTSEw7eThJ
         TQvhBTlnaFlceaur8EhdpuJHQ5yZ8LK0xyW5rL81GBfkE6m+2d1EtR9cLAECXMi1Eny/
         YsWKXG0mXZ4+Hqg+PQvbBfWe4UiExvXs5ZW9hGiztAdZ2HslZjXeHASdwWRBlB/1oT4W
         CeU6x9i33MtZxISEKiIEYSqPrmhgydcCmSOryNNaeBY9Ib7mfs/7QafzsGJtqBvoOb03
         9NRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747148289; x=1747753089;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5R23UT/WKVamTmiRTgXPfw4it3LEWmml3u/M88OWySU=;
        b=RBSMMy1THWwLze78ASz8F76ufp+O86C8tkLM+MYuxm3mNPs/RLc85OMg1JGrnSyXEs
         D/Vz7uVhdwp7fWGnPSBwtzCys6l6LlmsyUTwaW+MkLegSt3pHBLDnrJoOitgf1Cx9fms
         IUdd5ldGQtKZ7Jj2lT48g5PQc4kzqWIYJEnGccRDTIfIcmCtsOqFMN1emj4wWlwWGn8C
         Fi/eNeaPyDPxHibFYyE/SBqJmcEVglGa4b0VmDqDq9G+nDiRlq+yzppXEH0DGXbHozk8
         XJfZAYkx2+c7MdaxzV+DXNeumw8974rvsBUVF0ZEZ5mbKWil+Ln3Z0AJiC7s5lwDEXMK
         oKWA==
X-Gm-Message-State: AOJu0YxtzwK9snXwZ/6zKc16vvSBzb9nxZZTQY0sjFyZMxCc6KLMRYmp
	ChS2FPerscWS6P2aFb5D4V1G1sUuA/osFVVMiBPB+s9GoQjVAkI8Ezudi5N3uf2EsiZWjGErTR1
	5pUlYVdLkXy0XoyFrBIZGgvDna0jVHjS/qLsdo2qLALa5Z2jNQokqLw==
X-Gm-Gg: ASbGnctSFq3bURKSUQnfivrWYKlVUYMnGdCaoe/x6ZxFVu4A9kHCIhhWnSCLs+Boxs2
	2vUneqzo2RdVPwQH2wBxp2lls+LqLAhSfM6go2cAuVwCm5r+NjA9fvOG+bIXRdOMJH2B0DaXf3D
	V3c37f8At/KjrGhdH+qR7LNiusF21eqGFZPMs=
X-Google-Smtp-Source: AGHT+IGt9SDNTvE3r7OQXirrmtpU0Jnyeed1Bu1pvdBgy2QLk1WSvFSxVmEyKCEqoNi6UCKDaLwTJmILURaNoEtglus=
X-Received: by 2002:a05:6512:260f:b0:54e:a28b:7b31 with SMTP id
 2adb3069b0e04-54fc67ae50emr4796042e87.4.1747148288894; Tue, 13 May 2025
 07:58:08 -0700 (PDT)
MIME-Version: 1.0
From: Asad Ahmed <asadsa@varnish-software.com>
Date: Tue, 13 May 2025 16:57:33 +0200
X-Gm-Features: AX0GCFszE7kv9lW5WhmI2GeO92rWRXpXJa5nuWOqsHxcM2Xg5HDPwUUloAErJ_k
Message-ID: <CA+NO1zTqeNPvwupEFgcr6T4NgU3V93vtJ8eEpmAHYMGjvpR6YQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000213dfd063505a92d"
Subject: [oss-security] VSV00016: Varnish Cache 6.0, 7.6, 7.7 - Request Smuggling Attack

--000000000000213dfd063505a92d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello there,

We released Varnish Cache 7.7.1, 7.6.3, and 6.0.14 yesterday (sorry for the
delay).

These releases fixes a vulnerability reported to us, which got the name
VSV00016.


*CVE*: Not assigned yet, expect a follow-up here.

A client-side desync vulnerability can be triggered in Varnish Cache. This
vulnerability can be triggered under specific circumstances involving
malformed HTTP/1 chunked requests.

An attacker can abuse a flaw in Varnish=E2=80=99s handling of chunked trans=
fer
encoding which allows certain malformed HTTP/1 requests to exploit improper
framing of the message body to smuggle additional requests. Specifically,
Varnish incorrectly permits CRLF to be skipped to delimit chunk boundaries.
Impact <https://varnish-cache.org/security/VSV00016.html#impact>

The primary risk of this vulnerability is enabling HTTP request smuggling
attacks, which could have consequences for downstream systems. Specifically:

*Cache Poisoning*: A downstream cache positioned in front of Varnish could
cache incorrect or malicious content if it allows the aforementioned
malformed HTTP/1 requests to pass through unhandled. This can lead to
unintended responses being served to users, potentially exposing sensitive
information or delivering harmful payloads.

*Security Risks*: Bypass of WAF type products downstream from Varnish could
be achieved if these products are configured to not inspect request bodies
and in addition allow the aforementioned malformed HTTP/1 requests to pass
through.

The vulnerability has been given a severity rating of *low/medium*.
Versions affected
<https://varnish-cache.org/security/VSV00016.html#versions-affected>

   -

   Varnish Cache releases up to and including 7.7.0.
   -

   Varnish Cache 6.0 LTS series up to and including 6.0.13.

Versions not affected
<https://varnish-cache.org/security/VSV00016.html#versions-not-affected>

   -

   Varnish Cache 7.7.1 (released 2025-05-12)
   -

   Varnish Cache 7.6.3 (released 2025-05-12)
   -

   Varnish Cache 6.0 LTS version 6.0.14 (released 2025-05-12)

Solution <https://varnish-cache.org/security/VSV00016.html#solution>

The recommended solution is to upgrade Varnish to one of the versions where
this issue has been resolved, and then ensure that Varnish is restarted.
Thankyous and credits
<https://varnish-cache.org/security/VSV00016.html#thankyous-and-credits>

Ben Kallus at Dartmouth College for finding and reporting the issue to the
project in a responsible manner.
Nils Goroll (UPLEX), Dridi Boukelmoune (Varnish Software) and Poul-Henning
Kamp for the patches.
Varnish Software for handling this security incident.

References:

- https://varnish-cache.org/security/VSV00016.html#vsv00016
- https://varnish-cache.org/security/index.html
-
https://varnish-cache.org/lists/pipermail/varnish-announce/2025-May/000767.=
html
- https://github.com/varnishcache/varnish-cache
- https://varnish-cache.org/releases/rel7.7.1.html#rel7-7-1
- https://varnish-cache.org/releases/rel7.6.3.html#rel7-6-3
- https://varnish-cache.org/releases/rel6.0.14.html#rel6-0-14

--=20
Asad

--000000000000213dfd063505a92d--

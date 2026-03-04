Received: (qmail 22100 invoked by uid 550); 4 Mar 2026 16:11:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23567 invoked from network); 4 Mar 2026 07:00:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772607643;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OrEFXVop2zPvpZCvSn12Jok5gs+eH5iG+AU76lEGH7A=;
	b=i6h35mgOm+z2TWjz8VNcHHr1RGsDOX9g15ZMT0++KpMDiJQka4vhLngnVl8JFznrgvlk9h
	Ce6vOAB/pSTJtnigQeA//cCbeeBhNyNUEWqu9AvBUVV2oPa0QpchiWSjpoJXG75rWfA8D1
	sBJk9JrOqQYiBMWgXNxGedWtFny/9Ds=
X-MC-Unique: w5jyw7QSNb-jRP9LrySEMw-1
X-Mimecast-MFC-AGG-ID: w5jyw7QSNb-jRP9LrySEMw_1772607640
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772607640; x=1773212440;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OrEFXVop2zPvpZCvSn12Jok5gs+eH5iG+AU76lEGH7A=;
        b=rIOMzQLCF58Q8dsDr+bV9Q2hwlHSJGhtG1avSUm/MQZgER+VtsXupCldvHXiROZ4ZJ
         0fZNOnjiTG17+46eNSXC8qXNT9lynDKadK8g17EIbQ/M8ZIT3OzEmW0hgGjK4aU5C/Al
         7JrVuOFd91HT5V/OOz8Z5bub+NYqfSuKdI5eaNLqk4QqlPyBpVLvjI4x25PeBMVV249p
         9NoEJyQoISkpnLm+XkK7/O9efQOjI7v2kx7/0EFmt4EtARduPmCRf3vrdWr0FuayOkNX
         Li5tGHhL4AVhPkSF0xjyC4pNMX6i0xy8oWdDo+4s/G/s7FiAZGQyMOOrDZHVHVvtVSIe
         bVpg==
X-Gm-Message-State: AOJu0YxWMF1v0OvwXgWYqy9kYJeAf6uURNYoaPvGveCWKV1zJh/E/pn+
	Fe88JPfkeF6AExJIpfeTeqcN21UwIOqdXFqnaLWruSRVrdH4Zf8RWiPYbyP5Eut7GbmKvyPD1fl
	VKHIF02eEIKr+TmYtNTQfTZsv9d6dJWrFQ5M1Oo9ZIweuuD9QiQzMguc8A5dDscYO1kDg+elG+/
	BePFNXOLLGdsXQgnBVyHrhCo/ahSV3I6glrSpLUWtGhRTz5M+YOdC3Ge8=
X-Gm-Gg: ATEYQzzujAeWuzfKDd2LfnHgJ8kvntZWEQe91HnQsbVpC3Vz5Aao4PJRubC2x3cvBMm
	tdJ1ezZVdgYrcDS7t89yEp/6/TMSlT+Xtn3ByUzZYLgnQ5KEZ8bP2bXk/Dl8Haph9UhF2CvNHwj
	eiQmOEpIG0u4h+Tk9cMFkVmM9CiUsN3/S2l5yvQW8QNaEL/PVb4vzA+2QFkxzICpLE3hPSr0KBU
	wdJYg==
X-Received: by 2002:a05:690c:6e87:b0:798:6561:2a5e with SMTP id 00721157ae682-798c6be0864mr7617467b3.19.1772607640164;
        Tue, 03 Mar 2026 23:00:40 -0800 (PST)
X-Received: by 2002:a05:690c:6e87:b0:798:6561:2a5e with SMTP id
 00721157ae682-798c6be0864mr7617397b3.19.1772607639722; Tue, 03 Mar 2026
 23:00:39 -0800 (PST)
MIME-Version: 1.0
References: <03dec16c-fe98-0d84-856e-392f4f5c376c@apache.org>
In-Reply-To: <03dec16c-fe98-0d84-856e-392f4f5c376c@apache.org>
From: Yogesh Mittal <ymittal@redhat.com>
Date: Wed, 4 Mar 2026 12:30:28 +0530
X-Gm-Features: AaiRm51tnoccI2nIxJs4doE_1Twc8Y6tIi0OInJ8HnbCL0KIOXRoYEGjm1Fb8bQ
Message-ID: <CAJvML36hSb+uKjsS+AxB70BhTYZ4vaJAseig5f6hwTZ+dZmeZw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Domenico Francesco Bruscino <dbruscin@redhat.com>, Michal Findra <mfindra@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tDzYL5wIfKN-vnLAJdvfoDrgFbJYZh57AM72F-RVqHc_1772607640
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000b18f7c064c2d60ff"
Subject: Re: [oss-security] CVE-2026-27446: Apache Artemis, Apache ActiveMQ
 Artemis: Auth bypass for Core downstream federation

--000000000000b18f7c064c2d60ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Justin

I noticed that the cve.org link provided at the bottom of your email still
shows the CVE status as 'Reserved'. Could you please publish the CVE
details there as soon as possible?

Thanks and regards,

Yogesh Mittal

Manager, Product Security Vulnerability Management

Red Hat Pune <https://www.redhat.com/>

ymittal@redhat.com
M: +91-9637123455


<https://www.redhat.com/>


On Tue, Mar 3, 2026 at 10:58=E2=80=AFPM Justin Bertram <jbertram@apache.org=
> wrote:

> Severity: critical
>
> Affected versions:
>
> - Apache Artemis (org.apache.artemis:artemis-server) 2.50.0 through 2.51.0
> - Apache ActiveMQ Artemis (org.apache.activemq:artemis-server) 2.11.0
> through 2.44.0
>
> Description:
>
> Missing Authentication for Critical Function (CWE-306) vulnerability in
> Apache Artemis, Apache ActiveMQ Artemis. An unauthenticated remote attack=
er
> can use the Core protocol to force a target broker to establish an outbou=
nd
> Core federation connection to an attacker-controlled rogue broker. This
> could potentially result in message injection into any queue and/or messa=
ge
> exfiltration from any queue via the rogue broker. This impacts environmen=
ts
> that allow both:
>
> - incoming Core protocol connections from untrusted sources to the broker
>
> - outgoing Core protocol connections from the broker to untrusted targets
>
> This issue affects:
>
> - Apache Artemis from 2.50.0 through 2.51.0
>
> - Apache ActiveMQ Artemis from 2.11.0 through 2.44.0.
>
> Users are recommended to upgrade to Apache Artemis version 2.52.0, which
> fixes the issue.
>
> The issue can be mitigated by either of the following:
>
> - Remove Core protocol support from any acceptor receiving connections
> from untrusted sources. Incoming Core protocol connections are supported =
by
> default via the "artemis" acceptor listening on port 61616. See the
> "protocols" URL parameter configured for the acceptor. An acceptor URL
> without this parameter supports all protocols by default, including Core.
>
> - Use two-way SSL (i.e. certificate-based authentication) in order to
> force every client to present the proper SSL certificate when establishing
> a connection before any message protocol handshake is attempted. This will
> prevent unauthenticated exploitation of this vulnerability.
>
> Credit:
>
> Hardik Mehta <mehtahardik@proton.me> (finder)
>
> References:
>
> https://artemis.apache.org
> https://www.cve.org/CVERecord?id=3DCVE-2026-27446
>
>

--000000000000b18f7c064c2d60ff--


X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1756" "Wednesday" "7" "March" "2018" "14:34:06" "+0100" "Raphael Geissert" "atomo64@gmail.com" "<CAA7hUgG=6G+HYQQdByu=KV+t0RJ2UOBo+8iz2ZB=NyyGTpqcYA@mail.gmail.com>" "47" "[oss-security] Portus, missing certificate validation on proxified https traffic" nil nil nil "3" "2018030713:34:06" "[oss-security] Portus, missing certificate validation on proxified https traffic" (number mark "U       atomo64@gmai Mar  7   47/1756  " thread-indent "\"[oss-security] Portus, missing certificate validation on proxified https traffic\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24490 invoked by uid 550); 7 Mar 2018 13:34:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24450 invoked from network); 7 Mar 2018 13:34:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=U9t7RbboPNsDkahPz9Z/Nuob3OZ86CLGZS9SLfFP0Pk=;
        b=Hq58IZG/Ab7kBiQQEUbJk33ujXnylwOCS04CHGKY7FURFIsCZSdnkqsMJ87q+h1NTs
         tQClUwGJSXqWF60sjpQYFwgujrRdWxYJi9rwqiGG11EjkDkkpJYtXtTSbIEwWcdfSm0w
         Nfirpys55fBIcevqKRdqnddynE8XU4iXaymG6vmcKDxR345V2erkUJvmoSmJYO4EUxVQ
         Xh+F7KMGp8wyuUd0g0MonZWb70Oju/6x9aWuUBaZ9Im3SQc/y82ynfXHGUJThqPb3N5t
         AP9oJ8xOdRupgmNk+A0LJSASqL0Z8kqyhg/giL44++NfR89OY1QWT/WJI0Ucq5/5/TA2
         zbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=U9t7RbboPNsDkahPz9Z/Nuob3OZ86CLGZS9SLfFP0Pk=;
        b=XDt/15rLJ2Rea+wU25Cro4PK3tGwb2icL8Kcd8l2ua3ZHFtNwXkOtagCrMPtGwK8n6
         ARQHN1AXWLd2jRIglIqLaTry5FUWS55A+/JGJj9dCS0G1juPSHePJ2nHhbVwAIP1owJT
         Hfkm3FT+qizYcvVyyZvwYhixRP0cHJmiRGYQZXn5VXWD6VfFls8HfrIqgkUxbH9Oi/RB
         q0BTh3H7Lvpak5gikcuUIXDnwJVjuK5meZtlStFtyMo3KMNthu9gAF12lVobTJNYbR08
         47Ri/timKVYowSmYxJwBPzWy0r7vuFgi37U/Oz7sE+K7OxBICUNwZGZprtr16JrDF6ja
         75Ag==
X-Gm-Message-State: APf1xPAQUk2+50BQThn5CTtdTRXiifPNqN5t2ypL2WL+a5OBCejsNkYD
	hM2AT1BzRMxGU91UmoIslRaQazKUb2+1ekf6OMPIsdQM
X-Google-Smtp-Source: AG47ELu9gpfwCwdwgBFMqHAsrwuRVjI+KBQNNI8cjc0bzXIhJ72au8oo/gxg/qvQ5+kvhtCgsnMjYw64m9r+OKzb1Ks=
X-Received: by 10.176.82.202 with SMTP id w10mr17236897uaw.31.1520429666683;
 Wed, 07 Mar 2018 05:34:26 -0800 (PST)
MIME-Version: 1.0
From: Raphael Geissert <atomo64@gmail.com>
Date: Wed, 7 Mar 2018 14:34:06 +0100
Message-ID: <CAA7hUgG=6G+HYQQdByu=KV+t0RJ2UOBo+8iz2ZB=NyyGTpqcYA@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Cc: security@suse.de, avi.miller@gmail.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Portus, missing certificate validation on proxified https traffic

Hi,

Taking another look at portus, this time at the nginx sample
configuration[1], I noticed that it doesn't enable certificate
validation of the proxified traffic that is forwarded to portus and
registry.

Given that the documentation claims the examples are of "A
production-ready setup where all communication is encrypted."[2], I
plan to request a CVE id.

The details:

The example nginx configuration is based on running nginx as a
reverse-proxy of portus and (docker) registry. The docker-compose
provided along the nginx config sets up a certificate[3] for both
components (first smell: only one certificate).

The one an only certificate is also configured on the reverse proxy,
and a decent ciphers list among other security-related http headers
are setup.

But there's no single proxy_ssl_* directive in the whole nginx
configuration (second smell). Meaning that proxy_ssl_verify is off
(nginx default).

Has anyone reviewed portus? this is the second missing certificate
verification I noticed.

CC'ing the SUSE security team.

Oh and it appears that this one comes from the
Portus-On-OracleLinux7[4] repo from which "[they] borrowed a lot of
the NGinx configuration"[2] :
https://github.com/Djelibeybi/Portus-On-OracleLinux7/blob/f2e7a167f6325a0247eb1ca49a962478daf49a8b/nginx/proxy.conf#L57

CC'ing Avi Miller.

[1]https://github.com/SUSE/Portus/blob/146076d543e8f1618f837dd7466c5f0fdc26438d/examples/compose/nginx/nginx.conf
[2]https://github.com/SUSE/Portus/blob/146076d543e8f1618f837dd7466c5f0fdc26438d/examples/compose/README.md
[3]https://github.com/SUSE/Portus/blob/146076d543e8f1618f837dd7466c5f0fdc26438d/examples/compose/docker-compose.yml#L21
[4] https://github.com/Djelibeybi/Portus-On-OracleLinux7


Cheers,
-- 
Raphael Geissert

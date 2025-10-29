Received: (qmail 16193 invoked by uid 550); 29 Oct 2025 18:50:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7746 invoked from network); 29 Oct 2025 18:48:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761763702; x=1762368502; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YUnlxr10CO4Y+OSNTPMb+XVMOEvxaySpgpScRPI5ANg=;
        b=aUknF/g6gTGImU0pzvh4CLVDW+YC6bezWN/FLPl0fQt0wXFfyQGFqbapMSous588eR
         9NcX36/ZN7Ea9FeOr6Edg4O+oqBByIwcRzjVF15sGuAp15XJi1mM5j3Q8h77tUNBBWZx
         +Y+//h22n6/uaYONxsCtv62ahytkEORD+Ea/FYlKQRlvVzDV4D7cWq3Q2mxD7rlicU4p
         0x/kyub3HNQbu7DI5mmuZ4CNGU5+SKSrWeXtk47u4pMrkjM9TmkQ3XauT9yCC4rNt/1X
         SnPAmhYnQ6tGjw/JYMjYfEE+kSmk1CdpImPmrKspljK9zXBCVMn8dD4edAmDfY7LKgsT
         4ruA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761763702; x=1762368502;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YUnlxr10CO4Y+OSNTPMb+XVMOEvxaySpgpScRPI5ANg=;
        b=BdXl66o0fEKDLtIIIyL2SNz3ccvmM9YAkAuelHuNvC3mFcOS4U9s8k5JT+RNduuAKN
         Nybnx5HoqwCK+tGgpUtBaKORnc604WeJAeZFMfhkWssUYzvVD2LjfQ3QQOY3fqUrspyG
         l38RAjJo16WpjA7NvCpRNvTJE3iFVboNThgsoTkoA7qnAxiAkpIa2rMhsb6pGOYwv+ys
         YQqZFOpLfm69eszTI/uK7lM6zwoXgveTLV8GkMXuQg2bE/WOYBk/DLOH/lpG65cn0VZx
         gz0SbtDRrQbAq0SRj1GsMWYxoBEy0vEDJka3y0fOGxQpjbBpN7GcPjynjqZTWB16IyI9
         Y+Cg==
X-Gm-Message-State: AOJu0YwZdml5Nctrwi4uaXxqY37EvS9Kcn8CeXa5c/LBYvPNgOmjhAG6
	BVcLLaJHi6ENFeRGdh0u74Bqlc4vLijjJkVOswYkoFC4/OfdkL5sLpFmjbqIoOpsPei0BcG0FkX
	Rk19YzqEtX2ZiejDGneCGA39S+Pc8l94h7Crq9Po=
X-Gm-Gg: ASbGnctt6XtRyUqTT2ojheXPbk+Az7BPohQl+1N2VgzHLT7kh4BJIoR6Fkm/VzRvA1v
	Gofm+Ov/piN1PQuSCuj3FvhGqn2JW4/hFEGGDd+vmKn7mPzUvLtaZMn+CgFfBIIhgAfrCXPSPyG
	NHplMbDeX+wqDZAcGHJQthBh1tqh2XgrTTl5+9cVT7W2N+QmxJ1w7vpW2u7TP8jq1rEheQkB6Tr
	tMVgpiTBXQ7lIGCSnoDZXul5SVyvoRmbD/b3SKpwGTjyNckda8HBYl6w2Y=
X-Google-Smtp-Source: AGHT+IEj/NBjzMyHCPHC3VGxyBxlx00DAYqmnzsHOVuYLpfZrfr7m2QmOTGYKMGYoVW6eAYw0AZRUt2Zovluoy9LGiE=
X-Received: by 2002:a05:620a:1a0c:b0:893:1c7:4d with SMTP id
 af79cd13be357-8aa2bea0514mr80545585a.3.1761763702005; Wed, 29 Oct 2025
 11:48:22 -0700 (PDT)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@gmail.com>
Date: Wed, 29 Oct 2025 18:48:10 +0000
X-Gm-Features: AWmQ_bma2wSMh34xhcFQKkz1r879Ly2q6DDcADGahcFgC5sbMOnzOBgnl79w6lU
Message-ID: <CAH5JyZqBYne5cB=pgo38u1=67CwK8L8eVaCw9tfaTaWYbEh0Wg@mail.gmail.com>
To: oss-security@lists.openwall.com, users@airflow.apache.org, 
	dev@airflow.apache.org
Content-Type: multipart/alternative; boundary="000000000000a2e72e06425093cf"
Subject: [oss-security] CVE-2025-54941: Apache Airflow: Command injection in "example_dag_decorator"

--000000000000a2e72e06425093cf
Content-Type: text/plain; charset="UTF-8"

CVE-2025-54941: Apache Airflow: Command injection in "example_dag_decorator"

Severity: low

Affected versions:

- Apache Airflow (apache-airflow) >3.0.0, < 3.0.5

Description:

An example dag `example_dag_decorator` had non-validated parameter that
allowed the UI user to redirect the example to a malicious server and
execute code on worker. This however required that the example dags are
enabled in production (not default) or the example dag code copied to build
your own similar dag.

If you used the `example_dag_decorator` please review it and apply the
changes implemented in Airflow 3.0.5 accordingly.

Credit:

Nacl (reporter)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-54941

--000000000000a2e72e06425093cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">CVE-2025-54941: Apache Airflow: Command injection in &quot=
;example_dag_decorator&quot;<br><br>Severity: low <br><br>Affected versions=
:<br><br>- Apache Airflow (apache-airflow) &gt;3.0.0, &lt; 3.0.5<br><br>Des=
cription:<br><br>An example dag `example_dag_decorator` had non-validated p=
arameter that allowed the UI user to redirect the example to a malicious se=
rver and execute code on worker. This however required that the example dag=
s are enabled in production (not default) or the example dag code copied to=
 build your own similar dag.=C2=A0<div><br></div><div>If you used the `exam=
ple_dag_decorator` please review it and apply the changes implemented in Ai=
rflow 3.0.5 accordingly.<br><br>Credit:<br><br>Nacl (reporter)<br><br>Refer=
ences:<br><br><a href=3D"https://airflow.apache.org/">https://airflow.apach=
e.org/</a><br><a href=3D"https://www.cve.org/CVERecord?id=3DCVE-2025-54941"=
>https://www.cve.org/CVERecord?id=3DCVE-2025-54941</a><br></div></div>

--000000000000a2e72e06425093cf--

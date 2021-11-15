X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1712" "Monday" "15" "November" "2021" "18:01:27" "+0100" "Vardan Torosyan" "vardan.torosyan@grafana.com" nil "51" "[oss-security] Grafana 8.2.4 released with security fixes" nil nil nil "11" nil nil (number mark "U       vardan.toros Nov 15   51/1712  " thread-indent "\"[oss-security] Grafana 8.2.4 released with security fixes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Grafana 8.2.4 released with security fixes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11940 invoked by uid 550); 15 Nov 2021 18:50:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30105 invoked from network); 15 Nov 2021 17:01:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grafana.com; s=g1;
        h=mime-version:from:date:message-id:subject:to;
        bh=sZzayYPqrnaghommHPVP3R3K1wUk48YAgIyJUeAJGSo=;
        b=0n4OH2VKw7DVITR10lvLBX32irVVkEL86tZZTJUl9t5EgivhvYet7YVmZDRqQxgpzf
         c8VUrBv7VLVCDdFx78PszPMPGOfYYug8ZNz5OWUp9w36uN/Jnub2hJxo5c6XWbRhnx6a
         tsK5oCG+4NZZ99cct94w0Mrhoqmgd0LqDu2f1c+veBySceVmCncacE7s5N20XQxd43LQ
         KI/fxmQ8KX8YJvFS9aAEY7r93hrQvJ96Vh3kR7sPewPXFwpuR+fcI6ghMkhPw+IKwymf
         i1oEd4evDPeAgz5YQ540mOY3ZsGEb6/q+kT9edtLaY1Yt+3H2aA/if/Ml5wAbhH6fVNc
         mgHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sZzayYPqrnaghommHPVP3R3K1wUk48YAgIyJUeAJGSo=;
        b=4gYU5lpSdBqaabZr/yKVGuKVIQix1xxS5CHI6rp3ouJptOjBT1Aza4yPTfWVUZKEM6
         QqbEGrp2GyBqVpcoGeHWFj+tspGzfQSzv5vvEHXzDuTiYYWFby9lUo+neh7HkiSMnXfN
         W22RhmwDu8SjuEqAXQlteTzoBszgAWgCoAQ90FEDIYyTyCiziWyy8xAxxfYAZeVcYg5N
         dNHmIaZ4PyJm2C8T7UYE+7ATvUTu7PilX5gSAFT9liJnoLjGShpS5iQfFeBApesplCaC
         RjN++MvVYGTE6ObfmJM3PBvt1xL6eAxOZMEFBsM8xieoxkxyXotM90842y2vgnSiRg7Y
         HQkQ==
X-Gm-Message-State: AOAM5318Fi5hmMhaWTfNTxzpN5LuvdYB/JWrxxzhXW3CkbdZpTbfjrPA
	krY17Plyre18/XNGexaTdFTI4Ci8e9QfIrea2Unri1Ws0UZ7DA==
X-Google-Smtp-Source: ABdhPJyG4ANZJSCCwpXGuRu0c3tAglRrSSV8b0Xtr1RE0fLOkaY6WE6h0BH6pi35JM9h2TBHlheB0BYeEy7gO64MGXw=
X-Received: by 2002:a9d:343:: with SMTP id 61mr420409otv.382.1636995698770;
 Mon, 15 Nov 2021 09:01:38 -0800 (PST)
MIME-Version: 1.0
From: Vardan Torosyan <vardan.torosyan@grafana.com>
Date: Mon, 15 Nov 2021 18:01:27 +0100
Message-ID: <CAHvrgmzXNe+pEZAEW6FDwFuM1oGrnu5Y1iOABUQPEXNrmxy35A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001feeb905d0d6c37f"
Subject: [oss-security] Grafana 8.2.4 released with security fixes

--0000000000001feeb905d0d6c37f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear all,

We have released Grafana 8.2.4 with security fixes This patch release
includes security fixes that affect Grafana versions 8.0.0 through 8.2.3.

The vulnerability only affects Grafana instances where fine-grained access
control beta is enabled, and there is more than one organization in the
Grafana instance. Grafana Cloud instances have not been affected by the
vulnerability.

*Incorrect Access Control (CVE-2021-41244)*

On Nov. 2, during an internal security audit, we discovered that when the
fine-grained access control beta feature is enabled and there is more than
one organization in the Grafana instance, Grafana 8.0 introduced a
mechanism which allowed users with the Organization Admin role to list,
add, remove, and update users=E2=80=99 roles in other organizations in whic=
h they
are not an admin.

Affected versions with high severity

Grafana 8.0 to 8.2.3


*Solutions and mitigations*
All installations between v8.0 and v8.2.3 that have fine-grained access
control beta enabled and more than one organization should be upgraded as
soon as possible. If you cannot upgrade, you should turn off the
fine-grained access control using a feature flag.


*Patched versions*
Release v8.2.4, only containing a security fix:

* Download Grafana 8.2.4 - https://grafana.com/grafana/download/8.2.4
* Release notes -
https://grafana.com/docs/grafana/latest/release-notes/release-notes-8-2-4/

Further information can be found at
https://grafana.com/blog/2021/11/15/grafana-8.2.4-released-with-security-fi=
xes/

Best Regards,
Vardan Torosyan

--0000000000001feeb905d0d6c37f--

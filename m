Received: (qmail 32446 invoked by uid 550); 9 Mar 2026 19:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13395 invoked from network); 9 Mar 2026 17:30:08 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773077399; cv=none;
        d=google.com; s=arc-20240605;
        b=H6icERyNAoP+il7CD4C+XtL64a3k5GiYHaPz69rXyZS6GeLgMjZrUvHVb7dCxJcJJQ
         iFb14koe9n1wO/pTzym05NMerhyv5Lh0+C4MIODiIrBQkJiuQw6Ev5oRBe7efZWmeKqz
         oYnT9YeBBZ0+mB6jn+YX6/cIzjiHy/STfxb3xVZ9oHVn3rHHUnQonQbJK9TK2Ka19Jp6
         0eWhVZ54lDttPLQD9gIJgX1X0Jf7Vk/+e16ExXmihSITY4sIZcCNvkOErz2pviHeU2s+
         MXWhbU9tqoDlyCVflKHW7W35NfaFTFUS4cO041G2VVAZGpL4OwwfnXZS4qE4vNIAzArO
         XCQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=KipMVVuGQMbQ4BsqUAHiLUTatcHz9+mB2xDvVvuesng=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=iDFsq1RBZ2mBxNYPmz0PEjx+enA/VDMqP8PlkWq0qfOqS300t5aZWtJwDo1W9l7+0s
         IMhZYAq+8G4hCLlzzpoabs0Rax+duHDks00gRJizdnBJaPsZv2Gy+d5Xib/dxzjyt9uE
         jh5Nw/4/4Q5/JKSgajsVftQ5+MRc6Q/Fq2m91v3u9YT0DtVp5pa40mXBSxOE+mzQ8tZj
         SfVGpMOkHSRu7vOCEnSURlrCMcWlYGXV/llbUgbwChprUqKHi/x/S/3PyC8i08bdeohr
         38HQAM33NqRiCgxEsXHIuBsilsH14vo2cLe4aCahS6cztLd4gK5EzLpD/5o8tHGW0zhS
         KMLA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773077399; x=1773682199; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KipMVVuGQMbQ4BsqUAHiLUTatcHz9+mB2xDvVvuesng=;
        b=OKHmQ7bVx/KFrwuVbzRa+WGIcChepfBOSV9JM6o972th9PidoGG3h6FntMRFtPpiXq
         DROC19Fp2yO/RReJ8BfxbKN0AZGVCsEvRm3uOStKqIPW/QHkBncLOHG3GehcOfvQZlHq
         wJ5xM2N8CHzKmw0oNgAfcHq1vrHIhapXLe7TAKq8V0pHycrC5XgbxNIj996ZGnEbNw8e
         biTkFSTXKNfTVh4cmgPbX+fywNIZoCge3YS/xM/cPdDK77llsL0pAyENds0dx5/+3jLx
         pp7O99svNuWhOwWuyemsERZiOelO2Kg1ThEWPHi2brhPwBr2dqS6wNAzNN3AVdB2XBVH
         fkYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773077399; x=1773682199;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KipMVVuGQMbQ4BsqUAHiLUTatcHz9+mB2xDvVvuesng=;
        b=cjqWOvFwKeiYKSZncSqHXc5+VNFGjSMw1tbaEMAHdqhQVPUBMIjnH+sTcVIsWgdO/2
         r0soPRE1TO1KG8iGbfpkc8yP/P88s8hSEe7UOqmBQy0uKdM8KpUKrLGkG6G+Srgn8ZHw
         wZ1caE7enkI8Qn1nfUSlx3469mdEehNIYsjrJY+ihEKvRsOQD54IqH3P5DSwFj3/DFZ8
         SP1M4Pv3yKU4RiK4+xztJJJ+/uYc3RBr7aR2P2Qtr1DAuyNcZmVSFd0FZ09OYNKNyYwh
         RLR9Wf7k4CnLgijAMPDLlfz7UIPc9FfVYaEOu+wzNSjUPg2WRzc7k5p9fR+t+JuMyu7k
         +JXg==
X-Gm-Message-State: AOJu0YxVVSQWWWsZSBE+1LJJy9Jg8IDSiZgfBa2LTnDAejizmmgCZsft
	SzLic4jxwlEC2aHQ+dEf0vUSc+AMC2N8mnHWeU+LLH2Zoi6FDiH4W+UMh4j9fAAvgaSr7IrLuB1
	uAHqXGSLoOnng1PaO640b8Bb2lKKLPhIJ+Kgt
X-Gm-Gg: ATEYQzylnV3Kk312cWVPPj2wTN9yfnFpWhRakEeQQuHBd6avsBA9VKSel+KUuPrMFBE
	TcL/YKJuAGMinNKLkyhAseIt5Ovy6zaz1rXAa1t8c9bxPnEF6/4kAT5C59lOZVPxrM5GvvBp6L4
	xqA+w+DAQuIBfpl/4cKKW7ptkoVixgIWTQKJdZuGSeXHYgx8nTgr1JELHD1PvH9eylKbgNkLWdE
	Wwt92WtGjN7Q/mKiVzAI+wTCapwHSBULX8topD1idIMeiDCTOG3y4CiM4E/ltNmkepZVA02Q4u7
	KFGzDWkf
X-Received: by 2002:a05:6102:41a6:b0:600:11e1:2a4b with SMTP id
 ada2fe7eead31-60011e12bf3mr2541145137.34.1773077398817; Mon, 09 Mar 2026
 10:29:58 -0700 (PDT)
MIME-Version: 1.0
From: Tabitha Sable <tabitha.c.sable@gmail.com>
Date: Mon, 9 Mar 2026 12:29:47 -0500
X-Gm-Features: AaiRm50h848hJJcTzbFq89ha8Qum4I0kB8uacJ0M1aLQis9vcJmVG4sfY8naM3w
Message-ID: <CAM62Sm+vbcd9O8JJ4MA-hhbaY2OxK9+PxQdECVueZYxEXqZFVw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008410de064c9ac0c4"
Subject: [oss-security] [kubernetes] CVE-2026-3288: ingress-nginx rewrite-target nginx
 configuration injection

--0000000000008410de064c9ac0c4
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in ingress-nginx where the
nginx.ingress.kubernetes.io/rewrite-target Ingress annotation can be used
to inject configuration into nginx. This can lead to arbitrary code
execution in the context of the ingress-nginx controller, and disclosure of
Secrets accessible to the controller. (Note that in the default
installation, the controller can access all Secrets cluster-wide.)

This issue has been rated **HIGH** ([CVSS calculator](
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H),
score: 8.8), and assigned **CVE-2026-3288**

### Am I vulnerable?

This issue affects ingress-nginx. If you do not have ingress-nginx
installed on your cluster, you are not affected. You can check this by
running `kubectl get pods --all-namespaces --selector
app.kubernetes.io/name=ingress-nginx`.

#### Affected Versions

- ingress-nginx: < 1.13.8
- ingress-nginx: < 1.14.4
- ingress-nginx: < 1.15.0

### How do I mitigate this vulnerability?

Prior to upgrading, this vulnerability can be mitigated by using admission
control to block the use of the rewrite-target annotation.

#### Fixed Versions

- ingress-nginx: 1.13.8
- ingress-nginx: 1.14.4
- ingress-nginx: 1.15.0

#### How to upgrade?

To upgrade, refer to the documentation: [Upgrading Ingress-nginx](
https://kubernetes.github.io/ingress-nginx/deploy/upgrade/)

### Detection

Suspicious data within the `rules.http.paths.path` field of an Ingress
resource could indicate an attempt to exploit this vulnerability.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/137560

#### Acknowledgements

This vulnerability was reported by Kai Aizen

Thank You,

Tabitha Sable on behalf of the Kubernetes Security Response Committee

--0000000000008410de064c9ac0c4--

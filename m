Received: (qmail 11466 invoked by uid 550); 1 Jan 2026 22:03:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28158 invoked from network); 1 Jan 2026 20:42:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767300129;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4iv7oCBTB1cKlSLrv4xcPCf8g5ZEUHEO1JDxVDDirVI=;
	b=eMAWLm71ZTqKUoEPDDH0BtCUUrEE2u+kCSpeHcQDIXti90zB+h/y5A+0ySSJmLMy8HkhLr
	6zVYHPYSMROxVWqZvSFDryTZ8CgghxZyEsx3Y9uG3MgBaB7vvGaxPjvlMWFz6Z6Z1/m7E8
	Mnwd45W6hPgsfivvOBNAZWlhwMOPKDw=
X-MC-Unique: epX4XisGPxmtvVUY1BKoNg-1
X-Mimecast-MFC-AGG-ID: epX4XisGPxmtvVUY1BKoNg_1767300127
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767300127; x=1767904927;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SUZs/mSTVWjrhLZM4Qycx8fcN3KSfZZEx3jS7NGp5Ko=;
        b=G3n3itDCu28TViAWhyvB9utB4mmG+oDU+96fj2Prie+GtkQavJ1YQHDEQyuGn7pbgw
         WsRGZbX/FPz8SOqdAy1AnLAj0yvMokj4A/gf1PbiZ4DLp3A+8qUcGA52i39Xd73qG6Bw
         PG0s2PcPpT9zoh7sqOXopTH13BvsUM5tthTFf+K+P7tuv0ky1VRm7PENlShkZ5SrqtG+
         RSc4mEV71cE4wJCpJQz5vjUGy/hiR10B7pHHd+//DKpy5rMc+Z0Ra1BvKpsO2Dmq/dgT
         a7yWng2cjtZpAuhHznnTA0LKWCOM1IZ2dAbrb3NSNH+HPfkkgUOl8E9+KO+BXXlLsJJ8
         OGZA==
X-Gm-Message-State: AOJu0YwYo+CZ+jOQjEwiAF4vqm+Nends1zesH9NGXXJpfH8tnvDVczeI
	40huCq+pvIJ5UfdPyFLduWMi2UIvpidPhHdVjY40MXzvvfaLwBxxUGn6onU2MQqitlbdxKDXt31
	+4wfaL1juYQSUF8vAqQ75prHnSF1qiKVCnnoZ9rFjFgN1gUnPfhXIOr5QgJxTVcBBV3g5PQwlh/
	5W1FAIumPbgv1vgJrChIwfbwggBLBrwLEMCTVs3zVmSEuFv0A7OlM=
X-Gm-Gg: AY/fxX7dzvqICzakNCgetkXtZnWGqIaZgOUjC+DaEQhapWS5mjNA2OYsGngsy6/2izY
	qVY86iWTpWkO0EvGZj2bAPDF4BsXoO8mNbN1Y5mbluLSDz5MIOtixxy3oYw63B81Z0O64qT0Jq5
	+r6UzIPG+cCQY88cZ4q3aeaDhq8VhANzbkiEQCKZnDT5lZhQlof2pQzAxIV6EP31khgbmOR3DX4
	05MWSHU2l5sT/4i99r5eTwhtXda+38rhgH6KLuIX4cLobO6SZbafC76IH6oWZ57SRf1TTMaTemT
	Z3FH0Rj2tECJV4kn+DhKqHHrPOZCs+Hwf2hnKhERT8nKl7rWtvytiT2kI/8lAbPkAn/bzBUtyQ5
	Dq8JuCnsWycMy+rOvjXGE6qhJr6KmhRLQ2g1GHQ==
X-Received: by 2002:a17:906:f598:b0:b79:cf10:a17c with SMTP id a640c23a62f3a-b8036f2d2e9mr3831695066b.10.1767300126764;
        Thu, 01 Jan 2026 12:42:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGk62e8JrGVWJXlTDgGp27795rpLQVUC/28BOilmk5p4bDGaTD7cmwza3pCjxsImcTttWNJGA==
X-Received: by 2002:a17:906:f598:b0:b79:cf10:a17c with SMTP id a640c23a62f3a-b8036f2d2e9mr3831693666b.10.1767300126322;
        Thu, 01 Jan 2026 12:42:06 -0800 (PST)
From: Clemens Lang <cllang@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Date: Thu, 1 Jan 2026 21:41:54 +0100
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org>
To: oss-security@lists.openwall.com
In-Reply-To: <878qei6bq7.fsf@josefsson.org>
Message-Id: <9882E5D7-2B0D-46DF-A0E2-3E23D8DCBF66@redhat.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1RiLNHMlea0KbfXqDshOxugrFuvDOdid61OaSC1tchQ_1767300127
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Best practices for signature verifcation

Hi Simon,


> On 31. Dec 2025, at 14:07, Simon Josefsson <simon@josefsson.org> wrote:
>=20
> I believe that Ed25519+SLH-DSA is the best
> near-term PQ variant for long-term software protection, alas no
> practical tools offers this today.

SLH-DSA relies on the security of hashes, which I think we understand prett=
y well, so I=E2=80=99m not sure we need a hybrid with SLH-DSA. But then aga=
in, an Ed25519 pub key and signature are minuscule compared to SLH-DSA, so =
maybe that doesn=E2=80=99t matter.

Note that there are some outside requirements that at least companies will =
not be able to ignore:

- CNSA 2.0 (relevant for US government customers) does not allow SLH-DSA, o=
nly ML-DSA
- Common Criteria certification requires elliptic curves >=3D 384 bits or R=
SA >=3D 3072 bits, ruling out ed25519
- use of FIPS-certified primitives (historically a problem for solutions im=
plemented in Go, or shipping their own implementation instead of re-using O=
penSSL, for example)

Some of these rule out signify, for example.

Any solution that hopes to be widely adopted should be able to address thos=
e, if necessary through cryptographic agility.


--=20
Clemens Lang
RHEL Crypto Team
Red Hat


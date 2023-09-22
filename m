Received: (qmail 9547 invoked by uid 550); 22 Sep 2023 13:21:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5769 invoked from network); 22 Sep 2023 13:18:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695388703;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OdzDolk3Qyw+dNKRlJ2gdhfr/Z3eumPU+BwPbcBWKdo=;
	b=ZUorPA+v2l+uf509KaxQbyYcbLwA21PPz/chhEURzsicyHya3PMIVgTiNeb2CyBOXzYQF4
	GrPx1DAIYHxqdWEHYmOX8XvpdGdgx+msu/ErylYUe5AYLQsPuIw2G33qvrHXY0YEeAobVJ
	3jRYDLpOHs9ejMK74k3oxnIl8OD4OAI=
X-MC-Unique: SLthiYBIObCVqFyrx_NSaw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695388699; x=1695993499;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdzDolk3Qyw+dNKRlJ2gdhfr/Z3eumPU+BwPbcBWKdo=;
        b=SQwBcvdzGCrdmAQ2c9XEvOIuXhBWyB5BG1efHIQVBH6Y1pXAkuXZ3pY3kFVVL5PGAk
         zMKI3NELnKdpRIFA2wFp53KEztKd2JLrTMgmgcAVCAkBahxN+gI7HnoytkR/kGpcP4Y7
         tMa1I8pjaanpXMcBhsduIFCQSHnciIwjYF65MjAc3PVcerQsqzdTxLPx+rdt5WrObl3/
         QPVYCnmidiHpvhkcI9W6+VKrLlIO+mUbfuHFPSt8VLTAVdpv5lJ+44upx3j8rc3Coe9I
         4vJG4LQdPIavY0XrqDdUOblUGDWjiYhnqCNIDGysO2IoNhmrzGPT3LRpRGmHyCGLahmq
         4fWA==
X-Gm-Message-State: AOJu0YycmoohfKPYSrqJhaWViq9ZgKOebPB/pvinSRN3l1KGeuGqrQSC
	mMxdSvm76gob2rc8vdFyVfrG4tBzgqQfgEdLlKp11nA3z1bHXyCCW7jm/zC88LsVBQIrRUdIa1y
	zEHYkiHVGVgMxRh7z6ZqWXZKEKSnkvnyrL5lHZVgwTeC743PmOdQU
X-Received: by 2002:a2e:9b42:0:b0:2bf:fab9:db28 with SMTP id o2-20020a2e9b42000000b002bffab9db28mr7834985ljj.6.1695388699257;
        Fri, 22 Sep 2023 06:18:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzPOuycTkuJ4eCy2+k5ao+63l+IN9Pbm+8xvu2jsrahGJzekH76gW2XDSwOPRw0mqAUSnicz4lFvOpbAet9QM=
X-Received: by 2002:a2e:9b42:0:b0:2bf:fab9:db28 with SMTP id
 o2-20020a2e9b42000000b002bffab9db28mr7834961ljj.6.1695388698888; Fri, 22 Sep
 2023 06:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230921205250.GA13106@openwall.com> <20230922072817.092917d2.hanno@hboeck.de>
 <72a6e741-1420-d21d-11cc-2592598e53f4@canonical.com>
In-Reply-To: <72a6e741-1420-d21d-11cc-2592598e53f4@canonical.com>
From: Rodrigo Freire <rfreire@redhat.com>
Date: Fri, 22 Sep 2023 10:18:07 -0300
Message-ID: <CAHjsZGb3P0dt1fe-SzcFXY_UiJWTR4v_Krv8ZaMDDaps09T6uQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

On Fri, Sep 22, 2023 at 8:43=E2=80=AFAM Marc Deslauriers
<marc.deslauriers@canonical.com> wrote:
> We (Ubuntu) didn't include that second commit in our libwebp updates, and=
 I
> don't believe Red Hat/Fedora did either. If that second commit does have a
> security impact, it probably needs a different CVE to clear up confusion.

And hope that time the CNA assigns the CVE to the right component...

- RF


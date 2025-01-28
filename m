Received: (qmail 5897 invoked by uid 550); 28 Jan 2025 14:05:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5871 invoked from network); 28 Jan 2025 14:05:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738073121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nCTjtdV7RjQ7XP9JQhZRv3cahoZwFSc6SniJyiZPet0=;
	b=ASqZh0F2m15jIpaVJXJQxpBzsCjCo8LxssGHlDRMdlwish2Opib8FwrOcBj1OKxxdOd6fZ
	DT7CQA94qM3n00VSuMTXBu0w5h2OKJGQXT6RVQ32Co7CU6sGdKReX0csgc3sKh6nIwaCAj
	vav71AICvf5u4CqYcB7eMidCS75awDQ=
X-MC-Unique: qXi7v1CTOqqwLb2hF8RCiA-1
X-Mimecast-MFC-AGG-ID: qXi7v1CTOqqwLb2hF8RCiA
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738073119; x=1738677919;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nCTjtdV7RjQ7XP9JQhZRv3cahoZwFSc6SniJyiZPet0=;
        b=ixn+4twNV5HcAxFxMVFCe2I0ymG7mh9H6PWAglq9hJIVm1veAuyXtwtzPqbo1c56dn
         JLV10VbaC7KnNcFIRiA/dnN7ZCToOYnzb7kkf0av1n5oq5rDgA7G9WnkgKkNUGyC5qZx
         6RR4kMp8SIzes10B0XGfVAxKOigCcXYbVvI2lbj7aoq2WDFa+TEbSmql2Ynadihv0Me/
         +SY6LNVAvyz8rAIUfC5G/axuCkvnIKfrS5TaDHY3J80Oda9riNUAQiXSSZRIOaU2lQL6
         mvv/y89PqdTjDY0kg4L7BiSElhofE5YBTLYziesWXnmFn46F94ujZj+2iZ+Nwi4o76Bj
         LYnQ==
X-Gm-Message-State: AOJu0Yy/dTGhNxnoOzmA52piG7h8SxzfMZW+xdblQD75Ea4rz9UmPM3U
	yVY5Hg9qfsTeJT8BEgYwK9qYC5BGjieTt7q9wQGYIEbuCg5lv6zjy+0gweHcABOlfq8gn0Nx/ez
	pMa8hwJinJHYiQAPbzQBsx2yyAJojCKedSbciodDQ8wWsjh4eXf7Ex+PkNH6j4melzkfL8BymIO
	GE9NLhrWwD2CiSieE+G15fsse/MOcw4pztOn0uM3yw
X-Gm-Gg: ASbGncvcDRfeAglzIBKT/RrQQ8zyJhPwA2zNuNPDlPi/NG6C2Uqj2Isx4LfQjRYeWA9
	t2jQamRkcS23RPDpmX4kcC1A3Z96l/kbrEXBl+H7fIP1EhKtJ8NCvBVtEE66lbDE=
X-Received: by 2002:a05:6871:210b:b0:29e:62e5:9b55 with SMTP id 586e51a60fabf-2b1c0ab0ce2mr25228941fac.20.1738073119026;
        Tue, 28 Jan 2025 06:05:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtvO9haN0WlD7DDzhkqyseWCe0qu4ZoTp6Ij//+WDnpwvcvx/LDfK5woWD/MxYe/KE5jTh6rbZ712ZiQ0NgFc=
X-Received: by 2002:a05:6871:210b:b0:29e:62e5:9b55 with SMTP id
 586e51a60fabf-2b1c0ab0ce2mr25228929fac.20.1738073118762; Tue, 28 Jan 2025
 06:05:18 -0800 (PST)
MIME-Version: 1.0
References: <Z4__rJ3_SmmtEIsG@netmeister.org> <0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
 <2025012512-likely-strainer-4e6d@gregkh> <CAEFCzXX4sU9ps3PLcgjOS84+bKAb1qXy_koJdGNMqKokEsDbgg@mail.gmail.com>
 <87bjvssr2k.fsf@oldenburg3.str.redhat.com> <CAEFCzXXNvs6vLnqv+1y4Ob9=j9CHms5LMYHkXBQhcOcwd_0T-w@mail.gmail.com>
 <87sep3jmne.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87sep3jmne.fsf@oldenburg.str.redhat.com>
From: Pete Allor <pallor@redhat.com>
Date: Tue, 28 Jan 2025 09:05:06 -0500
X-Gm-Features: AWEUYZlfFs2TaiBsLa8ZlLyiyljwrZYF_5n_jAlR6wRCOztETk4LbVfS_0iTdzI
Message-ID: <CAEFCzXVxs+J=L1BEd-BAmpfWiwi+t9cxeU4yJ1FKs7QVDBf9pw@mail.gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: H6rD45kz_UP92z_eM2Q1ZHXY-JCaMiMBqxkcL3MSQtQ_1738073119
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000d6869b062cc4aef9"
Subject: Re: [oss-security] Node.js EOL CVEs: CVE-2025-23087, CVE-2025-23088, CVE-2025-23089

--000000000000d6869b062cc4aef9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Florian,
I think you miss what actually is done and how, with whom / what.
Pete

On Tue, Jan 28, 2025 at 4:47=E2=80=AFAM Florian Weimer <fweimer@redhat.com>=
 wrote:

> * Pete Allor:
>
> > It is why I would advocate for a CVSS review (as we do at Red Hat) and
> > then assign a 'Severity Rating' as that now involves how the component
> > is used within our software which changes HOW a
> > customer/downstream/user should actually view that CVE.
>
> But is this really how it works these days?  For example, if we use a
> component to render the in-program documentation (traditionally called
> =E2=80=9Conline help=E2=80=9D, but we would consider this offline today),=
 and the
> upstream for this component documents publicly that a vulnerability is
> being actively exploited for (user-initiated) remote code execution, we
> must fix the component even if it's just used in an offline
> documentation viewer.  CVSS impact review does not change that, as far
> as I know.
>
> Hence the suggestion of a fork, so that upstream's exploitation
> announcements do not carry over 1:1 to the product.
>
> I think this fix-regardless-of-impact requirement is new.
> Legitimate-looking sources for inflated impact ratings have been around
> for more than a decade, on the other hand.
>
> Thanks,
> Florian
>
>

--000000000000d6869b062cc4aef9--


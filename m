Received: (qmail 12192 invoked by uid 550); 12 Oct 2023 16:23:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29974 invoked from network); 12 Oct 2023 16:06:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697126770;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RVVglt80bdNdD0LGrnzrOd1/SfBsG2sms/08m/Urv8g=;
	b=Ih+ia59pwXzs39riaIMIz+YlJfQpEPxhg956tfdIY3flHLnXBroGDxduSdEDLMgeokh0z9
	8Ic6flbOPyT8Gw9VOgjNDXjX7xTqBf3IKERMe48jPuYOkdZKvHNC+cA0kpDITExmPKamjs
	pctDbL0L/bYlOrDI/qMe6M8mUhKdlVk=
X-MC-Unique: OJ5LMm9INgeMCocrQ7ybtQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697126766; x=1697731566;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RVVglt80bdNdD0LGrnzrOd1/SfBsG2sms/08m/Urv8g=;
        b=wDl6jRUJF1Z2JJfszdbiK4PoDwZp72U+8XKqPCov+ZVO8IpVVSIuzDHZR2Z/QtCDYT
         W4tUIVJbfyg22YDBPJqlry+rtLY4td2xmHLXRk2/6IqGmTFwWIyGPyDJJN0tcdcIfg72
         z4jC6L0j9sDTC9DuZ83PpIupdgJJ45A3SS1+9lrcM0/KNLMucRcV/+qXD1okf8pFibZZ
         h1Bdmx+GbOhon0T8S2UyRgSry/237kKpPXdi6WpHuijTgGoQqOEJMBfE5W5Ml5c8Ubik
         oSo/PhHffVsBJ0TUU2CAIsRXeWbAZLfR7H0/zcvNWXtYFRN/oBje8Czwp5tAngQloPlb
         jLSg==
X-Gm-Message-State: AOJu0Yx9qIu1qyQkdvxJ+RmRwHqkDEpWZC4RHSuRulXzA5OVi8NmKNLw
	UEHEowOslcBePB3ppyGhpGvS8pT8Vd/ICp97O/nfA9KNVv44PqinJFeDDwL/N60dqPqd+TQXwGc
	B4LiSAqps9SFSugOmzQxY3GOitAzKJ71/xUVA0vfxzxMzPNDE4bR3eJLJ1dNk6UzSLdXxTI7XIh
	2zu4zOx95De2+x8N2HKgQ=
X-Received: by 2002:a05:6808:2a62:b0:3af:c13c:b442 with SMTP id fu2-20020a0568082a6200b003afc13cb442mr8573173oib.10.1697126766111;
        Thu, 12 Oct 2023 09:06:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTnO530Cayu9tCzIZjFcZ8uNGBvWJAreuJLy1xwrd37GnuqtfFYGqfRhTO93Rzc9moCCaRw4w3Hw==
X-Received: by 2002:a05:6808:2a62:b0:3af:c13c:b442 with SMTP id fu2-20020a0568082a6200b003afc13cb442mr8573163oib.10.1697126765715;
        Thu, 12 Oct 2023 09:06:05 -0700 (PDT)
Date: Thu, 12 Oct 2023 09:06:05 -0700 (PDT)
From: midawson <midawson@redhat.com>
To: <oss-security@lists.openwall.com>
Message-Id: <8c24a607-244c-4690-8d7d-c9c4383305cfn@googlegroups.com>
In-Reply-To: <8f721d36-96bf-4449-9f05-36e24e9eca49n@googlegroups.com>
References: <8f721d36-96bf-4449-9f05-36e24e9eca49n@googlegroups.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_2614_1418633193.1697126765529"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, October
 2023

------=_Part_2614_1418633193.1697126765529
Content-Type: multipart/alternative; 
	boundary="----=_Part_2615_996173807.1697126765529"

------=_Part_2615_996173807.1697126765529
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Forwarded message ---------
From: midawson <midawson@redhat.com>
Date: Thursday, October 12, 2023 at 11:58:09=E2=80=AFAM UTC-4
Subject: Node.js security updates for all active release lines, October 2023
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release=20
lines on or shortly after Friday October 13 2023. For more information=20
see:=20=20
https://nodejs.org/en/blog/vulnerability/october-2023-security-releases

------=_Part_2615_996173807.1697126765529
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Forwarded message ---------<b=
r />From: <span dir=3D"auto">midawson &lt;midawson@redhat.com&gt;</span><br=
 />Date: Thursday, October 12, 2023 at 11:58:09=E2=80=AFAM UTC-4<br />Subje=
ct: Node.js security updates for all active release lines, October 2023<br =
/>To: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&gt;</sp=
an><br /></div><br /><br />The Node.js project will release new versions of=
 all supported release lines on or shortly after Friday October 13 2023. Fo=
r more information see:=C2=A0 <a href=3D"https://nodejs.org/en/blog/vulnera=
bility/october-2023-security-releases" target=3D"_blank" rel=3D"nofollow">h=
ttps://nodejs.org/en/blog/vulnerability/october-2023-security-releases</a><=
br /></div>=

------=_Part_2615_996173807.1697126765529--

------=_Part_2614_1418633193.1697126765529--


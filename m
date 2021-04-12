X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["476" "Monday" "12" "April" "2021" "16:09:56" "-0500" "Mike Drob" "mdrob@apache.org" nil "18" "[oss-security] CVE-2021-29943: Apache Solr Unprivileged users may be able to perform unauthorized read/write to collections" nil nil nil "4" nil nil (number mark "U       mdrob@apache Apr 12   18/476   " thread-indent "\"[oss-security] CVE-2021-29943: Apache Solr Unprivileged users may be able to perform unauthorized read/write to collections\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-29943: Apache Solr Unprivileged users may be able to perform unauthorized read/write to collections" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3347 invoked by uid 550); 12 Apr 2021 21:54:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19472 invoked from network); 12 Apr 2021 21:10:20 -0000
X-Gm-Message-State: AOAM532QyYYkK6e+IyM0dNs8p/eTYoTH7fKr3CIhCJX0L4YmBorb/df2
	L+HaMbEYe6DSkwD9fKiNpZPGaRnEtCBovXj3ZtwEsw==
X-Google-Smtp-Source: ABdhPJylDH3oMYFxVv/rAVeQaBuyGm1yIc3VIlmd4wCb9/O+NjVwmiaz1JfrHUSpug4X+6Y9fEBSWrQDwAbtI6AHjpc=
X-Received: by 2002:a17:90b:1bce:: with SMTP id oa14mr1171957pjb.9.1618261807398;
 Mon, 12 Apr 2021 14:10:07 -0700 (PDT)
MIME-Version: 1.0
From: Mike Drob <mdrob@apache.org>
Date: Mon, 12 Apr 2021 16:09:56 -0500
X-Gmail-Original-Message-ID: <CAJRvFdqhi0PfOmZsxOyVYxW3Jyv6E9GAR_UKnM0LqD_Ti5io6w@mail.gmail.com>
Message-ID: <CAJRvFdqhi0PfOmZsxOyVYxW3Jyv6E9GAR_UKnM0LqD_Ti5io6w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002f070305bfccf02e"
Subject: [oss-security] CVE-2021-29943: Apache Solr Unprivileged users may be able to perform
 unauthorized read/write to collections

--0000000000002f070305bfccf02e
Content-Type: text/plain; charset="UTF-8"

Description:

When using ConfigurableInternodeAuthHadoopPlugin for authentication,
Apache Solr versions prior to 8.8.2 would forward/proxy distributed
requests using server credentials instead of original client
credentials. This would result in incorrect authorization resolution
on the receiving hosts.

This issue is being tracked as SOLR-15233

Credit:

Geza Nagy

--0000000000002f070305bfccf02e--

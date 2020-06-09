X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1861" "Tuesday" "9" "June" "2020" "12:08:24" "+0200" "Richard Hartmann" "richih.mailinglist@gmail.com" "<CAD77+gT2fd=vCsL=xtF=QF3OOkmExVR05+zPs9_L_8GLzDACkQ@mail.gmail.com>" "57" "[oss-security] Re: Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379" nil nil nil "6" "2020060910:08:24" "[oss-security] Re: Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379" (number mark "U       richih.maili Jun  9   57/1861  " thread-indent "\"[oss-security] Re: Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379\"\n") "<CAD77+gTN-F3e_KYuUtkWF6xQFQ0=tW3UCvc7PdM+Ap0YgokSSw@mail.gmail.com>" ("<CAD77+gTN-F3e_KYuUtkWF6xQFQ0=tW3UCvc7PdM+Ap0YgokSSw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26302 invoked by uid 550); 9 Jun 2020 10:28:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11491 invoked from network); 9 Jun 2020 10:08:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3d9xaXNHXr3XhmEA8lhZXAw2FkU7zBgkdquuW2Og888=;
        b=TyIH5+4i3wwkT0eCS4QmkREqnXSuX90XfhgoywLbvYzBLGDPe4w9s3Ro9HIlbbNUSl
         kYyt1EUP08yRvoXN2aKf4A3mcPbjv2PmHxEMJ1F1Vm93Xk4euPds1iOgpaxZMwCrcVmD
         rjSSflVb9CUoXo7VGKH2oizYQzDkpUNhe0xWM+vBpOnsjG7tgX3xtBF+nbCin1/S371B
         dptGkx/iaPjup6OBI80W5ANocx5zJ2Vynfy6D4E9Fd1/3myED3VELGeSpMNJIlQQNvqy
         iBnHNOdv+JdSAtqMcnhonUr/nlVkg6tjg/ITqnO2hLLk2g4P3rgcIQNK3l3Pyep218KP
         RwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3d9xaXNHXr3XhmEA8lhZXAw2FkU7zBgkdquuW2Og888=;
        b=r6dCqMob17kcBC8vtFYfUE6MWAATUxg7fUvTV8NASUENNurwNi4ly4RDe6O8pxjz/W
         Bg6+bt3pZco55hgNPF6ceHl3TM45SguX1163Y0/D2HD3LwM3dDP/Io3J+2LIyK5uvluF
         TVI72OOQZAilistA0kBi/mUWP2pKAomyQ66qHr0eFTIg/WQIuGgTNx4X96EwMush0ip5
         +f7zaNFMdCwl+wDKDUEExqX1tjO4wOADB6ugZVkFLYI1+00bForJZ0OpyGi5VnLcpP7R
         v3UwMLJDMUY1lIRMAUFzkp6aCkZqOHpQENupIbN7TPinFZZYrSwRt3Nu9vA3lE8R48li
         4Cag==
X-Gm-Message-State: AOAM533cGkHCYrXE5PWml7Lu33o+ccdTo4mStSNZO1Op7efI8S5Qav+A
	jU/R98m6kSg/F8pMguYO9MQ3FRulPitZIDTy+CuGKEtr
X-Google-Smtp-Source: ABdhPJyLohLGowMq6JK6xNkZcsy0CNbDlOiMoZ1wqGxojidM/2iHBXNu178ckZbDq7TbonG9SKfB4xw1YpKx9v8LgU8=
X-Received: by 2002:a17:906:6410:: with SMTP id d16mr25953562ejm.376.1591697315314;
 Tue, 09 Jun 2020 03:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAD77+gTN-F3e_KYuUtkWF6xQFQ0=tW3UCvc7PdM+Ap0YgokSSw@mail.gmail.com>
In-Reply-To: <CAD77+gTN-F3e_KYuUtkWF6xQFQ0=tW3UCvc7PdM+Ap0YgokSSw@mail.gmail.com>
From: Richard Hartmann <richih.mailinglist@gmail.com>
Date: Tue, 9 Jun 2020 12:08:24 +0200
Message-ID: <CAD77+gT2fd=vCsL=xtF=QF3OOkmExVR05+zPs9_L_8GLzDACkQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379

Thank you to Mark Cooper from Red Hat, BCC'ed, for pointing out that
the same issue could be abused for DOS via SegFault.

We are updating our blog post and will update the CVE as well.


Best,
Richard

On Wed, Jun 3, 2020 at 3:34 PM Richard Hartmann
<richih.mailinglist@gmail.com> wrote:
>
> Dear all,
>
> today we are releasing Grafana 6.7.4 and 7.0.2. These patch releases
> include an important security fix for an issue that affects all
> Grafana versions from 3.0.1 to 7.0.1.
>
> Incorrect access control vulnerability (CVE-2020-13379)
> We received a security report to security@grafana.com on May 14, 2020,
> about a vulnerability in Grafana regarding the avatar feature. It was
> later identified as affecting Grafana versions from 3.0.1 to 7.0.1.
> CVE-2020-13379 has been assigned to this vulnerability.
>
> This vulnerability allows any unauthenticated user/client to make
> Grafana send HTTP requests to any URL and return its result to the
> user/client. This can be used to gain information about the network
> that Grafana is running on.
>
> If for some reason you cannot upgrade, the impact can be mitigated by
> blocking access to the avatar feature by blocking the /avatar/* URL
> via a web application firewall, load balancer, reverse proxy, or
> similar. It can also be mitigated by restricting access to Grafana.
>
> Affected versions
> Grafana releases 3.0.1 through 7.0.1
>
> Patched versions
> 7.x and 6.7.x
>
> Solutions and mitigations
> Download and install the appropriate patch for your version of Grafana.
>
> Grafana Cloud instances have already been patched, and Grafana
> Enterprise customers were provided with updated binaries, under
> embargo, on May 27.
>
> Further information can be found at
> https://grafana.com/blog/2020/06/03/grafana-6.7.4-and-7.0.2-released-with-important-security-fix/
>
>
> Richard



-- 
Richard

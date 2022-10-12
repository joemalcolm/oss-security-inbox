Received: (qmail 3108 invoked by uid 550); 13 Oct 2022 06:17:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19494 invoked from network); 12 Oct 2022 22:16:16 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf3XCmI9F0LTtxk1rjVCWHVDVa43S8hH7Lr5t5zbu+VK1+KtSKSr
	c5D+LZ4KIesukvrQ4HflPDCWSCOB9hiCnQfvsJw=
X-Google-Smtp-Source: AMsMyM6p+kh/pY5/hHRw8F979YtR7pda78KvnwwSKpTsouVPAAS8ZWRBQ0Q4plN8/P3tHolQgnx0O+WDJj/wz4msKsw=
X-Received: by 2002:a05:6402:1d86:b0:457:e84:f0e with SMTP id
 dk6-20020a0564021d8600b004570e840f0emr28972329edb.241.1665612930931; Wed, 12
 Oct 2022 15:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAH9eYVo6DNN9awE8txmY_U2aYposhy7pon689n0L6h5yROpqPg@mail.gmail.com>
 <2658c645-b4f7-1a39-2742-927e937be657@oracle.com>
In-Reply-To: <2658c645-b4f7-1a39-2742-927e937be657@oracle.com>
From: Brian Demers <bdemers@apache.org>
Date: Wed, 12 Oct 2022 18:15:19 -0400
X-Gmail-Original-Message-ID: <CAH9eYVog2BcGtOVgLp3Spc5=NN3d4RQAe3yGEmkF1+9zhz3H5w@mail.gmail.com>
Message-ID: <CAH9eYVog2BcGtOVgLp3Spc5=NN3d4RQAe3yGEmkF1+9zhz3H5w@mail.gmail.com>
To: Alan Coopersmith <alan.coopersmith@oracle.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000014e1a705eaddbb08"
Subject: Re: [oss-security] CVE-2022-40664: Apache Shiro: Authentication
 Bypass Vulnerability in Shiro when forwarding or including via RequestDispatcher

--00000000000014e1a705eaddbb08
Content-Type: text/plain; charset="UTF-8"

Thanks for the feedback Alan, I'll make sure to include additional info in
the future.

For now:

Mitigation:
  Update to Shiro 1.10.0

References:
  https://lists.apache.org/thread/loc2ktxng32xpy7lfwxto13k4lvnhjwg

On Wed, Oct 12, 2022 at 3:21 PM Alan Coopersmith <
alan.coopersmith@oracle.com> wrote:

> On 10/11/22 19:52, Brian Demers wrote:
> > Description:
> >
> > Apache Shiro before 1.10.0, Authentication Bypass Vulnerability in
> > Shiro when forwarding or including via RequestDispatcher.
> >
> > Credit:
> >
> > Apache Shiro would like to thank Y4tacker for reporting this issue
>
> Thanks for informing oss-security of these issues, but good security
> announcements have a little more detail, like what actions users or
> distributors need to take (upgrade to a new version?  what version?)
> and information on where to find more details, like a bug id in your
> bug tracker.  If you look at the announcements from other Apache
> projects, you'll see they often include those.
>
> Some good examples:
> https://www.openwall.com/lists/oss-security/2021/12/18/2
> https://www.openwall.com/lists/oss-security/2022/01/05/4
> https://www.openwall.com/lists/oss-security/2022/01/06/2
>
> --
>          -Alan Coopersmith-                 alan.coopersmith@oracle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris
>

--00000000000014e1a705eaddbb08--

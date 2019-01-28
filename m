X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2791" "Monday" "28" "January" "2019" "23:25:06" "+0100" "Peter Korsgaard" "peter@korsgaard.com" "<87munkbet9.fsf@dell.be.48ers.dk>" "71" "Re: [oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c" "^Cc:" nil nil "1" "2019012822:25:06" "[oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c" (number mark "        peter@korsga Jan 28   71/2791  " thread-indent "\"Re: [oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c\"\n") "<CA+2=X7vy=7GV+eq4Arc4Yh+305Y4wLeVcL+V0fJ3ErXMkJ28PQ@mail.gmail.com>" ("<CA+2=X7vy=7GV+eq4Arc4Yh+305Y4wLeVcL+V0fJ3ErXMkJ28PQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32029 invoked by uid 550); 28 Jan 2019 22:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32011 invoked from network); 28 Jan 2019 22:25:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version;
        bh=1V40e6f7Axq+WK1AE0pdNmbsEE1/lBYYsMo6yyxUs8s=;
        b=BGWkmCM66oHZlBKzV242Ao6iwfkVUOOiMTeP/IfYGhVilMC6MZAJYERAW5osqDR10X
         gZe5HezWCv4Ge6UxXLGGoF6yMPB+foRKPcqmjpljqba4UIgc86BLRfrRAu694IBvIUMQ
         pKZ2Yl+HupInebnYxn7kIGBocGwb9/gj93Vo/9AlqgxDqzxw7IC3oOLk0g4Q8Te2XRFD
         Pu5d3/zTZ0ku6pOu5pXU3fmrHwHYAI8ejmwfW1Xjn+dUT3RZezpkDz57O0mzP2mZ/+Iv
         +aZ1dGjv1YfDAK0EdbuoNz2oY8zmVEN0cZM1nw6tu1SbsTlEWuEK+2aNQCaEgFuuHtLE
         rysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version;
        bh=1V40e6f7Axq+WK1AE0pdNmbsEE1/lBYYsMo6yyxUs8s=;
        b=Iz6Wmofz6njJGY67vhNinmMEgcZeUlAKeE9dYIvV1Rt+AnRreapM2pArQIPptKJlrc
         eVHmJiuf20epoFne48iP0YJXHnzcnzgrsPLpyAgybq083P5q58EpVAnn90IrF6/gwkp2
         V42QDq0iZgmAGt49PePneUd0bMDlWjgNQ1ClFjRY4Jl7pTGxZvcyeYUGdkOS1j2RkLz4
         HC0/erj8tyIdSuv2wwLFTa2VfXf0WsVHHqTvhjalnJbqfbjP/qOcV4nEbR4VBcLkY2P1
         VaJGM3zrpO5ZnD3x5qu4uQRtdsc+S/qHRsbzkwvbLEqXTzF5l5+K0bswllvpFw6RyVsD
         Qw/g==
X-Gm-Message-State: AJcUukd5NZLnnHClJylBSPJuSCCCIFOGQniU4nhTsiYybBj+klz1d36Z
	bn6alXElAvj5UQ4OINDSG8s=
X-Google-Smtp-Source: ALg8bN6hHdctUTSdqr9HIXMzf3Dh29E6MoOpoNZbBhbxO9OVWGj4BxW813mk4cppGEm/coWtL/LDcQ==
X-Received: by 2002:a17:906:195a:: with SMTP id b26mr11545289eje.101.1548714308575;
        Mon, 28 Jan 2019 14:25:08 -0800 (PST)
References: <CA+2=X7vy=7GV+eq4Arc4Yh+305Y4wLeVcL+V0fJ3ErXMkJ28PQ@mail.gmail.com>
In-Reply-To: <CA+2=X7vy=7GV+eq4Arc4Yh+305Y4wLeVcL+V0fJ3ErXMkJ28PQ@mail.gmail.com>
	(Scott Gayou's message of "Mon, 28 Jan 2019 11:53:15 -0700")
Message-ID: <87munkbet9.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Mon, 28 Jan 2019 23:25:06 +0100
From: Peter Korsgaard <peter@korsgaard.com>
Reply-To: oss-security@lists.openwall.com
Sender: Peter Korsgaard <jacmet@gmail.com>
Subject: Re: [oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c
To: Scott Gayou <sgayou@redhat.com>

>>>>> "Scott" == Scott Gayou <sgayou@redhat.com> writes:

 > Hello,
 > spice versions 0.5.2 through 0.14.1 are vulnerable to an out-of-bounds read
 > due to an off-by-one error in memslot_get_virt. This may lead to a
 > denial-of-service, or, in the worst case, code-execution by unauthenticated
 > attackers.

 > The attached patch fixes the issue in spice and is planned to be included
 > in forthcoming release spice 0.14.2.

 > This issue was reported by Christophe Fergeau (Red Hat).

 > References:
 > https://bugzilla.redhat.com/show_bug.cgi?id=1665371

 > Thank you.

 > -- 
 > Scott Gayou / Red Had Product Security

 > From 6eff47e72cb2f23d168be58bab8bdd60df49afd0 Mon Sep 17 00:00:00 2001
 > From: Christophe Fergeau <cfergeau@redhat.com>
 > Date: Thu, 29 Nov 2018 14:18:39 +0100
 > Subject: [spice-server] memslot: Fix off-by-one error in group/slot boundary
 >  check

 > RedMemSlotInfo keeps an array of groups, and each group contains an
 > array of slots. Unfortunately, these checks are off by 1, they check
 > that the index is greater or equal to the number of elements in the
 > array, while these arrays are 0 based. The check should only check for
 > strictly greater than the number of elements.

 > For the group array, this is not a big issue, as these memslot groups
 > are created by spice-server users (eg QEMU), and the group ids used to
 > index that array are also generated by the spice-server user, so it
 > should not be possible for the guest to set them to arbitrary values.

 > The slot id is more problematic, as it's calculated from a QXLPHYSICAL
 > address, and such addresses are usually set by the guest QXL driver, so
 > the guest can set these to arbitrary values, including malicious values,
 > which are probably easy to build from the guest PCI configuration.

 > This patch fixes the arrays bound check, and adds a test case for this.

 > Signed-off-by: Christophe Fergeau <cfergeau@redhat.com>
 > ---
 >  server/memslot.c                |  4 ++--
 >  server/tests/test-qxl-parsing.c | 30 ++++++++++++++++++++++++++++++
 >  2 files changed, 32 insertions(+), 2 deletions(-)

 > diff --git a/server/memslot.c b/server/memslot.c
 > index b27324efb..fb3d5cfd5 100644
 > --- a/server/memslot.c
 > +++ b/server/memslot.c
 > @@ -97,13 +97,13 @@ void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size
 
 >      MemSlot *slot;
 
 > -    if (group_id > info->num_memslots_groups) {
 > +    if (group_id >= info->num_memslots_groups) {
 >          g_critical("group_id too big");

What version is this patch against? I don't see memslot.c using
g_critical() neither on the 0.14 branch (which doesn't have 0.14.1) or
master?

https://gitlab.freedesktop.org/spice/spice/blob/master/server/memslot.c#L97

-- 
Bye, Peter Korsgaard

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["319" "Monday" "7" "August" "2017" "08:47:35" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>" "10" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080712:47:35" "[oss-security] Cve issue discussion" (number mark "U       glennrp@gmai Aug  7   10/319   " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<20170807123756.GA27766@suse.de>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "<20170807123756.GA27766@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16017 invoked by uid 550); 7 Aug 2017 12:48:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15999 invoked from network); 7 Aug 2017 12:48:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=z8j4/+I7JgP4xtGA6lpAyLWa4Xlls7BFuxoIk8sFYQ8=;
        b=Fusto0xR5QXN87987gfskLY0yyK3iav1rsh33WIVntF5dws6LWpONUnzmcP+5/3NBl
         hjkHQO4oydtvOIUMRfB+lrlA90mKr4PPI53MSV9JcJwGprQyhyHnwbzzNexWghyTNhJc
         7DnLrH5tEJwUfUeDC+nzdFmGQYRMfbPyeU/ZwuDcVGbMxEvKe3tMQMssTcjQihvTWfyj
         jZl7MfEyAoDGYHypPHHIAh5d5F7j4s2RuDh4+p1SljBTR3AMA9bWP5Z+794D1QzxeT7V
         pTwD1x+8cYT8Ow2xGOtabGbgZkz0qlTJyjbboATvyc+goCYaSyHSODdQKF61aWPAAhV4
         am7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=z8j4/+I7JgP4xtGA6lpAyLWa4Xlls7BFuxoIk8sFYQ8=;
        b=c/mmNxPzrD+HRiP/214j2EXAQcleTW2pQgmJ/Q9eYyoalrEhZ9l/QWULyVCo5ueCPN
         b3nN2wRqDInol+n97h/Vd/lGV0mFZBOhJ1kKM6ViTPcbEcmpo3hp/aPiEvDK7IcpgWIX
         OsZCecZZM+iIoIqGOR5gcEbMj6yjhVQiKFnSfmugq0audA9yrAWNpSCIhs+NAV1V0M9f
         qfdzEdqbj+kPR5Ij2B++3X+1WOUN3Wp1PW32t/BTTwCwuboIuXUZ8HkUZn99yknNmWKd
         W3hv3o+Zi+CiPSQ/ub/op7hg1ug+8iwSIAvr9iguJ3Drc5O5c/nUcIfIZzVJ12Dprf4R
         oOeg==
X-Gm-Message-State: AHYfb5iznpN1vNgsnbZpF80wRypf+3D/AjZNV+EIeMhIM+/fTezLtW6m
	6k8YGlk7FL1ZcDm1aDbpUGqYlb2GOw==
X-Received: by 10.36.181.23 with SMTP id v23mr673773ite.163.1502110095710;
 Mon, 07 Aug 2017 05:48:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170807123756.GA27766@suse.de>
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda> <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com> <20170807123756.GA27766@suse.de>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Mon, 7 Aug 2017 08:47:35 -0400
Message-ID: <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Cve issue discussion

It's not causing a crash, just a delay.  You'll safely get either an OOM
message or an EOF message.and no memory leak.

Glenn

On Mon, Aug 7, 2017 at 8:37 AM, Marcus Meissner <meissner@suse.de> wrote:
> Hi,
>
> if it could crash the image reader I would consider it "remote denial of service"
> classed and CVE worthy.
